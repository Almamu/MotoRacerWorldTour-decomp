#!/usr/bin/env python3
"""Identify the PsyQ library code in the executables with the signatures of
https://github.com/lab313ru/psx_psyq_signatures (clone it anywhere; it
isn't part of this repository).

  tools/psyq_sigs.py SIGS versions       functions and bytes matched by each SDK version
  tools/psyq_sigs.py SIGS objects        where each library object sits, and its versions
  tools/psyq_sigs.py SIGS symbols [SDK_DIR]
                                         symbol_addrs.txt lines for every identified function.
                                         SDK_DIR is make sdk's output (build/sdk): its exact
                                         matches (match.json) override the signatures' names,
                                         and the names its objects refer to (<target>/
                                         <target>_syms.ld, functions and data) are added

Each signature is an object's .text with its relocated bytes masked. It is
cut at the object's function labels and matched function by function (one
changed function shouldn't hide the rest of its object). A function's
matches only count where they put the object's other functions at their
offsets too: the object is placed where the most of its bytes match, over
every SDK version, and the best placements win where two overlap.
"""
import json
import re
import sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
MIN_LEN = 16  # bytes of a function slice, at least half of them not masked
MIN_OBJ = 48  # matched bytes for an object placement to count
MIN_ONE = 96  # ...when only one of its functions matches
MIN_FIXED = 14  # unmasked bytes of a placement
# loc_XXX are branch targets inside a function; text_XXX are static
# functions the object doesn't name.
LOCAL_RE = re.compile(r"^loc_[0-9A-Fa-f]+$")
STATIC_RE = re.compile(r"^text_[0-9A-Fa-f]+$")
# Libraries that duplicate another's code under other names; the game links
# the second (libcd's strings are in both executables).
DUPLICATES = {"LIBDS.LIB": "LIBCD.LIB", "LIBMCX.LIB": "LIBPAD.LIB", "LIBHMD.LIB": "LIBETC.LIB",
              "LIBGS.LIB": "LIBETC.LIB"}
# End of what each config's segments cover (bss included): data symbols
# past it are absolute.
IMAGE_END = {"langimg": 0x800DE7B0, "sces": 0x801CFDD8}
# target: (file, file offset of vram 0, start and end of the searched code).
# The search starts before the startup code, where the libraries begin, to
# catch library code linked before it.
TARGETS = {
    "langimg": ("extracted/mr3dat/data/LANGIMG.DAT", -0x800117F0, 0x800A5000, 0x800B716C),
    "sces": ("extracted/disc/SCES_030.37", 0x800 - 0x80133334, 0x80135000, 0x8014C22C),
}


def versions(sigs):
    return sorted((p.name for p in Path(sigs).iterdir() if p.name.isdigit()), key=int)


def load(sigs, version):
    """The objects of one SDK version, each with its function slices."""
    objs = []
    for f in sorted((Path(sigs) / version).glob("*.json")):
        for e in json.loads(f.read_text()):
            toks = e.get("sig", "").split()  # data-only objects have none
            funcs = [l for l in e.get("labels", []) if not LOCAL_RE.match(l["name"])]
            offs = sorted({l["offset"] for l in funcs})
            slices = []
            for i, off in enumerate(offs):
                end = offs[i + 1] if i + 1 < len(offs) else len(toks)
                part = toks[off:end]
                if len(part) < MIN_LEN or sum(t != "??" for t in part) < MIN_LEN // 2:
                    continue
                pat = b"".join(b"." if t == "??" else re.escape(bytes([int(t, 16)])) for t in part)
                slices.append({"off": off, "len": len(part), "re": re.compile(pat, re.S),
                               "fixed": sum(t != "??" for t in part),
                               "names": [l["name"] for l in funcs if l["offset"] == off]})
            if slices:
                objs.append({"lib": f.name[:-5], "obj": e["name"], "size": len(toks),
                             "version": version, "slices": slices})
    return objs


def code(target):
    path, delta, lo, hi = TARGETS[target]
    data = (ROOT / path).read_bytes()
    return data[lo + delta:hi + delta], lo


