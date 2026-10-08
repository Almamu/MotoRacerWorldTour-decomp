#!/usr/bin/env python3
"""Export and re-import the text strings of an SDF file.

  sdf_text.py export <file.sdf> <strings.json>
  sdf_text.py import <file.sdf> <strings.json> <out.sdf>

`export` lists every pointer (from the relocation list) that points at a
NUL-terminated, printable Latin-1 string: {"at": pointer offset, "text": ...}.
Pointers that share a string are listed separately, so they can be changed
independently.

`import` applies the edited "text" values: an unchanged string is left as
is; a changed one is appended to the end of the data block and the pointer
is redirected to it (no existing data moves). Strings are Latin-1; the game
fonts cover printable ASCII plus some accented letters (see the font glyph
counts in docs/formats/vrm.md).
"""

import json
import sys
from pathlib import Path

from sdf import parse, serialize


def strings(sdf):
    out = []
    for at in sdf.relocs:
        target = sdf.u32(at)
        if target >= len(sdf.data):
            continue
        end = sdf.data.find(b"\0", target)
        if end <= target or end - target > 256:
            continue
        raw = sdf.data[target:end]
        if all(32 <= c < 127 or 160 <= c for c in raw) and any(65 <= (c | 32) - 32 <= 90 or 97 <= c <= 122 for c in raw):
            out.append({"at": at, "text": raw.decode("latin-1")})
    return out


def main():
    a = sys.argv[1:]
    if len(a) == 3 and a[0] == "export":
        sdf = parse(Path(a[1]).read_bytes())
        entries = strings(sdf)
        Path(a[2]).write_text(json.dumps(entries, indent=1, ensure_ascii=False))
        print(f"{len(entries)} strings -> {a[2]}")
    elif len(a) == 4 and a[0] == "import":
        sdf = parse(Path(a[1]).read_bytes())
        current = {e["at"]: e["text"] for e in strings(sdf)}
        changed = 0
        for e in json.loads(Path(a[2]).read_text()):
            if current.get(e["at"]) == e["text"]:
                continue
            off = sdf.append(e["text"].encode("latin-1") + b"\0")
            sdf.set_pointer(e["at"], off)
            changed += 1
        Path(a[3]).write_bytes(serialize(sdf))
        print(f"{changed} strings changed -> {a[3]}")
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main()
