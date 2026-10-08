#!/usr/bin/env python3
"""Unpack MR3.DAT, the game's main data archive.

Layout (little-endian):
  0x00  u32  entry count
  0x04  u16  flags (bit 3: entries sorted by name_hash, binary searched)
  0x06  u16  entry size (0 means 0x30; this archive uses 0x10)
  0x08  u32  0, 0
  0x10  entry[count]:
          u32 crc      (CRC-32 below, of the stored bytes)
          u32 size
          u32 offset   (2048-byte aligned)
          u32 name_hash

name_hash and crc use a CRC-32 (reflected, poly 0xEDB88320, init 0, no final
xor); name_hash is taken over the upper-cased path with any leading backslash
removed, e.g.
"data\\LANGIMG.DAT" -> 0x4C3C4EE3 (lookup at 0x8013598C in SCES_030.37).

Entries starting with "LZSS" are compressed: u32 decompressed size, then an
LZSS stream (flag byte, LSB first, 1 = literal; a reference is a u16 with the
backwards distance in the low 12 bits and length-3 in the top 4).

Entries whose name is listed in mr3dat_names.txt are written to their path;
the rest go to _unknown/<name_hash>.<ext>, with the extension taken from the
(decompressed) content magic. index.txt lists every entry, plus the first
embedded "Data\\..." source path as a hint for unnamed ones.

usage: extract_dat.py <MR3.DAT> <out_dir>
"""

import re
import struct
import sys
import zlib
from pathlib import Path

NAMES_FILE = Path(__file__).with_name("mr3dat_names.txt")


def crc32(data):
    """Reflected CRC-32 (poly 0xEDB88320) with init 0 and no final xor."""
    return zlib.crc32(data, 0xFFFFFFFF) ^ 0xFFFFFFFF


def name_hash(name):
    return crc32(name.lstrip("\\").upper().encode("ascii"))


def load_names():
    names = {}
    for line in NAMES_FILE.read_text().splitlines():
        line = line.strip()
        if line and not line.startswith("#"):
            names[name_hash(line)] = line
    return names


def lzss_decompress(src, size):
    out = bytearray()
    i = 0
    while len(out) < size:
        flags = src[i]
        i += 1
        for bit in range(8):
            if len(out) >= size:
                break
            if flags >> bit & 1:
                out.append(src[i])
                i += 1
            else:
                word = src[i] | src[i + 1] << 8
                i += 2
                dist = word & 0xFFF
                for _ in range((word >> 12) + 3):
                    out.append(out[-dist])
    return bytes(out)


def guess_ext(data):
    magic = data[:4]
    if magic.isalnum() and magic.isascii():
        return magic.decode().lower()
    return "bin"


def content_hint(data):
    m = re.search(rb"(?i)data\\[A-Za-z0-9_\\. ]+", data)
    return m.group().decode() if m else ""


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    data = Path(sys.argv[1]).read_bytes()
    out = Path(sys.argv[2])
    out.mkdir(parents=True, exist_ok=True)
    names = load_names()

    count = struct.unpack_from("<I", data, 0)[0]
    named = 0
    lines = ["# idx  hash      crc       offset    size     packed  usize    type  name / hint"]
    for idx in range(count):
        crc, size, offset, nhash = struct.unpack_from("<4I", data, 0x10 + idx * 16)
        blob = data[offset:offset + size]
        if crc32(blob) != crc:
            print(f"warning: CRC mismatch for entry {idx} ({nhash:08x})")
        packed = blob[:4] == b"LZSS"
        if packed:
            usize = struct.unpack_from("<I", blob, 4)[0]
            blob = lzss_decompress(blob[8:], usize)
        ext = guess_ext(blob)
        name = names.get(nhash)
        if name:
            # The game ignores case; lower-case directories so they merge on disk.
            *dirs, base = name.split("\\")
            dest = out.joinpath(*(d.lower() for d in dirs), base)
            label = name
            named += 1
        else:
            dest = out / "_unknown" / f"{nhash:08x}.{ext}"
            hint = content_hint(blob)
            label = f"? {hint}" if hint else "?"
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.write_bytes(blob)
        lines.append(f"{idx:<5d} {nhash:08x}  {crc:08x}  {offset:08x}  "
                     f"{size:<8d} {'lzss' if packed else '-':6s}  {len(blob):<8d} {ext:5s} {label}")

    (out / "index.txt").write_text("\n".join(lines) + "\n")
    print(f"{count} entries, {named} named -> {out}")


if __name__ == "__main__":
    main()
