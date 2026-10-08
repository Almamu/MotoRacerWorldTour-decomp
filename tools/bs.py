#!/usr/bin/env python3
"""Decode BSx0 still images (MDEC bitstream) to PNG.

BSx0 layout (little-endian):
  0x00  "BSx0"
  0x04  u32  size of the rest of the file - 8 (i.e. file size - 12)
  0x08  u16  width, u16 height
  0x0C  "MCOL"
  0x10  u32  byte size of each 16-pixel-wide column (width / 16 of them)
  ....  columns: each one is a standalone PS1 BS v2 frame of 16 x height,
        whose macroblocks run top to bottom.

BS v2 frame: u16 MDEC code count / 2, u16 0x3800, u16 qscale, u16 version (2),
then a bitstream read as 16-bit little-endian words, MSB first. Each 16x16
macroblock is six 8x8 blocks (Cr, Cb, Y0..Y3): a 10-bit signed DC, then
MPEG-1 table B.14 run/level codes (escape: 6-bit run, 10-bit level) up to
an EOB ("10").

usage: bs.py <file.bs> [more.bs ...] <out_dir>
"""

import struct
import sys
from pathlib import Path

import numpy as np
from PIL import Image

# MPEG-1 table B.14 (AC coefficients, sign bit excluded): code -> (run, level).
_B14 = """
11 0 1|011 1 1|0100 0 2|0101 2 1|00101 0 3|00111 3 1|00110 4 1|000110 1 2
000111 5 1|000101 6 1|000100 7 1|0000110 0 4|0000100 2 2|0000111 8 1
0000101 9 1|00100110 0 5|00100001 0 6|00100101 1 3|00100100 3 2
00100111 10 1|00100011 11 1|00100010 12 1|00100000 13 1|0000001010 0 7
0000001100 1 4|0000001011 2 3|0000001111 4 2|0000001001 5 2|0000001110 14 1
0000001101 15 1|0000001000 16 1|000000011101 0 8|000000011000 0 9
000000010011 0 10|000000010000 0 11|000000011011 1 5|000000010100 2 4
000000011100 3 3|000000010010 4 3|000000011110 6 2|000000010101 7 2
000000010001 8 2|000000011111 17 1|000000011010 18 1|000000011001 19 1
000000010111 20 1|000000010110 21 1|0000000011010 0 12|0000000011001 0 13
0000000011000 0 14|0000000010111 0 15|0000000010110 1 6|0000000010101 1 7
0000000010100 2 5|0000000010011 3 4|0000000010010 5 3|0000000010001 9 2
0000000010000 10 2|0000000011111 22 1|0000000011110 23 1|0000000011101 24 1
0000000011100 25 1|0000000011011 26 1|00000000011111 0 16|00000000011110 0 17
00000000011101 0 18|00000000011100 0 19|00000000011011 0 20|00000000011010 0 21
00000000011001 0 22|00000000011000 0 23|00000000010111 0 24|00000000010110 0 25
00000000010101 0 26|00000000010100 0 27|00000000010011 0 28|00000000010010 0 29
00000000010001 0 30|00000000010000 0 31|000000000011000 0 32|000000000010111 0 33
000000000010110 0 34|000000000010101 0 35|000000000010100 0 36
000000000010011 0 37|000000000010010 0 38|000000000010001 0 39
000000000010000 0 40|000000000011111 1 8|000000000011110 1 9
000000000011101 1 10|000000000011100 1 11|000000000011011 1 12
000000000011010 1 13|000000000011001 1 14|0000000000010011 1 15
0000000000010010 1 16|0000000000010001 1 17|0000000000010000 1 18
0000000000010100 6 3|0000000000011010 11 2|0000000000011001 12 2
0000000000011000 13 2|0000000000010111 14 2|0000000000010110 15 2
0000000000010101 16 2|0000000000011111 27 1|0000000000011110 28 1
0000000000011101 29 1|0000000000011100 30 1|0000000000011011 31 1
"""
EOB, ESCAPE = "EOB", "ESC"
VLC = {"10": EOB, "000001": ESCAPE}
for item in _B14.replace("\n", "|").split("|"):
    if item.strip():
        code, run, level = item.split()
        VLC[code] = (int(run), int(level))
MAX_CODE = max(map(len, VLC))

