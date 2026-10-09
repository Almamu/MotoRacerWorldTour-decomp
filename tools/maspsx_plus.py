#!/usr/bin/env python3
"""maspsx (tools/maspsx, unmodified), plus what this project needs on top.

Takes maspsx's arguments, and these:

- Small externs (always on). A variable a file only declares (`extern int
  x;`) is reached through $gp when GCC's `.extern x, SIZE` puts it in the
  small data (SIZE <= -G). The game reads and writes its small globals
  with %gp_rel from every file, not only from the one that defines them.
  GCC emits the `.extern` lines at the end of the file, after the uses,
  and maspsx only makes symbols the file defines $gp-relative; ASPSX
  evidently used the sizes. The externs only answer maspsx's "is this
  small data?" test; maspsx doesn't define them (the data disassembly
  does). With -G0 nothing changes.

- --div-no-checks: a division GCC leaves to the assembler (`div $d,$a,$b`,
  also divu, rem and remu) becomes the bare instruction and a move from
  LO (or HI), without the divide-by-zero and overflow checks ASPSX 2.79
  adds (what --expand-div emulates), and a nop before the next
  instruction that reads the result, even past a label: that assembler
  gave mflo a delay slot like a load's. The game's sound engine was
  assembled that way (docs/libraries.md).

docs/matching_techniques.md, "Small globals" and "Divisions".
"""
import io
import re
import runpy
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent / "maspsx"))
import maspsx  # noqa: E402


class SmallData(dict):
    """maspsx's sdata table, also claiming the small externs as members."""

    def __init__(self, entries, externs):
        super().__init__(entries)
        self.externs = externs

    def __contains__(self, symbol):
        return super().__contains__(symbol) or symbol in self.externs


preprocess = maspsx.MaspsxProcessor.preprocess_lines


def preprocess_lines(self):
    preprocess(self)
    externs = set()
    for line in self.lines:
        if line.startswith(".extern"):
            symbol, _, size = line.split(None, 1)[1].partition(",")
            size = int(size.strip() or 0)
            if 0 < size <= self.sdata_limit:
                externs.add(symbol.strip())
    self.sdata_entries = SmallData(self.sdata_entries, externs)


maspsx.MaspsxProcessor.preprocess_lines = preprocess_lines

DIV = re.compile(r"^(\s*)(div|divu|rem|remu)\s+(\$\w+),\s*(\$\w+),\s*(\$\w+)\s*$")


def div_no_checks(line):
    m = DIV.match(line)
    if not m or m.group(3) in ("$0", "$zero"):
        return line
    ind, op, d, a, b = m.groups()
    move = "mfhi" if op.startswith("rem") else "mflo"
    return f"{ind}{op.replace('rem', 'div')}\t$0,{a},{b}\n{ind}{move}\t{d}\t# DIV_NO_CHECKS\n"


def reads(line, reg):
    """Whether an instruction line reads reg (any operand but the first,
    or a branch's or store's first)."""
    parts = line.split(None, 1)
    if len(parts) < 2:
        return False
    op, args = parts[0], [a.strip() for a in parts[1].split("#")[0].split(",")]
    sources = args if op.startswith(("b", "s", "j")) else args[1:]
    return any(re.search(rf"(^|[(,]){re.escape(reg)}($|[),])", a) for a in sources)


def mflo_delay(lines):
    """A nop before the first instruction after an inserted mflo/mfhi that
    reads its register, labels and directives in between notwithstanding."""
    out, pending = [], None
    for line in lines:
        st = line.strip()
        if pending and st and not st.endswith(":") and not st.startswith((".", "#")):
            if reads(st, pending):
                out.append("\tnop\n")
            pending = None
        out.append(line)
        m = re.match(r"\s*(mflo|mfhi)\t(\$\w+)\s*# DIV_NO_CHECKS", line)
        if m:
            pending = m.group(2)
    return out


if "--div-no-checks" in sys.argv:
    sys.argv.remove("--div-no-checks")
    text = "".join(div_no_checks(l) for l in sys.stdin)
    sys.stdin = io.StringIO("".join(mflo_delay(text.splitlines(keepends=True))))

sys.argv[0] = str(Path(__file__).resolve().parent / "maspsx" / "maspsx.py")
runpy.run_path(sys.argv[0], run_name="__main__")
