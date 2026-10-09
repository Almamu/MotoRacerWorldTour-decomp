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
  adds (what --expand-div emulates). The game's sound engine was
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
    return f"{ind}{op.replace('rem', 'div')}\t$0,{a},{b}\n{ind}{move}\t{d}\n"


if "--div-no-checks" in sys.argv:
    sys.argv.remove("--div-no-checks")
    sys.stdin = io.StringIO("".join(div_no_checks(l) for l in sys.stdin))

sys.argv[0] = str(Path(__file__).resolve().parent / "maspsx" / "maspsx.py")
runpy.run_path(sys.argv[0], run_name="__main__")
