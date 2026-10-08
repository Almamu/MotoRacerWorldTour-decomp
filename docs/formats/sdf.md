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

Group types, from all levels and scenes. "Packets" lists the GPU packet
length(s) written per polygon (the length byte of the packet tag), read from
the routine; where a routine writes two packets, the second one is an
overlay pass.

| Type | Shape    | Word at 0x08                    | Packets  | Primitive                       | Routine    |
|------|----------|---------------------------------|----------|---------------------------------|------------|
| 2    | line     | RGB + 0x42                      | —        | `LINE_F2` (no routine: not drawn) | —        |
| 5    | triangle | RGB + 0x20                      |          | `POLY_F3`                       | 0x8007A6C4 |
| 6    | triangle | RGB + 0x22                      | 6        | ?                               | 0x8007A884 |
| 7    | triangle | pointer to colours              |          | `POLY_G3`                       | 0x8007AA74 |
| 8    | triangle | pointer to colours              | 8        | ?                               | 0x8007AC90 |
| 9    | quad     | RGB + 0x28                      |          | `POLY_F4`                       | 0x8007B164 |
| 10   | quad     | RGB + 0x2A                      | 7        | ?                               | 0x8007C4EC |
| 11   | quad     | pointer to 4 colour words       | 8        | `POLY_G4`                       | 0x8007AED0 |
| 12   | quad     | pointer to colours              | 10       | ?                               | 0x8007B3C0 |
| 13   | triangle | RGB + 0x24 (0x26)               | 7        | `POLY_FT3`                      | 0x8007BB24 |
| 14   | triangle | pointer to 3 colour words       | 9        | `POLY_GT3`                      | 0x8007B664 |
| 15   | quad     | RGB + 0x2C (0x2E)               | 9        | `POLY_FT4`                      | 0x8007BD1C |
| 16   | quad     | pointer to 4 colour words       | 12       | `POLY_GT4`                      | 0x8007B870 |
| 17   | triangle | RGB + 0x20                      | 7 + 4    | ? + overlay                     | 0x8007D638 |
| 18   | triangle | pointer to colours              |          | ?                               | 0x8007DBB8 |
| 19   | quad     | RGB + 0x28                      | 9 + 5    | ? + overlay                     | 0x8007D8B4 |
| 20   | quad     | pointer to colours              |          | ?                               | 0x8007DE6C |
| 21   | triangle | RGB + 0x24                      | 7 + 7    | `POLY_FT3` + overlay            | 0x8007E18C |
| 22   | triangle | pointer to colours              | 7 + 9    | ? + overlay                     | 0x8007E744 |
| 23   | quad     | RGB + 0x2C                      | 9 + 9    | `POLY_FT4` + overlay            | 0x8007E408 |
| 24   | quad     | pointer to colours              | 9 + 12   | ? + overlay                     | 0x8007E9E4 |

The rows marked `?` (mostly menu-scene types) still need their routines
read in detail. Unused index slots hold 0xFFFF or the 0xCDCD padding.

Types 21 and 23 draw the polygon normally plus a second, semi-transparent
textured packet (command 0x26/0x2E, colour 0x808080). Its tpage/CLUT come
from globals, and its UVs come from the **pad halfword of each vertex**
(the 4th `s16` of the `SVECTOR`): an environment-map style overlay,
presumably with UVs written into the vertices at runtime.

