#!/usr/bin/env python3
"""Unpack the whole game into editable files, and build a new disc from them.

  workspace.py unpack <track01.bin> <ws>
  workspace.py repack <ws> <out_track01.bin>

unpack creates:
  <ws>/disc/        files of the data track (tools/extract_iso.py)
  <ws>/mr3dat/      MR3.DAT entries + manifest.json (tools/mr3dat.py)
  <ws>/assets/      editable versions:
      <entry>.vrm/  blks/*.png, fonts/*.png        (tools/vrm.py)
      <entry>.png   for .bs loading screens         (tools/bs.py)
      <entry>.snd/  vagNN.wav                       (tools/snd.py)
      <entry>.json  for .sdf files: their strings   (tools/sdf_text.py)
      <entry>.geom/ for .sdf files: meshes, ground, object placements as
                    OBJ/JSON                        (tools/sdf_geom.py)
  <ws>/workspace.json  checksums of everything above

repack converts every asset that was edited back into its MR3.DAT entry
(textures and fonts are palette-mapped, loading screens re-encoded no
larger than the original, samples ADPCM-encoded, strings appended, meshes
and placements written back or replaced), packs
MR3.DAT (unchanged entries are copied byte for byte) and writes a new data
track. Entries under <ws>/mr3dat can also be replaced directly. With no edits
the output track is identical to the input.

The audio tracks don't change: copy them and the .cue next to the new data
track (the cue keeps working, each track is its own file).
"""

import hashlib
import json
import shutil
import subprocess
import sys
from pathlib import Path

TOOLS = Path(__file__).resolve().parent


def run(*args):
    subprocess.run([sys.executable, str(TOOLS / args[0]), *map(str, args[1:])], check=True,
                   stdout=subprocess.DEVNULL)


def sha1(path):
    return hashlib.sha1(Path(path).read_bytes()).hexdigest()


def tree_hashes(root):
    return {p.relative_to(root).as_posix(): sha1(p) for p in sorted(Path(root).rglob("*")) if p.is_file()}


def kind(entry):
    name = entry["file"].lower()
    for ext in (".vrm", ".bs", ".snd", ".sdf"):
        if name.endswith(ext):
            return ext
    return None


def unpack(track, ws):
    ws.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(track, ws / "original_track01.bin")
    run("extract_iso.py", track, ws / "disc")
    run("mr3dat.py", "extract", ws / "disc" / "MR3.DAT", ws / "mr3dat")
    manifest = json.loads((ws / "mr3dat" / "manifest.json").read_text())
    assets = ws / "assets"
    for e in manifest["entries"]:
        src = ws / "mr3dat" / e["file"]
        dst = assets / e["file"]
        dst.parent.mkdir(parents=True, exist_ok=True)
        k = kind(e)
        if k == ".vrm":
            run("vrm.py", "export", src, dst)
        elif k == ".bs":
            tmp = dst.parent / ".bs_tmp"
            run("bs.py", src, tmp)
            (tmp / f"{src.stem}.png").rename(dst.with_suffix(dst.suffix + ".png"))
            tmp.rmdir()
        elif k == ".snd":
            run("snd.py", src, dst)
        elif k == ".sdf":
            run("sdf_text.py", "export", src, dst.with_suffix(dst.suffix + ".json"))
            run("sdf_geom.py", "export", src, Path(str(dst) + ".geom"))
    state = {"assets": tree_hashes(assets), "mr3dat": tree_hashes(ws / "mr3dat")}
    (ws / "workspace.json").write_text(json.dumps(state, indent=1))
    print(f"unpacked into {ws}")


def changed_under(prefix, now, before):
    return any(k.startswith(prefix) and before.get(k) != v for k, v in now.items())


def repack(ws, out_track):
    state = json.loads((ws / "workspace.json").read_text())
    manifest = json.loads((ws / "mr3dat" / "manifest.json").read_text())
    assets = ws / "assets"
    now = tree_hashes(assets)
    rebuilt = 0
    for e in manifest["entries"]:
        k = kind(e)
        entry = ws / "mr3dat" / e["file"]
        a = assets / e["file"]
        if k == ".vrm" and changed_under(e["file"] + "/", now, state["assets"]):
            run("vrm.py", "import", entry, a, entry)
        elif k == ".snd" and changed_under(e["file"] + "/", now, state["assets"]):
            run("snd.py", "import", entry, a, entry)
        elif k == ".bs" and now.get(e["file"] + ".png") != state["assets"].get(e["file"] + ".png"):
            size = entry.stat().st_size
            run("bs.py", "encode", a.with_suffix(a.suffix + ".png"), entry, f"max={size}")
        elif k == ".sdf":
            geom = changed_under(e["file"] + ".geom/", now, state["assets"])
            text = now.get(e["file"] + ".json") != state["assets"].get(e["file"] + ".json")
            if not (geom or text):
                continue
            if geom:
                run("sdf_geom.py", "import", entry, Path(str(a) + ".geom"), entry)
            if text:
                run("sdf_text.py", "import", entry, a.with_suffix(a.suffix + ".json"), entry)
        else:
            continue
        rebuilt += 1
        print(f"rebuilt {e['file']}")
    build = ws / "build"
    build.mkdir(exist_ok=True)
    run("mr3dat.py", "pack", ws / "mr3dat", build / "MR3.DAT", ws / "disc" / "MR3.DAT")
    run("disc.py", "replace", ws / "original_track01.bin", out_track, "MR3.DAT", build / "MR3.DAT")
    print(f"{rebuilt} assets converted -> {out_track}")


def main():
    a = sys.argv[1:]
    if len(a) == 3 and a[0] == "unpack":
        unpack(Path(a[1]), Path(a[2]))
    elif len(a) == 3 and a[0] == "repack":
        repack(Path(a[1]), Path(a[2]))
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main()
