#!/usr/bin/env python3
"""Compile one source file and compare one function with its .s file,
without building or linking anything else.

  tools/try_func.py NAME                   the function's chunk source, as make builds it
  tools/try_func.py NAME FILE              another source (a scratch copy of the chunk)
  tools/try_func.py NAME -D NON_MATCHING   with extra defines: try parked C
  tools/try_func.py NAME -v                every instruction, not just the differences
  tools/try_func.py NAME --gcc 2.91.66     another compiler (tools/gcc-VERSION-psx)
  tools/try_func.py NAME --cflags='-fX'    extra compiler flags

NAME is the function as its .s file is named (asm/<target>/nonmatchings/
<chunk>/NAME.s), so this is for functions not matched yet. The source is
compiled with the Makefile's own command for that chunk (taken from
`make -n`), so the compiler, flags and -G match. Instructions are compared
as words; where either side has a relocation (%hi/%lo, jal) only the
opcode and registers are compared, since addresses differ before linking.

The last line is a summary: how many instructions differ, and a "shape"
diff of the opcodes alone, which tells instruction order and count
problems (statement order, missing or extra instructions) apart from
register choices. Exit status 0 when every instruction matches.
"""
import argparse
import difflib
import os
import re
import shlex
import subprocess
import sys
import tempfile
from pathlib import Path

import rabbitizer

ROOT = Path(__file__).resolve().parent.parent


def find_asm(name):
    hits = sorted(ROOT.glob(f"asm/*/nonmatchings/*/{name}.s"))
    if not hits:
        sys.exit(f"{name}: no asm/*/nonmatchings/*/{name}.s (already matched?)")
    p = hits[0]
    return p, p.parts[-4], p.parts[-2]  # path, target, chunk


def target_words(path):
    """(word, relocated, text) for each instruction of a splat .s file."""
    out = []
    for line in path.read_text().splitlines():
        m = re.match(r"\s*/\* [0-9A-F]+ [0-9A-F]+ ([0-9A-F]{8}) \*/\s+(\S.*)", line)
        if not m or m.group(2).startswith("."):
            continue
        word = int.from_bytes(bytes.fromhex(m.group(1)), "little")
        text = m.group(2)
        reloc = "%" in text or text.split()[0] in ("jal", "j") or "(D_" in text
        out.append((word, reloc, text))
    return out


def compile_cmd(target, src, out, defines, gcc=None, cflags=""):
    """The Makefile's command for this chunk, pointed at src and out."""
    rel = src.relative_to(ROOT) if src.is_relative_to(ROOT) else src
    chunk_src = None
    for ext in (".cpp", ".c"):
        if (ROOT / "src" / target / (src.stem + ext)).exists():
            chunk_src = Path("src") / target / (src.stem + ext)
    obj = f"build/{target}/src/{target}/{src.stem}.o"
    if chunk_src is None:
        sys.exit(f"{src}: name it after a chunk of {target} (it picks the chunk's compile command)")
    cmd = subprocess.run(["make", "-n", "-B", obj], cwd=ROOT, capture_output=True,
                         text=True).stdout
    line = next((l for l in cmd.splitlines() if "cc1" in l), None)
    if line is None:
        sys.exit(f"make -n {obj} printed no compile command")
    line = re.sub(r"-MD \S+", "", line)
    line = line.replace(f" {chunk_src} ", f" {shlex.quote(str(rel))} " + " ".join(f"-D{d}" for d in defines) + " ", 1)
    if gcc:
        line = re.sub(r"tools/gcc-[0-9.]+-psx", f"tools/gcc-{gcc}-psx", line)
        line = re.sub(r"-D__GNUC_MINOR__=\d+", f"-D__GNUC_MINOR__={gcc.split('.')[1]}", line)
    if cflags:
        line = re.sub(r"(/cc1(?:plus)?) ", rf"\1 {cflags} ", line, count=1)
    return re.sub(r"-o \S+$", f"-o {shlex.quote(str(out))}", line)


def cross(tool):
    prefix = os.environ.get("CROSS") or ("mipsel-unknown-linux-gnu-" if subprocess.run(
        ["which", "mipsel-unknown-linux-gnu-" + tool], capture_output=True).returncode == 0
        else "mipsel-linux-gnu-")
    return prefix + tool


