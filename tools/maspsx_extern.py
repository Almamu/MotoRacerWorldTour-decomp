#!/usr/bin/env python3
"""maspsx, plus $gp-relative access to small external variables.

Takes maspsx's arguments and runs it (tools/maspsx, unmodified), with one
addition: a variable this source only declares (`extern int x;`) is
reached through $gp when GCC's `.extern x, SIZE` says it fits in the small
data (SIZE <= -G). The game was built that way: it reads and writes its
small globals with %gp_rel from every file, not only the one that defines
them. GCC emits the `.extern` lines at the end of the file, after the
uses, and maspsx only makes symbols defined in the same file
$gp-relative, so without this every such access comes out as lui + lw.
ASPSX evidently used the sizes.

The externs only answer maspsx's "is this small data?" test; maspsx
doesn't define them (the data disassembly does). With -G0 (the boot
executable) nothing changes. docs/matching_techniques.md, "Small
globals".
"""
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

sys.argv[0] = str(Path(__file__).resolve().parent / "maspsx" / "maspsx.py")
runpy.run_path(sys.argv[0], run_name="__main__")