ZIGZAG = [
    0, 1, 8, 16, 9, 2, 3, 10, 17, 24, 32, 25, 18, 11, 4, 5,
    12, 19, 26, 33, 40, 48, 41, 34, 27, 20, 13, 6, 7, 14, 21, 28,
    35, 42, 49, 56, 57, 50, 43, 36, 29, 22, 15, 23, 30, 37, 44, 51,
    58, 59, 52, 45, 38, 31, 39, 46, 53, 60, 61, 54, 47, 55, 62, 63,
]
# PS1 MDEC default (= MPEG-1 intra) quantisation matrix, in raster order.
QUANT = [
    2, 16, 19, 22, 26, 27, 29, 34, 16, 16, 22, 24, 27, 29, 34, 37,
    19, 22, 26, 27, 29, 34, 34, 38, 22, 22, 26, 27, 29, 34, 37, 40,
    22, 26, 27, 29, 32, 35, 40, 48, 26, 27, 29, 32, 35, 40, 48, 58,
    26, 27, 29, 34, 38, 46, 56, 69, 27, 29, 35, 38, 46, 56, 69, 83,
]

_k = np.arange(8)
_C = np.cos((2 * _k[None, :] + 1) * _k[:, None] * np.pi / 16) * np.where(_k[:, None] == 0, np.sqrt(0.5), 1.0) / 2
# IDCT: pixels = C.T @ coeffs @ C


class BitReader:
    def __init__(self, data):
        words = struct.unpack_from(f"<{len(data) // 2}H", data)
        self.bits = "".join(f"{w:016b}" for w in words)
        self.pos = 0

    def read(self, n):
        v = self.bits[self.pos:self.pos + n]
        self.pos += n
        return v

    def signed(self, n):
        v = int(self.read(n), 2)
        return v - (1 << n) if v >= 1 << (n - 1) else v

    def vlc(self):
        for n in range(2, MAX_CODE + 1):
            sym = VLC.get(self.bits[self.pos:self.pos + n])
            if sym is not None:
                self.pos += n
                return sym
        raise ValueError(f"bad VLC at bit {self.pos}")


def decode_block(br, qscale):
    coeffs = np.zeros(64)
    coeffs[0] = br.signed(10) * QUANT[0]
    i = 0
    while True:
        sym = br.vlc()
        if sym == EOB:
            break
        if sym == ESCAPE:
            run = int(br.read(6), 2)
            level = br.signed(10)
        else:
            run, level = sym
            if br.read(1) == "1":
                level = -level
        i += run + 1
        if i > 63:
            raise ValueError("coefficient index overflow")
        j = ZIGZAG[i]
        coeffs[j] = level * qscale * QUANT[j] / 8
    return _C.T @ coeffs.reshape(8, 8) @ _C


def decode_frame(data, width, height):
    """Decode one BS v2 frame (macroblocks in column-major order) to RGB."""
    _, magic, qscale, version = struct.unpack_from("<4H", data)
    if magic != 0x3800 or version != 2:
        raise ValueError(f"not a BS v2 frame ({magic:04x} v{version})")
    br = BitReader(data[8:])
    rgb = np.zeros((height, width, 3))
    for mx in range(0, width, 16):
        for my in range(0, height, 16):
            cr, cb = decode_block(br, qscale), decode_block(br, qscale)
            y = np.zeros((16, 16))
            for k in range(4):
                y[(k >> 1) * 8:(k >> 1) * 8 + 8, (k & 1) * 8:(k & 1) * 8 + 8] = decode_block(br, qscale)
            cr = cr.repeat(2, 0).repeat(2, 1)
            cb = cb.repeat(2, 0).repeat(2, 1)
            y = y + 128
            mb = np.stack([y + 1.402 * cr, y - 0.344136 * cb - 0.714136 * cr, y + 1.772 * cb], axis=-1)
            rgb[my:my + 16, mx:mx + 16] = mb
    return np.clip(np.rint(rgb), 0, 255).astype(np.uint8), br.pos


def decode_bsx0(data):
    if data[:4] != b"BSx0" or data[12:16] != b"MCOL":
        raise ValueError("not a BSx0/MCOL image")
    width, height = struct.unpack_from("<HH", data, 8)
    cols = width // 16
    sizes = struct.unpack_from(f"<{cols}I", data, 16)
    pos = 16 + cols * 4
    image = np.zeros((height, width, 3), np.uint8)
    for c, size in enumerate(sizes):
        image[:, c * 16:(c + 1) * 16], used = decode_frame(data[pos:pos + size], 16, height)
        if (used + 7) // 8 > size - 8:
            raise ValueError(f"column {c} overran its data")
        pos += size
    return image


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    out = Path(sys.argv[-1])
    out.mkdir(parents=True, exist_ok=True)
    for name in sys.argv[1:-1]:
        path = Path(name)
        try:
            Image.fromarray(decode_bsx0(path.read_bytes())).save(out / f"{path.stem}.png")
            print(f"ok   {path}")
        except ValueError as e:
            print(f"FAIL {path}: {e}")


if __name__ == "__main__":
    main()