The textured routines add a per-object value to the word holding uv0 and
the CLUT before writing the packet (`DAT_800C88FC`, set from object+0x47
shifted into the top byte, i.e. the CLUT's upper bits). That's how one model
can be drawn with different palettes, matching the CLUT variant lists of
the `.Vrm` `BLKS` entries.

Quads use the GPU vertex order (0, 1, 2, 3 = top-left, top-right,
bottom-left, bottom-right), so the outline is 0-1-3-2.

`tools/sdf_mesh.py` exports every draw item's mesh, and every `Cobjet`
placed with its matrix, to OBJ. The meshes look right (grandstands, riders
on bikes, signs). Object translations (`MATRIX.t`) are in 1/32 vertex units:
dividing them by 32 puts the objects exactly in place on the world geometry
(e.g. the Night Show grandstand ring around the arena floor). The sky
(`b_sky`) sits at the origin. Most of each level is the world geometry,
below.

## World (track ground)

Most of a level is its ground ("world") geometry: one large mesh (flags 9)
split into **blocks** (vertex sets with an origin) and **sectors** (small
polygon batches), organised in a 2D **grid of cells** for visibility. Root 6
points to the world struct.

Confirmed from the code (visibility at 0x8001E240, per-frame world drawing
at 0x80053F54, sector setup at 0x8008A70C, polygon sorting at 0x8008A91C)
and by exporting the ground of several levels, which assembles into the
recognisable tracks with correct textures (`tools/sdf_mesh.py`).

### World struct (root 6)

| Offset | Type      | Meaning                                                    |
|--------|-----------|------------------------------------------------------------|
| 0x04   | ptr       | grid data (not decoded)                                     |
| 0x08   | u32       | 29 in `Tri_PS` (grid width?)                                |
| 0x10   | u32       | 21 in `Tri_PS` (grid height?)                               |
| 0x14   | u32       | number of cells in the cell table                           |
| 0x18   | u32       | runtime: entries in visible list C                           |
| 0x1C   | u32       | runtime: entries in visible list B                           |
| 0x20   | u32       | runtime: entries in visible list A                           |
| 0x24   | Cell**    | cell table                                                 |
| 0x28   | ptr       | runtime: visible list C (allocated by the level setup)      |
| 0x2C   | ptr       | runtime: visible list B                                     |
| 0x30   | ptr       | runtime: visible list A                                     |
| 0x40   | u32       | length of the vertex-index list (u16 entries)               |
| 0x44   | u32       | block count                                                |
| 0x48   | u32       | sector count                                               |
| 0x4C   | ptr       | ? (an array of identical pointers in `Tri_PS`)              |
| 0x50   | Sector*   | sector table                                               |
| 0x54   | Block*    | block table                                                |
| 0x58   | u16*      | vertex-index list                                          |
| 0x5C   | DrawItem  | draw item (44 bytes, inline) of the ground mesh: its group list covers all ground polygons |

The PC exporter's leftover heap pointers sit in the runtime fields
0x28–0x30 in the file; the game overwrites them.

### Cell

| Offset | Type   | Meaning                                                      |
|--------|--------|--------------------------------------------------------------|
| 0x04   | ptr*   | list of objects in this cell (marked visible with bit 0x10 at object+4) |
| 0x08   | s16    | object count; bit 15 is a runtime "already visited" flag      |
| 0x0A   | s16    | sector index, or -1                                          |

Each frame the camera's view frustum is projected onto the grid (coordinates
divided by the cell size) to find the visible cells.

### Sector (16 bytes)

| Offset | Type | Meaning                                                    |
|--------|------|------------------------------------------------------------|
| 0x00   | s16  | first ground polygon                                       |
| 0x02   | s16  | block index                                                |
| 0x04   | u8   | polygon count                                              |
| 0x05   | u8   | vertex count                                               |
| 0x06   | s16  | first entry in the vertex-index list                        |
| 0x08   | ptr[2] | runtime, one per player view                             |

Sectors are stored back to back: each one's first polygon and list start
follow on from the previous one, and the last ones end exactly at the
ground mesh's polygon count and at world+0x40.

### Block (12 bytes)

| Offset | Type | Meaning                                                    |
|--------|------|------------------------------------------------------------|
| 0x00   | s16  | origin X                                                   |
| 0x02   | s16  | origin Z                                                   |
| 0x04   | s16  | vertex count                                               |
| 0x06   | s16  | first vertex in the ground mesh's vertex array              |
| 0x08   | s16  | -1 in the file (runtime cache slot)                         |
| 0x0A   | s16  | 0                                                          |

