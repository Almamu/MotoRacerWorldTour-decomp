#!/usr/bin/env python3
"""Parse a .vrm VRAM bank and dump it to PNGs.

Layout (little-endian):
  0x00  u32  chunk count
  0x04  u32  descriptor area size
  0x08  chunk[count]: u32 offset (into the descriptor area), char tag[4], u32 name hash
  ....  descriptor area (follows the table directly)
  ....  RECT (u16 x, y, w, h; in 16-bit VRAM words), then w*h u16 pixels

The pixel block is uploaded to VRAM at that RECT (512, 0, 512, 512 so far);
all tpage/clut values in the descriptors are absolute VRAM coordinates.

Chunk tags:
  DPAL  palette descriptor: u16 ?, u16 colour count, u16 clut x/16, u16 clut y
  FNTS  bitmap font: u8 height, u8 glyph count, u8 first char, u8 ?,
        s8 letter spacing, u8 ?, u8 space width, ..., u16 clut at 0x14,
        u16 tpage at 0x16, then u32 per glyph: u, v, width (bytes 0-2)
  BLKS  texture: GPU POLY_FT4-style uv0, clut, uv1, tpage, uv2, uv3, then
        u16 n and n clut ids (palette variants; the first equals `clut`)

usage: vrm.py export <file.vrm> <out_dir>   (or just vrm.py <file.vrm> <out_dir>)
  writes vram.png (16-bit view of the whole block), blks/<hash>.png,
  fonts/<hash>.png + fonts/<hash>.json (glyph strip and metrics) and
  cluts/<id>.png (one pixel per colour; alpha 0 = transparent 0x0000,
  128 = STP bit set, 255 = opaque) with cluts.json listing their users
       vrm.py import <file.vrm> <dir> <out.vrm> [<scene.sdf> ...]
  writes edited blks/*.png and fonts/*.png from <dir> back into VRAM: colours
  are mapped to each texture's own palette (nearest colour; alpha 0 =
  transparent index); unchanged pixels keep their index, so an unedited
  export imports back byte-identical. Edited palettes are written first
  (exact 15-bit colours + STP), then textures. A sprite PNG with a new
  size, or with blks/<hash>.json {"bpp": 4|8|15} asking for another colour
  depth, is moved to free VRAM with its own palette and its BLKS entry
  rewritten; give the scene files that load the bank so their textures
  are left alone.
"""

import json
import struct
import sys
from pathlib import Path

import numpy as np

# PIL is imported where PNGs are read or written, so the VRAM code also
# works inside Blender (tools/blender), which ships numpy but not PIL.


def rgb555_to_rgba(words):
    w = np.asarray(words, dtype=np.uint16)
    r = (w & 31) << 3
    g = ((w >> 5) & 31) << 3
    b = ((w >> 10) & 31) << 3
    # Colour 0 (without the STP bit) is transparent on the PS1.
    a = np.where(w == 0, 0, 255)
    return np.stack([r, g, b, a], axis=-1).astype(np.uint8)


def rgba_to_rgb555(rgba):
    rgba = np.asarray(rgba, np.uint16)
    w = (rgba[..., 0] >> 3) | (rgba[..., 1] >> 3) << 5 | (rgba[..., 2] >> 3) << 10
    # Opaque black needs the STP bit, or it would turn transparent.
    w = np.where((w == 0) & (rgba[..., 3] >= 128), 0x8000, w)
    return np.where(rgba[..., 3] < 128, 0, w).astype(np.uint16)


