# Documentation

All multi-byte values are little-endian unless stated otherwise. Offsets are
in hex. "VRAM" means the PS1 GPU's 1024x512 16-bit frame buffer.

| Page                                   | Covers                                              |
|----------------------------------------|-----------------------------------------------------|
| [disc.md](disc.md)                     | Disc image, tracks and the ISO9660 file system       |
| [executables.md](executables.md)       | `SCES_030.37` and the main game code (`LANGIMG.DAT`) |
| [formats/mr3dat.md](formats/mr3dat.md) | `MR3.DAT` archive, name hashing, LZSS, file naming   |
| [formats/vrm.md](formats/vrm.md)       | `.Vrm` texture banks                                 |
| [formats/bs.md](formats/bs.md)         | `.bs` (BSx0) still images                            |
| [formats/snd.md](formats/snd.md)       | `.snd` sound banks                                   |
| [formats/sdf.md](formats/sdf.md)       | `.sdf` (SDF0) scenes and levels                      |
| [formats/dps.md](formats/dps.md)       | `.DPS` movies (STR)                                  |
| [formats/dxr.md](formats/dxr.md)       | `.dxr` relocatable code modules                      |
| [ghidra.md](ghidra.md)                 | Decompiling the game code with Ghidra (headless)     |
| [decomp.md](decomp.md)                 | Matching decompilation: compilers, chunks, layout    |
| [workflow.md](workflow.md)             | The per-function matching loop                       |
| [matching_techniques.md](matching_techniques.md) | What makes code match: settings, source shapes, workarounds |
| [libraries.md](libraries.md)           | `lib/`: code built apart (PsyQ, the sound engine)    |
| [matching/](matching/README.md)        | Write-ups of the matching passes                     |
| [testing.md](testing.md)               | Booting rebuilt discs in Mednafen (headless)         |
| [blender.md](blender.md)               | Blender add-on: import/export levels and scenes      |

## Status

| Format      | Status                                                        |
|-------------|---------------------------------------------------------------|
| Disc / ISO  | Done                                                          |
| `MR3.DAT`   | Done (incl. per-entry CRC); 146 of 150 file names recovered   |
| LZSS        | Done                                                          |
| `.bs`       | Done                                                          |
| `.Vrm`      | Textures and fonts done; one `DPAL` field unknown             |
| `.snd`      | Done: names, sound definitions, samples, real sample rates; two definition bytes unknown |
| `.sdf`      | Container, draw items, meshes, ground, collision, track gates, intro, demo, HUD, menu pages and the database decoded; a few roots open (see its Next steps) |
| `.dps`      | Done (STR + header sector; MP4 export, MDEC v3 + XA encoder)  |
| `.dxr`      | Done (relocatable module: the end-credits player)             |
