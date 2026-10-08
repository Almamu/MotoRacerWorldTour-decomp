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
| 0x8017D300   | player bike: position x, y, z (s32, 1/32 units, Y down), then velocity |
| 0x8017D324   | four contact points (x, y, z) |

Experiments done this way: raising the visible ground (root 6 vertices)
doesn't move the bike; raising collision faces (root 5) lifts it by the same
amount; a disc whose ground and collision were both raised in Blender has
the bikes riding on the raised track.
