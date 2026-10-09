#!/usr/bin/env python3
"""Regression test a rebuilt disc: play scripted scenarios, compare with references.

  regress.py refs <cue> <bios> <refs_dir>                       record references
  regress.py run  <cue> <bios> <refs_dir> <out_dir> [--track01 X]

Each scenario (SCENARIOS below) is a list of steps run on the deterministic
libretro runner (tools/psxrun.py), one process per scenario. `refs` stores
the screenshots of the original disc; `run` plays the same steps on a
rebuilt one (the cue with track 01 swapped, as tools/emutest.py does) and
reports, per checkpoint, how far the picture is from the reference, plus:

  FROZEN  the picture didn't change for the step's whole duration while
          the game should be animating (a hang, e.g. a bad loading screen)
  BLACK   the picture is (nearly) black
  TIMEOUT a "wait for" step never saw its condition

Steps wait for screen conditions rather than fixed frame counts, so
different CD timings (a rebuilt disc moves MR3.DAT) don't matter. Edits
that are meant to change the picture show up as differences; the report
says where. Exit status 1 if any check failed.
"""

import json
import subprocess
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent

# Step forms:
#   ["press_until", button, "main_menu", timeout]  press every 100 frames until the condition
#   ["press", button]                               tap (8 frames)
#   ["wait", frames]                                 run, checking the picture keeps changing
#   ["hold", button, frames]                         hold a button, same check
#   ["autopilot", laps, max_frames]                   drive with tools/autopilot.py; fails if
#                                                    the lap(s) aren't finished
#   ["shot", name]                                   checkpoint, compared with the reference
#   ["shot", name, "loose"]                          live race: the exact moment depends on CD
#                                                    timing, so the difference is only reported
SCENARIOS = {
    "arcade_race": [
        ["wait", 900, "boot"],
        ["press_until", "cross", "main_menu", 6000],
        ["wait", 100], ["shot", "main_menu"],          # ARCADE selected
        ["press", "cross"], ["wait", 250], ["shot", "loading"],   # Sachsenring loading screen
        ["wait", 250], ["shot", "countdown"],
        ["wait", 500], ["shot", "race_start"],
        ["hold", "cross", 600], ["shot", "racing", "loose"],
        ["hold", "cross", 600], ["shot", "racing_2", "loose"],
    ],
    "lap": [
        ["wait", 900, "boot"],
        ["press_until", "cross", "main_menu", 6000],
        ["wait", 100], ["press", "cross"], ["wait", 1000],     # arcade -> Sachsenring, countdown
        ["autopilot", 1, 12000],                               # one lap following the racing line
        ["shot", "finish", "loose"],
    ],
    "world_tour": [
        ["wait", 900, "boot"],
        ["press_until", "cross", "main_menu", 6000],
        ["wait", 100], ["press", "down"], ["wait", 60],
        ["press", "cross"], ["wait", 300], ["shot", "mode"],      # MODE page (locked modes crossed out)
        ["press", "cross"], ["wait", 300], ["shot", "track"],     # globe / track list
        ["press", "cross"], ["wait", 300], ["shot", "bike"],      # SELECT BIKE
    ],
    "options": [
        ["wait", 900, "boot"],
        ["press_until", "cross", "main_menu", 6000],
        ["wait", 100],
        ["press", "down"], ["wait", 40], ["press", "down"], ["wait", 40], ["press", "down"], ["wait", 60],
        ["shot", "main_options"],
        ["press", "cross"], ["wait", 250], ["shot", "options"],
        ["press", "cross"], ["wait", 250], ["shot", "sound"],
    ],
}

CONDITIONS = {
    # the main menu's blue checkerboard
    "main_menu": lambda im: (im[..., 2].astype(int) > im[..., 0].astype(int) + 60).mean() > 0.4,
}


def run_scenario(cue, bios, steps, workdir):
    """Play `steps`; return ({name: image}, [problems])."""
    sys.path.insert(0, str(HERE))
    from psxrun import Psx
    psx = Psx(cue, bios, workdir=workdir)
    shots, problems = {}, []

    def watch(frames, buttons=()):
        last, unchanged, longest = None, 0, 0
        for _ in range(0, frames, 10):
            psx.run(10, buttons)
            im = psx.image()
            sig = im[::8, ::8].astype(np.int16)
            if last is not None and sig.shape == last.shape and np.abs(sig - last).mean() < 0.5:
                unchanged += 10
                longest = max(longest, unchanged)
            else:
                unchanged = 0
            last = sig
        return longest

    for step in steps:
        kind = step[0]
        if kind == "wait":
            longest = watch(step[1])
            if step[1] >= 300 and step[2:] != ["boot"] and longest >= step[1] - 10:
                problems.append(f"FROZEN during wait {step[1]} (frame {psx.frame_count})")
        elif kind == "hold":
            longest = watch(step[2], [step[1]])
            if longest >= step[2] - 10:
                problems.append(f"FROZEN while holding {step[1]} (frame {psx.frame_count})")
        elif kind == "press":
            psx.run(8, [step[1]])
        elif kind == "press_until":
            _, button, cond, timeout = step
            start = psx.frame_count
            while not CONDITIONS[cond](psx.image()):
                if psx.frame_count - start > timeout:
                    problems.append(f"TIMEOUT waiting for {cond}")
                    break
                psx.run(8, [button])
                psx.run(92)
        elif kind == "autopilot":
            from autopilot import Autopilot
            result = Autopilot(psx).drive(step[2], laps=step[1])
            if not result["finished"]:
                problems.append(f"LAP NOT FINISHED: {result['gates']}/{result['gate_count']} gates "
                                f"in {result['frames']} frames")
        elif kind == "shot":
            im = psx.image()
            shots[step[1]] = im
            if im.mean() < 4:
                problems.append(f"BLACK at {step[1]}")
    return shots, problems


