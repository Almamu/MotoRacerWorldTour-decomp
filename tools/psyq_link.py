#!/usr/bin/env python3
"""Link Sony's own PsyQ objects in place of the library asm (make sdk).

  tools/psyq_link.py TARGET MATCH_JSON OUTDIR

The normal build assembles the library chunks (src/<target>/lib_NN.c) from
the tracked asm. This writes an alternative build of them: every function
of a lib chunk becomes its own small asm object, except the runs of
functions that an SDK object found by tools/psyq_match.py covers exactly,
which are replaced by that object's .text. Only objects without data of
their own are used (their data is still part of the data disassembly; see
docs/decomp.md, "Libraries").

Writes, under OUTDIR:
  <target>.ld          the linker script, from linker/<target>.ld
  <target>_syms.ld     the addresses of symbols the SDK objects refer to by
                       names this build doesn't define, read back from the
                       original executable at their relocations
  wrap/<chunk>/<name>.s, objects.txt (the objects to assemble and link)
  replaced.txt         the functions Sony's objects replace
and prints a summary. The Makefile assembles and links them.
"""
import json
import re
import struct
import subprocess
import sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
import psyq_match  # noqa: E402

ASM_RE = re.compile(r'^\s*INCLUDE_(ASM|RODATA)\(\s*"([^"]*)"\s*,\s*([^\s)]+)\s*\)', re.M)
DATA_SECTIONS = (".data", ".rdata", ".rodata", ".sdata", ".bss", ".sbss")


def elf(path):
    """Sections {name: (offset, size, index)}, symbols [(name, value, shndx,
    bind)], .text relocations [(offset, type, symbol index)]."""
    d = path.read_bytes()
    shoff, = struct.unpack_from("<I", d, 0x20)
    es, n, si = struct.unpack_from("<HHH", d, 0x2E)
    secs = [struct.unpack_from("<IIIIIIIIII", d, shoff + i * es) for i in range(n)]
    st = secs[si]
    sname = lambda off: d[st[4] + off:d.index(b"\0", st[4] + off)].decode()
    sections = {sname(s[0]): (s[4], s[5], i) for i, s in enumerate(secs)}
    symbols, relocs = [], []
    text_idx = sections.get(".text", (0, 0, -1))[2]
    for s in secs:
        if s[1] == 2:  # SHT_SYMTAB
            strt = secs[s[6]]
            for off in range(s[4], s[4] + s[5], 16):
                nm, val, size, info, other, shndx = struct.unpack_from("<IIIBBH", d, off)
                name = d[strt[4] + nm:d.index(b"\0", strt[4] + nm)].decode()
                symbols.append((name, val, shndx, info >> 4))
    for s in secs:
        if s[1] == 9 and s[7] == text_idx:
            for off in range(s[4], s[4] + s[5], 8):
                r_off, info = struct.unpack_from("<II", d, off)
                relocs.append((r_off, info & 0xFF, info >> 8))
    return d, sections, symbols, relocs


def sext16(v):
    return v - 0x10000 if v & 0x8000 else v


def resolve_externals(obj, base, original, delta):
    """{symbol: address} of the undefined symbols an object's .text refers
    to, from the instructions of the original at its relocations."""
    d, sections, symbols, relocs = elf(obj)
    toff = sections[".text"][0]
    word = lambda buf, off: struct.unpack_from("<I", buf, off)[0]
    out = defaultdict(set)
    pending_hi = {}
    for r_off, rtype, si in relocs:
        name, val, shndx, bind = symbols[si]
        if shndx != 0 or not name:
            continue  # defined in the object
        ow = word(d, toff + r_off)
        gw = word(original, base + r_off + delta)
        if rtype == 4:  # R_MIPS_26
            out[name].add((((base + r_off) & 0xF0000000) | ((gw & 0x3FFFFFF) << 2))
                          - ((ow & 0x3FFFFFF) << 2))
        elif rtype == 2:  # R_MIPS_32
            out[name].add((gw - ow) & 0xFFFFFFFF)
        elif rtype == 5:  # R_MIPS_HI16: wait for its LO16
            pending_hi[name] = (ow, gw)
        elif rtype == 6 and name in pending_hi:  # R_MIPS_LO16
            oh, gh = pending_hi.pop(name)
            got = ((gh & 0xFFFF) << 16) + sext16(gw & 0xFFFF)
            add = ((oh & 0xFFFF) << 16) + sext16(ow & 0xFFFF)
            out[name].add((got - add) & 0xFFFFFFFF)
    return out


def chunk_entries(target, chunk):
    """[(kind, folder, name)] of a lib chunk's source, in order."""
    src = (ROOT / "src" / target / f"{chunk}.c").read_text()
    return [(m.group(1), m.group(2), m.group(3)) for m in ASM_RE.finditer(src)]


def func_addr(path):
    """Address of the first instruction of a function's .s file."""
    m = re.search(r"^glabel \S+\n\s*/\* [0-9A-F]+ ([0-9A-F]{8}) ", path.read_text(), re.M)
    return int(m.group(1), 16) if m else None


