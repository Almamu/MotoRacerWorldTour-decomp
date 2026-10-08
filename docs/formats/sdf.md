# .sdf (SDF0 scenes and levels)

**Work in progress.** The container is fully understood; the object and
mesh layouts are partly worked out (see the confidence notes).

SDF0 files hold the levels (`Data\Final\<code>[B][2]_PS.sdf`), the menu and
end scenes (`data\final\Menu_%d.Sdf`, `EndM_%d.Sdf`) and `Data\DB_D_%d.sdf`.
They're stored LZSS-compressed in `MR3.DAT`; everything below describes the
decompressed data. Tool: `tools/sdf.py` (container and summary).

An SDF0 file is a memory image of C++ objects written by the PC-side
exporter (the padding is full of MSVC debug fill bytes: `0xCD` for heap,
`0xCC` for stack). Pointers are stored as offsets into the data block, and a
link block lists every pointer so the loader can relocate them. It also
lists every C++ object and its class name, so the loader can set vtables.

The files also embed paths of the original assets: LightWave scenes
(`.lws`), skeletons (`.skl`), animations (`.san`), objects (`.Mhp`),
`World.cb` / `World.cub`, `Final.sct`, texture banks (`Banks\bank.vrm`),
e.g. `Data\Levels\Barcelon\Objects\world.Mhp`.

## Container

| Offset     | Type    | Meaning                                         |
|------------|---------|-------------------------------------------------|
| 0x00       | char[4] | `SDF0`                                          |
| 0x04       | u32     | size of the data block `n`                      |
| 0x08       | u8[n]   | data block (offsets below are relative to here)  |
| 0x08 + n   |         | link block                                      |

### Link block

All fields are u32 unless stated otherwise, in this order:

| Field                     | Meaning                                                   |
|---------------------------|-----------------------------------------------------------|
| `n_exports`               |                                                           |
| `export_offset[n_exports]`| loader writes `data + offset` into caller-supplied slot *i* |
| `export_value[n_exports]` | loader writes the raw value into a second caller slot *i*  |
| `n_relocs`                |                                                           |
| `n_objects`               |                                                           |
| `n_classes`               |                                                           |
| `n_roots`                 | must equal the count the caller asks for                  |
| `relocs[n_relocs]`        | offsets of u32 pointers in the data; each gets `+= data`   |
| `objects[n_objects]`      | offsets of C++ objects. Each object's first u32 is a class index |
| `classes[n_classes]`      | `char[32]` class names                                     |
| `roots[n_roots]`          | offsets of the root structures, or 0xFFFFFFFF for null     |

The link block always ends exactly at the end of the file (checked on all 76
files).

### Loading (game code, `0x800A5530`)

`SdfLoad(name, root_out[], n_roots, class_registry[], n_registry, export_slots[], ...)`
at 0x800A5530 in `data\LANGIMG.DAT`:

1. Load the file and check the magic `SDF0`.
2. Exports: `*export_slots[i].ptr = data + export_offset[i]`, then
   `*export_slots[i].value = export_value[i]` (slots are 8 bytes:
   two pointers).
3. Check `n_roots` against the expected count; abort on mismatch.
4. Relocate every pointer in `relocs` (0x800A54F8).
5. For each object: read the class index from its first u32, find the
   class name in the caller's registry (36-byte entries: `char name[32]`,
   vtable pointer), and store the vtable pointer in the object's first u32.
6. `root_out[i] = data + roots[i]` (or NULL).
7. Shrink the allocation to drop the link block.

| Caller     | File               | Roots | Registry entries |
|------------|--------------------|-------|------------------|
| 0x8004A71C | level (`*_PS.sdf`) | 51    | 11               |
| 0x80047898 | menu / end scenes  | 15    | ?                |
| 0x800A053C | `DB_D_*`           | 11    | ?                |

