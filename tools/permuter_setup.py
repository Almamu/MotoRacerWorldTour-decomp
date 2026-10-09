#!/usr/bin/env python3
"""Set up a decomp-permuter directory for one function.

  tools/permuter_setup.py NAME BASE.c DIR [--gcc VERSION] [--cflags FLAGS]

BASE.c is the function as plain C, with every type and declaration it
needs above it: the permuter parses it with pycparser, which knows C, not
C++ (no classes, references or `extern "C"`). DIR gets:

  base.c, settings.toml   the function, and the permuter's settings
  target.o                the original, assembled from NAME's .s file
  compile.sh              the chunk's own compile command (tools/try_func.py),
                          the C wrapped in extern "C" { } for a C++ chunk
  bin/                    an objdump under the name the permuter looks for

Then, with decomp-permuter checked out somewhere (it isn't a dependency of
the build):

  PATH=DIR/bin:$PATH python3 permuter.py DIR -j8 --best-only

docs/workflow.md, "The permuter". Its suggestions are often noise; what's
worth keeping is the idea behind one, written plainly.
"""
import argparse
import os
import shlex
import shutil
import stat
import subprocess
import sys
from pathlib import Path

import paths
import try_func

ROOT = paths.ROOT


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("name")
    ap.add_argument("base")
    ap.add_argument("dir")
    ap.add_argument("--gcc")
    ap.add_argument("--cflags", default="")
    args = ap.parse_args()

    asm, target, chunk = try_func.find_asm(args.name)
    out = Path(args.dir).resolve()
    out.mkdir(parents=True, exist_ok=True)
    shutil.copy(args.base, out / "base.c")
    (out / "settings.toml").write_text(f'func_name = "{args.name}"\ncompiler_type = "gcc"\n')

    src = paths.chunk_source(target, chunk)
    cmd = try_func.compile_cmd(target, src, Path("OUT.o"), [], args.gcc, args.cflags)
    rel = src.relative_to(ROOT).as_posix()
    cpp = src.suffix == ".cpp"
    cmd = cmd.replace(f" {rel} ", ' "$OUT.src" ', 1).replace("-o OUT.o", '-o "$OUT"')
    wrap = """{ echo 'extern "C" {'; cat "$IN"; echo '}'; }""" if cpp else 'cat "$IN"'
    script = out / "compile.sh"
    script.write_text(f"""#!/usr/bin/env bash
# compile.sh IN.c -o OUT.o: {args.name}'s chunk ({rel}), as the Makefile compiles it
set -e
IN=$(realpath "$1"); OUT=$(realpath -m "$3")
{wrap} > "$OUT.src"
cd {shlex.quote(str(ROOT))}
{cmd}
rm -f "$OUT.src"
""")
    script.chmod(script.stat().st_mode | stat.S_IXUSR)

    t = out / "target.s"
    t.write_text('.include "macro.inc"\n.set noat\n.set noreorder\n.text\n' + asm.read_text())
    subprocess.run([try_func.cross("as"), "-EL", "-march=r3000", "-mabi=32", "-G0",
                    "-I", str(ROOT / "include"), str(t), "-o", str(out / "target.o")], check=True)

    (out / "bin").mkdir(exist_ok=True)
    link = out / "bin" / "mips-linux-gnu-objdump"
    if link.is_symlink() or link.exists():
        link.unlink()
    link.symlink_to(shutil.which(try_func.cross("objdump")))

    r = subprocess.run([str(script), str(out / "base.c"), "-o", str(out / "base.o")],
                       capture_output=True, text=True)
    if r.returncode:
        sys.exit(f"base.c doesn't compile:\n{r.stderr}")
    print(out)


if __name__ == "__main__":
    main()
