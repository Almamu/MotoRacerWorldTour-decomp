#!/usr/bin/env python3
"""Decompilation progress by chunk, and the GitHub issues that track it.

The code of each executable is split into chunks of about 8 KB
(config/<target>.yaml; docs/decomp.md, "Chunks"), one source file each:
src/<target>/chunk_NN.cpp (or .c) for the game's own code, lib_NN.c for
the libraries. A function is still to do while its source file has an
INCLUDE_ASM for it; one under `#else` of `#ifdef NON_MATCHING` has C that
doesn't match yet.

The function list comes from build/<target>.elf, so build first (make).

  tools/chunks.py status [--all]          progress per chunk (--all: every chunk)
  tools/chunks.py issues DIR              write each chunk's issue (title + body) to DIR
  tools/chunks.py issues DIR --create     ...and open them on GitHub (gh)
  tools/chunks.py sync [--dry-run]        tick done functions in the open chunk issues
  tools/chunks.py check                   the tree's bookkeeping (needs no build): every
                                          INCLUDE_ASM/INCLUDE_RODATA has its .s, every .s under
                                          asm/*/nonmatchings/ is included, handwritten.txt agrees
  tools/chunks.py cleanup-issues DIR --naming N --headers N [--create]
                                          a blocked cleanup follow-up per game chunk
"""
import argparse
import json
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent


def cross(tool):
    """A binutils tool: $CROSS, else Nix's or Debian/Ubuntu's prefix."""
    prefix = os.environ.get("CROSS")
    if not prefix:
        prefix = "mipsel-unknown-linux-gnu-" if shutil.which("mipsel-unknown-linux-gnu-" + tool) else "mipsel-linux-gnu-"
    return prefix + tool


REPO = "Almamu/MotoRacerWorldTour-decomp"
URL = f"https://github.com/{REPO}"
LABEL = "decomp-chunk"

TARGETS = {
    "langimg": {
        "what": "`LANGIMG.DAT`, the game",
        "game": "the game's C++, GCC 2.95.2",
    },
    "sces": {
        "what": "`SCES_030.37`, the boot executable",
        "game": "the boot executable's C++, GCC 2.91.66",
    },
}
LIB_NOTE = (
    "PsyQ library code (libc, libcd, libgpu, ...), from the startup code on. "
    "**Don't decompile it by hand yet:** #97 is about naming it from the PsyQ "
    "signatures and linking the SDK's own objects or existing decompiled "
    "source instead."
)

# Decompiled, linked from Sony's own PsyQ object by make sdk, or written in
# assembly in the original (config/<target>/handwritten.txt).
DONE = ("done", "sdk", "asm")
INCLUDE_ASM_RE = re.compile(r'^\s*INCLUDE_ASM\(\s*"[^"]*"\s*,\s*([^\s)]+)\s*\)')
COMMENT_RE = re.compile(r"//.*?$|/\*.*?\*/", re.S | re.M)


def chunks(target):
    """[(name, ext, start vram, end vram)] of the code subsegments, in order."""
    cfg = yaml.safe_load((ROOT / "config" / f"{target}.yaml").read_text())
    for seg in cfg["segments"]:
        if isinstance(seg, dict) and seg.get("type") == "code":
            break
    base = seg["vram"] - seg["start"]
    subs = []
    for s in seg["subsegments"]:
        start, kind, name = (s["start"], s["type"], s["name"]) if isinstance(s, dict) else s[:3]
        subs.append((start + base, kind, name))
    out = []
    for i, (start, kind, name) in enumerate(subs):
        if kind in ("c", "cpp"):
            out.append((name, kind, start, subs[i + 1][0]))
    return out


def functions(target):
    """{vram: (name, size)} of the functions in build/<target>.elf."""
    elf = ROOT / "build" / f"{target}.elf"
    if not elf.exists():
        sys.exit(f"{elf} is missing: run make first")
    res = subprocess.run(
        [cross("readelf"), "-sW", str(elf)],
        capture_output=True, text=True, check=True,
    ).stdout
    funcs = {}
    for line in res.splitlines():
        p = line.split()
        # Size 0: an alternate entry point inside another function.
        if len(p) >= 8 and p[3] == "FUNC" and int(p[2], 0):
            funcs[int(p[1], 16)] = (p[7], int(p[2], 0))
    return funcs


