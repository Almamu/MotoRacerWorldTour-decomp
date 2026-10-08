#!/usr/bin/env python3
"""Boot a (rebuilt) disc in Mednafen headless, press buttons, keep frames.

  emutest.py --bios SCPH.BIN --cue "iso/<game>.cue" [--track01 new_track01.bin]
             [--seconds 60] [--keys "12:start,14:cross,70:cross:20"] [--every 5]
             [--unlock-bios] <out_dir>

Writes <out_dir>/run.mov (Mednafen's own recording), frames/NNN.png (one
every --every seconds) and sheet.png (all frames). The disc is the original
cue with track 01 swapped for --track01, so the audio tracks are reused.

Buttons for --keys (time in seconds:button[:seconds held]): up down left
right cross circle square triangle start select l1 r1 l2 r2. In a race,
cross accelerates, e.g. "68:cross:30" drives for 30 s.

Mednafen refuses a BIOS it knows to be from another region than the disc
(e.g. SCPH1001, North America, for this PAL game). --unlock-bios writes a
copy into <out_dir> with one byte changed in an unused (zero-filled) area,
so Mednafen no longer recognises it and runs it as a European console; the
original file isn't touched. The disc region check is done by the emulated
CD controller, which follows the console region.

Needs mednafen, xvfb-run, xdotool and ffmpeg (all in the dev shell).
"""

import argparse
import os
import re
import shutil
import subprocess
import tempfile
from pathlib import Path

# SDL scancodes bound to the PS1 pad on port 1.
KEYS = {
    "up": (82, "Up"), "down": (81, "Down"), "left": (80, "Left"), "right": (79, "Right"),
    "cross": (14, "k"), "circle": (15, "l"), "square": (13, "j"), "triangle": (12, "i"),
    "start": (40, "Return"), "select": (43, "Tab"),
    "l1": (20, "q"), "r1": (8, "e"), "l2": (26, "w"), "r2": (21, "r"),
}


def unlock_bios(src, dst):
    data = bytearray(Path(src).read_bytes())
    best = max(((m.end() - m.start(), m.start()) for m in re.finditer(rb"\x00{1024,}", data)), default=None)
    if not best:
        raise SystemExit("no zero-filled area to change in this BIOS")
    length, start = best
    data[start + length // 2] = 1
    Path(dst).write_bytes(data)
    return dst


def make_cue(cue, track01, out):
    cue = Path(cue).resolve()
    lines = []
    first = True
    for line in cue.read_text().splitlines():
        m = re.match(r'\s*FILE\s+"(.+)"\s+(\w+)', line)
        if m:
            path = Path(track01).resolve() if (first and track01) else cue.parent / m.group(1)
            line = f'FILE "{path}" {m.group(2)}'
            first = False
        lines.append(line)
    out.write_text("\n".join(lines) + "\n")
    return out


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("out")
    ap.add_argument("--bios", required=True)
    ap.add_argument("--cue", required=True)
    ap.add_argument("--track01")
    ap.add_argument("--seconds", type=int, default=60)
    ap.add_argument("--keys", default="")
    ap.add_argument("--every", type=float, default=5)
    ap.add_argument("--unlock-bios", action="store_true")
    a = ap.parse_args()

    out = Path(a.out).resolve()
    if out.exists():
        shutil.rmtree(out)
    (out / "frames").mkdir(parents=True)
    home = out / "mednafen-home"
    home.mkdir()
    bios = unlock_bios(a.bios, out / "bios.bin") if a.unlock_bios else Path(a.bios).resolve()
    cue = make_cue(a.cue, a.track01, out / "disc.cue")

    # absolute paths in the generated cue need the "untrusted path" check off
    opts = ["-sound", "0", "-psx.region_autodetect", "1", "-filesys.untrusted_fip_check", "0"]
    for region in ("na", "eu", "jp"):
        opts += [f"-psx.bios_{region}", str(bios)]
    for name, (scancode, _) in KEYS.items():
        opts += [f"-psx.input.port1.gamepad.{name}", f"keyboard 0x0 {scancode}"]
    schedule = []
    for item in filter(None, a.keys.split(",")):
        t, button, *hold = item.split(":")
        schedule.append((float(t), KEYS[button.strip()][1], float(hold[0]) if hold else 0.15))
    schedule.sort()

    script = ["set -u", f'export MEDNAFEN_HOME="{home}" SDL_AUDIODRIVER=dummy',
              "mednafen " + " ".join(f"'{o}'" for o in opts) + f" -qtrecord '{out}/run.mov' '{cue}' > '{out}/mednafen.log' 2>&1 &",
              "PID=$!", "sleep 3",
              "WIN=$(timeout 20 xdotool search --sync --class mednafen | head -1)",
              '[ -n "$WIN" ] || { echo "mednafen window not found" >&2; kill -INT $PID; exit 1; }',
              'xdotool windowfocus "$WIN" 2>/dev/null || true']
    now = 3.0
    for t, key, hold in schedule:
        if t > now:
            script.append(f"sleep {t - now}")
            now = t
        script.append(f'xdotool keydown --window "$WIN" {key}; sleep {hold}; xdotool keyup --window "$WIN" {key}')
        now += hold
    script += [f"sleep {max(1, a.seconds - now)}", "kill -INT $PID", "wait $PID || true"]
    (out / "run.sh").write_text("\n".join(script) + "\n")
    subprocess.run(["xvfb-run", "-a", "-s", "-screen 0 1024x768x24", "bash", str(out / "run.sh")], check=True)

    subprocess.run(["ffmpeg", "-nostdin", "-loglevel", "error", "-y", "-i", str(out / "run.mov"),
                    "-vf", f"fps=1/{a.every}", str(out / "frames" / "%03d.png")], check=True)
    n = len(list((out / "frames").glob("*.png")))
    cols = min(n, 6)
    subprocess.run(["ffmpeg", "-nostdin", "-loglevel", "error", "-y", "-i", str(out / "run.mov"),
                    "-vf", f"fps=1/{a.every},scale=320:-1,tile={cols}x{-(-n // cols)}",
                    "-frames:v", "1", str(out / "sheet.png")], check=True)
    print(f"{n} frames -> {out}/frames, contact sheet {out}/sheet.png")


if __name__ == "__main__":
    main()
