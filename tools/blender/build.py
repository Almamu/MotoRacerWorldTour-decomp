#!/usr/bin/env python3
"""Package the Blender add-on as an installable zip.

  build.py [out.zip]     (default: build/mrwt_blender.zip)

The zip holds mrwt_blender/ plus copies of the tool modules it uses
(sdf, sdf_mesh, sdf_geom, vrm) under mrwt_blender/lib/. Install it with
Blender's Preferences > Get Extensions (or Add-ons) > Install from
Disk; it is an extension (blender_manifest.toml), Blender 4.2 or later. Inside the repo the
add-on also runs straight from tools/blender (it finds tools/ itself).
"""

import sys
import zipfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
TOOLS = HERE.parent
LIBS = ["sdf.py", "sdf_mesh.py", "sdf_geom.py", "vrm.py"]


def main():
    out = Path(sys.argv[1] if len(sys.argv) > 1 else TOOLS.parent / "build" / "mrwt_blender.zip")
    out.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
        for f in sorted((HERE / "mrwt_blender").glob("*.py")) + [HERE / "mrwt_blender" / "blender_manifest.toml"]:
            z.write(f, f"mrwt_blender/{f.name}")
        z.write(TOOLS.parent / "LICENSE", "mrwt_blender/LICENSE")
        for name in LIBS:
            z.write(TOOLS / name, f"mrwt_blender/lib/{name}")
    print(f"-> {out}")


if __name__ == "__main__":
    main()
