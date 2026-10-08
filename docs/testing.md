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

Bugs these runs caught (now fixed): BS columns without the end-of-frame
marker hang the loading screen; an SDF data block that isn't 4-byte aligned
hangs the menu.
