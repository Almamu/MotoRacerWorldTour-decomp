#!/usr/bin/env python3
"""Which parts of a texture bank's VRAM are used, and where new textures fit.

  vram_usage.py <bank.Vrm> <scene.sdf> [<scene.sdf> ...] [--png out.png]

A bank covers VRAM (512, 0)-(1023, 511). Pixels are "used" when the bank's
own BLKS / FNTS / DPAL chunks point at them, or when a textured polygon of
one of the scenes that load the bank samples them (its UV box in its
texture page, at the page's colour depth), and CLUT rows are used where a
chunk or polygon names a palette. Everything else is free for new
textures and palettes. Prints the free area per texture page and the
largest free rectangles; --png draws the map (used = grey, free = black).
"""

import struct
import sys
from pathlib import Path

import numpy as np

import vrm as V
from sdf import parse

BANK_X, BANK_Y, BANK_W, BANK_H = 512, 0, 512, 512


def page_box(tpage, uvs):
    """VRAM rectangle (x0, y0, x1, y1) a polygon or sprite samples."""
    mode = (tpage >> 7) & 3
    px, py = (tpage & 0xF) * 64, ((tpage >> 4) & 1) * 256
    us = [u for u, _ in uvs]
    vs = [v for _, v in uvs]
    div = {0: 4, 1: 2}.get(mode, 1)
    return px + min(us) // div, py + min(vs), px + max(us) // div + 1, py + max(vs) + 1


def clut_box(clut, mode):
    x, y = (clut & 0x3F) * 16, clut >> 6
    return x, y, x + (16 if mode == 0 else 256), y + 1


def polygons(sdf):
    """(tpage, clut, uvs) of every textured polygon: draw items, the ground,
    rider rigs."""
    from sdf_mesh import draw_items, read_item_mesh
    out = []
    for item in draw_items(sdf).values():
        try:
            mesh = read_item_mesh(sdf, item)
        except ValueError:
            continue
        out += [(p.tpage, p.clut, p.uv) for p in mesh.polygons if p.textured and p.uv]
    if len(sdf.roots) == 51:
        from sdf_mesh import read_ground
        out += [(p.tpage, p.clut, p.uv) for p in read_ground(sdf).polygons if p.uv]
        try:
            import sdf_rig
            for which in (0, 1):
                rig = sdf_rig.read(sdf, which)
                for _, at, _ in sdf_rig.faces(sdf, rig):
                    uv0, clut, uv1, tpage, uv2, uv3 = struct.unpack_from("<6H", sdf.data, at + 12)
                    if tpage:
                        out.append((tpage, clut, [(w & 0xFF, w >> 8) for w in (uv0, uv1, uv2, uv3)]))
        except Exception:
            pass
    return out


