#!/usr/bin/env python3
"""Find which PsyQ SDK objects are linked into the executables, exactly.

  tools/psyq_match.py [--json OUT]

Reads the libraries fetched by tools/fetch_psyq.sh (tools/psyq/<version>/,
including Sony's patches/ directories), converts every module with
psyq-obj-parser (cached under tools/psyq/elf/), and looks for each
object's whole .text in the library part of each executable: every byte
must be equal except the fields its relocations fill in. Prints, for each
executable, every object found, its address and the library versions
whose object is identical there, and how much of the library code that
covers.
"""
import json
import re
import struct
import subprocess
import sys
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import psyq_lib  # noqa: E402

ROOT = Path(__file__).resolve().parent.parent
PSYQ = ROOT / "tools" / "psyq"
PARSER = PSYQ / "psyq-obj-parser"
# target: (file, file offset of vram 0, library code start, end)

def image(target, path):
    """The original executable's bytes: extracted/, or the build, which is
    byte-identical once `make` says OK (CI has no copy of the game)."""
    for p in (ROOT / path, ROOT / "build" / f"{target}.bin"):
        if p.exists():
            return p.read_bytes()
    sys.exit(f"neither {path} nor build/{target}.bin is there: run make first")

TARGETS = {
    "langimg": ("extracted/mr3dat/data/LANGIMG.DAT", -0x800117F0, 0x800A7084, 0x800B716C),
    "sces": ("extracted/disc/SCES_030.37", 0x800 - 0x80133334, 0x80136B4C, 0x8014C22C),
}
# Libraries that carry copies of other libraries' code under other names
# (libds's DsMix is libcd's CdMix, ...). Both executables use libcd (its
# strings are there), so these copies aren't taken.
COPIES = {"LIBDS", "LIBGS", "LIBHMD", "LIBMCX", "LIBCOMB"}
# Relocation types and the bits of the instruction word they fill in.
MASKS = {2: 0xFFFFFFFF, 4: 0x03FFFFFF, 5: 0xFFFF, 6: 0xFFFF, 7: 0xFFFF}


def sources():
    """[(version, library path)] of every fetched library, patches included."""
    out = []
    for d in sorted(p for p in PSYQ.iterdir() if p.is_dir() and p.name[0].isdigit()):
        for lib in sorted(d.rglob("*")):
            if lib.suffix.upper() == ".LIB":
                rel = lib.relative_to(d).as_posix()
                version = d.name + ("p" if rel.lower().startswith("patches/") else "")
                out.append((version, lib))
    return out


def elf_text(path):
    """(.text bytes, [(offset, mask)]) of an ELF32 little-endian object."""
    d = path.read_bytes()
    shoff, = struct.unpack_from("<I", d, 0x20)
    shentsize, shnum, shstrndx = struct.unpack_from("<HHH", d, 0x2E)
    secs = [struct.unpack_from("<IIIIIIIIII", d, shoff + i * shentsize) for i in range(shnum)]
    strtab = secs[shstrndx]
    name = lambda s: d[strtab[4] + s[0]:d.index(b"\0", strtab[4] + s[0])].decode()
    text = relocs = None
    tidx = None
    for i, s in enumerate(secs):
        if name(s) == ".text":
            text, tidx = d[s[4]:s[4] + s[5]], i
    if text is None:
        return b"", []
    masks = []
    for s in secs:
        if s[1] == 9 and s[7] == tidx:  # SHT_REL for .text
            for off in range(s[4], s[4] + s[5], 8):
                r_off, info = struct.unpack_from("<II", d, off)
                masks.append((r_off, MASKS.get(info & 0xFF, 0xFFFFFFFF)))
    return text, masks


def objects():
    """[(version, LIB, module, text, masks, path)], converting what isn't cached."""
    out = []
    for version, lib in sources():
        cache = PSYQ / "elf" / version / lib.stem.upper()
        if not cache.exists():
            psyq_lib.cmd_elf(str(lib), str(cache), str(PARSER))
        for name, _, _ in psyq_lib.modules(lib):
            o = cache / f"{name}.o"
            if o.exists():
                text, masks = elf_text(o)
                if len(text) >= 8:
                    out.append((version, lib.stem.upper(), name, text, masks, o))
    return out


