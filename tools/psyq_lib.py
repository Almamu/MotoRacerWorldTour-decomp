#!/usr/bin/env python3
"""PsyQ library archives (.LIB): list them, split them into their objects,
and convert the objects to ELF with psyq-obj-parser.

  tools/psyq_lib.py list LIB               the modules and the symbols each exports
  tools/psyq_lib.py split LIB DIR          DIR/<MODULE>.OBJ for every module
  tools/psyq_lib.py elf LIB DIR [PARSER]   DIR/<MODULE>.o, converted (PARSER defaults to
                                           tools/psyq/psyq-obj-parser)

Format: "LIB" 0x01, then one entry per module: its name (8 bytes, space
padded), a date (4), the offset from the entry to the object (4), the
entry's size (4), the exported names (length-prefixed, ending with 0), and
the object itself ("LNK" 0x02).
"""
import struct
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def modules(path):
    """[(name, exports, object bytes)]"""
    data = Path(path).read_bytes()
    if data[:4] != b"LIB\x01":
        sys.exit(f"{path}: not a PsyQ library")
    out = []
    pos = 4
    while pos + 20 <= len(data):
        name = data[pos:pos + 8].decode("ascii").rstrip()
        hdr, size = struct.unpack_from("<II", data, pos + 12)
        if size == 0:
            break
        exports = []
        p = pos + 20
        while data[p]:
            n = data[p]
            exports.append(data[p + 1:p + 1 + n].decode("ascii"))
            p += 1 + n
        obj = data[pos + hdr:pos + size]
        if obj[:4] != b"LNK\x02":
            sys.exit(f"{path}: module {name} at {pos:#x} isn't an object")
        out.append((name, exports, obj))
        pos += size
    return out


def cmd_list(lib):
    for name, exports, obj in modules(lib):
        print(f"{name:<8} {len(obj):>6}  {' '.join(exports)}")


def cmd_split(lib, out):
    out = Path(out)
    out.mkdir(parents=True, exist_ok=True)
    for name, _, obj in modules(lib):
        (out / f"{name}.OBJ").write_bytes(obj)


def cmd_elf(lib, out, parser=None):
    parser = parser or str(ROOT / "tools" / "psyq" / "psyq-obj-parser")
    out = Path(out)
    out.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory() as tmp:
        for name, _, obj in modules(lib):
            src = Path(tmp) / f"{name}.OBJ"
            src.write_bytes(obj)
            r = subprocess.run([parser, str(src), "-o", str(out / f"{name}.o")],
                               capture_output=True, text=True)
            if r.returncode:
                print(f"{lib} {name}: {r.stdout.strip()} {r.stderr.strip()}", file=sys.stderr)


def main():
    a = sys.argv[1:]
    if len(a) >= 2 and a[0] == "list":
        cmd_list(a[1])
    elif len(a) == 3 and a[0] == "split":
        cmd_split(a[1], a[2])
    elif len(a) in (3, 4) and a[0] == "elf":
        cmd_elf(*a[1:])
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main()
