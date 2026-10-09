# Moto Racer World Tour (PS1) — reverse engineering

[![Build and compare](https://github.com/Almamu/MotoRacerWorldTour-decomp/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/Almamu/MotoRacerWorldTour-decomp/actions/workflows/build.yml)
[![Matching decompilation](https://github.com/Almamu/MotoRacerWorldTour-decomp/blob/badges/matching.svg?raw=true)](docs/decomp.md#progress)
[![Non-matching decompilation](https://github.com/Almamu/MotoRacerWorldTour-decomp/blob/badges/nonmatching.svg?raw=true)](docs/decomp.md#progress)

Reverse engineering of *Moto Racer World Tour* for the PlayStation (PAL,
SCES-03037, 2000): disc layout, data archive, file formats, and the code that
loads them.

This repository doesn't contain the disc or its files: you need your own
copy for the tools below, and everything extracted from it stays out of git
(`iso/` and `extracted/` are ignored). The matching decompilation does track
the two executables' disassembly (code and data), from which it rebuilds
them.

## Documentation

See [`docs/`](docs/README.md) for the disc layout, the executables and every
file format worked out so far.

## Matching decompilation

The game code (`LANGIMG.DAT`, C++, GCC 2.95.2) and the boot executable
(`SCES_030.37`, C++, GCC 2.91.66) rebuild byte for byte from this repository
alone: `make setup`, then `make`. Almost all of
the code is still assembly (`tools/chunks.py status` has the numbers).

> **Want to help? Read [CONTRIBUTING.md](CONTRIBUTING.md) first.** The code
> is split into chunks of about 8 KB, each a
> [GitHub issue](https://github.com/Almamu/MotoRacerWorldTour-decomp/issues?q=is%3Aopen%20is%3Aissue%20label%3Adecomp-chunk)
> listing its functions, which you claim by commenting. Every change has to
> keep both executables byte-identical.

[`docs/decomp.md`](docs/decomp.md) has the compilers and the evidence for
them, the chunks, how to decompile a function, and the memory maps.

## AI-assisted decompilation

A large part of this project's work (the file formats, the tools, the
decompilation setup and the decompiled code) has been done with AI coding
agents (Claude Code), under human supervision and review. That's the main
way the project makes progress and it's expected to stay that way. What
follows from it:

- **Nothing is trusted on the AI's say-so.** A function counts as
  decompiled only when a clean `make` rebuilds both executables
  byte-identical, whoever (or whatever) wrote it.
- **Contributions from AI-assisted work are welcome**, including with
  your own AI tooling, as long as they meet the same standard: both
  executables stay byte-identical, and nothing is presented as more
  certain than it is. [CONTRIBUTING.md](CONTRIBUTING.md) and
  [docs/decomp.md](docs/decomp.md) are written so that a fresh agent
  session (or a person) has the context it needs.
- **Names stay honest.** A placeholder (`func_8001B778`, `D_800C4A10`,
  `m_04`) is a valid name. Replace it only when the meaning is clear; an
  invented name is worse than a placeholder.
- **People make the calls that matter:** what gets merged, how the
  project is organised, and any judgement that isn't mechanical
  verification.

If that makes this a project you'd rather not contribute to, that's a
reasonable position; just know it going in.

## Modding workflow

```sh
# everything into editable files (PNG textures/fonts/loading screens, WAV samples, JSON strings)
python3 tools/workspace.py unpack "iso/<track 01>.bin" ws
# ...edit files under ws/assets (or replace raw entries under ws/mr3dat)...
python3 tools/workspace.py repack ws "build/<track 01>.bin"
# put the original .cue and audio tracks next to the new data track
```

Only edited assets are converted back; everything else is copied byte for
byte, so a repack without edits reproduces the original data track. The
individual steps are also available on their own:

```sh
python3 tools/mr3dat.py extract extracted/disc/MR3.DAT extracted/mr3dat
python3 tools/mr3dat.py pack extracted/mr3dat build/MR3.DAT extracted/disc/MR3.DAT
python3 tools/disc.py replace "iso/<track 01>.bin" "build/<track 01>.bin" MR3.DAT build/MR3.DAT
```

What can be edited:

| Asset | Edit as | Notes |
|---|---|---|
| Textures, fonts (`.Vrm`) | PNG | mapped to each texture's existing palette. A sprite PNG with a new size, or a `blks/<hash>.json` `{"bpp": 8}` (4, 8 or 15), moves the sprite to free VRAM with its own palette (the game draws HUD sprites at their new size). Sprites and fonts identical in several banks (HUD, fonts) are unpacked once to `assets/shared/` and written into every bank that has them |
| Palettes (`.Vrm`) | PNG strip per CLUT | exact 15-bit colours; alpha = transparency / STP bit |
| Loading screens (`.bs`) | PNG | re-encoded no larger than the original |
| Sound banks (`.snd`) | WAV (16-bit mono) | ADPCM-encoded; loop layout kept; SPU RAM is 512 KB |
| Text in scenes/database (`.sdf`) | JSON | new strings appended, pointers redirected |
| Meshes, ground, object placements (`.sdf`) | Blender (`tools/blender`, recommended) or OBJ / JSON | same topology: positions and UVs in place; draw items can get a new mesh (textured or flat tris/quads); in Blender, new objects (new or existing models) can be added to levels |
| Menus (`Menu_N`, `EndM_N`, levels' in-game menu) | `<entry>.menu.json` | variable defaults (e.g. `Valid*` unlocks), `PAGELIST` page names, button page links, item/event/button scripts as expressions (recompiled; grown scripts are appended) |
| Track gates, AI racing lines (`.sdf`) | Blender | gate position/direction/width; racing-line lane offsets, target speeds, flags |
| Collision surface (`.sdf`) | Blender | corner moves re-encode the faces; "Snap Collision to Ground" after ground edits |
| Movies (`CINE/*.DPS`) | MP4 (`assets/cine`) | any video ffmpeg reads: scaled to the original size and frame rate, MDEC and XA ADPCM encoded, any length (a longer one moves to the end of the track) |
| Anything else in `MR3.DAT` | raw file | replace it under `ws/mr3dat` |

Not supported yet: new sprites the game would have to be told to draw. Edits are tested in an emulator (`docs/testing.md`: Mednafen, a deterministic libretro runner and a regression suite); not yet on hardware.

## Tools

All tools are Python 3 scripts (`numpy`, `pillow`; `capstone` for
disassembly helpers). Run them from the repository root:

```sh
# 1. Filesystem of the data track (raw MODE2/2352 .bin)
python3 tools/extract_iso.py "iso/<track 01>.bin" extracted/disc

# 2. The main archive (decompresses LZSS entries, applies known names, writes manifest.json)
python3 tools/mr3dat.py extract extracted/disc/MR3.DAT extracted/mr3dat
#    ...edit files under extracted/mr3dat, then rebuild (unchanged entries are copied as-is)
python3 tools/mr3dat.py pack extracted/mr3dat build/MR3.DAT extracted/disc/MR3.DAT

# 3. Individual formats
python3 tools/vrm.py extracted/mr3dat/data/final/Usa.Vrm extracted/vrm/Usa   # textures -> PNG
python3 tools/bs.py extracted/mr3dat/data/final/*.bs extracted/bs            # loading screens -> PNG
python3 tools/snd.py extracted/mr3dat/data/sounds/menu.snd extracted/snd/menu # sound bank -> WAV
python3 tools/sdf.py extracted/mr3dat/data/final/Tri_PS.sdf                     # scene/level summary
python3 tools/dps.py extracted/disc/CINE/INTRO.DPS extracted/cine/INTRO.mp4      # movie -> MP4
python3 tools/dps.py encode my.mp4 extracted/disc/CINE/INTRO.DPS build/INTRO.DPS # video -> movie
python3 tools/sdf_mesh.py extracted/mr3dat/data/final/Usa_PS.sdf extracted/sdf/Usa \
    --vrm extracted/mr3dat/data/final/Usa.Vrm                                  # level -> textured OBJ
```

| Tool                   | Input             | Output                                        |
|------------------------|-------------------|-----------------------------------------------|
| `extract_iso.py`       | data track (.bin) | disc files + `files.txt`                       |
| `workspace.py`         | disc ⇄ workspace  | unpack everything / repack edited assets into a new data track |
| `disc.py`              | data track (.bin) | replace files (in place or moved to the end), EDC/ECC regenerated; `verify` |
| `mr3dat.py`            | `MR3.DAT` ⇄ dir   | extract (+ `manifest.json`) / pack (LZSS encoder, CRCs, hash table) |
| `mr3dat_names.txt`     | —                 | recovered `MR3.DAT` file names                 |
| `vrm.py`               | `.Vrm` ⇄ PNG      | export textures/fonts; import edited PNGs (palette-mapped) |
| `bs.py`                | `.bs` ⇄ PNG       | decode; `encode` (BS v2, qscale or size target) |
| `snd.py`               | `.snd` ⇄ WAV      | export names + samples; `import` edited WAVs (ADPCM encoder) |
| `sdf.py`               | `.sdf`            | parse / serialize (byte-identical), summary     |
| `sdf_geom.py`          | `.sdf` ⇄ OBJ/JSON | export meshes/ground/placements; import edits or new meshes |
| `sdf_text.py`          | `.sdf` ⇄ JSON     | export / re-import text strings (menus, DB)    |
| `sdf_rig.py`           | level `.sdf`      | rider rig (root 9): skeleton, posed OBJ export, vertex/pose write-back |
| `menu_script.py`       | menu / level `.sdf` | pages, page lists and decompiled widget scripts (menu flow, unlocks) |
| `sdf_mesh.py`          | level `.sdf` (+`.Vrm`) | textured OBJ: ground, draw items, placed objects |
| `dps.py`               | `.DPS` ⇄ video    | MP4 (via ffmpeg, correct frame rate); encode any video back |
| `dxr.py`               | `.dxr`            | code relocated to a fixed base (for Ghidra)    |
| `ghidra/`              | `LANGIMG.DAT`     | headless decompilation, see `docs/ghidra.md`   |
| `blender/`             | `.sdf` ⇄ Blender  | add-on: import levels/scenes with textures, export edits; see `docs/blender.md` |
| `sdf_collision.py`     | level `.sdf`      | collision surface (root 5): decode, export OBJ, re-encode faces |
| `psxrun.py`            | cue + BIOS        | deterministic libretro runner: frame-exact input, RAM, save states (experiments) |
| `autopilot.py`         | (emulator RAM)    | drives the player round the track along the AI racing line (regression `lap` scenario, experiments) |
| `vram_usage.py`        | `.Vrm` + scenes   | texture-bank usage map, free space, adding 4-bit textures with new palettes |
| `regress.py`           | rebuilt track 01  | regression test: scripted menu/race scenarios vs references, hang/black detection |
| `emutest.py`           | data track + cue  | boots it in Mednafen headless, presses buttons, saves frames; see `docs/testing.md` |

## License

The tools and documentation are licensed under the GNU General Public
License v3.0 or later (see `LICENSE`). The game and its data are not part of
this repository.