def compare(a, b):
    """Mean absolute difference (0-255) after scaling both to 160x120."""
    from PIL import Image
    x = np.asarray(Image.fromarray(a).resize((160, 120)), np.float32)
    y = np.asarray(Image.fromarray(b).resize((160, 120)), np.float32)
    return float(np.abs(x - y).mean())


def child(cue, bios, scenario, out):
    """Run one scenario in this process and save its shots + problems."""
    from PIL import Image
    out.mkdir(parents=True, exist_ok=True)
    shots, problems = run_scenario(cue, bios, SCENARIOS[scenario], out / "psx")
    for name, im in shots.items():
        Image.fromarray(im).save(out / f"{name}.png")
    (out / "problems.json").write_text(json.dumps(problems))


def spawn(cue, bios, scenario, out):
    # one libretro core per process (it keeps global state)
    r = subprocess.run([sys.executable, __file__, "_child", str(cue), str(bios), scenario, str(out)],
                       capture_output=True, text=True)
    if r.returncode:
        sys.exit(f"{scenario} failed:\n{r.stderr[-2000:]}")


def make_cue(cue, track01, out):
    sys.path.insert(0, str(HERE))
    from emutest import make_cue as mk
    return mk(cue, track01, out)


def main():
    a = sys.argv[1:]
    if a and a[0] == "_child":
        child(a[1], a[2], a[3], Path(a[4]))
        return
    if len(a) == 4 and a[0] == "refs":
        cue, bios, refs = a[1], a[2], Path(a[3])
        for name in SCENARIOS:
            spawn(cue, bios, name, refs / name)
            print(f"{name}: references in {refs / name}")
        return
    if len(a) >= 5 and a[0] == "run":
        cue, bios, refs, out = a[1], a[2], Path(a[3]), Path(a[4])
        out.mkdir(parents=True, exist_ok=True)
        if "--track01" in a:
            cue = make_cue(cue, a[a.index("--track01") + 1], out / "disc.cue")
        from PIL import Image
        failed, lines, sheet = False, [], []
        for name in SCENARIOS:
            spawn(cue, bios, name, out / name)
            problems = json.loads((out / name / "problems.json").read_text())
            for p in problems:
                lines.append(f"{name}: {p}")
                failed = True
            for step in SCENARIOS[name]:
                if step[0] != "shot":
                    continue
                shot = step[1]
                got, ref = out / name / f"{shot}.png", refs / name / f"{shot}.png"
                if not got.exists():
                    lines.append(f"{name}/{shot}: MISSING")
                    failed = True
                    continue
                d = compare(np.asarray(Image.open(got).convert("RGB")),
                            np.asarray(Image.open(ref).convert("RGB"))) if ref.exists() else None
                loose = step[2:] == ["loose"]
                if d is None:
                    verdict = "no reference"
                elif d < 6:
                    verdict = "same"
                else:
                    verdict = "differs (live, not checked)" if loose else f"DIFFERENT ({d:.1f})"
                lines.append(f"{name}/{shot}: {verdict}" + ("" if d is None else f"  [diff {d:.1f}]"))
                pair = [Image.open(got).convert("RGB").resize((200, 150))]
                if ref.exists():
                    pair.insert(0, Image.open(ref).convert("RGB").resize((200, 150)))
                sheet.append(pair)
        report = "\n".join(lines)
        (out / "report.txt").write_text(report + "\n")
        print(report)
        if sheet:
            w = max(len(p) for p in sheet)
            img = Image.new("RGB", (200 * w, 150 * len(sheet)))
            for r, pair in enumerate(sheet):
                for c, im in enumerate(pair):
                    img.paste(im, (200 * c, 150 * r))
            img.save(out / "sheet.png")
        sys.exit(1 if failed else 0)
    sys.exit(__doc__)


if __name__ == "__main__":
    main()