def atlas_boxes(sdf):
    """VRAM boxes of the rider texture atlases (level root 9 +0x298 /
    +0x2B8): the game shifts the patched polygons' UVs by whole cells for
    each rider variant, so every cell of the atlas counts as used."""
    out = []
    if len(sdf.roots) != 51:
        return out
    r9 = sdf.roots[9]
    relocs = set(sdf.relocs)
    for rec in [r9 + 0x298 + 16 * k for k in range(4)]:
        cols, cw, ch, npoly = sdf.data[rec], sdf.data[rec + 1], sdf.data[rec + 2], sdf.data[rec + 3]
        if not npoly or (rec + 8) not in relocs:
            continue
        polys, table = sdf.u32(rec + 8), rec + 0x0C
        for k in range(npoly):
            poly = sdf.u32(polys + 4 * k) if (polys + 4 * k) in relocs else None
            if poly is None:
                continue
            tpage = struct.unpack_from("<H", sdf.data, poly + 0x12)[0]
            uvs = []
            for off in (0x0C, 0x10, 0x14, 0x16):
                w = struct.unpack_from("<H", sdf.data, poly + off)[0]
                uvs.append((w & 0xFF, w >> 8))
            u0, v0 = min(u for u, _ in uvs), min(v for _, v in uvs)
            u1, v1 = max(u for u, _ in uvs), max(v for _, v in uvs)
            rows = -(-8 // cols)  # up to 8 rider variants
            out.append(page_box(tpage, [(u0, v0), (min(255, u1 + cw * (cols - 1)), min(255, v1 + ch * (rows - 1)))]))
    return out


def usage(bank, scenes):
    """Boolean map (512 x 512) of used bank pixels."""
    used = np.zeros((BANK_H, BANK_W), bool)

    def mark(box):
        x0, y0, x1, y1 = box
        x0, x1 = max(x0, BANK_X) - BANK_X, min(x1, BANK_X + BANK_W) - BANK_X
        y0, y1 = max(y0, BANK_Y) - BANK_Y, min(y1, BANK_Y + BANK_H) - BANK_Y
        if x1 > x0 and y1 > y0:
            used[y0:y1, x0:x1] = True

    v = V.Vrm(bank)
    for clut, (colours, users) in V.palettes(v).items():
        x, y = (clut & 0x3F) * 16, clut >> 6
        mark((x, y, x + colours, y + 1))
    for tag, _, blob in v.chunks:
        if tag == "BLKS":
            uvs, clut, tpage, cluts = V.parse_blks(blob)
            mark(page_box(tpage, uvs))
        elif tag == "FNTS":
            f = V.parse_font(blob)
            for g in f["glyphs"]:
                if g["width"]:
                    mark(page_box(f["tpage"], [(g["u"], g["v"]),
                                               (g["u"] + g["width"] - 1, g["v"] + f["height"] - 1)]))
    for sdf in scenes:
        for box in atlas_boxes(sdf):
            mark(box)
        for tpage, clut, uvs in polygons(sdf):
            mark(page_box(tpage, uvs))
            mark(clut_box(clut, (tpage >> 7) & 3))
    return used


def largest_free(used, page_w=64):
    """Largest free rectangles that stay inside one texture page (64 VRAM
    pixels wide, 256 high): [(w, h, x, y)] in VRAM coordinates."""
    out = []
    for py in (0, 256):
        for px in range(0, BANK_W, page_w):
            block = ~used[py:py + 256, px:px + page_w]
            # histogram method per row
            heights = np.zeros(page_w, int)
            best = (0, 0, 0, 0)
            for r in range(256):
                heights = np.where(block[r], heights + 1, 0)
                stack = []
                for c in range(page_w + 1):
                    h = heights[c] if c < page_w else 0
                    start = c
                    while stack and stack[-1][1] >= h:
                        s, sh = stack.pop()
                        if sh * (c - s) > best[0] * best[1]:
                            best = (c - s, sh, s, r - sh + 1)
                        start = s
                    stack.append((start, h))
            w, h, x, y = best
            if w and h:
                out.append((w, h, BANK_X + px + x, BANK_Y + py + y))
    return sorted(out, key=lambda b: -b[0] * b[1])


def main():
    a = sys.argv[1:]
    png = None
    if "--png" in a:
        png = a[a.index("--png") + 1]
        a = a[:a.index("--png")]
    if len(a) < 2:
        sys.exit(__doc__)
    bank = Path(a[0]).read_bytes()
    scenes = [parse(Path(p).read_bytes()) for p in a[1:]]
    used = usage(bank, scenes)
    print(f"used {used.mean() * 100:.1f}% of the bank's {BANK_W}x{BANK_H} VRAM pixels")
    for w, h, x, y in largest_free(used)[:8]:
        print(f"  free {w}x{h} VRAM px at ({x}, {y}): 4-bit texture up to {w * 4}x{h}, 8-bit {w * 2}x{h}")
    if png:
        from PIL import Image
        Image.fromarray(np.where(used, 160, 0).astype(np.uint8)).save(png)


if __name__ == "__main__":
    main()


# --- adding textures ---------------------------------------------------------

def find_rect(used, w, h, page_w=64):
    """Top-left (x, y) bank coordinates of a free w x h block inside one
    texture page (64 x 256 VRAM pixels), or None."""
    for py in (0, 256):
        for px in range(0, BANK_W, page_w):
            if w > page_w or h > 256:
                return None
            block = used[py:py + 256, px:px + page_w]
            # integral image for O(1) box sums
            ii = np.pad(block.astype(np.int32).cumsum(0).cumsum(1), ((1, 0), (1, 0)))
            for y in range(0, 256 - h + 1):
                for x in range(0, page_w - w + 1):
                    if ii[y + h, x + w] - ii[y, x + w] - ii[y + h, x] + ii[y, x] == 0:
                        return px + x, py + y
    return None


def find_clut(used):
    """Bank coordinates of a free 16-pixel run starting at a multiple of 16."""
    for y in range(BANK_H - 1, -1, -1):          # from the bottom, away from textures
        for x in range(0, BANK_W, 16):
            if not used[y, x:x + 16].any():
                return x, y
    return None


def _median_cut(pixels, n):
    """n representative colours of an (N, 3) uint8 array (numpy only, so it
    also runs inside Blender)."""
    boxes = [pixels]
    while len(boxes) < n:
        k = max(range(len(boxes)), key=lambda b: (np.ptp(boxes[b], 0).max() if len(boxes[b]) > 1 else -1))
        box = boxes[k]
        if len(box) < 2 or np.ptp(box, 0).max() == 0:
            break
        ch = int(np.argmax(np.ptp(box, 0)))
        box = box[np.argsort(box[:, ch], kind="stable")]
        mid = len(box) // 2
        boxes[k:k + 1] = [box[:mid], box[mid:]]
    return np.array([b.mean(0) for b in boxes if len(b)]).round().astype(np.uint8)


def quantize(rgba, colours=16):
    """RGBA image -> (indices, 15-bit palette); index 0 is transparent
    (colour 0x0000, alpha < 128), the others come from a median cut."""
    import vrm as V
    rgba = np.asarray(rgba, np.uint8)
    opaque = rgba[..., 3] >= 128
    rgb = rgba[..., :3].reshape(-1, 3)
    pal = _median_cut(rgb[opaque.reshape(-1)] if opaque.any() else rgb, colours - 1)
    dist = ((rgb[:, None, :].astype(np.int32) - pal[None, :, :].astype(np.int32)) ** 2).sum(-1)
    idx = (dist.argmin(1) + 1).astype(np.uint8).reshape(rgba.shape[:2])
    idx[~opaque] = 0
    pal = np.pad(pal, ((0, colours - 1 - len(pal)), (0, 0)))
    words = [0] + [int(w) for w in V.rgba_to_palette(np.concatenate([pal, np.full((len(pal), 1), 255, np.uint8)], 1))]
    return idx, words


def add_texture(bank_vrm, used, rgba):
    """Put a 4-bit texture (<= 256 x 256) and its 16-colour palette into free
    bank VRAM. Returns {tpage, clut, u, v, w, h} (u, v: texel origin in the
    page) and marks the space used. Raises ValueError when it doesn't fit."""
    rgba = np.asarray(rgba, np.uint8)
    h, w = rgba.shape[:2]
    vw = -(-w // 4)
    spot = find_rect(used, vw, h)
    if spot is None:
        raise ValueError(f"no free {w}x{h} (4-bit) area in the texture bank")
    x, y = spot
    used[y:y + h, x:x + vw] = True
    cl = find_clut(used)
    if cl is None:
        raise ValueError("no free palette slot in the texture bank")
    cx, cy = cl
    used[cy, cx:cx + 16] = True
    idx, words = quantize(rgba)
    padded = np.zeros((h, vw * 4), np.uint16)
    padded[:, :w] = idx
    packed = (padded[:, 0::4] | padded[:, 1::4] << 4 | padded[:, 2::4] << 8 | padded[:, 3::4] << 12).astype(np.uint16)
    bank_vrm.vram[y:y + h, x:x + vw] = packed
    bank_vrm.vram[cy, cx:cx + 16] = np.array(words, np.uint16)
    vx, vy = BANK_X + x, BANK_Y + y
    tpage = (vx // 64) | ((vy // 256) << 4)      # 4-bit colour, no blending
    clut = ((BANK_X + cx) // 16) | ((BANK_Y + cy) << 6)
    return {"tpage": tpage, "clut": clut, "u": (vx % 64) * 4, "v": vy % 256, "w": w, "h": h}