def placements(sigs, target, vers=None):
    """Every candidate placement of every object of every version:
    {lib, obj, version, base, bytes, funcs: [(vram, len, names)]}."""
    blob, start = code(target)
    out = []
    for v in vers or versions(sigs):
        for o in load(sigs, v):
            by_base = defaultdict(list)
            for s in o["slices"]:
                for m in s["re"].finditer(blob):
                    if m.start() % 4 == 0:
                        by_base[start + m.start() - s["off"]].append(s)
            for base, ss in by_base.items():
                n = sum(s["len"] for s in ss)
                # One short function of a bigger object matches all over the
                # place: take two functions, or one of MIN_ONE bytes.
                if len(o["slices"]) > 1 and len(ss) < 2 and n < MIN_ONE:
                    continue
                if len(o["slices"]) > 1 and n < MIN_OBJ:
                    continue
                # Too little of a big object, or too few unmasked bytes (a
                # 16-byte getter with its address masked matches any other).
                if n < o["size"] // 10 and n < 256:
                    continue
                if sum(s["fixed"] for s in ss) < MIN_FIXED:
                    continue
                out.append({"lib": o["lib"], "obj": o["obj"], "version": v, "base": base,
                            "size": o["size"], "bytes": n,
                            "funcs": sorted((base + s["off"], s["len"], s["names"]) for s in ss)})
    return out


def resolve(cands):
    """Pick non-overlapping placements, best first. Returns the chosen ones,
    each with the versions whose placement there matched as many bytes."""
    same = defaultdict(set)
    for c in cands:
        same[(c["lib"], c["obj"], c["base"], c["bytes"])].add(c["version"])

    def rank(c):
        dup = 1 if c["lib"] in DUPLICATES else 0
        return (-c["bytes"], dup, -int(c["version"]))
    taken = []  # (lo, hi)
    chosen = []
    seen = set()
    for c in sorted(cands, key=rank):
        key = (c["lib"], c["obj"], c["base"])
        if key in seen:
            continue
        funcs = [f for f in c["funcs"]
                 if not any(lo < f[0] + f[1] and f[0] < hi for lo, hi in taken)]
        if not funcs or sum(f[1] for f in funcs) < min(MIN_OBJ, c["bytes"]):
            continue
        seen.add(key)
        taken += [(f[0], f[0] + f[1]) for f in funcs]
        chosen.append(dict(c, funcs=funcs,
                           versions=sorted(same[(c["lib"], c["obj"], c["base"], c["bytes"])], key=int)))
    # An object is linked once: pieces of it (where versions differ) sit
    # within its size of the best piece. Further ones, or a tie for the
    # best, are other code that happens to look the same.
    by_obj = defaultdict(list)
    for c in chosen:
        by_obj[(c["lib"], c["obj"])].append(c)
    kept = []
    for cs in by_obj.values():
        cs.sort(key=lambda c: -sum(f[1] for f in c["funcs"]))
        best = cs[0]
        nbest = sum(f[1] for f in best["funcs"])
        if len(cs) > 1 and sum(f[1] for f in cs[1]["funcs"]) == nbest \
                and abs(cs[1]["base"] - best["base"]) >= best["size"]:
            continue
        kept += [c for c in cs if abs(c["base"] - best["base"]) < best["size"]]
    return sorted(kept, key=lambda c: c["base"])


def vrange(vs):
    return vs[0] if len(vs) == 1 else f"{vs[0]}-{vs[-1]}"


def cmd_versions(sigs):
    for v in versions(sigs):
        parts = []
        for target in TARGETS:
            chosen = resolve(placements(sigs, target, [v]))
            nf = sum(len(c["funcs"]) for c in chosen)
            nb = sum(f[1] for c in chosen for f in c["funcs"])
            parts.append(f"{target} {nf} functions {nb:,} bytes")
        print(f"{v:>5}: " + ", ".join(parts))


def cmd_objects(sigs):
    for target in TARGETS:
        chosen = resolve(placements(sigs, target))
        nb = sum(f[1] for c in chosen for f in c["funcs"])
        _, _, lo, hi = TARGETS[target]
        print(f"== {target}: {len(chosen)} objects, {nb:,} of {hi - lo:,} bytes searched")
        for c in chosen:
            matched = sum(f[1] for f in c["funcs"])
            print(f"{c['base']:08X} {c['lib']:<12} {c['obj']:<13} {matched:>5}/{c['size']:<5} "
                  f"bytes, versions {vrange(c['versions'])}")