def remaining(path):
    """(todo, parked): names still INCLUDE_ASM'd in a source file; parked
    ones have non-matching C under #ifdef NON_MATCHING."""
    todo, parked = set(), set()
    stack = []  # one entry per #if: True while in the #else of NON_MATCHING
    text = COMMENT_RE.sub("", path.read_text())
    for line in text.splitlines():
        s = line.strip()
        if s.startswith("#if"):
            stack.append(s in ("#ifdef NON_MATCHING", "#if NON_MATCHING") and "nm")
        elif s.startswith("#else") and stack:
            stack[-1] = "else" if stack[-1] == "nm" else stack[-1]
        elif s.startswith("#endif") and stack:
            stack.pop()
        m = INCLUDE_ASM_RE.match(line)
        if m:
            (parked if "else" in stack else todo).add(m.group(1))
    return todo, parked


def handwritten(target):
    """Functions written in assembly in the original (config/<target>/
    handwritten.txt): they stay asm and count as done."""
    p = ROOT / "config" / target / "handwritten.txt"
    if not p.exists():
        return set()
    return {l.split("#")[0].strip() for l in p.read_text().splitlines()} - {""}


def sdk_functions(target):
    """Functions that a verified make sdk links from Sony's own objects."""
    p = ROOT / "build" / "sdk" / f"{target}.sdk_functions.txt"
    return set(p.read_text().split()) if p.exists() else set()


def survey(target):
    funcs = functions(target)
    sdk = sdk_functions(target)
    hand = handwritten(target)
    out = []
    for name, ext, lo, hi in chunks(target):
        src = ROOT / "src" / target / f"{name}.{ext}"
        todo, parked = remaining(src)
        fs = [(a,) + funcs[a] for a in sorted(funcs) if lo <= a < hi]
        out.append({
            "target": target, "name": name, "ext": ext, "lo": lo, "hi": hi,
            "lib": name.startswith("lib_"), "src": src.relative_to(ROOT).as_posix(),
            "funcs": [
                {"addr": a, "name": n, "size": sz,
                 "state": "parked" if n in parked else "sdk" if n in sdk
                          else "asm" if n in hand else "todo" if n in todo else "done"}
                for a, n, sz in fs
            ],
        })
    return out


def cmd_status(args):
    total = {"f": 0, "fd": 0, "b": 0, "bd": 0}
    for target in TARGETS:
        rows = survey(target)
        tf = sum(len(c["funcs"]) for c in rows)
        td = sum(1 for c in rows for f in c["funcs"] if f["state"] in DONE)
        tb = sum(f["size"] for c in rows for f in c["funcs"])
        tbd = sum(f["size"] for c in rows for f in c["funcs"] if f["state"] in DONE)
        print(f"{target}: {td}/{tf} functions, {tbd:,}/{tb:,} bytes ({100 * tbd / tb:.2f}%)")
        for c in rows:
            done = [f for f in c["funcs"] if f["state"] in DONE]
            parked = [f for f in c["funcs"] if f["state"] == "parked"]
            if args.all or done or parked:
                b = sum(f["size"] for f in c["funcs"])
                bd = sum(f["size"] for f in done)
                extra = f", {len(parked)} parked" if parked else ""
                print(f"  {c['name']:<9} {c['lo']:08X}-{c['hi']:08X} "
                      f"{len(done):>3}/{len(c['funcs']):<3} functions "
                      f"{100 * bd / b:6.2f}%{extra}")
        total["f"] += tf; total["fd"] += td; total["b"] += tb; total["bd"] += tbd
    print(f"total: {total['fd']}/{total['f']} functions, "
          f"{100 * total['bd'] / total['b']:.2f}% of the code")


def issue_title(c):
    kind = "library code, " if c["lib"] else ""
    return (f"Decompile {c['target']} {c['name']} "
            f"({kind}{c['lo']:#010x}-{c['hi']:#010x}, {len(c['funcs'])} functions)")


