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
| `objects[n_objects]`      | offsets of each C++ object's **vtable pointer** (not the object start, see Classes). The u32 there is a class index |
| `classes[n_classes]`      | `char[32]` class names                                     |
| `roots[n_roots]`          | offsets of the root structures, or 0xFFFFFFFF for null     |

The link block always ends exactly at the end of the file (checked on all 76
files). The data size is always a multiple of 4: the loader reads the link
block with 32-bit loads, and a file whose link block isn't 4-aligned hangs
the game (seen in the emulator after appending a 3-byte string);
`sdf.py` pads the data block.

### Loading (game code, `0x800A5530`)

`SdfLoad(name, root_out[], n_roots, class_registry[], n_registry, export_slots[], ...)`
at 0x800A5530 in `data\LANGIMG.DAT`:

1. Load the file and check the magic `SDF0`.
2. Exports: `*export_slots[i].ptr = data + export_offset[i]`, then
   `*export_slots[i].value = export_value[i]` (slots are 8 bytes:
   two pointers).
3. Check `n_roots` against the expected count; abort on mismatch.
4. Relocate every pointer in `relocs` (0x800A54F8).
5. For each object: read the class index from its vtable slot, find the
   class name in the caller's registry (36-byte entries: `char name[32]`,
   vtable pointer), and store the vtable pointer in the object's first u32.
6. `root_out[i] = data + roots[i]` (or NULL).
7. Shrink the allocation to drop the link block.

| Caller     | File               | Roots | Registry entries |
|------------|--------------------|-------|------------------|
| 0x8004A71C | level (`*_PS.sdf`) | 51    | 11               |
| 0x80047898 | menu / end scenes  | 15    | ?                |
| 0x800A053C | `DB_D_*`           | 11    | ?                |

### Writing

`tools/sdf.py` has `serialize()`, the inverse of `parse()`; it reproduces
all 76 files byte for byte. The safe way to change data is to **append**
new bytes at the end of the data block and repoint a pointer to them
(`Sdf.append`, `Sdf.set_pointer`): nothing else moves, and the relocation
list makes the new pointer absolute on load. `tools/sdf_text.py` uses this
to export every string to JSON and re-import edited ones (e.g. menu text,
rider names in the DB). Inserting bytes in the middle would mean shifting
every offset after them (relocations, objects, roots, exports and the
pointer values), which the tools don't do.

### Editing geometry

`tools/sdf_geom.py` exports every draw item and the ground as OBJ (faces in
polygon order; materials `page_TTTT_CCCC` = tpage/CLUT for textured
polygons, `color_RRGGBB` for flat ones; the ground with one vertex per block
vertex) and the `Cobjet` placements as JSON, and imports edits:

- same vertex/face counts: positions and textured UVs are rewritten in
  place (ground: positions, converted back to block-relative coordinates);
- different counts (draw items only): new vertex and polygon arrays are
  appended and the mesh repointed; faces become group types 13/15 (textured)
  or 5/9 (flat) with the polygon flags word most used for that type in the
  file; the mesh flags become 1 (the extra lighting/env blocks are dropped);
- mesh bounds (mesh + 0x08) are raised where the new geometry reaches
  further, never lowered.

Forcing every item, the ground and all placements of three levels through
the update path reproduces the files byte for byte. The ground's collision
data hasn't been identified, so reshaped ground may not match what the
bikes ride on.