class Vrm:
    def __init__(self, data):
        self.raw = bytes(data)
        count, desc_size = struct.unpack_from("<2I", data, 0)
        table = [struct.unpack_from("<I4sI", data, 8 + i * 12) for i in range(count)]
        base = 8 + count * 12
        ends = [t[0] for t in table[1:]] + [desc_size]
        self.chunks = [(tag.decode(), h, data[base + off:base + end])
                       for (off, tag, h), end in zip(table, ends)]
        self.chunk_at = {(tag.decode(), h): base + off for off, tag, h in table}
        self.pix = base + desc_size
        self.x, self.y, self.width, self.height = struct.unpack_from("<4H", data, self.pix)
        self.vram = np.frombuffer(data, dtype="<u2", count=self.width * self.height,
                                  offset=self.pix + 8).reshape(self.height, self.width).copy()
        self.original = self.vram.copy()

    def set_blks(self, h, uvs, clut, tpage):
        """Point BLKS `h` at another texture: corners (u, v) top-left,
        top-right, bottom-left, bottom-right (inclusive), clut and tpage;
        every palette variant is set to `clut`. The entry keeps its size."""
        at = self.chunk_at[("BLKS", h)]
        raw = bytearray(self.raw)
        uv = [u | v << 8 for u, v in uvs]
        k = struct.unpack_from("<H", raw, at + 12)[0]
        struct.pack_into("<6H", raw, at, uv[0], clut, uv[1], tpage, uv[2], uv[3])
        struct.pack_into(f"<{k}H", raw, at + 14, *([clut] * k))
        self.raw = bytes(raw)
        self.chunks = [(t, hh, self.raw[self.chunk_at[(t, hh)]:self.chunk_at[(t, hh)] + len(b)])
                       for t, hh, b in self.chunks]

    def to_bytes(self):
        return self.raw[:self.pix + 8] + self.vram.astype("<u2").tobytes() + self.raw[self.pix + 8 + self.vram.size * 2:]

    def clut(self, clut_id, colours):
        x = (clut_id & 0x3F) * 16 - self.x
        y = (clut_id >> 6) - self.y
        return self.vram[y, x:x + colours]

    def _region(self, uvs, tpage):
        page_x = (tpage & 0xF) * 64 - self.x
        page_y = ((tpage >> 4) & 1) * 256 - self.y
        mode = (tpage >> 7) & 3
        us = [u for u, _ in uvs]
        vs = [v for _, v in uvs]
        return page_x, page_y, mode, min(us), max(us), min(vs), max(vs)

    def indices(self, uvs, tpage, vram=None):
        """Texel values (palette indices, or 15-bit colours) of the quad's bounding box."""
        page_x, page_y, mode, u0, u1, v0, v1 = self._region(uvs, tpage)
        rows = (self.vram if vram is None else vram)[page_y + v0:page_y + v1 + 1]
        if mode == 0:  # 4 bpp
            words = rows[:, page_x:page_x + 64]
            idx = np.stack([(words >> s) & 15 for s in (0, 4, 8, 12)], axis=-1).reshape(len(rows), 256)
        elif mode == 1:  # 8 bpp
            words = rows[:, page_x:page_x + 128]
            idx = np.stack([words & 255, words >> 8], axis=-1).reshape(len(rows), 256)
        else:  # 15 bpp direct
            return rows[:, page_x + u0:page_x + u1 + 1].copy()
        return idx[:, u0:u1 + 1].copy()

    def put_indices(self, uvs, tpage, idx, write=None):
        page_x, page_y, mode, u0, u1, v0, v1 = self._region(uvs, tpage)
        idx = np.asarray(idx, np.uint16)
        for row, y in enumerate(range(page_y + v0, page_y + v1 + 1)):
            for col, u in enumerate(range(u0, u1 + 1)):
                if write is not None and not write[row, col]:
                    continue
                if mode == 0:
                    x, shift, mask = page_x + u // 4, (u % 4) * 4, 0xF
                elif mode == 1:
                    x, shift, mask = page_x + u // 2, (u % 2) * 8, 0xFF
                else:
                    self.vram[y, page_x + u] = idx[row, col]
                    continue
                w = int(self.vram[y, x])
                self.vram[y, x] = (w & ~(mask << shift)) | ((int(idx[row, col]) & mask) << shift)

    def texture(self, uvs, clut_id, tpage, vram=None):
        """Return an RGBA array for the quad's bounding box in its texture page."""
        mode = (tpage >> 7) & 3
        idx = self.indices(uvs, tpage, vram)
        if mode >= 2:
            return rgb555_to_rgba(idx)
        pal_vram = self.vram if vram is None else vram
        x = (clut_id & 0x3F) * 16 - self.x
        y = (clut_id >> 6) - self.y
        pal = pal_vram[y, x:x + (16 if mode == 0 else 256)]
        return rgb555_to_rgba(pal[idx])

    def put_texture(self, uvs, clut_id, tpage, rgba):
        """Write an RGBA image back, mapping colours to the texture's palette.

        Only pixels that differ from the texture as it was in the original
        bank are written, so unedited images (including textures that
        overlap an edited one) change nothing. Returns the pixel count."""
        mode = (tpage >> 7) & 3
        rgba = np.asarray(rgba, np.uint8)
        orig = self.texture(uvs, clut_id, tpage, self.original)
        if rgba.shape[:2] != orig.shape[:2]:
            raise ValueError(f"image is {rgba.shape[1]}x{rgba.shape[0]}, expected {orig.shape[1]}x{orig.shape[0]}")
        changed = ~(rgba == orig).all(-1)
        if not changed.any():
            return 0
        if mode >= 2:
            new = rgba_to_rgb555(rgba)
        else:
            pal = rgb555_to_rgba(self.clut(clut_id, 16 if mode == 0 else 256)).astype(np.int32)
            px = rgba.astype(np.int32).reshape(-1, 1, 4)
            d = ((px[..., :3] - pal[None, :, :3]) ** 2).sum(-1)
            # transparency must match exactly (alpha 0 <-> colour 0x0000)
            d += np.where((px[..., 3] < 128) != (pal[None, :, 3] < 128), 1 << 30, 0)
            new = d.argmin(1).reshape(changed.shape)
        self.put_indices(uvs, tpage, new, changed)
        return int(changed.sum())