def issue_body(c):
    t = TARGETS[c["target"]]
    size = (c["hi"] - c["lo"]) / 1024
    lines = [
        f"Chunk `{c['name']}` of {t['what']}: {size:.1f} KB of code at "
        f"`{c['lo']:#010x}`-`{c['hi']:#010x}`.",
        "",
        f"- **Source:** [`{c['src']}`]({URL}/blob/main/{c['src']})",
        f"- **Asm:** `asm/{c['target']}/nonmatchings/{c['name']}/`",
        f"- **Code:** {LIB_NOTE if c['lib'] else t['game'] + ' (docs/decomp.md)'}",
        "",
        f"**Claiming:** comment saying you're taking the whole chunk, or which "
        f"functions. Taking the whole chunk is preferred; a few functions is "
        f"fine too. See [CONTRIBUTING.md]({URL}/blob/main/CONTRIBUTING.md#claiming-work). "
        f"A box is ticked once its function matches (`tools/chunks.py sync`).",
        "",
        f"**Functions ({len(c['funcs'])}):**",
        "",
    ]
    for f in c["funcs"]:
        box = "x" if f["state"] in DONE else " "
        note = {"parked": " (parked: C doesn't match yet)",
                "sdk": " (Sony's object, `make sdk`)",
                "asm": " (hand-written assembly, stays asm)"}.get(f["state"], "")
        lines.append(f"- [{box}] `{f['name']}` `{f['addr']:08X}` {f['size']:#x} bytes{note}")
    lines += [
        "",
        "---",
        "*Generated by `tools/chunks.py` from the source tree. Close the issue "
        "when every box is ticked.*",
        "",
    ]
    return "\n".join(lines)


def labels_for(c):
    return [LABEL, c["target"]] + (["library"] if c["lib"] else [])


def gh(*args, **kw):
    return subprocess.run(["gh", *args, "--repo", REPO], check=True, text=True,
                          capture_output=True, **kw).stdout


def cmd_issues(args):
    out = Path(args.dir)
    out.mkdir(parents=True, exist_ok=True)
    existing = set()
    if args.create:
        existing = {i["title"].split(" (")[0] for i in json.loads(
            gh("issue", "list", "--label", LABEL, "--state", "all",
               "--limit", "1000", "--json", "title"))}
    for target in TARGETS:
        for c in survey(target):
            if all(f["state"] in DONE for f in c["funcs"]):
                continue
            title, body = issue_title(c), issue_body(c)
            stem = f"{c['target']}_{c['name']}"
            (out / f"{stem}.title").write_text(title + "\n")
            (out / f"{stem}.md").write_text(body)
            if args.create:
                if title.split(" (")[0] in existing:
                    print(f"exists: {title}")
                    continue
                labels = ",".join(labels_for(c))
                url = gh("issue", "create", "--title", title,
                         "--body-file", str(out / f"{stem}.md"), "--label", labels).strip()
                print(f"{url} {title}")


def cmd_sync(args):
    issues = json.loads(gh("issue", "list", "--label", LABEL, "--state", "open",
                           "--limit", "1000", "--json", "number,title,body"))
    by_title = {i["title"].split(" (")[0]: i for i in issues}
    for target in TARGETS:
        for c in survey(target):
            i = by_title.get(issue_title(c).split(" (")[0])
            if not i:
                continue
            title, body = issue_title(c), issue_body(c)
            if body.strip() == i["body"].strip() and title == i["title"]:
                continue
            print(f"#{i['number']} {c['target']} {c['name']}: updated")
            if not args.dry_run:
                gh("issue", "edit", str(i["number"]), "--title", title,
                   "--body-file", "-", input=body)


CLEANUP_LABELS = ["cleanup", "blocked"]


def cleanup_title(c, n):
    return f"Cleanup follow-up for #{n}: {c['target']} {c['name']}"


def cleanup_body(c, n, naming, headers):
    lines = [
        f"**Blocked by #{n}: don't start until every function there is "
        f"decompiled or parked.** This is a placeholder created alongside #{n} "
        f"so the cleanup of `{c['src']}` isn't forgotten; there's nothing to "
        f"clean until its C exists. Remove the `blocked` label when #{n} closes.",
        "",
        "Then go through the chunk's code, keeping both executables "
        "byte-identical (`make` from clean, both `OK`):",
        "",
        f"- **Names** (#{naming}): replace placeholders whose meaning is now "
        "clear: `func_XXXXXXXX` functions (C++ ones become methods of their "
        "class, under their GCC 2.95 mangled name in `symbol_addrs.txt`), "
        "`D_XXXXXXXX` globals, `m_XX` fields, placeholder class names. An "
        "honest placeholder is better than a guess.",
        f"- **Classes and headers** (#{headers}): classes and declarations "
        "go in `include/<target>/` headers, one per class or subsystem; the "
        "chunk file declares nothing itself.",
        "- **Raw offsets**: `*(s32 *)((u8 *)p + 0x10)`-style accesses become "
        "fields of the right struct or class, reusing one that exists.",
        "- **Matching workarounds** are often load-bearing: change one only "
        "if the rebuild shows the same bytes; otherwise leave it with a "
        "one-line comment saying why.",
        "",
        f"**Functions from #{n} to check ({len(c['funcs'])}):**",
        "",
    ]
    lines += [f"- [ ] `{f['name']}`" for f in c["funcs"]]
    lines += [
        "",
        "---",
        "*Generated by `tools/chunks.py cleanup-issues`. The names above are "
        "a snapshot; renamed functions keep their address order.*",
        "",
    ]
    return "\n".join(lines)


