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
  FNTS  font / sprite sheet (format not decoded yet)
  BLKS  texture: GPU POLY_FT4-style uv0, clut, uv1, tpage, uv2, uv3, then
        u16 n and n clut ids (palette variants; the first equals `clut`)

usage: vrm.py <file.vrm> <out_dir>
  writes vram.png (16-bit view of the whole block) and blks/<hash>.png
"""

import struct
import sys
from pathlib import Path

import numpy as np
from PIL import Image

def rgb555_to_rgba(words):
    w = np.asarray(words, dtype=np.uint16)
    r = (w & 31) << 3
    g = ((w >> 5) & 31) << 3
    b = ((w >> 10) & 31) << 3
    # Colour 0 (without the STP bit) is transparent on the PS1.
    a = np.where(w == 0, 0, 255)
    return np.stack([r, g, b, a], axis=-1).astype(np.uint8)


class Vrm:
    def __init__(self, data):
        count, desc_size = struct.unpack_from("<2I", data, 0)
        table = [struct.unpack_from("<I4sI", data, 8 + i * 12) for i in range(count)]
        base = 8 + count * 12
        ends = [t[0] for t in table[1:]] + [desc_size]
        self.chunks = [(tag.decode(), h, data[base + off:base + end])
                       for (off, tag, h), end in zip(table, ends)]
        pix = base + desc_size
        self.x, self.y, self.width, self.height = struct.unpack_from("<4H", data, pix)
        self.vram = np.frombuffer(data, dtype="<u2", count=self.width * self.height,
                                  offset=pix + 8).reshape(self.height, self.width)

    def clut(self, clut_id, colours):
        x = (clut_id & 0x3F) * 16 - self.x
        y = (clut_id >> 6) - self.y
        return self.vram[y, x:x + colours]

    def texture(self, uvs, clut_id, tpage):
        """Return an RGBA array for the quad's bounding box in its texture page."""
        page_x = (tpage & 0xF) * 64 - self.x
        page_y = ((tpage >> 4) & 1) * 256 - self.y
        mode = (tpage >> 7) & 3
        us = [u for u, _ in uvs]
        vs = [v for _, v in uvs]
        u0, u1, v0, v1 = min(us), max(us), min(vs), max(vs)
        rows = self.vram[page_y + v0:page_y + v1 + 1]
        if mode == 0:  # 4 bpp
            words = rows[:, page_x:page_x + 64]
            idx = np.stack([(words >> s) & 15 for s in (0, 4, 8, 12)], axis=-1).reshape(len(rows), 256)
            pal = self.clut(clut_id, 16)
        elif mode == 1:  # 8 bpp
            words = rows[:, page_x:page_x + 128]
            idx = np.stack([words & 255, words >> 8], axis=-1).reshape(len(rows), 256)
            pal = self.clut(clut_id, 256)
        else:  # 15 bpp direct
            return rgb555_to_rgba(rows[:, page_x + u0:page_x + u1 + 1])
        return rgb555_to_rgba(pal[idx[:, u0:u1 + 1]])


def parse_blks(blob):
    w = struct.unpack_from("<8H", blob)
    uv = lambda x: (x & 0xFF, x >> 8)
    count = w[6]
    cluts = struct.unpack_from(f"<{count}H", blob, 14)
    return [uv(w[0]), uv(w[2]), uv(w[4]), uv(w[5])], w[1], w[3], cluts


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    vrm = Vrm(Path(sys.argv[1]).read_bytes())
    out = Path(sys.argv[2])
    (out / "blks").mkdir(parents=True, exist_ok=True)
    Image.fromarray(rgb555_to_rgba(vrm.vram)).save(out / "vram.png")
    for tag, h, blob in vrm.chunks:
        if tag == "BLKS":
            uvs, clut, tpage, cluts = parse_blks(blob)
            Image.fromarray(vrm.texture(uvs, clut, tpage)).save(out / "blks" / f"{h:08x}.png")
            print(f"BLKS {h:08x} tpage {tpage:04x} clut {clut:04x} uv {uvs} variants {len(cluts)}")
        else:
            print(f"{tag} {h:08x} {len(blob)} bytes")


if __name__ == "__main__":
    main()