def cmd_symbols(sigs, sdk_dir=None):
    sdk_dir = Path(sdk_dir) if sdk_dir else None
    exact_all = json.loads((sdk_dir / "match.json").read_text()) if sdk_dir else {}
    for target in TARGETS:
        print(f"// {target}")
        # Exact matches (Sony's object itself is there): their names win.
        exact = {}
        for o in exact_all.get(target, []):
            for name, vram in o["functions"]:
                whole = len(o["functions"]) == 1 and vram == o["address"]
                exact[vram] = (name, o["size"] if whole else 0,
                               f"{o['lib']}.LIB/{o['module']}.OBJ exact {' '.join(o['versions'])}")
        exact_names = {n for n, _, _ in exact.values()}
        names, best = {}, {}  # best: name -> (placement's matched bytes, vram)
        for c in resolve(placements(sigs, target)):
            n = sum(f[1] for f in c["funcs"])
            for vram, size, ns in c["funcs"]:
                ns = [x for x in ns if not STATIC_RE.match(x)]
                if not ns or vram in names:
                    continue
                # A name found twice keeps the stronger placement's address.
                if ns[0] in best:
                    if best[ns[0]][0] >= n:
                        continue
                    del names[best[ns[0]][1]]
                best[ns[0]] = (n, vram)
                # The size only for a one-function object matched whole (the
                # BIOS call stubs, which splat can't always tell from data):
                # elsewhere a signature's function can end early (text_XXX
                # labels are sometimes branch targets, sometimes static
                # functions) or be shorter than this version's.
                whole = len(c["funcs"]) == 1 and size == c["size"]
                names[vram] = (ns[0], size if whole else 0, c)
        lines = {}
        for vram, (n, size, c) in names.items():
            if vram in exact or n in exact_names:
                continue
            lines[vram] = (n, size, f"{c['lib']}/{c['obj']} {vrange(c['versions'])}")
        lines.update(exact)
        # Names given by hand (above the generated block) win: drop what
        # clashes with them, by name or by address.
        manual = (ROOT / "config" / target / "symbol_addrs.txt").read_text()
        manual = manual.split("// PsyQ library functions")[0]
        hand = {m.group(1): int(m.group(2), 16)
                for m in re.finditer(r"^\s*([A-Za-z_.$][\w.$]*)\s*=\s*(0x[0-9A-Fa-f]+);", manual, re.M)}
        lines = {v: l for v, l in lines.items() if v not in hand.values() and l[0] not in hand}
        # Names Sony's objects use for the symbols they refer to, at the
        # addresses their relocations have in the original.
        if sdk_dir and (sdk_dir / target / f"{target}_syms.ld").exists():
            _, _, lo, hi = TARGETS[target]
            taken = {n for n, _, _ in lines.values()}
            for line in (sdk_dir / target / f"{target}_syms.ld").read_text().splitlines():
                m = re.match(r"(\S+) = 0x([0-9A-F]+);", line)
                if not m:
                    continue
                name, vram = m.group(1), int(m.group(2), 16)
                if name in taken or vram in lines:
                    continue
                code = lo <= vram < hi
                lines[vram] = (name, 0, "referred to by an SDK object" + ("" if code else " (data)"))
                if not code:
                    lines[vram] = (name, -1, lines[vram][2])
        for vram in sorted(lines):
            n, size, note = lines[vram]
            if size == -1:  # data
                absolute = " absolute:True" if vram >= IMAGE_END[target] else ""
                print(f"{n} = 0x{vram:08X}; //{absolute} {note}")
                continue
            sz = f" size:0x{size:X}" if size else ""
            print(f"{n} = 0x{vram:08X}; // type:func{sz} {note}")


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    sigs, cmd = sys.argv[1], sys.argv[2]
    if cmd == "symbols":
        cmd_symbols(sigs, sys.argv[3] if len(sys.argv) > 3 else None)
    elif cmd in ("versions", "objects"):
        {"versions": cmd_versions, "objects": cmd_objects}[cmd](sigs)
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main()
