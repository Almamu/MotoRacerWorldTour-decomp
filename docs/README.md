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

## Status

| Format      | Status                                                        |
|-------------|---------------------------------------------------------------|
| Disc / ISO  | Done                                                          |
| `MR3.DAT`   | Done (incl. per-entry CRC); 144 of 150 file names recovered   |
| LZSS        | Done                                                          |
| `.bs`       | Done                                                          |
| `.Vrm`      | Textures done; `FNTS` chunks and one `DPAL` field unknown       |
| `.snd`      | Names and samples done; one table and sample rates unknown     |
| `.sdf`      | Container, draw items, meshes and track ground done (exports textured OBJ); some object/world fields open |
| `.dps`      | Done (STR + header sector; converts with ffmpeg)              |
| `.dxr`      | Done (relocatable module: the end-credits player)             |