def known_symbols(target):
    """{name: address} from config/<target>/symbol_addrs.txt."""
    out = {}
    for line in (ROOT / "config" / target / "symbol_addrs.txt").read_text().splitlines():
        m = re.match(r"\s*([A-Za-z_.$][\w.$]*)\s*=\s*(0x[0-9A-Fa-f]+);", line)
        if m:
            out[m.group(1)] = int(m.group(2), 16)
    return out


def externals_agree(obj, base, data, delta, known):
    """False if one of the object's calls or address loads of a named
    symbol lands somewhere else than that symbol in the original."""
    import psyq_link  # noqa: E402
    for name, vals in psyq_link.resolve_externals(obj, base, data, delta).items():
        if name in known and vals != {known[name]}:
            return False
    return True


def pattern(text, masks):
    """A regex for the text with the relocated bits free."""
    free = bytearray(len(text))  # 1 where a byte is relocated
    for off, mask in masks:
        for i in range(4):
            if (mask >> (8 * i)) & 0xFF:
                free[off + i] = 1
    return re.compile(b"".join(b"." if free[i] else re.escape(text[i:i + 1])
                               for i in range(len(text))), re.S)


def functions(obj, base):
    """[(name, address)] of the global functions an object defines."""
    import psyq_link  # noqa: E402
    _, sections, symbols, _ = psyq_link.elf(obj)
    text = sections[".text"][2]
    return sorted(((n, base + v) for n, v, shndx, bind in symbols
                   if shndx == text and bind == 1 and n), key=lambda f: f[1])


def main():
    out_json = sys.argv[sys.argv.index("--json") + 1] if "--json" in sys.argv else None
    if not PARSER.exists():
        sys.exit("tools/psyq is missing: run tools/fetch_psyq.sh first")
    objs = objects()
    result = {}
    for target, (path, delta, lo, hi) in TARGETS.items():
        data = image(target, path)
        blob = data[lo + delta:hi + delta]
        known = known_symbols(target)
        found = defaultdict(set)  # (address, LIB, module, size) -> versions
        paths = {}
        for version, lib, name, text, masks, obj in objs:
            for m in pattern(text, masks).finditer(blob):
                a = lo + m.start()
                # Same bytes, but its calls go to other functions: other code.
                if a % 4 == 0 and externals_agree(obj, a, data, delta, known):
                    found[(a, lib, name, len(text))].add(version)
                    paths.setdefault((a, lib, name, len(text)), obj)
        # An object is linked once: one found in several places is other code
        # that looks the same (a 32-byte call wrapper, say).
        places = defaultdict(set)
        for a, lib, name, size in found:
            places[(lib, name, size)].add(a)
        found = {k: v for k, v in found.items() if len(places[k[1:]]) == 1}
        found = {k: v for k, v in found.items() if k[1] not in COPIES}
        # Keep the largest object at each place; drop ones inside another.
        keys = sorted(found, key=lambda k: (k[0], -k[3]))
        kept, end = [], 0
        for k in keys:
            if k[0] >= end or k[0] + k[3] > end:
                if k[0] < end:  # overlaps the previous one: keep the longer
                    continue
                kept.append(k)
                end = k[0] + k[3]
        covered = sum(k[3] for k in kept)
        print(f"== {target}: {len(kept)} objects, {covered:,} of {hi - lo:,} bytes")
        for a, lib, name, size in kept:
            print(f"{a:08X} {size:>6} {lib:<9} {name:<9} {' '.join(sorted(found[(a, lib, name, size)]))}")
        result[target] = [{"address": a, "lib": lib, "module": name, "size": size,
                           "versions": sorted(found[(a, lib, name, size)]),
                           "functions": functions(paths[(a, lib, name, size)], a)}
                          for a, lib, name, size in kept]
    if out_json:
        Path(out_json).write_text(json.dumps(result, indent=1) + "\n")


if __name__ == "__main__":
    main()
