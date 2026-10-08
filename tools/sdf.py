#!/usr/bin/env python3
"""Parse an SDF0 file (serialized C++ object graph) and summarise it.

Layout (little-endian), see docs/formats/sdf.md:
  "SDF0", u32 n, u8 data[n], then the link block:
    u32 n_exports, u32 export_offset[n_exports], u32 export_value[n_exports]
    u32 n_relocs, u32 n_objects, u32 n_classes, u32 n_roots
    u32 relocs[n_relocs]        offsets of pointers inside data (made absolute)
    u32 objects[n_objects]      offsets of each object's vtable pointer; the u32
                                there holds a class index, replaced by the
                                class's vtable on load. The vtable pointer isn't
                                at the start of the object: see CLASSES.
    char classes[n_classes][32] class names
    u32 roots[n_roots]          offsets of the root objects, or -1

Editing: parse(), change data (a bytes/bytearray; keep relocs listing every
pointer), then serialize(). serialize(parse(x)) == x for every file.

usage: sdf.py <file.sdf> [--objects]
"""

import struct
import sys
from collections import Counter
from dataclasses import dataclass
from pathlib import Path


# Class name -> (object size, offset of the vtable pointer inside the object),
# from the constructors the level and menu loaders run to build their class
# registries (0x80049C14, 0x80046F2C).
CLASSES = {
    "CanimVertex": (0x4C, 0x34),
    "CanimSide": (0x48, 0x34),
    "CanimMove": (0x9C, 0x34),
    "CanimMoveCamera": (0xA0, 0x34),
    "Cobjet": (0x54, 0x50),
    "CobjetHud": (0x64, 0x50),
    "CobjetCameraMotion": (0x60, 0x50),
    "CobjetMotoHumain": (0x5D4, 0x50),
    "CobjetVFonts": (0x5C, 0x50),
    "CobjetLightMotion": (0x58, 0x50),
    "CobjetEnvMap": (0x58, 0x50),
    "CobjetInterface": (0x74, 0x50),
    "Cobjet2dVFonts": (0x14, 0x08),
}


@dataclass
class Sdf:
    data: bytes
    exports: list
    relocs: list
    objects: list
    classes: list
    roots: list
    class_raw: list = None  # the 32-byte class name records as stored

    def u32(self, off):
        return struct.unpack_from("<I", self.data, off)[0]

    def class_of(self, obj_off):
        """Class of the object whose vtable pointer is at obj_off."""
        return self.classes[self.u32(obj_off)]

    def instances(self, class_name):
        """Start offsets of every object of the given class."""
        vptr = CLASSES[class_name][1]
        return [o - vptr for o in self.sorted_objects if self.class_of(o) == class_name]

    def object_size(self, obj_off):
        """Distance to the next object (an upper bound on the object's size)."""
        later = [o for o in self.sorted_objects if o > obj_off]
        return (later[0] if later else len(self.data)) - obj_off

    @property
    def sorted_objects(self):
        return sorted(self.objects)

    def append(self, blob, align=4):
        """Append bytes to the data block; return their offset."""
        data = bytearray(self.data)
        data += b"\0" * (-len(data) % align)
        off = len(data)
        data += blob
        self.data = bytes(data)
        return off

    def set_pointer(self, at, target):
        """Point the u32 at `at` to `target` (registering it as a pointer)."""
        data = bytearray(self.data)
        struct.pack_into("<I", data, at, target)
        self.data = bytes(data)
        if at not in self.relocs:
            self.relocs = sorted(self.relocs + [at])


def parse(raw):
    if raw[:4] != b"SDF0":
        raise ValueError("not an SDF0 file")
    n = struct.unpack_from("<I", raw, 4)[0]
    data = raw[8:8 + n]
    pos = 8 + n

    def take(count):
        nonlocal pos
        vals = list(struct.unpack_from(f"<{count}I", raw, pos))
        pos += count * 4
        return vals

    (n_exports,) = take(1)
    exports = list(zip(take(n_exports), take(n_exports)))
    n_relocs, n_objects, n_classes, n_roots = take(4)
    relocs = take(n_relocs)
    objects = take(n_objects)
    classes, class_raw = [], []
    for _ in range(n_classes):
        class_raw.append(raw[pos:pos + 32])
        classes.append(raw[pos:pos + 32].split(b"\0")[0].decode("latin-1"))
        pos += 32
    roots = [None if r == 0xFFFFFFFF else r for r in take(n_roots)]
    if pos != len(raw):
        raise ValueError(f"link block ends at {pos:#x}, file is {len(raw):#x}")
    return Sdf(data, exports, relocs, objects, classes, roots, class_raw)


def serialize(sdf):
    """Write an Sdf back out (the inverse of parse)."""
    def u32s(values):
        return struct.pack(f"<{len(values)}I", *values)

    # The loader reads the link block with 32-bit loads, so the data block must
    # end on a 4-byte boundary (true for every original file).
    data = bytes(sdf.data) + b"\0" * (-len(sdf.data) % 4)
    out = bytearray(b"SDF0" + struct.pack("<I", len(data)) + data)
    out += u32s([len(sdf.exports)] + [o for o, _ in sdf.exports] + [v for _, v in sdf.exports])
    out += u32s([len(sdf.relocs), len(sdf.objects), len(sdf.classes), len(sdf.roots)])
    out += u32s(sdf.relocs) + u32s(sdf.objects)
    for i, name in enumerate(sdf.classes):
        raw = sdf.class_raw[i] if sdf.class_raw and i < len(sdf.class_raw) else b""
        if raw.split(b"\0")[0].decode("latin-1") != name:
            raw = name.encode("latin-1")[:31].ljust(32, b"\0")
        out += raw
    out += u32s([0xFFFFFFFF if r is None else r for r in sdf.roots])
    return bytes(out)


def main():
    if len(sys.argv) < 2:
        sys.exit(__doc__)
    sdf = parse(Path(sys.argv[1]).read_bytes())
    print(f"data {len(sdf.data):#x} bytes, {len(sdf.relocs)} relocs, {len(sdf.objects)} objects")
    print("exports:", ", ".join(f"{o:#x}={v:#x}" for o, v in sdf.exports) or "-")
    counts = Counter(sdf.class_of(o) for o in sdf.objects)
    for i, name in enumerate(sdf.classes):
        print(f"class {i}: {name} x{counts[name]}")
    print("roots:")
    for i, r in enumerate(sdf.roots):
        if r is not None:
            what = sdf.class_of(r) if r in set(sdf.objects) else "(not an object)"
            print(f"  [{i:2d}] {r:#08x} {what}")
    if "--objects" in sys.argv:
        for o in sdf.sorted_objects:
            print(f"{o:#08x} {sdf.class_of(o):24s} size<={sdf.object_size(o):#x}")


if __name__ == "__main__":
    main()
