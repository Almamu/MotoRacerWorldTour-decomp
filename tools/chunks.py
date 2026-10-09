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
"""
import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
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
        "game": "the boot executable's C, GCC 2.91.66",
    },
}
LIB_NOTE = (
    "PsyQ library code (libc, libcd, libgpu, ...), from the startup code on. "
    "Sony built the libraries, so their compiler may not be the game's; "
    "check that first (docs/decomp.md, \"Libraries\")."
)

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
        ["mipsel-unknown-linux-gnu-readelf", "-sW", str(elf)],
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


def survey(target):
    funcs = functions(target)
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
                 "state": "parked" if n in parked else "todo" if n in todo else "done"}
                for a, n, sz in fs
            ],
        })
    return out


def cmd_status(args):
    total = {"f": 0, "fd": 0, "b": 0, "bd": 0}
    for target in TARGETS:
        rows = survey(target)
        tf = sum(len(c["funcs"]) for c in rows)
        td = sum(1 for c in rows for f in c["funcs"] if f["state"] == "done")
        tb = sum(f["size"] for c in rows for f in c["funcs"])
        tbd = sum(f["size"] for c in rows for f in c["funcs"] if f["state"] == "done")
        print(f"{target}: {td}/{tf} functions, {tbd:,}/{tb:,} bytes ({100 * tbd / tb:.2f}%)")
        for c in rows:
            done = [f for f in c["funcs"] if f["state"] == "done"]
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
        box = "x" if f["state"] == "done" else " "
        note = " (parked: C doesn't match yet)" if f["state"] == "parked" else ""
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
            if all(f["state"] == "done" for f in c["funcs"]):
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
            body = issue_body(c)
            if body.strip() == i["body"].strip():
                continue
            print(f"#{i['number']} {c['target']} {c['name']}: updated")
            if not args.dry_run:
                gh("issue", "edit", str(i["number"]), "--body-file", "-", input=body)


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
    args = ap.parse_args()
    {"status": cmd_status, "issues": cmd_issues, "sync": cmd_sync}[args.cmd](args)


if __name__ == "__main__":
    main()
