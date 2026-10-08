# .sdf (SDF0 scenes and levels)

**Work in progress.**

SDF0 files hold the levels (`Data\Final\<code>[B][2]_PS.sdf`), the menu and
end scenes (`data\final\Menu_%d.Sdf`, `EndM_%d.Sdf`) and `Data\DB_D_%d.sdf`.
They're stored LZSS-compressed in `MR3.DAT`; everything below describes the
decompressed data.

They embed paths of the original source assets: LightWave scenes (`.lws`),
skeletons (`.skl`), animations (`.san`), objects (`.Mhp`), `World.cb` /
`World.cub`, `Final.sct`, texture banks (`Banks\bank.vrm`), e.g.
`Data\Levels\Barcelon\Objects\world.Mhp`,
`Data\Bikes\cross\hi\cross01.skl`.

## Overall layout

| Offset     | Type    | Meaning                                         |
|------------|---------|-------------------------------------------------|
| 0x00       | char[4] | `SDF0`                                          |
| 0x04       | u32     | size of the data block `n`                      |
| 0x08       | u8[n]   | data block: objects with internal pointers stored as offsets (0 = null) |
| 0x08 + n   |         | trailing block: small header, then lists of increasing offsets (pointer relocations?) |

The loader is in the game code (`data\LANGIMG.DAT`) at 0x800A5590; see
[../executables.md](../executables.md).

(Details are added below as they're confirmed.)
