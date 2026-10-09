#!/usr/bin/env python3
"""Compare one function of the build with the original, instruction by
instruction.

  tools/diff_func.py NAME           (after make; NAME as in the source/ELF)
  tools/diff_func.py NAME --all     print every instruction, not just the differences

It looks NAME up in build/langimg.elf and build/sces.elf and disassembles
the same bytes of build/<target>.bin and of the original. Relocated
operands (%hi/%lo, jal targets) differ when the code before the function
changed size, so check the first difference, not the count. Exit status 0
when the bytes are identical.
"""
import os
import shutil
import subprocess
import sys
from pathlib import Path

import rabbitizer

ROOT = Path(__file__).resolve().parent.parent


def cross(tool):
    """A binutils tool: $CROSS, else Nix's or Debian/Ubuntu's prefix."""
    prefix = os.environ.get("CROSS")
    if not prefix:
        prefix = "mipsel-unknown-linux-gnu-" if shutil.which("mipsel-unknown-linux-gnu-" + tool) else "mipsel-linux-gnu-"
    return prefix + tool


# target: (original, file offset of vram 0)
TARGETS = {
    "langimg": ("extracted/mr3dat/data/LANGIMG.DAT", -0x800117F0),
    "sces": ("extracted/disc/SCES_030.37", 0x800 - 0x80133334),
}


def find(name):
    for target in TARGETS:
        elf = ROOT / "build" / f"{target}.elf"
        if not elf.exists():
            continue
        out = subprocess.run([cross("readelf"), "-sW", str(elf)],
                             capture_output=True, text=True, check=True).stdout
        for line in out.splitlines():
            p = line.split()
            if len(p) >= 8 and p[3] == "FUNC" and p[7] == name:
                return target, int(p[1], 16), int(p[2], 0)
    sys.exit(f"{name}: no such function in build/*.elf (run make first)")


def disasm(data, vram):
    out = []
    for i in range(0, len(data) - 3, 4):
        word = int.from_bytes(data[i:i + 4], "little")
        out.append((word, rabbitizer.Instruction(word, vram + i).disassemble()))
    return out


def main():
    if len(sys.argv) < 2:
        sys.exit(__doc__)
    name, show_all = sys.argv[1], "--all" in sys.argv
    target, vram, size = find(name)
    orig, delta = TARGETS[target]
    off = vram + delta
    built = (ROOT / "build" / f"{target}.bin").read_bytes()[off:off + size]
    if not (ROOT / orig).exists():
        sys.exit(f"{orig} is missing: this compares against your copy of the game")
    want = (ROOT / orig).read_bytes()[off:off + size]
    a, b = disasm(built, vram), disasm(want, vram)
    diffs = 0
    print(f"{name}: {target} {vram:08X}, {size:#x} bytes")
    print(f"{'':10} {'build':<44} original")
    for i, ((wa, ia), (wb, ib)) in enumerate(zip(a, b)):
        same = wa == wb
        diffs += not same
        if show_all or not same:
            print(f"{vram + 4 * i:08X} {'  ' if same else '! '}{ia:<44} {ib}")
    print("identical" if diffs == 0 else f"{diffs} of {len(a)} instructions differ")
    sys.exit(diffs != 0)


if __name__ == "__main__":
    main()