The block vertex counts add up to the ground mesh's vertex count. Vertices
are relative to their block: **world = vertex + origin × 128** on X and Z
(the code keeps origins as `origin << 12`, i.e. in 1/32 vertex units). This
scale was found by rendering: ×128 gives seamless ground, other factors
don't.

A ground vertex is found as:
`mesh.vertices[block.first_vertex + index_list[sector.list_start + local_index]]`.

### Ground mesh

The mesh header is the usual one (flags 9, polygon pointer null, vertex
pointer = all block vertices). Its 48-byte block at 0x28 holds:

| Offset | Type | Meaning                                                    |
|--------|------|------------------------------------------------------------|
| 0x14   | u16  | number of texture entries                                  |
| 0x16   | u8   | record format: 1 = 12-byte polygons and 12-byte texture entries; 2 = 8-byte polygons and 28-byte texture entries |
| 0x18   | ptr  | ground polygons                                            |
| 0x1C   | ptr  | texture entries                                            |

Ground polygon (8 or 12 bytes):

| Offset | Type   | Meaning                                                   |
|--------|--------|-----------------------------------------------------------|
| 0x00   | u16    | flags (below)                                              |
| 0x02   | u16    | byte offset of its texture entry                          |
| 0x04   | u8[4]  | local vertex indices (into the sector's slice of the index list), **outline order**; 0xFF for the 4th of a triangle |
| 0x08   | u32    | 12-byte form only: flat colour (RGB), or for Gouraud polygons a pointer to 3 or 4 colour words |

Flags:

| Bits | Meaning                                                     |
|------|-------------------------------------------------------------|
| 2–3  | both set = quad, otherwise triangle                          |
| 4    | Gouraud shaded                                               |
| 6    | semi-transparent                                             |
| 0–1, 7, 8 | rendering flags passed on to the drawing code (not decoded) |

So the GPU primitives are `0x24` (textured triangle), `0x2C` (textured
quad), `0x34` (textured Gouraud triangle) and `0x3C` (textured Gouraud
quad), +2 when semi-transparent.

Texture entry: `u8 u0, v0; u16 clut; u8 u1, v1; u16 tpage; u8 u2, v2;
u8 u3, v3` (12 bytes), in format 2 followed by 4 colour words (flat
polygons use the first, Gouraud ones the first 3 or 4).

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
|  6 | L+0xC70      | world struct (see World) |
|  7 | L+0x6C       |  |
|  8 | L+0x3E0      |  |
|  9 | L+0x3E4      |  |
| 10 | L+0x3E8      |  |
| 11 | 0x800C5E0C   |  |
| 12 | 0x800C5E10   | an object handled by 0x80020200–0x80020AB0: 200-entry ring buffer of 24-byte entries plus up to 1600 56-byte records in a buffer it's given (skid marks / decals?) |
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
| 47 | 0x800C5F28   | +4 = buffer size for the root-12 object, in 8-byte units (0x1400 in most levels) |
| 48 | 0x800CAB68   |  |
| 49 | L+0x3B8      |  |
| 50 | L+0xAC       |  |

The level's single export goes to `L+0x47C` (pointer) and `L+0x480`
(value: a byte size). During level setup (0x8005CDA4) the game hands this
block to the root-12 object as its record buffer, with a size of
`root47[+4] * 8` bytes (0x1400 * 8 in most levels). The flag-9 mesh's vertex
pointer points at the start of the same block.

Root 1 is described under Draw items; its third/fourth words are another
table and count whose purpose isn't known yet.

## Next steps

- Read the level-setup and drawing code to pin down the root structures,
  the model/part layout and the mesh flags, instead of inferring them
  (see [../ghidra.md](../ghidra.md)).
- World: the grid data at world+0x04, the field at 0x4C, and how cell
  object lists relate to `Cobjet`s.
- The flags-bit-1 mesh path (second dispatcher, table at 0x800C896C).
- Decode the camera/light motion classes.
