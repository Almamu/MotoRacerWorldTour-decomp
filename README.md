# Moto Racer World Tour (PS1) — reverse engineering

Reverse engineering of *Moto Racer World Tour* for the PlayStation (PAL,
SCES-03037, 2000): disc layout, data archive, file formats, and the code that
loads them.

This repository contains **no game data**. You need your own copy of the
disc; everything extracted from it stays out of git (`iso/` and `extracted/`
are ignored).

## Documentation

See [`docs/`](docs/README.md) for the disc layout, the executables and every
file format worked out so far.

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
python3 tools/sdf_mesh.py extracted/mr3dat/data/final/Usa_PS.sdf extracted/sdf/Usa \
    --vrm extracted/mr3dat/data/final/Usa.Vrm                                  # level -> textured OBJ
```

| Tool                   | Input             | Output                                        |
|------------------------|-------------------|-----------------------------------------------|
| `extract_iso.py`       | data track (.bin) | disc files + `files.txt`                       |
| `mr3dat.py`            | `MR3.DAT` ⇄ dir   | extract (+ `manifest.json`) / pack (LZSS encoder, CRCs, hash table) |
| `mr3dat_names.txt`     | —                 | recovered `MR3.DAT` file names                 |
| `vrm.py`               | `.Vrm`            | `vram.png` + one PNG per texture               |
| `bs.py`                | `.bs`             | PNG                                           |
| `snd.py`               | `.snd`            | sound names + one WAV per sample               |
| `sdf.py`               | `.sdf`            | link block, classes, roots (`--objects` lists objects) |
| `sdf_mesh.py`          | level `.sdf` (+`.Vrm`) | textured OBJ: ground, draw items, placed objects |
| `dps.py`               | `.DPS`            | MP4 (via ffmpeg, correct frame rate)           |
| `dxr.py`               | `.dxr`            | code relocated to a fixed base (for Ghidra)    |
| `ghidra/`              | `LANGIMG.DAT`     | headless decompilation, see `docs/ghidra.md`   |