A few relocated pointers in the levels hold garbage from the exporter
(`0xCDCDCD00`, or `0x00BCxxxx` addresses from the PC tool's heap). The game
presumably never reads them.

## Classes

Class names seen (all files): `Cobjet`, `CobjetCameraMotion`,
`CobjetLightMotion`, `CanimMoveCamera`, `Cobjet2dVFonts`, `CanimMove`,
`CanimSide`, `CobjetEnvMap`, `CobjetVFonts`, `CobjetInterface`. Levels use
`Cobjet`, `Cobjet2dVFonts`, `CobjetCameraMotion`, `CobjetLightMotion` (and
`CanimMoveCamera`).

### Cobjet

Offsets from the start of the object. Confirmed by the draw code
(0x80016A8C, which receives the object + 4):

| Offset | Type      | Meaning                                              |
|--------|-----------|------------------------------------------------------|
| 0x00   | vtable    | (class index in the file)                            |
| 0x04   | char*     | instance name, LightWave style (e.g. `"d_c011 (1)"`)  |
| 0x18   | MATRIX    | GTE matrix: `s16 m[3][3]` (4.12 fixed point), padding, `s32 t[3]` at 0x2C |
| 0x38   | MATRIX*   | the matrix used for drawing (normally this object's own, 0x18) |
| 0x3C   | s16*      | draw-item index per LOD                              |
| 0x40   | u8        | LOD count (0 = not drawn this way)                   |
| 0x41   | u8        | LOD currently selected (written at runtime)          |
| 0x4C   | u32       | colour (0x808080 = neutral)                          |

The game picks a LOD from the distance to the camera, then draws
`draw_items[lod_index[lod]]` (see below) with the object's matrix.

## Draw items

Root 1 of a level points to `{DrawItem** items, u32 count, ...}`: a table of
draw-item pointers (null entries allowed). The draw code reaches the table
through `**0x800C8C68`.

A draw item is 44 bytes:

| Offset | Type      | Meaning                                              |
|--------|-----------|------------------------------------------------------|
| 0x00   | u16       | not used by the draw code (0, 1, 2, …)                |
| 0x04   | Mesh*     | mesh                                                 |
| 0x08   | u32       | passed to a setup routine before drawing (0x8007C1B8) |
| 0x0C   | u16       | GTE `ZSF3` (average-Z scale for triangles)            |
| 0x0E   | u16       | GTE `ZSF4` (average-Z scale for quads)                |
| 0x10   | u16[]     | polygon groups, 0-terminated, at most 25: `type \| count << 6` |

The mesh's polygons are stored grouped by primitive type, in the order of
the group list. Each type has its own draw routine, through the table at
0x800C8908 (`type & 0x3F` × 4). Meshes with flags bit 1 set use a second
dispatcher and table (0x8007C780, table at 0x800C896C) together with the
block at mesh+0x28.

Checked on every level: for all 1276 non-null draw items, the group counts
add up exactly to the mesh's polygon count.

## Meshes

44-byte header:

| Offset | Type  | Meaning                                              |
|--------|-------|------------------------------------------------------|
| 0x00   | u16   | polygon count                                        |
| 0x02   | u16   | ? (non-zero when flags bit 1 is set)                  |
| 0x04   | u16   | vertex count                                         |
| 0x06   | u8    | flags: bit 0 always set; bit 1 = special path (block at 0x28); bit 2 = extra lighting pass (uses block+0x20). Draw-item meshes only use 1, 3, 5; the track-ground mesh is 9 |
| 0x07   | u8    | padding (0xCD)                                       |
| 0x08   | s32[4]| bounds (?)                                           |
| 0x18   | ptr   | vertices                                             |
| 0x1C   | ptr   | polygons                                             |
| 0x20   | ptr   | optional 16-byte block                                |
| 0x24   | u32   | 0                                                    |
| 0x28   | ptr   | optional 48-byte block                                |

Vertices are `SVECTOR`s: `s16 x, y, z, pad` (pad = 0xCDCD). The draw code
copies them to the scratchpad and indexes them by `index * 8`.

### Polygons

28 bytes (7 words), read by the per-type routines:

| Offset | Type   | Meaning                                                   |
|--------|--------|-----------------------------------------------------------|
| 0x00   | u16[4] | vertex indices; index 3 = 0xFFFF for a triangle            |
| 0x08   | u32    | RGB + GPU command byte, **or** a pointer to 4 colour words (Gouraud types) |
| 0x0C   | u8, u8 | u0, v0                                                    |
| 0x0E   | u16    | CLUT id                                                   |
| 0x10   | u8, u8 | u1, v1                                                    |
| 0x12   | u16    | tpage                                                     |
| 0x14   | u8, u8 | u2, v2                                                    |
| 0x16   | u8, u8 | u3, v3                                                    |
| 0x18   | u32    | flags. High half seen: 0x1000, 0x1002, 0x1800, 0x1802, 0x5002, 0x5800, 0x5802. Bit 30 changes back-face handling; bits 11–12 give a Z (depth sort) bias |

Group types seen in the draw items of all levels:

| Type | Shape    | Word at 0x08                     | GPU primitive        | Routine    |
|------|----------|----------------------------------|----------------------|------------|
| 5    | triangle | RGB + 0x20                       | `POLY_F3`            | 0x8007A6C4 |
| 7    | triangle | pointer to colours               | `POLY_G3`            | 0x8007AA74 |
| 9    | quad     | RGB + 0x28                       | `POLY_F4`            | 0x8007B164 |
| 11   | quad     | pointer to colours               | `POLY_G4`            | 0x8007AED0 |
| 13   | triangle | RGB + 0x24                       | `POLY_FT3`           | 0x8007BB24 |
| 14   | triangle | pointer to colours               | `POLY_GT3`?          | 0x8007B664 |
| 15   | quad     | RGB + 0x2C (0x2E semi-transparent) | `POLY_FT4`         | 0x8007BD1C |
| 16   | quad     | pointer to colours               | `POLY_GT4`?          | 0x8007B870 |
| 21   | triangle | RGB + 0x24                       | `POLY_FT3` (variant) | 0x8007E18C |
| 23   | quad     | RGB + 0x2C                       | `POLY_FT4` (variant) | 0x8007E408 |

The routine for type 11 builds a 9-word `POLY_G4` packet from the 4 colour
words. The `?` rows and the 21/23 variants still need their routines read.

Quads use the GPU vertex order (0, 1, 2, 3 = top-left, top-right,
bottom-left, bottom-right), so the outline is 0-1-3-2.

`tools/sdf_mesh.py` exports every draw item's mesh, and every `Cobjet`
placed with its matrix, to OBJ. The meshes look right (grandstands, riders
on bikes, signs). The placed objects are only props, and whether the
translations use the same units as the vertices isn't confirmed yet. Most of
each level is the track-ground ("world") geometry, below.

**Track ground.** The big ground mesh has flags 9, ~1400 vertices and no
polygon pointer. Its vertices are the level's exported vertex pool (see
Level roots). Its polygons hang off the 48-byte block at 0x28, which points
to compact 12-byte records (`u16, u16 base, u8 i0..i3, ptr` to four colour
words) and more data. Not decoded yet.

## Level roots

The level loader (0x80049C14, call at 0x8004A71C) passes 51 destination
addresses. `L` is the level object being set up, `O` another object held by
the same function, and plain addresses are globals in the game code.

| Root | Written to   | Contents (where known)                                    |
|------|--------------|-----------------------------------------------------------|
|  0 | L+0x74       |  |
|  1 | L+0x78       | draw-item table (see Draw items) |
|  2 | L+0x70       |  |
|  3 | L+0x7C       |  |
|  4 | L+0x80       |  |
|  5 | L+0xC6C      |  |
|  6 | L+0xC70      |  |
|  7 | L+0x6C       |  |
|  8 | L+0x3E0      |  |
|  9 | L+0x3E4      |  |
| 10 | L+0x3E8      |  |
| 11 | 0x800C5E0C   |  |
| 12 | 0x800C5E10   | working copy of the ground vertices is made at the address stored here |
| 13 | 0x800C7F28   |  |
| 14 | 0x800C9F30   | texture hash list |
| 15 | L+0x378      |  |
| 16 | L+0x458      |  |
| 17 | L+0x45C      |  |
| 18 | L+0x84       |  |
| 19 | 0x800C89F4   |  |
| 20 | 0x800C89F8   |  |
| 21 | 0x800CBDB8   |  |
| 22 | 0x800CBD50   |  |
| 23 | 0x800C89FC   |  |
| 24 | 0x800C8A00   |  |
| 25 | L+0xC64      |  |
| 26 | L+0x498      |  |
| 27 | L+0xC60      |  |
| 28 | L+0x3EC      |  |
| 29 | L+0x37C      |  |
| 30 | L+0x3F4      |  |
| 31 | L+0x390      |  |
| 32 | L+0x388      |  |
| 33 | L+0x38C      |  |
| 34 | L+0x398      |  |
| 35 | L+0x460      | texture hash list (u32 count, -1, hashes) |
| 36 | L+0x464      |  |
| 37 | L+0x494      |  |
| 38 | L+0x484      |  |
| 39 | O+0x78       |  |
| 40 | O+0x7C       |  |
| 41 | O+0xA0       |  |
| 42 | O+0x70       |  |
| 43 | O+0x144      | texture hash list |
| 44 | L+0xB0       |  |
| 45 | L+0xB4       |  |
| 46 | L+0x2FC      |  |
| 47 | 0x800C5F28   | ground header: +4 = size of the vertex working buffer in vertices (0x1400 in most levels) |
| 48 | 0x800CAB68   |  |
| 49 | L+0x3B8      |  |
| 50 | L+0xAC       |  |

The level's single export goes to `L+0x47C` (pointer) and `L+0x480`
(value): it is the **ground vertex pool** (an `SVECTOR` array) and its size
in bytes. Checked on all 58 level files.

Root 1 is described under Draw items; its third/fourth words are another
table and count whose purpose isn't known yet.

## Next steps

- Read the level-setup and drawing code to pin down the root structures,
  the model/part layout and the mesh flags, instead of inferring them
  (see [../ghidra.md](../ghidra.md)).
- Decode the track-ground geometry (the bulk of each level).
- Read the remaining polygon routines (types 14, 16, 21, 23) and the
  flags-bit-1 path.
- Confirm the units of object translations; decode the camera/light motion
  classes.