def parse_blks(blob):
    w = struct.unpack_from("<8H", blob)
    uv = lambda x: (x & 0xFF, x >> 8)
    count = w[6]
    cluts = struct.unpack_from(f"<{count}H", blob, 14)
    return [uv(w[0]), uv(w[2]), uv(w[4]), uv(w[5])], w[1], w[3], cluts


def parse_font(blob):
    height, count, first = blob[0], blob[1], blob[2]
    spacing = struct.unpack_from("<b", blob, 4)[0]
    space = blob[6]
    clut, tpage = struct.unpack_from("<HH", blob, 0x14)
    glyphs = []
    for i in range(count):
        g = struct.unpack_from("<I", blob, 0x18 + i * 4)[0]
        glyphs.append({"char": first + i, "u": g & 0xFF, "v": (g >> 8) & 0xFF, "width": (g >> 16) & 0xFF})
    return {"height": height, "first": first, "spacing": spacing, "space_width": space,
            "clut": clut, "tpage": tpage, "glyphs": glyphs}


def font_strip(vrm, font):
    """All glyphs side by side (1 px apart), in character order."""
    page = vrm.texture([(0, 0), (255, 255)], font["clut"], font["tpage"])
    h = font["height"]
    width = sum(g["width"] + 1 for g in font["glyphs"]) + 1
    strip = np.zeros((h, max(width, 1), 4), np.uint8)
    x = 1
    for g in font["glyphs"]:
        if g["width"]:
            strip[:, x:x + g["width"]] = page[g["v"]:g["v"] + h, g["u"]:g["u"] + g["width"]]
        x += g["width"] + 1
    return strip


def palette_to_rgba(words):
    """CLUT entries -> RGBA with the STP bit in alpha: 0 = 0x0000 (transparent),
    128 = STP set (semi-transparent / opaque black), 255 = STP clear."""
    w = np.asarray(words, np.uint16)
    rgba = rgb555_to_rgba(w & 0x7FFF)
    rgba[..., 3] = np.where(w == 0, 0, np.where(w & 0x8000, 128, 255))
    return rgba


def rgba_to_palette(rgba):
    rgba = np.asarray(rgba, np.uint16)
    w = (rgba[..., 0] >> 3) | (rgba[..., 1] >> 3) << 5 | (rgba[..., 2] >> 3) << 10
    a = rgba[..., 3]
    w = np.where((a > 64) & (a < 192), w | 0x8000, w)            # STP set
    w = np.where((a >= 192) & (w == 0), 0x8000, w)                # opaque black needs STP
    return np.where(a <= 64, 0, w).astype(np.uint16)


def palettes(vrm):
    """{clut id: (colour count, [users])} for every CLUT named by the bank's chunks."""
    out = {}
    def add(clut, colours, user):
        n, users = out.get(clut, (colours, []))
        out[clut] = (max(n, colours), users + [user])
    for tag, h, blob in vrm.chunks:
        if tag == "BLKS":
            uvs, clut, tpage, cluts = parse_blks(blob)
            colours = 256 if (tpage >> 7) & 3 == 1 else 16
            if (tpage >> 7) & 3 < 2:
                for c in {clut, *cluts}:
                    add(c, colours, f"BLKS {h:08x}")
        elif tag == "FNTS":
            font = parse_font(blob)
            add(font["clut"], 256 if (font["tpage"] >> 7) & 3 == 1 else 16, f"FNTS {h:08x}")
        elif tag == "DPAL":
            _, colours, x, y = struct.unpack_from("<4H", blob)
            add(y << 6 | x, colours, f"DPAL {h:08x}")
    return out


def export_palettes(vrm, out):
    from PIL import Image
    (out / "cluts").mkdir(parents=True, exist_ok=True)
    index = {}
    for clut, (colours, users) in sorted(palettes(vrm).items()):
        Image.fromarray(palette_to_rgba(vrm.clut(clut, colours))[None, :]).save(out / "cluts" / f"{clut:04x}.png")
        index[f"{clut:04x}"] = {"colours": colours, "x": (clut & 0x3F) * 16, "y": clut >> 6, "used_by": users}
    (out / "cluts.json").write_text(json.dumps(index, indent=1))


def import_palettes(vrm, src):
    from PIL import Image
    changed = 0
    for clut, (colours, _) in palettes(vrm).items():
        png = src / "cluts" / f"{clut:04x}.png"
        if not png.exists():
            continue
        new = rgba_to_palette(np.array(Image.open(png).convert("RGBA"))[0, :colours])
        x = (clut & 0x3F) * 16 - vrm.x
        y = (clut >> 6) - vrm.y
        old = vrm.original[y, x:x + len(new)]
        diff = new != old
        if diff.any():
            vrm.vram[y, x:x + len(new)] = np.where(diff, new, vrm.vram[y, x:x + len(new)])
            print(f"CLUT {clut:04x}: {int(diff.sum())} colours changed")
            changed += int(diff.sum())
    return changed