def cmd_cleanup_issues(args):
    """One blocked cleanup follow-up per chunk of the executables' own code
    (the libraries are handled by their own issue)."""
    chunk_issues = {i["title"].split(" (")[0]: i["number"] for i in json.loads(
        gh("issue", "list", "--label", LABEL, "--state", "all",
           "--limit", "1000", "--json", "number,title"))}
    existing = {i["title"] for i in json.loads(
        gh("issue", "list", "--label", "cleanup", "--state", "all",
           "--limit", "1000", "--json", "title"))}
    out = Path(args.dir)
    out.mkdir(parents=True, exist_ok=True)
    for target in TARGETS:
        for c in survey(target):
            if c["lib"]:
                continue
            n = chunk_issues.get(issue_title(c).split(" (")[0])
            if n is None:
                print(f"no chunk issue for {target} {c['name']}", file=sys.stderr)
                continue
            title = cleanup_title(c, n)
            stem = f"cleanup_{target}_{c['name']}"
            (out / f"{stem}.md").write_text(cleanup_body(c, n, args.naming, args.headers))
            if not args.create:
                continue
            if title in existing:
                print(f"exists: {title}")
                continue
            url = gh("issue", "create", "--title", title, "--body-file",
                     str(out / f"{stem}.md"), "--label",
                     ",".join(CLEANUP_LABELS + [target])).strip()
            print(f"{url} {title}")


INCLUDE_RE = re.compile(r'^\s*INCLUDE_(?:ASM|RODATA)\(\s*"([^"]*)"\s*,\s*([^\s)]+)\s*\)', re.M)


def cmd_check(args):
    errors = []
    for target in TARGETS:
        included = set()
        for src in sorted((ROOT / "src" / target).glob("*.c*")):
            for m in INCLUDE_RE.finditer(COMMENT_RE.sub("", src.read_text())):
                path = ROOT / m.group(1) / f"{m.group(2)}.s"
                included.add(path)
                if not path.exists():
                    errors.append(f"{src.relative_to(ROOT)}: {m.group(2)}: "
                                  f"{path.relative_to(ROOT)} is missing")
        for path in sorted((ROOT / "asm" / target / "nonmatchings").rglob("*.s")):
            if path not in included:
                errors.append(f"{path.relative_to(ROOT)}: no INCLUDE_ASM includes it "
                              "(delete it once its function is decompiled)")
        names = {p.stem for p in included}
        for name in sorted(handwritten(target)):
            if name not in names:
                errors.append(f"config/{target}/handwritten.txt: {name} has no INCLUDE_ASM")
    for e in errors:
        print(e)
    if errors:
        sys.exit(f"{len(errors)} problem(s)")
    print("ok")


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)
    p = sub.add_parser("status")
    p.add_argument("--all", action="store_true")
    p = sub.add_parser("issues")
    p.add_argument("dir")
    p.add_argument("--create", action="store_true")
    p = sub.add_parser("sync")
    p.add_argument("--dry-run", action="store_true")
    sub.add_parser("check")
    p = sub.add_parser("cleanup-issues")
    p.add_argument("dir")
    p.add_argument("--naming", type=int, required=True, help="the naming tracking issue")
    p.add_argument("--headers", type=int, required=True, help="the headers issue")
    p.add_argument("--create", action="store_true")
    args = ap.parse_args()
    {"status": cmd_status, "issues": cmd_issues, "sync": cmd_sync, "check": cmd_check,
     "cleanup-issues": cmd_cleanup_issues}[args.cmd](args)


if __name__ == "__main__":
    main()