def object_words(obj, name):
    """(word, relocated) for each instruction of name in an object file."""
    syms = subprocess.run([cross("readelf"), "-sW", str(obj)], capture_output=True, text=True,
                          check=True).stdout
    sym = None
    for l in syms.splitlines():
        p = l.split()
        if len(p) >= 8 and p[3] == "FUNC" and p[7] == name:
            sym = (int(p[1], 16), int(p[2]), p[6])
    if sym is None:
        sys.exit(f"{name}: not defined in the compiled source (still an INCLUDE_ASM? try -D NON_MATCHING)")
    value, size, shndx = sym
    secs = subprocess.run([cross("readelf"), "-SW", str(obj)], capture_output=True, text=True,
                          check=True).stdout
    secname = None
    for l in secs.splitlines():
        m = re.match(r"\s*\[\s*(\d+)\]\s+(\S+)", l)
        if m and m.group(1) == shndx:
            secname = m.group(2)
    with tempfile.NamedTemporaryFile(suffix=".bin") as t:
        subprocess.run([cross("objcopy"), "-O", "binary", "-j", secname, str(obj), t.name], check=True)
        data = Path(t.name).read_bytes()[value:value + size]
    relocs = set()
    rel = subprocess.run([cross("readelf"), "-rW", str(obj)], capture_output=True, text=True,
                         check=True).stdout
    cur = None
    for l in rel.splitlines():
        m = re.match(r"Relocation section '\.rel\.?(\S+)'", l)
        if m:
            cur = "." + m.group(1).lstrip(".")
            continue
        p = l.split()
        if cur == secname and p and re.fullmatch(r"[0-9a-f]{8}", p[0]):
            off = int(p[0], 16) - value
            if 0 <= off < size:
                relocs.add(off // 4)
    return [(int.from_bytes(data[i:i + 4], "little"), i // 4 in relocs) for i in range(0, size, 4)]


def same(a, b):
    (wa, ra), (wb, rb) = a, b
    if wa == wb:
        return True
    if not (ra or rb):
        return False
    ia, ib = rabbitizer.Instruction(wa), rabbitizer.Instruction(wb)
    if ia.uniqueId != ib.uniqueId:
        return False
    mask = 0xFC000000 if ia.isJType() else 0xFFFF0000
    return (wa & mask) == (wb & mask)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("name")
    ap.add_argument("source", nargs="?")
    ap.add_argument("-D", dest="defines", action="append", default=[])
    ap.add_argument("-v", action="store_true")
    ap.add_argument("--gcc", help="compiler version, e.g. 2.91.66")
    ap.add_argument("--cflags", default="", help="extra compiler flags")
    args = ap.parse_args()

    asm, target, chunk = find_asm(args.name)
    if args.source:
        src = Path(args.source).resolve()
    else:
        src = next(p for p in (ROOT / "src" / target / f"{chunk}{e}" for e in (".cpp", ".c")) if p.exists())
    want = target_words(asm)
    with tempfile.TemporaryDirectory() as d:
        obj = Path(d) / "out.o"
        cmd = compile_cmd(target, src, obj, args.defines, args.gcc, args.cflags)
        r = subprocess.run(cmd, shell=True, cwd=ROOT, capture_output=True, text=True)
        errors = [l for l in r.stderr.splitlines() if "warning" not in l]
        if r.returncode or not obj.exists():
            sys.exit("\n".join(errors) or "compile failed")
        have = object_words(obj, args.name)

    def dis(w):
        return rabbitizer.Instruction(w[0]).disassemble()

    diffs = 0
    for i in range(max(len(have), len(want))):
        h = have[i] if i < len(have) else None
        w = want[i][:2] if i < len(want) else None
        ok = h is not None and w is not None and same(h, w)
        diffs += not ok
        if args.v or not ok:
            print(f"{4 * i:5X} {'  ' if ok else '! '}{dis(h) if h else '':<40} "
                  f"{want[i][2] if w else ''}")
    ops_h = [rabbitizer.Instruction(w).getOpcodeName() for w, _ in have]
    ops_w = [rabbitizer.Instruction(w).getOpcodeName() for w, _, _ in want]
    shape = sum(1 for t in difflib.SequenceMatcher(None, ops_h, ops_w, autojunk=False).get_opcodes()
                if t[0] != "equal")
    print(f"{args.name}: {diffs} of {len(want)} instructions differ "
          f"({len(have)} built), {shape} opcode run(s) out of place")
    sys.exit(diffs != 0)


if __name__ == "__main__":
    main()
