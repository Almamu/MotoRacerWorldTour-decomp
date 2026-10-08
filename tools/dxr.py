#!/usr/bin/env python3
"""Relocate a .dxr code module to a fixed address (e.g. for Ghidra).

Layout (little-endian), see docs/formats/dxr.md:
  0x00  u32  code size
  0x04  u32  relocation table size in bytes
  0x08  code: u32 entry point offset (relocated, then called), u32 0,
        instructions
  ....  relocation table: u32 entries `offset | type`, 0xFFFFFFFF ends it;
        type 1 entries are followed by a u32 target offset

The game loads the module anywhere on the heap and relocates it with
base = address of the code (0x800A658C in data\\LANGIMG.DAT).

usage: dxr.py <file.dxr> <out.bin> [base, default 0x80100000]
  writes the relocated code only; load it in Ghidra at <base>.
"""

import struct
import sys
from pathlib import Path


def relocate(data, base):
    size, table_size = struct.unpack_from("<II", data)
    code = bytearray(data[8:8 + size])
    pos = 8 + (size & ~3)
    end = pos + table_size
    count = 0
    while True:
        entry = struct.unpack_from("<I", data, pos)[0]
        pos += 4
        if entry == 0xFFFFFFFF:
            break
        off, kind = entry & ~3, entry & 3
        if kind == 0:    # 32-bit pointer
            v = struct.unpack_from("<I", code, off)[0]
            struct.pack_into("<I", code, off, (v + base) & 0xFFFFFFFF)
        elif kind == 1:  # %hi() of base + target
            target = struct.unpack_from("<I", data, pos)[0]
            pos += 4
            struct.pack_into("<H", code, off, ((base + target + 0x8000) >> 16) & 0xFFFF)
        elif kind == 2:  # %lo(): add base to the low half
            v = struct.unpack_from("<H", code, off)[0]
            struct.pack_into("<H", code, off, (v + base) & 0xFFFF)
        else:            # j / jal target
            v = struct.unpack_from("<I", code, off)[0]
            struct.pack_into("<I", code, off, (v + ((base & 0x0FFFFFFF) >> 2)) & 0xFFFFFFFF)
        count += 1
    if pos > end:
        raise ValueError("relocation table overruns its declared size")
    return bytes(code), count


def main():
    if len(sys.argv) not in (3, 4):
        sys.exit(__doc__)
    base = int(sys.argv[3], 0) if len(sys.argv) == 4 else 0x80100000
    code, count = relocate(Path(sys.argv[1]).read_bytes(), base)
    Path(sys.argv[2]).write_bytes(code)
    print(f"{len(code):#x} bytes, {count} relocations applied for base {base:#010x}")


if __name__ == "__main__":
    main()
