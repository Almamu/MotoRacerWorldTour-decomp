#!/usr/bin/env python3
"""Format the C/C++ in src/, include/ and lib/ with clang-format (.clang-format).

  tools/format.py              format every file in place
  tools/format.py PATH...      just these files or directories
  tools/format.py --check      change nothing; list what isn't formatted (CI runs this)

It needs clang-format 21 (the devshell's; CI pins 21.1.8 in
requirements.txt): other major versions format some things differently.
Set CLANG_FORMAT to use another binary. Formatting only moves whitespace and
line breaks, so the build doesn't change; `make` still checks it.
"""
import os
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DIRS = ("src", "include", "lib")
SUFFIXES = (".c", ".cpp", ".h")
MAJOR = 21


def clang_format():
    exe = os.environ.get("CLANG_FORMAT", "clang-format")
    try:
        out = subprocess.run([exe, "--version"], capture_output=True, text=True, check=True).stdout
    except (OSError, subprocess.CalledProcessError):
        sys.exit(f"{exe} not found: use the devshell, `pip install -r requirements.txt`, "
                 "or set CLANG_FORMAT")
    m = re.search(r"version (\d+)\.", out)
    if not m or int(m.group(1)) != MAJOR:
        sys.exit(f"{exe} is not clang-format {MAJOR}: {out.strip()}")
    return exe


def files(paths):
    out = []
    for p in paths or [ROOT / d for d in DIRS]:
        p = Path(p).resolve()
        if p.is_dir():
            out += sorted(f for f in p.rglob("*") if f.suffix in SUFFIXES and f.is_file())
        elif p.suffix in SUFFIXES:
            out.append(p)
    return out


def main():
    args = sys.argv[1:]
    check = "--check" in args
    paths = [a for a in args if a != "--check"]
    exe = clang_format()
    bad = []
    for f in files(paths):
        text = f.read_text()
        formatted = subprocess.run([exe, "--style=file", f"--assume-filename={f}"], input=text,
                                   capture_output=True, text=True, check=True, cwd=ROOT).stdout
        if formatted != text:
            bad.append(f.relative_to(ROOT))
            if not check:
                f.write_text(formatted)
    if check:
        for f in bad:
            print(f"{f}: not formatted (run tools/format.py)")
        if bad:
            sys.exit(1)
        print("ok")
    else:
        for f in bad:
            print(f"formatted {f}")


if __name__ == "__main__":
    main()
