# Testing rebuilt discs

`tools/emutest.py` boots a disc in [Mednafen](https://mednafen.github.io/)
under a virtual X server, presses pad buttons at given times and saves
frames, so a rebuilt image can be checked without a display:

```
python3 tools/workspace.py repack ws build/track01.bin
python3 tools/emutest.py --bios ~/path/SCPH1001.BIN --unlock-bios \
    --cue "iso/Moto Racer - World Tour (E) [SCES-03037].cue" \
    --track01 build/track01.bin --seconds 80 --every 5 \
    --keys "20:start,23:start,30:start,35:cross,40:cross,45:cross,50:cross,55:cross,60:cross" \
    extracted/emu/test
```

It writes `run.mov`, `frames/NNN.png` and a contact sheet `sheet.png`. The
cue is regenerated with track 01 swapped, so the audio tracks are reused.
`mednafen`, `xvfb-run`, `xdotool` and `ffmpeg` come from the dev shell.

The key list above (language → title → main menu → Arcade → first track)
reaches the Sachsenring race with the default options in about 65 s:

| Time  | Screen                                     |
|-------|--------------------------------------------|
| 0–15 s | BIOS, "video standard mismatch" notice    |
| 20 s  | language selection (Start = English)       |
| 25 s  | title / licence screens                    |
| 35 s  | main menu (Arcade selected)                |
| 45–55 s | Sachsenring loading screen (`Sac.bs`)    |
| 60 s  | race (the bike stays on the grid)          |

## BIOS and region

A PAL game needs a European BIOS. Mednafen identifies known BIOS images by
hash and refuses one from another region (e.g. SCPH-1001, North America).
`--unlock-bios` writes a copy with one byte changed in a zero-filled unused
area, which Mednafen then accepts as a European BIOS; the original file isn't
modified. The "video standard mismatch" notice from the NTSC BIOS is
harmless. A real SCPH-7502/SCPH-1002 avoids both.

## Verified in the emulator

| Edit                                         | Result |
|----------------------------------------------|--------|
| All `MR3.DAT` entries recompressed            | boots, race OK |
| Menu text (`Menu_0.Sdf`: ARCADE → CLAUDE)      | shown in the main menu |
| Loading screen (`Sac.bs` re-encoded)           | shown, race loads |
| Palettes (`Sac.Vrm` CLUTs)                     | track and rider colours change |
| Meshes (`Sac_PS.sdf`, all trackside items ×2 tall) | rendered, race runs |
| Ground + collision raised 4 m at the start (Blender, snap) | bikes ride on the raised track |

Bugs these runs caught (now fixed): BS columns without the end-of-frame
marker hang the loading screen; an SDF data block that isn't 4-byte aligned
hangs the menu.

## Deterministic runs and RAM access (`tools/psxrun.py`)

For experiments, `psxrun.py` loads the Beetle PSX (Mednafen) libretro core
directly (ctypes, no window): frame-exact input, main RAM as a numpy array,
save/load states and screenshots. Two runs with the same input give the
same frames, so a data change can be measured exactly. One `Psx` per
process (the core keeps global state); compare variants by patching RAM
after `load_state()`, or run each disc in its own process.

```python
from psxrun import Psx
psx = Psx(cue, bios)                 # BIOS copied as scph5502.bin etc.
for frames, button in [(900, None), (10, "start"), (250, None), (10, "start"),
                       (250, None), (10, "start"), (250, None), (10, "cross"),
                       (250, None), (10, "cross"), (250, None), (10, "cross"),
                       (250, None), (10, "cross"), (400, None)]:
    psx.run(frames, [button] if button else [])
# frame 2970: Sachsenring race loaded (arcade, default options)
state = psx.save_state()
```

Useful addresses on that path (European version, Sachsenring):

| Address      | What |
|--------------|------|
| 0x800F7200   | the level's SDF data block (`Sac_PS.sdf` offset 0) |
| (button)     | Triangle cycles the race camera (chase / close chase / …) |
| 0x8017D288   | player bike object (AI bikes follow every 0x580 bytes): +0x64 position x, y, z (s32, 1/32 units, Y down), +0x220…+0x230 collision face records (body, wheels), +0x42C surface type, +0x494 state flags, +0x5A0 handling record |
| 0x8017D300   | a second position (camera/body follower, 1/32 units) with four contact points at 0x8017D324 |

Experiments done this way: raising the visible ground (root 6 vertices)
doesn't move the bike; raising collision faces (root 5) lifts it by the same
amount; a disc whose ground and collision were both raised in Blender has
the bikes riding on the raised track.

## Regression tests (`tools/regress.py`)

`regress.py` plays scripted scenarios on the deterministic runner and
compares checkpoints with references taken from the original disc:

```
python3 tools/regress.py refs "iso/<game>.cue" bios.bin extracted/regress/refs
python3 tools/regress.py run  "iso/<game>.cue" bios.bin extracted/regress/refs out \
    --track01 build/track01.bin
```

Scenarios (in the script): `arcade_race` (main menu → Sachsenring loading
screen → countdown → 1200 frames of racing with the throttle held),
`lap` (a full lap of Sachsenring driven by `tools/autopilot.py`; fails with
`LAP NOT FINISHED` if the bike doesn't get round, e.g. because edited
collision walls it in, or gates no longer count laps), `world_tour` (MODE
page, track select, bike select), `options`, and:

- `track_<name>` for each of the 11 single-race tracks (World Tour → MODE →
  SINGLE RACE → track k → defaults until the race loads): the six road
  tracks drive a full lap with the autopilot (fails if not finished), the
  five off-road tracks (Barcelona, USA Park, Stade de France, Reygades, Belo
  Horizonte) check that the race starts and runs;
- `mode_traffic`, `mode_dragster`, `mode_freestyle`, `mode_trial` from the
  MODE page's second row.

These first set every `Valid*` menu variable to 1 (step `menu_vars`), so
locked tracks and modes are playable: the hook finds the menu's variable
table in RAM from the data itself (a variable's name string, the
`{name, changed}` entry pointing at it, and the descriptor `{values,
info, …, count}` at menu root 0 + 0x74), so it works on edited discs too.
`--only a,b` (prefix match) runs a subset, e.g. `--only track_,lap`. The
whole suite takes about 20 minutes; references take as long to record. Steps
wait for screen conditions (the main menu is detected by its blue
background), so the changed CD timing of a rebuilt disc doesn't matter.

The report lists each checkpoint as `same` or `DIFFERENT` (mean pixel
difference against the reference; menus animate, so up to ~3 is noise and
small edits such as a single icon may not stand out), live race shots as
information only, and these problems, which make the exit status 1:
`FROZEN` (the picture stopped changing while it should animate: a hang),
`BLACK`, `TIMEOUT`. `out/sheet.png` shows reference and result side by
side.

Checked: the original disc matches its references exactly; a disc with
edited menus differs only where the edit shows (the retargeted page link);
a disc whose loading screen lacks the BS end-of-frame markers (the bug
found earlier) is reported `BLACK`/`FROZEN` from the loading screen on.

## Autopilot (`tools/autopilot.py`)

Drives the player's bike from RAM data only: it finds the level module
object by its collision pointer (the face table ends exactly at the
collision header; the current-module global 0x800C5E14 is only set while a
module runs), reads the track gates and the AI racing line 0 (level root
28), steers at the racing-line point a few gates ahead (gate + lane offset)
and follows the line's target-speed byte with throttle and brake. It
finishes Sachsenring in about 7600 frames (2:31 game time) without
crashing, and can set the lap count (race setup +4). Used to observe the
rider animations at the finish (`C_DEF02` when beaten, nothing when
winning) and in the regression `lap` scenario; checked to fail when a
collision wall blocks the track.