def main():
    if len(sys.argv) != 4:
        sys.exit(__doc__)
    target, match_json, outdir = sys.argv[1], Path(sys.argv[2]), Path(sys.argv[3])
    path, delta, lo, hi = psyq_match.TARGETS[target]
    original = psyq_match.image(target, path)
    found = json.loads(match_json.read_text())[target]
    psyq = ROOT / "tools" / "psyq" / "elf"

    # The pure-code objects, by address.
    sdk = {}
    for o in found:
        v = o["versions"][0]
        obj = psyq / v / o["lib"] / f"{o['module']}.o"
        _, sections, _, _ = elf(obj)
        if any(sections.get(s, (0, 0))[1] for s in DATA_SECTIONS):
            continue
        sdk[o["address"]] = dict(o, path=obj)

    ld = (ROOT / "linker" / f"{target}.ld").read_text()
    chunks = sorted(set(re.findall(rf"build/{target}/src/{target}/(lib_\d+)\.o\(\.text\)", ld)))
    wrap = outdir / "wrap"
    entries = {c: chunk_entries(target, c) for c in chunks}
    # Every function start, over all lib chunks (an object can straddle two).
    starts = {func_addr(ROOT / f / f"{n}.s") for c in chunks for k, f, n in entries[c] if k == "ASM"}
    starts.discard(None)
    # An SDK object replaces whole functions: it has to end where one starts.
    accepted = {a: o for a, o in sdk.items()
                if a in starts and (a + o["size"] in starts or a + o["size"] == hi)}
    ranges = sorted((a, a + o["size"], o) for a, o in accepted.items())

    def owner(addr):
        for lo_, hi_, o in ranges:
            if lo_ <= addr < hi_:
                return o
        return None

    objects = []  # (.s wrapper, object) to assemble
    text_lines, rodata_lines = {}, {}
    used, skipped = [], {}
    for chunk in chunks:
        text, rodata = [], []
        for kind, folder, name in entries[chunk]:
            w = wrap / chunk / f"{name}.s"
            o = f"{outdir}/obj/{chunk}/{name}.o"
            if kind == "RODATA":
                w.parent.mkdir(parents=True, exist_ok=True)
                w.write_text(f'.include "macro.inc"\n.section .rodata\n.include "{folder}/{name}.s"\n')
                objects.append((w, o))
                rodata.append(f"        {o}(.rodata);")
                continue
            addr = func_addr(ROOT / folder / f"{name}.s")
            sdk_obj = owner(addr) if addr is not None else None
            if sdk_obj:
                skipped[name] = addr
                if addr == sdk_obj["address"]:
                    text.append(f"        {sdk_obj['path'].relative_to(ROOT)}(.text);")
                    used.append(sdk_obj)
                continue
            w.parent.mkdir(parents=True, exist_ok=True)
            w.write_text('.include "macro.inc"\n.set noat\n.set noreorder\n.text\n.align 2\n'
                         f'.include "{folder}/{name}.s"\n')
            objects.append((w, o))
            text.append(f"        {o}(.text);")
            rodata.append(f"        {o}(.rodata);")
        text_lines[chunk], rodata_lines[chunk] = text, rodata

    # Rewrite the linker script: each lib chunk's .text and .rodata become
    # its pieces; its (empty) .data and .bss go.
    for chunk in chunks:
        base = f"build/{target}/src/{target}/{chunk}.o"
        ld = ld.replace(f"        {base}(.text);", "\n".join(text_lines[chunk]))
        ld = ld.replace(f"        {base}(.rodata);", "\n".join(rodata_lines[chunk]))
        ld = re.sub(rf"\n\s*{re.escape(base)}\((\.data|\.bss)\);", "", ld)
    outdir.mkdir(parents=True, exist_ok=True)
    (outdir / f"{target}.ld").write_text(ld)

    # Symbols: the skipped functions' names at their addresses (other code
    # calls them by those), and the SDK objects' external references.
    sdk_defined = set()
    for o in used:
        _, _, symbols, _ = elf(o["path"])
        sdk_defined |= {n for n, v, shndx, bind in symbols if shndx and bind == 1}
    syms, problems = {}, []
    for name, addr in skipped.items():
        if name not in sdk_defined:
            syms[name] = {addr}
    for o in used:
        for name, vals in resolve_externals(o["path"], o["address"], original, delta).items():
            if name not in sdk_defined:
                syms.setdefault(name, set()).update(vals)
    lines = []
    for name in sorted(syms):
        vals = syms[name]
        if len(vals) != 1:
            problems.append(f"{name}: {', '.join(hex(v) for v in sorted(vals))}")
            continue
        lines.append(f"{name} = 0x{vals.pop():08X};")
    (outdir / f"{target}_syms.ld").write_text("\n".join(lines) + "\n")
    (outdir / "objects.txt").write_text("".join(f"{w} {o}\n" for w, o in objects))
    (outdir / "replaced.txt").write_text("".join(f"{n}\n" for n in sorted(skipped)))
    nbytes = sum(o["size"] for o in used)
    print(f"{target}: {len(used)} SDK objects ({nbytes:,} bytes) replace {len(skipped)} "
          f"asm functions; {len(objects)} asm pieces")
    for p in problems:
        print(f"  inconsistent address for {p}", file=sys.stderr)
    if problems:
        sys.exit(1)


if __name__ == "__main__":
    main()
