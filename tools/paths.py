"""Where a chunk's source and object live.

A chunk (a splat c/cpp segment) is written in src/<target>/<chunk>.c(pp),
unless it belongs to a library: then it is lib/<library>/<target>/<chunk>.c(pp)
(docs/libraries.md). splat's linker script names src/<target>/<chunk>.o;
tools/chunks.py relink points it at the library's object after each split.
"""
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

# Where C and C++ live: what the formatter, the renamer and the checks scan.
SOURCE_DIRS = ("src", "include", "lib")


def chunk_source(target, chunk, ext=None):
    """The source file of a chunk: the library's copy if there is one."""
    exts = (ext,) if ext else ("cpp", "c")
    for e in exts:
        for p in sorted((ROOT / "lib").glob(f"*/{target}/{chunk}.{e}")):
            return p
    for e in exts:
        p = ROOT / "src" / target / f"{chunk}.{e}"
        if p.exists() or ext:
            return p
    return ROOT / "src" / target / f"{chunk}.{exts[0]}"


def library_sources(target):
    """{chunk: source} of the chunks of target that live in lib/."""
    return {p.stem: p for p in sorted((ROOT / "lib").glob(f"*/{target}/*.c*"))
            if p.suffix in (".c", ".cpp")}


def chunk_object(target, chunk):
    """The object a chunk builds to, as the linker script names it."""
    src = chunk_source(target, chunk)
    return f"build/{target}/{src.relative_to(ROOT).with_suffix('.o').as_posix()}"


def chunk_sources(target):
    """Every chunk source of target, src/ and lib/."""
    out = sorted((ROOT / "src" / target).glob("*.c*"))
    return out + list(library_sources(target).values())