A few relocated pointers in the levels hold garbage from the exporter
(`0xCDCDCD00`, or `0x00BCxxxx` addresses from the PC tool's heap). The game
presumably never reads them.

## Classes

The object list points at each object's vtable pointer, which this compiler
places after the base class's fields rather than at the start. To get the
object start, subtract the class's vtable offset. The sizes and offsets come
from the constructors the level and menu loaders run to build their class
registries (0x80049C14, 0x80046F2C):

| Class                | Size  | vtable at | Used in        |
|----------------------|-------|-----------|----------------|
| `CanimVertex`        | 0x4C  | 0x34      | registries only (0 in the files) |
| `CanimSide`          | 0x48  | 0x34      | 14 in total    |
| `CanimMove`          | 0x9C  | 0x34      | menus          |
| `CanimMoveCamera`    | 0xA0  | 0x34      | levels         |
| `Cobjet`             | 0x54  | 0x50      | all            |
| `CobjetHud`          | 0x64  | 0x50      | registries only (0 in the files) |
| `CobjetCameraMotion` | 0x60  | 0x50      | all            |
| `CobjetMotoHumain`   | 0x5D4 | 0x50      | registries only (0 in the files) |
| `CobjetVFonts`       | 0x5C  | 0x50      | menus          |
| `CobjetLightMotion`  | 0x58  | 0x50      | all            |
| `CobjetEnvMap`       | 0x58  | 0x50      | menus          |
| `CobjetInterface`    | 0x74  | 0x50      | menus          |
| `Cobjet2dVFonts`     | 0x14  | 0x08      | levels         |

Objects of a class are stored back to back, so the distance between
consecutive vtable slots equals the class size. The `Cobjet*` classes share
the `Cobjet` layout for their first 0x50 bytes.

The vtables use the old (cfront / GCC 2) layout: 8-byte entries of
`s16 this_delta, s16 0, void *fn`; entry 1 (vtable+8) is the destructor,
called with 3 to also free the object.

### Cobjet

Offsets from the start of the object (vtable slot - 0x50), as used by the
draw code (0x80016A8C):

| Offset | Type      | Meaning                                              |
|--------|-----------|------------------------------------------------------|
| 0x00   | char*     | instance name, LightWave style (e.g. `"d_c011 (1)"`)  |
| 0x04   | u32       | flags (bit 4 set while visible, see Cell)             |
| 0x14   | MATRIX    | GTE matrix: `s16 m[3][3]` (4.12 fixed point), padding, `s32 t[3]` at 0x28 |
| 0x34   | MATRIX*   | the matrix used for drawing (normally this object's own, 0x14) |
| 0x38   | s16*      | draw-item index per LOD                              |
| 0x3C   | u8        | LOD count (0 = not drawn this way)                   |
| 0x3D   | u8        | LOD currently selected (written at runtime)          |
| 0x47   | u8        | palette offset added to textured polygons' CLUT       |
| 0x48   | u32       | colour (0x808080 = neutral)                          |
| 0x50   | vtable*   | (class index in the file)                            |

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
| 0x08   | s32[4]| bounds in 1/32 units: max \|x\|, \|y\|, \|z\| of the model and its radius (rounded up from the original float model; some meshes, like the sky, have larger values) |
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

Group types, from all levels and scenes, with the GPU packet length(s)
each routine writes (the length byte of the packet tag). The numbering is
regular:

| Type | Shape    | Word at 0x08              | Draws                                   | Packets | Routine    |
|------|----------|---------------------------|-----------------------------------------|---------|------------|
| 2    | line     | RGB + 0x42                | `LINE_F2` — no routine, never drawn     | —       | —          |
| 5    | triangle | RGB + 0x20                | `POLY_F3`                               |         | 0x8007A6C4 |
| 6    | triangle | RGB + 0x22                | `POLY_F3`, semi-transparent              | 6       | 0x8007A884 |
| 7    | triangle | pointer to colours        | `POLY_G3`                               |         | 0x8007AA74 |
| 8    | triangle | pointer to colours        | `POLY_G3`, semi-transparent              | 8       | 0x8007AC90 |
| 9    | quad     | RGB + 0x28                | `POLY_F4`                               |         | 0x8007B164 |
| 10   | quad     | RGB + 0x2A                | `POLY_F4`, semi-transparent              | 7       | 0x8007C4EC |
| 11   | quad     | pointer to 4 colour words | `POLY_G4`                               | 8       | 0x8007AED0 |
| 12   | quad     | pointer to colours        | `POLY_G4`, semi-transparent              | 10      | 0x8007B3C0 |
| 13   | triangle | RGB + 0x24 (0x26)         | `POLY_FT3`                              | 7       | 0x8007BB24 |
| 14   | triangle | pointer to 3 colour words | `POLY_GT3`                              | 9       | 0x8007B664 |
| 15   | quad     | RGB + 0x2C (0x2E)         | `POLY_FT4`                              | 9       | 0x8007BD1C |
| 16   | quad     | pointer to 4 colour words | `POLY_GT4`                              | 12      | 0x8007B870 |
| 17   | triangle | RGB + 0x20                | overlay + `POLY_F3`                     | 7 + 4   | 0x8007D638 |
| 18   | triangle | pointer to colours        | overlay + `POLY_G3`                     |         | 0x8007DBB8 |
| 19   | quad     | RGB + 0x28                | overlay + `POLY_F4`                     | 9 + 5   | 0x8007D8B4 |
| 20   | quad     | pointer to colours        | overlay + `POLY_G4`                     |         | 0x8007DE6C |
| 21   | triangle | RGB + 0x24                | overlay + `POLY_FT3`                    | 7 + 7   | 0x8007E18C |
| 22   | triangle | pointer to colours        | overlay + `POLY_GT3`                    | 7 + 9   | 0x8007E744 |
| 23   | quad     | RGB + 0x2C                | overlay + `POLY_FT4`                    | 9 + 9   | 0x8007E408 |
| 24   | quad     | pointer to colours        | overlay + `POLY_GT4`                    | 9 + 12  | 0x8007E9E4 |

The semi-transparent types (6, 8, 10, 12) put a draw-mode command in front
of the polygon (`0xE1000600` + blend mode from bits 5–6 of the polygon
flags), which accounts for their longer packets. Types 18 and 20 are
inferred from the pattern; their packet sizes weren't read. Unused index
slots hold 0xFFFF or the 0xCDCD padding.

Types 17–24 draw the polygon plus a second, semi-transparent textured
"overlay" packet (`POLY_FT3` for triangles, `POLY_FT4` for quads). For 21 and
23 (read in detail) it is (command 0x26/0x2E, colour 0x808080). Its tpage/CLUT come
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

## Animation (menu scenes)

Menu and end scenes are animated with keyframed objects, exported from
LightWave motions. Confirmed from the code (key timing 0x80074AC8,
linear interpolation 0x80075588, applying to an object 0x80017B88,
sequence update 0x8001983C) and the `Menu_0.Sdf` data.

### Canim (base of `CanimMove`, `CanimMoveCamera`, `CanimSide`, `CanimVertex`)

Offsets from the object start (vtable slot - 0x34):

| Offset | Type   | Meaning                                                    |
|--------|--------|------------------------------------------------------------|
| 0x00   | u32    | animation kind (3–5 move the target's matrix)              |
| 0x04   | u32    | play mode (1, 2: what happens at the last key)             |
| 0x0C   | u32    | flags: bits 0–3 direction (+1 forward / -1 backward), bits 4–7 which game clock drives it, bits 8–11 / 12–15 runtime state |
| 0x10   | s32    | runtime: blend between current and next key, 16.16 (0x10000 = 1.0) |
| 0x14   | s32    | runtime: current segment duration                          |
| 0x20   | Key*   | first key                                                  |
| 0x24   | s32    | runtime: segment start time                                |
| 0x28   | Key*   | current key                                                |
| 0x2C   | Key*   | next key (runtime)                                         |
| 0x34   | vtable*|                                                            |

### CanimMove (0x9C bytes)

| Offset | Type    | Meaning                                                   |
|--------|---------|-----------------------------------------------------------|
| 0x44   | VECTOR  | current position                                          |
| 0x50   | VECTOR  | previous position                                         |
| 0x74   | SVECTOR | current rotation (x, y, z; 4096 = 360°)                    |
| 0x5C   | VECTOR  | runtime: position tangent at the current key (spline)      |
| 0x68   | VECTOR  | runtime: position tangent at the next key (spline)         |
| 0x7C   | SVECTOR | previous rotation                                         |
| 0x84   | SVECTOR | runtime: rotation tangents at the current / next key (+0x8C) |
| 0x94   | u32     | flags; byte 0 = 0 means the rotation is animated too       |

### Key (32 bytes)

Keys form a circular doubly linked list:

| Offset | Type      | Meaning                                                 |
|--------|-----------|---------------------------------------------------------|
| 0x00   | Key*      | next                                                    |
| 0x04   | Key*      | previous                                                |
| 0x08   | u32       | key index                                               |
| 0x0C   | s32       | duration of the segment to the next key, playing forward (clock ticks) |
| 0x10   | s32       | the same, playing backward                              |
| 0x14   | VECTOR*   | position                                                |
| 0x18   | SVECTOR*  | rotation (keys without rotation share one zero rotation) |
| 0x1C   | u8        | interpolation to the next key: 0 = linear, 1 = spline    |

Linear interpolation: `pos = cur + (next - cur) * blend >> 16`, the same per
rotation axis.

Spline segments (0x80075BEC) are cubic Hermite curves with Catmull-Rom
tangents. At the start of a segment the game computes (0x800758F4 for
positions, 0x80075A1C for rotations):

```
m0 = (next - prev) / 2            # tangent at the current key
m1 = (next_next - cur) / 2        # tangent at the next key
```

(stored at `CanimMove` + 0x5C / 0x68 for positions, + 0x84 / 0x8C for
rotations), then for `t = blend` in 0..1:

```
p(t) = (2t³ - 3t² + 1)·cur + (3t² - 2t³)·next + (t³ - 2t² + t)·m0 + (t³ - t²)·m1
```

in fixed point. Keys have no tension/continuity/bias values, so it's plain
Catmull-Rom. The result is then written into the target object's matrix
(0x800168A8 / 0x80016268).

In `Menu_0.Sdf` all 269 `CanimMove` key lists are consistent rings (694
keys, 49 of them spline). 380 keys share one rotation, (0, 0, 0).

### CanimSide (0x48 bytes) — polygon surface animation

A flip-book on some polygons of one draw item's mesh: at each key the
polygons' UVs, colours, tpage and CLUT are overwritten (methods 0x80076658,
0x80076948, 0x80076BD8; there's no interpolation).

| Offset | Type   | Meaning                                                  |
|--------|--------|----------------------------------------------------------|
| 0x00   | u32    | animation kind, 1                                        |
| 0x38   | u32    | draw-item index (into the root 1 table)                  |
| 0x3C   | u32    | number of animated polygons `n`                          |
| 0x40   | s32*   | `n` polygon indices into the item's mesh                 |
| 0x44   | ptr    | runtime: `n` × 36-byte backup of the original values     |

Each key's +0x14 (the "position" pointer for `CanimMove`) points to `n`
36-byte records:

| Offset | Type    | Meaning                                                 |
|--------|---------|---------------------------------------------------------|
| 0x00   | u8[4]   | u of vertices 0–3                                       |
| 0x04   | u8[4]   | v of vertices 0–3                                       |
| 0x08   | u32[4]  | RGB per vertex (flat polygons use the first one)        |
| 0x18   | s8      | tpage (written to the polygon's 0x12)                   |
| 0x1A   | u16     | CLUT (written to the polygon's 0x0E)                    |

### Sequences

Root 2 of a menu scene is `{CanimMove** animations, u32 capacity (2000), …}`.
Sequences (28 bytes each) bind objects to animations:

| Offset | Type      | Meaning                                                 |
|--------|-----------|---------------------------------------------------------|
| 0x00   | char*     | name, e.g. `1ERPAGE`, `TIMEATTACK`, `motos_me2mf`, `world_rot3` |
| 0x04   | ptr       | object group: `{Cobjet** objects, ?, u32 count}`         |
| 0x08   | ptr       | the animation root (root 2)                             |
| 0x0C   | ptr       | another sequence (chaining)                             |
| 0x10   | Binding*  | binding list                                            |
| 0x14   | u32       | length (e.g. 4000, 1000, 333, 33)                       |
| 0x18   | u32       | flags                                                   |

Binding: `{u32 packed, Binding* next}`. `packed` bits 0–11 (signed) = index
into the group's objects, bits 12–23 = index into the animation table
(0xFFF = no animation). Each update plays every bound animation on its
object; the object gets flag 0x200 (matrix changed).

`Menu_0.Sdf` has 148 sequences, named after the menu pages and their
transitions: page open/close (`1ERPAGE`, `START`, `TIMEATTACK`, `WORLD`,
…), bike carousel steps (`motos_me2mf` …), globe turns (`world_rot1` …
`world_rot11`).

### Object hierarchy

In menu scenes `Cobjet` + 0x40 points to a list of child objects
(LightWave parenting, e.g. `1iconenull (1)` and its icons). `Cobjet` + 0x4C
is the object's own animation: the destructor (0x8001603C) frees the LOD
list at 0x38 and deletes the animation at 0x4C.

## World (track ground)

Most of a level is its ground ("world") geometry: one large mesh (flags 9)
(only drawn: the bikes ride on the separate collision surface, see
Collision)
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
| 0x04   | Row**     | grid rows (one pointer per row)                              |
| 0x08   | u32       | grid width (columns)                                        |
| 0x10   | u32       | grid height (rows)                                          |
| 0x14   | u32       | number of cells                                             |
| 0x18   | u32       | runtime: entries in visible list C                           |
| 0x1C   | u32       | runtime: entries in visible list B                           |
| 0x20   | u32       | runtime: entries in visible list A                           |
| 0x24   | Cell*     | cell array (12-byte cells)                                  |
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

### Grid

The cells form a run-length-encoded 2D grid over X/Z. Row record:

| Offset | Type  | Meaning                                                    |
|--------|-------|------------------------------------------------------------|
| 0x00   | u8    | grid width (low byte)                                      |
| 0x01   | u8    | number of runs                                             |
| 0x06   | u16   | index of this row's first cell in the cell array           |
| 0x08   | s8*   | runs: negative = that many empty columns, positive = that many cells; -128 ends the row |

Rows' first-cell indices follow on from each other, and the cells of all
rows add up to world+0x14 (checked on all 58 level files).

Each frame the camera's view frustum is projected onto the grid
(0x8001E240 → 0x8001E458 → 0x8001EAF4, coordinates divided by the cell
size) and the cells it covers are collected into the visible lists.

### Cell (12 bytes)

| Offset | Type   | Meaning                                                      |
|--------|--------|--------------------------------------------------------------|
| 0x04   | ptr*   | objects in this cell: pointers to `Cobjet` starts (all 35100 references across the levels) |
| 0x08   | u16    | object count; bit 15 is a runtime "already visited" flag      |
| 0x0A   | s16    | sector index, or -1                                          |

When a cell is visible, its objects get bit 0x10 set in their flags
(`Cobjet` + 4) and its sector is queued for drawing. In every level the
cells together reference every sector.

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

## Collision (root 5)

The bikes don't ride on the visible ground: the physics uses a separate,
coarser **collision surface**. Raising the visible ground in RAM changes the
picture but not the bike's height; raising the collision faces lifts the bike
by exactly the same amount (checked in the emulator, see
[../testing.md](../testing.md)). In the original levels the collision
surface lies within about a unit of the visible ground (median 0.3 units on
Sachsenring). Tool: `tools/sdf_collision.py` (and the Blender add-on).

Code: face lookup 0x8001A6AC (grid, then neighbours of the previous face,
then a full scan), inside test 0x8001A664 → 0x8001AF3C (local point) +
0x8001ABBC (edges, on the GTE), height 0x8001AFF4. The bike keeps the face
under its centre and wheels (0x800634BC, bike + 0x220…0x230).

### Header (40 bytes, right after the faces)

| Offset | Type  | Meaning                                                  |
|--------|-------|----------------------------------------------------------|
| 0x00   | s16   | face count                                               |
| 0x02   | s16   | not read by the lookup; equals the quad count in 15 of 20 levels (off by 1–115 in the rest): probably the source mesh's quad count |
| 0x04   | Face* | faces                                                    |
| 0x08   | u32[4]| 0 (runtime)                                              |
| 0x18   | s32   | grid width                                               |
| 0x1C   | s32   | grid height                                              |
| 0x20   | s32   | grid cell size, in units of `position >> 12` (128 game units): 16 = 2048 units, 8 in the trial levels |
| 0x24   | ptr   | lookup grid, or null (all speed levels): `width × height` entries `{s16 first, s16 last}`, an inclusive face index range; cell = `(z>>12)/size * width + (x>>12)/size` (x, z in 1/32 units, grid origin at 0, 0). Empty cells have last = -1 (first is then arbitrary). Every face lies in the range of the cells it covers (checked on all five levels that have one); the original ranges are loose (they span faces far from the cell) |

### Face (56 bytes)

| Offset | Type   | Meaning                                                  |
|--------|--------|----------------------------------------------------------|
| 0x00   | s32    | origin X (1/32 units)                                    |
| 0x04   | u32    | origin Y (1/32 units, Y down) << 8 \| **surface type** (low byte) |
| 0x08   | s32    | origin Z (1/32 units)                                    |
| 0x0C   | s16[4] | neighbours, as face index offsets relative to this face; -0x7FFF = none |
| 0x14   | s16[3] | plane normal (nx, ny, nz), unit length × 16384, ny > 0 for floors (Y down) |
| 0x1A   | s16    | plane offset w                                           |
| 0x1C   | u32[4] | edges: `distance << 16 \| angle` (angle: 12 bits, 4096 = 360°); the 4th has bit 15 set for a triangle |
| 0x2C   | u32    | split edge (same encoding), or 0xFFFF for a single plane  |
| 0x30   | s16[4] | second plane (nx, ny, nz, w), zero when not split        |

Positions relative to the face are taken in game units:
`dx = (x - origin_x) >> 5`, `dz = (z - origin_z) >> 5`. With
`(cos a, sin a)` from the game's table at 0x800BF3A0 (4096 entries of
`cos << 16 | sin`, 4096 = 1.0):

- **Inside**: every edge gives `distance + ((cos·dx + sin·dz) >> 12) >= 0`.
  Faces are convex triangles or quads in the XZ plane; corner k is where
  edge k meets edge k+1.
- **Plane**: if the split edge gives a value `> 0` the second plane is
  used, otherwise the first. Splits run along a quad's diagonal: a folded
  quad is two triangles.
- **Height** (1/32 units, Y down):
  `origin_y - 32 * (((w + ((nx·dx + nz·dz) >> 12)) << 12) / ny)`
  (integer division). Vertical planes (ny = 0) occur in the trial levels.

With these rules neighbouring faces meet within a unit at shared corners on
every level.

### Walls

Neighbour k belongs to edge k. Moving the bike (0x8001B350) walks from its
current face towards the new position, crossing into the neighbour behind
the most negative edge (up to 10 steps). An edge **without a neighbour is a
wall**: the position is clamped onto the edge line (0x8001AE40) and the edge
is returned, and the bike code (0x80068B60) bounces off it using the edge's
direction. So the outline of the collision surface is the set of walls
(e.g. the concrete wall right of Sachsenring's start straight, where the
bike crashes when steered into it).

### Surface types

The low byte of the y word. Its low 3 bits pick a **bump map** through
root 25 (`L+0xC64`):

| Offset | Type     | Meaning                                         |
|--------|----------|-------------------------------------------------|
| 0x00   | ptr[8]   | 64 × 64 byte height maps (4 KB each), or null    |
| 0x20   | u8[8]    | surface type → map index (low 3 bits)            |

The byte under the bike, `map[((z >> 3) & 0xFC0) + ((x >> 9) & 0x3F)]`
(x, z in 1/32 units, so each texel is 16 units and the map repeats every
1024), gives `(byte - 0x80) × 4` (1/32 units) added to the bike's height:
the roughness of grass and kerbs. Every road level uses the table
`0, 1, 1, 1, 2, 0`: type 0 smooth, types 1–3 one rough map, type 4 (kerbs)
its own map. The off-road levels have four maps but 0xCD fill in the table,
so every type selects entry `0xCD & 7 = 5`, which is null: their maps are
never used. The same lookup is applied to the bike body and to each wheel
(0x8005E3A4).

The bike also stores the type (bike + 0x42C) and sets state flags
(bike + 0x494) by discipline (`+0x52C` of the root-15 bike setup: 1
motocross, 2 supercross, 3 speed, as in the database's track table):

| Discipline | Surface types        | Flags   |
|------------|----------------------|---------|
| 3 (speed)  | not 0, 4, 6, 7       | 0x401   |
| 1          | not 0, 6, 7          | 0x001   |
| 2          | 4                    | 0x180   |
| 2          | 2, 3, 5              | 0x001   |

Flag 0x001 halves the bike's target speed (0x80065044); 0x400 skips the
throttle (0x80065300 area). In the emulator, with the throttle held, a
Sachsenring run-off face (type 2) slows the bike from ~70 to ~35
units/frame; patched to type 0 or 4 it doesn't, patched to 1 it does. So on
road tracks 0 = tarmac, 4 = kerb (rough but full grip), 1–3 = grass /
gravel / run-off (off track), 6 and 7 count as track. Values seen: 0–7 and
31.

Sachsenring: 1347 faces (94 triangles, 1002 split), no lookup grid
(41 × 57 cells declared).

### Writing

`sdf_collision.encode_face` rebuilds a face from new corner positions:
edges from consecutive corners (normals pointing inwards; distances rounded
outwards so the corners stay inside, giving small overlaps rather than
gaps), one plane through the corners, or for a split quad the same
diagonal with a plane per triangle, the origin height on the first plane
(w = 0) and the second plane's w solved to pass through its corners. The
origin X/Z, neighbours and surface type are kept, so the topology is fixed.
In levels with a lookup grid, `rebuild_grid` then recomputes every cell as
the range of faces overlapping it (tighter than the original ranges; not
yet tried in the game, as those are off-road levels).
Re-encoding every face of every level from its own corners reproduces the
heights within 1.5 units (p99).

## Menu and end scene roots

Menu/end scenes have 15 roots, loaded at 0x80046F2C (menu module `M`). The
module shares its first fields with the level module, so roots 1–4 land in
the same places as in levels:

| Root | Written to  | Contents                                                     |
|------|-------------|--------------------------------------------------------------|
| 0    | M+0xA4      | ? (`0, -, 21, 190, …`)                                       |
| 1    | M+0x78      | draw-item table (as in levels)                               |
| 2    | M+0x70      | animation table `{Canim** table, u32 2000, …}`; the sequences point at it |
| 3, 4 | M+0x7C, M+0x80 | ? (same shape as level roots 3/4: a pointer and an array of 3 × s16 + 0xCDCD padding) |
| 5    | M+0xB0      | array of small integers (?)                                  |
| 6    | M+0xAC      | ?                                                            |
| 7, 8 | 0x800C9C08, 0x800C9C0C | `{u32 26, u32 27, u32 187, ptr[187]}`: mixed pointers (32 `CobjetEnvMap`, 2 `CanimMove`, the rest other structures); not decoded |
| 9, 10, 12 | 0x800C9BF8, 0x800C9C18, 0x800C92C4 | structs of mostly raw pointers, with a few to `CobjetVFonts` (9, 10) or a `Cobjet` (12); not decoded |
| 11   | 0x800C8DCC  | zeros                                                        |
| 13   | M+0x9C      | **text table**: `{0, u32 count (323), char** strings}`, the menu's localised strings (`ENGLISH`, `NONE`, country names, …) |
| 14   | 0x800C9F30  | HUD sprite hash list (same global as level root 14)          |

The sequences (see Animation) are only referenced from each other, so the
way the menu code finds them isn't known yet.

## Database (`Data\DB_D_0..5.sdf`)

Partly decoded. An SDF with 11 roots and no C++ objects, loaded at
0x800A053C, holding the game's tables. Its strings include the track list
(country, length such as "1.49 Miles", level directory `Data\Levels\…`),
AI rider names (`ROBERTSON William`, `RODRIGUEZ Luis`, …), and default best
times with three-letter initials (`VPG`, `CHV`, `TOM`, `RIC`, `OLD`, `LUD`).
The six files are the six languages (0 English, 1 French, 2 German,
3 Spanish, 4 Italian, 5 Swedish): team names, countries, nationalities etc.
are translated. The game loads it at 0x800A048C with root destinations
0x800C9EE0, …E4, …E8, …EC, …F0, …F4, …F8, …FC, 0x800C8D8C, 0x800C6710 and
0x800C9EDC (roots 0–10).

| Root | Contents                                                          |
|------|-------------------------------------------------------------------|
| 0    | riders: 20-byte entries `{char* name, ?, char tag[4], s32, u32}`: `Player 1`/`2` (tags `PL1`, `PL2`), `Player 1`/`2 shadow` (`SH1`, `SH2`), then the AI riders (`MAURICE Jean` = `MJ`, `MCINLAY Stephan` = `MS`, `BALMANN Klaus` = `BK`, `RODRIGUEZ Luis` = `RL`, …) |
| 1    | teams: 12-byte entries `{char* name ("TEAM 1" … "TEAM 8"), 0xFFFFFF, 0}` |
| 5    | `300, 100, 60, 30, 0`                                              |
| 6    | demo replays: `{char* path, 0}` × 4, `Data\DemoPsx1.rep` … `DemoPsx4.rep` (these files aren't in `MR3.DAT`) |
| 9    | `{u32 18, Track* tracks, …}`: the track table (below)              |
| 10   | best times: `u32 ?`, then 12-byte entries `{u32 time, char initials[4], u32 0xFFFF}`; times look like milliseconds (0x30EEE = 200430 → 3:20.43) |

Track record (28 bytes), in the same order as the level code table
(`Sdf Suz Bar Chi Rey Usa …`):

| Offset | Type  | Meaning                                                 |
|--------|-------|---------------------------------------------------------|
| 0x00   | char* | level directory, e.g. `Data\Levels\Suzuka`             |
| 0x04   | char* | level name, e.g. `Suzuka`                               |
| 0x08   | char* | country (translated)                                    |
| 0x0C   | char* | length in km, e.g. `" 5.77 Km"`                         |
| 0x10   | char* | length in miles, e.g. `" 3.61 Miles"`                   |
| 0x14   | u32   | 1–7 (default lap count?)                                |
| 0x18   | u32   | discipline: 1 motocross, 2 supercross, 3 speed (road and traffic), 5 trial, 6 freestyle, 7 dragster |

Not decoded yet: root 3 (`u32 11`, then groups of 4 pointers + 2 u32s,
perhaps championship definitions), roots 7/8 (they point into the string
pool of nationalities and countries: `France`, `SP`, `D`, `AUS`, `USA`,
`Japanese`, …), root 2 and root 4.

## Level roots

The level loader (0x80049C14, call at 0x8004A71C) passes 51 destination
addresses. `L` is the level object being set up, `O` another object held by
the same function, and plain addresses are globals in the game code.

| Root | Written to   | Contents (where known)                                    |
|------|--------------|-----------------------------------------------------------|
|  0 | L+0x74       |  |
|  1 | L+0x78       | draw-item table (see Draw items) |
|  2 | L+0x70       | animation table `{Canim** table, u32 capacity (800), ptr, u32}`, as in menus: up to 3 `CanimMoveCamera` flights plus object animations (`CanimMove`, `CanimSide`) |
|  3 | L+0x7C       |  |
|  4 | L+0x80       |  |
|  5 | L+0xC6C      | collision surface (see Collision) |
|  6 | L+0xC70      | world struct (see World) |
|  7 | L+0x6C       |  |
|  8 | L+0x3E0      |  |
|  9 | L+0x3E4      |  |
| 10 | L+0x3E8      |  |
| 11 | 0x800C5E0C   |  |
| 12 | 0x800C5E10   | an object handled by 0x80020200–0x80020AB0: 200-entry ring buffer of 24-byte entries plus up to 1600 56-byte records in a buffer it's given (skid marks / decals?) |
| 13 | 0x800C7F28   |  |
| 14 | 0x800C9F30   | texture hash list |
| 15 | L+0x378      | bike setup: starts with the `Data\Bikes\…` path; +0x10 → struct whose +0x52C is the level's discipline: 1 motocross (Rey, Usa), 2 supercross (Bar, Chi, Sdf), 3 speed (Eas, IM2, IM3, IdM, Sac, Suz, Tf2), 5 trial (Tri, Tr2), 6 freestyle (FSt), 7 dragster (Dr1, Dr2), 8 traffic (Tfc) |
| 16 | L+0x458      |  |
| 17 | L+0x45C      |  |
| 18 | L+0x84       |  |
| 19 | 0x800C89F4   |  |
| 20 | 0x800C89F8   |  |
| 21 | 0x800CBDB8   |  |
| 22 | 0x800CBD50   |  |
| 23 | 0x800C89FC   |  |
| 24 | 0x800C8A00   |  |
| 25 | L+0xC64      | surface bump maps (see Collision / Surface types) |
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
- World: the field at 0x4C; the grid cell size.
- Collision: what surface types 5–7 and 31 mean in the off-road levels
  (they only matter for the discipline flags).
- The flags-bit-1 mesh path (second dispatcher, table at 0x800C896C).
- `CanimMoveCamera` (a `CanimMove` of kind 4 with one more field at 0x9C,
  -1 in every file): levels hold about 3 of them (178 in 58 files) in the
  root 2 animation table, each a camera path through the track (e.g. 5, 19
  and 4 keys over ~3800 ticks in Suzuka), likely the pre-race shots; not
  confirmed where the game plays them.
  `CobjetCameraMotion` (`Cobjet` + 3 fields: 0x54, 0x58, 0x5C), and
  `CobjetLightMotion`. In levels, root 36 points into a list that mixes the
  28 `cammotion (1)` cameras with the 237 `Cobjet2dVFonts` HUD texts and the
  light, so these cameras look like part of the HUD/overlay scene rather
  than race cameras (each sits 512 units back from the origin).
- Menu roots 0, 3–12 and the entry point to the sequences.