def export(vrm, out):
    from PIL import Image
    export_palettes(vrm, out)
    (out / "blks").mkdir(parents=True, exist_ok=True)
    (out / "fonts").mkdir(parents=True, exist_ok=True)
    Image.fromarray(rgb555_to_rgba(vrm.vram)).save(out / "vram.png")
    for tag, h, blob in vrm.chunks:
        if tag == "BLKS":
            uvs, clut, tpage, cluts = parse_blks(blob)
            Image.fromarray(vrm.texture(uvs, clut, tpage)).save(out / "blks" / f"{h:08x}.png")
            print(f"BLKS {h:08x} tpage {tpage:04x} clut {clut:04x} uv {uvs} variants {len(cluts)}")
        elif tag == "FNTS":
            font = parse_font(blob)
            Image.fromarray(font_strip(vrm, font)).save(out / "fonts" / f"{h:08x}.png")
            (out / "fonts" / f"{h:08x}.json").write_text(json.dumps(font, indent=1))
            print(f"FNTS {h:08x} height {font['height']} glyphs {len(font['glyphs'])} "
                  f"from {font['first']} clut {font['clut']:04x} tpage {font['tpage']:04x}")
        else:
            print(f"{tag} {h:08x} {len(blob)} bytes")


DEPTH_OF_MODE = {0: 4, 1: 8, 2: 15}


def import_(vrm, src, scenes=()):
    """Write edited cluts/*.png, then blks/<hash>.png and fonts/<hash>.png back
    into VRAM (palettes first, so edited textures map to the new colours).
    A sprite whose PNG has a different size, or whose blks/<hash>.json asks
    for another colour depth ({"bpp": 4, 8 or 15}), is moved to free VRAM
    with a palette of its own (tools/vram_usage.py; `scenes` are the parsed
    scene files that load the bank, so their textures stay untouched)."""
    from PIL import Image
    changed = import_palettes(vrm, src)
    used = None
    for tag, h, blob in list(vrm.chunks):
        if tag == "BLKS":
            png = src / "blks" / f"{h:08x}.png"
            if png.exists():
                uvs, clut, tpage, _ = parse_blks(blob)
                rgba = np.array(Image.open(png).convert("RGBA"))
                side = png.with_suffix(".json")
                want = json.loads(side.read_text()).get("bpp") if side.exists() else None
                cur = DEPTH_OF_MODE.get((tpage >> 7) & 3, 4)
                size = (max(u for u, _ in uvs) - min(u for u, _ in uvs) + 1,
                        max(v for _, v in uvs) - min(v for _, v in uvs) + 1)
                if (rgba.shape[1], rgba.shape[0]) != size or (want and want != cur):
                    import vram_usage
                    if used is None:
                        used = vram_usage.usage(vrm.to_bytes(), list(scenes))
                    t = vram_usage.relocate_sprite(vrm, used, h, rgba, want or cur)
                    print(f"BLKS {h:08x}: moved, {t['w']}x{t['h']} {t['bpp']}-bit at tpage {t['tpage']:04x} "
                          f"clut {t['clut']:04x}")
                    changed += rgba.shape[0] * rgba.shape[1]
                    continue
                n = vrm.put_texture(uvs, clut, tpage, rgba)
                if n:
                    print(f"BLKS {h:08x}: {n} pixels changed")
                changed += n
        elif tag == "FNTS":
            png = src / "fonts" / f"{h:08x}.png"
            if png.exists():
                font = parse_font(blob)
                strip = np.array(Image.open(png).convert("RGBA"))
                x = 1
                for g in font["glyphs"]:
                    if g["width"]:
                        uvs = [(g["u"], g["v"]), (g["u"] + g["width"] - 1, g["v"] + font["height"] - 1)]
                        n = vrm.put_texture(uvs, font["clut"], font["tpage"], strip[:, x:x + g["width"]])
                        changed += n
                    x += g["width"] + 1
    return changed


def main():
    a = sys.argv[1:]
    if len(a) == 2:
        a = ["export"] + a
    if len(a) == 3 and a[0] == "export":
        export(Vrm(Path(a[1]).read_bytes()), Path(a[2]))
    elif len(a) >= 4 and a[0] == "import":
        from sdf import parse
        vrm = Vrm(Path(a[1]).read_bytes())
        n = import_(vrm, Path(a[2]), [parse(Path(f).read_bytes()) for f in a[4:]])
        Path(a[3]).write_bytes(vrm.to_bytes())
        print(f"{n} pixels/colours changed -> {a[3]}")
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main()
