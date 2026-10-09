#!/usr/bin/env python3
"""Regression test a rebuilt disc: play scripted scenarios, compare with references.

  regress.py refs <cue> <bios> <refs_dir>                       record references
  regress.py run  <cue> <bios> <refs_dir> <out_dir> [--track01 X] [--only a,b]
  (refs also takes --only; scenario names: arcade_race, lap, world_tour,
  options, track_<name> for every single-race track)

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
#   ["menu_vars", {"Valid*": 1}]                     set menu variables in RAM (test hook)
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

# Single races on every track (World Tour -> MODE -> SINGLE RACE -> track k),
# with every Valid* unlock set first. Road tracks also drive a lap.
TRACKS = ["sachsenring", "suzuka", "iom_road", "eastern_creek", "iom_hills", "iom_town",
          "barcelona", "usa_park", "stade_de_france", "reygades", "belo_horizonte"]
ROAD = {"sachsenring", "suzuka", "iom_road", "eastern_creek", "iom_hills", "iom_town"}
for _k, _name in enumerate(TRACKS):
    SCENARIOS[f"track_{_name}"] = [
        ["wait", 900, "boot"],
        ["press_until", "cross", "main_menu", 6000],
        ["wait", 100], ["menu_vars", {"Valid*": 1}],
        ["press", "down"], ["wait", 60], ["press", "cross"], ["wait", 300],   # WORLD TOUR -> MODE
        ["press", "cross"], ["wait", 300],                                     # SINGLE RACE -> tracks
        *[s for _ in range(_k) for s in (["press", "down"], ["wait", 60])],
        ["shot", "track"],
        ["press_until", "cross", "race", 4000],                                # bike, gearbox, ... -> race
        ["wait", 600, "boot"], ["shot", "race_start"],
        *([["autopilot", 1, 14000], ["shot", "finish", "loose"]] if _name in ROAD
          else [["hold", "cross", 600], ["shot", "racing", "loose"]]),
    ]

# The special modes, from the MODE page's bottom row (cursor starts on
# SINGLE RACE; down = FREESTYLE), defaults accepted until the race loads.
for _name, _moves in (("traffic", ["left", "left"]), ("dragster", ["left"]),
                      ("freestyle", []), ("trial", ["right"])):
    SCENARIOS[f"mode_{_name}"] = [
        ["wait", 900, "boot"],
        ["press_until", "cross", "main_menu", 6000],
        ["wait", 100], ["menu_vars", {"Valid*": 1}],
        ["press", "down"], ["wait", 60], ["press", "cross"], ["wait", 300],   # WORLD TOUR -> MODE
        ["press", "down"], ["wait", 60],
        *[s for m in _moves for s in (["press", m], ["wait", 60])],
        ["shot", "mode"],
        ["press_until", "cross", "race", 5000],
        ["wait", 600, "boot"], ["shot", "race_start"],
        ["hold", "cross", 600], ["shot", "racing", "loose"],
    ]

CONDITIONS = {
    # the main menu's blue checkerboard
    "main_menu": lambda im: (im[..., 2].astype(int) > im[..., 0].astype(int) + 60).mean() > 0.4,
}


def _in_race(psx):
    """A level is loaded (its module object can be found in RAM)."""
    from autopilot import find_level
    try:
        find_level(psx)
        return True
    except Exception:
        return False


def menu_variables(psx):
    """{name: RAM address of its u32 value} for the running menu, found from
    the data: a variable's name string, the 8-byte VarInfo {char* name, u32}
    pointing at it, and the table descriptor {u32* values, VarInfo* info, ...,
    +0x14 count} whose info array contains that entry (menu root 0 + 0x74)."""
    ram = psx.ram.tobytes()
    words = psx.ram.view(np.uint32)
    at = ram.find(b"ValidTraffic\0")
    if at < 0:
        raise RuntimeError("menu variables not found (not in a menu?)")
    entry = int(np.nonzero(words == 0x80000000 + at)[0][0]) * 4 + 0x80000000
    for i in np.nonzero((words >= entry - 8 * 400) & (words <= entry) & ((entry - words) % 8 == 0))[0]:
        desc = int(i) * 4 - 4
        if desc < 0:
            continue
        values, info, count = int(words[desc // 4]), int(words[desc // 4 + 1]), int(words[desc // 4 + 5])
        if not (0x80000000 <= values < 0x80200000 and 10 < count < 1000 and entry < info + 8 * count):
            continue
        out = {}
        for k in range(count):
            name_at = int(words[(info & 0x1FFFFF) // 4 + 2 * k]) & 0x1FFFFF
            out[ram[name_at:ram.index(b"\0", name_at)].decode("latin-1")] = values + 4 * k
        return out
    raise RuntimeError("menu variable table not found")


def set_menu_variables(psx, assignments):
    """assignments: {name or prefix*: value}"""
    variables = menu_variables(psx)
    n = 0
    for pattern, value in assignments.items():
        for name, addr in variables.items():
            if name == pattern or (pattern.endswith("*") and name.startswith(pattern[:-1])):
                a = addr & 0x1FFFFF
                psx.ram[a:a + 4] = list(int(value).to_bytes(4, "little"))
                n += 1
    return n


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
            check = (lambda: _in_race(psx)) if cond == "race" else (lambda: CONDITIONS[cond](psx.image()))
            while not check():
                if psx.frame_count - start > timeout:
                    problems.append(f"TIMEOUT waiting for {cond}")
                    break
                psx.run(8, [button])
                psx.run(92)
        elif kind == "menu_vars":
            if not set_menu_variables(psx, step[1]):
                problems.append(f"menu variables {list(step[1])} not found")
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


def selected(args):
    """Scenarios to run: all, or those matching --only a,b (prefixes allowed)."""
    if "--only" not in args:
        return list(SCENARIOS)
    want = args[args.index("--only") + 1].split(",")
    return [n for n in SCENARIOS if any(n == w or n.startswith(w) for w in want)]


def main():
    a = sys.argv[1:]
    if a and a[0] == "_child":
        child(a[1], a[2], a[3], Path(a[4]))
        return
    if len(a) >= 4 and a[0] == "refs":
        cue, bios, refs = a[1], a[2], Path(a[3])
        for name in selected(a):
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
        for name in selected(a):
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
