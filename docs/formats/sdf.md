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
| 0x80047898 | menu / end scenes  | 15    | 10               |
| 0x800A053C | `DB_D_*`           | 11    | 0 (no classes)   |

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
| 0x02   | u16   | never read (exporter value; changing it on every Sachsenring mesh in RAM changes nothing) |
| 0x04   | u16   | vertex count                                         |
| 0x06   | u8    | flags: bit 0 always set; bit 1 = depth-bucketed, sphere-culled mesh (block at 0x28, see below); bit 2 = extra lighting pass (0x8007ED28, uses block+0x20). Draw-item meshes only use 1, 3, 5; the track-ground mesh is 9 |
| 0x07   | u8    | padding (0xCD)                                       |
| 0x08   | s32[4]| bounds in 1/32 units: max \|x\|, \|y\|, \|z\| of the model and its radius (rounded up from the original float model; some meshes, like the sky, have larger values) |
| 0x18   | ptr   | vertices                                             |
| 0x1C   | ptr   | polygons                                             |
| 0x20   | ptr   | optional 16-byte block                                |
| 0x24   | u32   | 0                                                    |
| 0x28   | ptr   | optional 48-byte block                                |

Vertices are `SVECTOR`s: `s16 x, y, z, pad` (pad = 0xCDCD). The draw code
copies them to the scratchpad and indexes them by `index * 8`.

### Bucketed meshes (flags bit 1)

The draw entry (0x8007C354) draws flag-1 meshes through 0x8007BFB0 and the
routine table 0x800C8908; with bit 1 set it uses 0x8007C780 and a second
table at 0x800C896C, reading the 48-byte block at mesh + 0x28:

| Offset | Type | Meaning                                                    |
|--------|------|------------------------------------------------------------|
| 0x0A   | u8   | depth buckets: a private ordering table of `4 << bits(n)` entries, linked into the frame's as one entry |
| 0x0B   | u8   | culling spheres                                            |
| 0x0C   | ptr  | one u16 per polygon: low byte = bucket, high byte = sphere |
| 0x10   | ptr  | spheres, 16 bytes: `s32 x, y, z, radius` (1/32 units)       |

Each frame the spheres are tested against the camera (0x8001DFD8 →
0x8001E1C8 → 0x8001E118, one visibility byte per sphere in the scratchpad);
the polygon routines (e.g. 0x8007C978) skip polygons whose sphere is hidden
and insert the rest at `bucket × 4` (plus the Z-bias flag bits), so the
polygons are pre-sorted by the exporter. 80 draw items use it (grandstands,
arena roofs). Two freestyle meshes have bucket 0xFF on a few polygons.

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
| 0x0C   | ptr       | next sequence in a player's active list (runtime link)  |
| 0x10   | Binding*  | binding list                                            |
| 0x14   | u32       | length (e.g. 4000, 1000, 333, 33)                       |
| 0x18   | u32       | flags                                                   |

Binding: `{u32 packed, Binding* next}`. `packed` bits 0–11 (signed) = index
into the group's objects, bits 12–23 = index into the animation table
(0xFFF = no animation). Each update plays every bound animation on its
object; the object gets flag 0x200 (matrix changed).

A **sequence player** keeps the active sequences in a list at its +4
(linked through +0x0C): `FUN_80019D0C(player, seq, …)` starts one,
`FUN_80019E30(player)` updates those whose +0x18 bits 0–1 say they're
playing (via 0x8001983C). Menu pages have a player at +0x50 and their
opening sequence at +0x54; widget event records (found with 0x8003B248)
hold sequences at +0x30. Levels have one player (root 7) for the intro
(root 26). Objects also keep a list of their own animations at
`Cobjet` + 0x4C (`{next, index into root 2}`; restarted by 0x80017A9C,
stopped by 0x80017A30).

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
| 0x34   | u32       | grid cell diagonal in 1/32 units: 0x16A09 = 65536·√2 (2048-unit cells), 0xB504 in FSt/Tri/Tr2 (1024-unit cells) |
| 0x38   | u32       | 10 × 0x34: object visibility distance (0x8001DF10)          |
| 0x4C   | ptr       | 4 `Cobjet` pointers (e.g. `d_bat27` × 4); no reader found (exporter leftover?) |
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
(0x8001E240 → 0x8001E458 → 0x8001EAF4) and the cells it covers are
collected into the visible lists. The divisor comes from the camera
(camera + 0x164: 0x400 or 0x1000, set at 0x80035474); world + 0x34 holds
the cell diagonal.

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

| Flag  | Effect |
|-------|--------|
| 0x001 | halves the target speed (0x80065044) |
| 0x400 | no throttle (0x80065300 area) |
| 0x080 | stops a supercross jump section from putting the AI in jump mode (0x80065954) |
| 0x100 | turns off the racing line's steering contribution (0x800663AC) | In the emulator, with the throttle held, a
Sachsenring run-off face (type 2) slows the bike from ~70 to ~35
units/frame; patched to type 0 or 4 it doesn't, patched to 1 it does. So on
road tracks 0 = tarmac, 4 = kerb (rough but full grip), 1–3 = grass /
gravel / run-off (off track), 6 and 7 count as track. Other levels:

- 6 and 7: shaded ground. The traffic update (0x80072ED4 → 0x80071ED8) tints
  each traffic vehicle by the face under it (6 → 0x346A7C, 7 → 0x6A797E,
  else neutral): Tfc's tunnels/shade, short stretches of Dr2, and the arena
  floor in the trial levels.
- 5 and 31: supercross infield (Sdf: 477 faces) and small patches,
  off-track there. 4 in supercross is a block at the start-gate end (flags
  0x180).
- 3: Imola's road edges (IdM, 400 faces) and 12 faces in Usa: off-track.

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
| 0    | M+0xA4      | **UI manager** (≥ 0xAC0 bytes, mostly 0xCD fill, set up by 0x8003B484): +0x7C current page name, +0xA7C/+0xA80 page list / current page, +0xA98/+0xA9C game-state structs, +0xAB8 `{type, ptr, ptr, ptr}` list |
| 1    | M+0x78      | draw-item table (as in levels)                               |
| 2    | M+0x70      | animation table `{Canim** table, u32 2000, …}`; the sequences point at it |
| 3, 4 | 0x800CBE90/94 | unused (only ever written)                                 |
| 5    | M+0xB0      | same data as level root 33                                   |
| 6    | M+0xAC      | same data as level root 32 (bike physics table)              |
| 7, 8 | 0x800C9C08, 0x800C9C0C | `MOTOS` / `MOTOS2` page data (bike selection, players 1 and 2): +0x00…+0x08 bike model draw-item indices (26, 27, 187), +0x2C/+0x30 widgets, +0x34 and +0x54 eight widget pointers each (stat bars), +0x74 an object, +0x88/+0x8C per-bike tables |
| 9    | 0x800C9BF8  | `LOAD` / `LECTURE` page data                                  |
| 10   | 0x800C9C18  | `SAVE` page data                                              |
| 11   | 0x800C8DCC  | `CONFIGURATION` page data: 252 zero bytes, filled at load from the pad configuration (0x80099F88); +0xE0… pad type per port |
| 12   | 0x800C92C4  | `BDVITESSE` / `CURVE` / `STAND` page data (gearbox, power curve, bike setup); 8676 bytes, starting with a pointer to root 6 |
| 13   | M+0x9C      | **text table**: `{0, u32 count (323), char** strings}`, the menu's localised strings (`ENGLISH`, `NONE`, country names, …) |
| 14   | 0x800C9F30  | HUD sprite hash list (same global as level root 14)          |

`EndM_N` has roots 7–12 null.

**Pages** are 0x74-byte records in the UI manager's page list: +0x00 name,
+0x44 → UI manager, +0x50 sequence player, +0x54 opening sequence (+0x34,
+0x38, +0x4C: widget lists, not decoded). `Menu_N` has 34 pages (`1ERPAGE`
`LECTURE` `START` `MODES` `WORLD` `WORLD2` `TIMEATTACK` `NEWCHAMP`
`VOULEZVOUS` `CHAMP` `CC_COURSE` `CC_CROSS` `DRAGSTER` `TRIAL` `TRAFFIC`
`ECURIE` `MANUAL` `MANUAL2` `MANUALCH` `SRSINGLE` `SRCHAMP` `MOTOS` `MOTOS2`
`OPTIONS` `SOUND` `DIFFICULTY` `CONFIGURATION` `LOAD` `SAVE` `SCREENPOS`
`STAND` `CURVE` `TIRES` `BDVITESSE`), `EndM_N` 20 (`MENUSC`, `MENUSP`,
`SC.*`).

The code binds pages **by name**: 0x8009D2E0 builds four `{char* name,
value}` registries: open/close callbacks at 0x800C9750 (`<PAGE>OPEN`,
`<PAGE>CLOSE`, `<PAGE>START`, e.g. `MOTOSOPEN` = 0x8009E954), actions at
0x800C98F4 (`PIGNON`, `CLEAR`, `PitsYes`, `PitsNo`, `VIB`, `CLEARCHAMP`,
`SNDCB`, `SNDMASTERCB`), per-frame callbacks at 0x800C9A6C (`<PAGE>DRAW`,
`<PAGE>HANDLE`, `<PAGE>DISP`) and page data at 0x800CBEA0 (filled by
0x8009D410: `MOTOS` → root 7, `MOTOS2` → root 8, `LOAD`/`LECTURE` → root 9,
`SAVE` → root 10, `CONFIGURATION` → root 11, `BDVITESSE`/`CURVE`/`STAND` →
root 12, `WORLD` and the race modes → a runtime struct). A callback gets
its data from `*(UI + 0xA80) + 0x60`. The scene's strings also hold the
menu script vocabulary: `ChangePage`, `CondChangePage`, `GoBackPage`,
`PlaySnd`, `CondPlaySnd`, `PAGELIST` and variables such as `CurTrack`,
`GameMode`, `NbPlayers`, `P1_NoMoto`, `Difficulty`.

### Menu pages and scripts

The menus are data-driven by a small script system stored in the scene;
only the page callbacks (`<PAGE>OPEN`, `<PAGE>HANDLE`…) are C code. Pages
list named lists, items and events; **widgets** (the buttons) carry action
scripts; page changes go through each page's `PAGELIST`. Menu flow and
unlocks can therefore be changed by editing data. `tools/menu_script.py`
prints a scene's pages, lists and decompiled scripts (menus, end scenes, and
a level's in-game menu from root 41).

Checked in the emulator (menu data block at RAM 0x80119DD8 in `Menu_0`):
renaming WORLD's `PAGELIST[2]` from `motos` to `options` makes picking
Sachsenring open OPTIONS instead of bike selection; setting the variable
`ValidTraffic` to 1 shows the Traffic mode unlocked.

UI manager (root 0; root 41 of a level for the in-game menu):

| Offset | Meaning |
|--------|---------|
| +0x60  | object group list |
| +0x74  | variable table `{u32* values, VarInfo* info, …, +0x14 u32 count}`; VarInfo `{char* name, u32 changed}` (107 variables in `Menu_0`) |
| +0x7C  | function table: 0x2C-byte entries `{char name[32], fn*, ctx, u32 argc}`, count at +0x8C, bound to code by name at load (0x8003F740) |
| +0x15C | UI sound table (`PlaySnd`) |
| +0xA7C / +0xA80 / +0xA84 | first page (the pages are an array of 0x74-byte records) / current / previous |
| +0xA90 | transition state |
| +0xA94 | flags: 0x100 page change requested, 0x4 leave the menu |
| +0xA98 / +0xA9C | game-state structs |

Variables (u32) include `GameMode`, `NbPlayers`, `Difficulty`, `Language`,
`CurTrack`, `TrialTrack`, `TrafficTrack`, `DragsterTrack`, `P1_NoMoto`,
`P2_NoMoto`, the unlocks `Valid<Track>` / `Valid500Speed` / `Valid250Dirt`,
championship state, sound volumes, screen position, pads, the remembered
cursor per page `nBP<page>`, and bike setup (`VitesseCouple1..8` gear
ratios, `PowerCurve`, `TiresType`, `SusPensionType`).

Functions: `ChangePage(cond, i)` opens entry `i` of the current page's
`PAGELIST` (-1 leaves the menu; 0x8003D73C), `CondChangePage(c, cond, a,
b)`, `GoBackPage(cond)`, `EndMenu(cond)`, `PlaySnd(cond, n)`,
`CondPlaySnd(cond, a, b)`, `if(cond, a, b)`, `PageDLInt(t, i)`.

**Scripts** are 16 bytes `{Token* tokens, u32 status, u32 count, VarTable*}`,
evaluated by 0x80097128 as a postfix stack machine. Token (8 bytes):
`{u32 value, u16 op, u16 subtype}`:

| op | Meaning |
|----|---------|
| 0  | push: subtype 2 variable (value → its slot in the values array), 3 address, 4 integer |
| 1  | call (value → function-table entry; pops argc, pushes the result) |
| 2, 3 | negate, logical not |
| 4–8 | `*` `/` `%` `-` `+` |
| 9–14 | `>` `<` `<=` `>=` `!=` `==` |
| 15, 16 | `&&` `\|\|` |
| 17 | dereference |
| 18 | assign |

Example, the Traffic icon on MODES: `GameMode = 1; TrafficTrack = 14;
ChangePage(ValidTraffic == 1 && ValidTraffic2 == 0, 0); ChangePage(ValidTraffic
== 1 && ValidTraffic2 == 1, 5); CondPlaySnd(ValidTraffic == 1, 5, 3);
ReStartMenu = 1; nBPModes = 4`.

**Page** (0x74 bytes): +0x00 name, +0x2C u8 item count, +0x2D u8 event
count, +0x2F flags, +0x34 runtime block, +0x38 object groups (the ones the
sequences use), +0x3C items, +0x40 events, +0x44 → UI manager, +0x48 named
lists, +0x4C page data, +0x50 sequence player, +0x54 opening sequence.

- **Item** (0x54 bytes, page +0x3C): a **rule applied at a page phase**
  (0x80039E74): it applies when its phase matches and its condition holds.

  | Offset | Meaning |
  |--------|---------|
  | +0x00  | `char name[32]`: scene object (looked up in the page's object groups) |
  | +0x20  | condition script (0 = always) |
  | +0x24  | sub-type |
  | +0x28  | phase: 0 every frame, 1 page change starts, 7 before the new page opens, 4/5 after opening (forward/back), 2/3 old page closed (forward/back), 6 old page closed (new-page side), 8 a list selection changed |
  | +0x2C  | kind (below) |
  | +0x30  | `char arg[32]`: sequence / list / variable / text / sprite name |
  | +0x50  | value script |

  | Kind | Action |
  |------|--------|
  | 0 / 1 | object visibility (sub 3 hide, 4 show, 5 show if the value ≠ 0; 9–11 rotate by the value in degrees) / the same with the value from list `arg` |
  | 2 / 3 | play sequence `arg` / `list[arg][value]` |
  | 4 | widget state: sub 8 greys the widget out when the value ≠ 0 (its colour +0x38); 3/4/6/7 clear/set state bits; 2 binds variable `arg` to the widget's list value |
  | 5 | run the value script |
  | 6 / 7 | set the object's model (draw-item index, object +8) to `arg` / `list[arg][value]` |
  | 8 / 9 | set the object's text to `arg` / the 32-byte string `list[arg][value]` |
  | 10 / 11 | set the object's +0x54 (colour/value) |
  | 12 / 13 | set the object's sprite to the `BLKS` texture named `arg` / `list[arg][value]` |

  MODES greys the locked modes out (`B0` … kind 4/8 with `ValidTraffic == 0`)
  and shows the red crosses (`f_croix*`, kind 0/5).
- **Event** (0x34): +0x00 type (1 opened going forward, 2 closed going
  forward, 3 opened going back, 4 closed going back, 5 selection event),
  +0x04 `char name[32]` (matched against the other page's name; empty in
  the files), +0x24 condition script, +0x28 play reversed, +0x2C continue
  from the current position, +0x30 sequence to play (`NULL` = none).
  0x8003B248 picks the event; type-5 events are raised by list selectors
  with the chosen list entry as the sequence name (WORLD's globe turns
  `world_rot*`).
- **Named list**: linked `{next, char name[32], u8 count (+0x24), data*
  (+0x28)}` (page +0x48, else the UI manager's). `PAGELIST` holds 32-byte
  lowercase page names (MODES: `endmenu, dragster, newchamp, ecurie, trial,
  traffic`); other lists are u32 tables: text-table indices (`Difficulty` =
  30, 31, 32) or sprite/model hashes.

**Widget** (a table of 872 pointers in `Menu_0`); the record is 0x48 bytes
plus the action's argument:

| Offset | Meaning |
|--------|---------|
| +0x00  | s16 action on press (0x8003CDEC) |
| +0x02  | flags: only `& 0xF` is read (non-zero = focusable, by the focus movement 0x8003907C / 0x800394D8); the higher bits (0xC000, 0x40, …) are never read |
| +0x04  | button index |
| +0x08  | `char name[32]`, also looked up in the action-callback registry (`PIGNON`, …) |
| +0x28  | → scene object |
| +0x2C  | control list (below) |
| +0x30 / +0x34 | action scripts / count (run on press) |
| +0x38  | colour when greyed out |
| +0x3E  | s8 sound on press (0xFF = none); +0x40 / +0x42 sounds for the next page / going back |
| +0x48  | action argument |

| Action | Effect |
|--------|--------|
| -1 | scripts only (0x48 bytes) |
| 0 | open the page named `char[32]` at +0x48 (case-insensitive; `EndMenu` leaves, `GoBack` goes back); +0x68 ≠ 0 appends the current page's `_suffix`, +0x6A ≠ 0 replaces the current page in the history (0x6C bytes) |
| 1 | set widget group `+0x48`'s value to `+0x4C` |
| 2 | go back `+0x48` pages through the page history (UI +0xA88, depth +0xA8C) |
| 3 | leave the menu |
| 4 | value stepper (0x800386B4, run when focus moves onto it): `int*` variable at +0x48, min +0x4C, max +0x50, step +0x54, sound +0x3C, callback `char[32]` at +0x78 called with (UI, 3, widget); past the end the group's wrap mode applies. The options settings: `Vib1`/`Vib2` 0–1, `Joy1`/`Joy2` 0–7, `SndCD`/`SndSfx`/`SndVoice`/`SndAmbience` 0–100, `SpeedUnit`, `Is4_3`, `Split_Mode` |

`Menu_0` has 45 direct page links (action 0), 29 "back" buttons and 11
"leave" buttons; most navigation is these links, `ChangePage` scripts and
`PAGELIST`s, not C code. E.g. the MODES icons: `open page 'World':
GameMode = 5 | ReStartMenu = 7 | nBPModes = 0`.

**Controls** (widget +0x2C, linked `{u32 type, u32 trigger (0 on focus, 1
on losing focus, 2 on press), next*, …}`): type 1 colour (focused 0xFFFFFF,
else 0x808080), 2 attach a cursor object (`controlnull`), 3 list selector
(named list, wrap mode; raises type-5 events; read by `_CurALSelect`), 4
value selector (left/right steps a page widget group between min and max,
initial value from a script), 5 forward to another widget. Page widget
groups (page +0x4C) are 12-byte `{s32 value, u32 count, Entry*}`, three
per player view; the first word doubles as the wrap mode for focus
movement and steppers (0 wraps, 1 and 2 stop at the end, −1 none). List
selectors (control type 3): +0x2C index, +0x2D previous, +0x2E scroll,
+0x2F wrap (0 wraps, 1 clamps silently, 2 clamps and still raises the
event), +0x30 non-zero = index taken from the widget group's value.

The `nBP<page>` variables are never read by the game code: buttons set
them and a page's value-selector initial script reads them back
(`nBPModes / 4`), so a page reopens on the last button pressed.

`MOTOS` page data (roots 7/8): the three u32 values (26, 27, 187) are
draw-item indices, the bike model `MOTOSOPEN` puts in the displayed bike
object's model slot depending on mode and player; +0x88/+0x8C give per-bike
values for the 8 + 8 stat bars.

To mod: `menu_script.py export` (or the workspace's `<entry>.menu.json`)
gives the variable defaults, every page's lists, item/event scripts and the
widgets' page links and scripts as JSON; edit and `import`. Scripts are
compiled back (all 5390 scripts in the game round-trip to identical
tokens); a script that grows gets a new token array appended to the file,
with its relocations. Text is in root 13 (`sdf_text.py`). Checked in the
emulator: `ValidTraffic = 1` unlocks Traffic on the MODE page, and WORLD's
`PAGELIST[2] = options` makes picking Sachsenring open OPTIONS. New pages,
widgets or list entries would need new records (not supported).

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
| 0    | riders: 20-byte entries `{char* name, char* first name, char tag[4], s32 index, u32 age}`: `Player 1`/`2` (tags `PL1`, `PL2`), `Player 1`/`2 shadow` (`SH1`, `SH2`), then the AI riders (`MAURICE Jean` = `MJ`, `MCINLAY Stephan` = `MS`, `BALMANN Klaus` = `BK`, `RODRIGUEZ Luis` = `RL`, …); `index` is the nationality: `index + 0xE` is the flag sprite shown on the `f_pays (1)` object (-1 for players); age is printed into `f_age (1)` (below 2: a banner instead) |
| 1    | teams: 12-byte entries `{char* name ("TEAM 1" … "TEAM 8"), 0xFFFFFF (colour?), 0}` |
| 2    | arcade cups (0x800C9EE8): three pointers, each to three 24-byte groups (one per difficulty) `{s32* value[3] (per difficulty, one per race), s32* tracks, u32 count = number of races (3/4/5; shown as "race n/count", the cup ends after the last), u32 class (0, or 1 = 500 cc)}`; e.g. cup 0: Sachsen, Suzuka, Ile2Man3 (+ Eastern, + IleDeMan). Accessors 0x800A14B8, 0x800A14CC |
| 3    | championship (0x800C9EEC): `{u32 11, ptr}` → 32-byte rounds `{s32 class (0), s32 track, s32 opponents (4 AI bikes), s32 bike (model within the class), s32 laps, s32 value[3]}` (`value[difficulty]`, difficulty index at 0x800D5F30); rounds: Sachsen 3 laps, Barcelon 6, Suzuka 3, Usa 3, Ile2Man3 4, StdFranc 4, Eastern 3, Regade 2, IleDeMan 3, Chicago 5, Ile2Man2 4. Read at 0x8004AFBC in game mode 4 |
| 4    | 18 × 0xCDCDCDCD; filled at startup (0x8009FE70) with each track's discipline |
| 5    | `300, 100, 60, 30, 0`                                              |
| 6    | demo replays: `{char* path, 0}` × 4, `Data\DemoPsx1.rep` … `DemoPsx4.rep` (these files aren't in `MR3.DAT`; the PS1 demos are in level root 45) |
| 7    | in-game text table (0x800C9EFC, copied to 0x800C8C0C): `{0, u32 155, char** strings}` (`France` …, `LAPS`, `MAX SPEED`, `START`, …, `YES`, `NO`, `CANCEL`), read through 0x80086A38(table, index) |
| 8    | font table (0x800C8D8C): `{Font** fonts, u32 3}`: `MR3`, `CENTURGI`, `CENTURYG` (`char name[32]` at +4, pointers at +0x30/+0x34), looked up by name (0x800955C4) |
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
| 0x14   | u32   | default lap count (matches the championship's)          |
| 0x18   | u32   | discipline: 1 motocross, 2 supercross, 3 speed (road and traffic), 5 trial, 6 freestyle, 7 dragster |

`value[d]` in cups and championship rounds is an **AI strength offset**:
copied to 0x800D5F4C and added to the difficulty's AI factor (root 28
+0x174…+0x17C, minimum 0x199) when the AI bikes are set up; negative values
make the AI weaker, approaching 0 on later and harder events. **Class** 1
is 500 cc: it uses handling records 8–15 of level root 32 and loads the
track's `B` files (500 cc bike model and textures; 0x800C5E2C becomes
`"b"`, the name part of `Data\Final\%s%s%s_P%c.sdf`); it is forced to 0
on tracks 11–17.

Team +0x04 (0xFFFFFF) is never read (both readers of the team table take the
name only).

## Level roots

The level loader (0x80049C14, call at 0x8004A71C) passes 51 destination
addresses. `L` is the level module (`CModuleMr3`), `O` the **in-game menu
module** (`CModuleGameMenu`: pause, end of race, replay captions, scores;
global 0x800CAE80, made the current module while it runs), and plain
addresses are globals in the game code. Its 27 pages are the same in every
level: `PAUSEWITHRESTART` `PAUSEWITHOUTRESTART` `PAUSERETIRE`
`PAUSETWOPLAYERS`, `END` `ENDRESTART` `ENDREPLAY` `ENDREPLAYEXIT`
`ENDRESTARTREPLAY` `ENDTWOPLAYERS` `ENDNEXTREPLAYRETIRE`, `REPLAY_PRESENT`
`REPLAY_STARTING` `REPLAY_REPLAY` `REPLAY_BESTLAP` `REPLAY_CLASTOUR`
`REPLAY_DIFPILOT` `REPLAY_PILOTE`, `SCORE_ENDRACE` `SCORE_RESULTS`
`SCORE_TOP5` `SCORE_CHAMP` `SCORE_EMPTY`, `QA_END` `QA_ELIMINATED`,
`OPTION`, `YESNO`.

| Root | Written to   | Contents (where known)                                    |
|------|--------------|-----------------------------------------------------------|
|  0 | L+0x74       | object list `{Cobjet** objects, ptr, u32 count, …}` (Sac: 80); each frame objects with `(flags & 0xE) == 2` are sphere-tested (0x80053D4C → 0x8001DF10) and get the visible bit 0x10 |
|  1 | L+0x78       | draw-item table `{DrawItem** table, u32 count}` (see Draw items); the next 8 bytes are root 39 |
|  2 | L+0x70       | animation table `{Canim** table, u32 capacity (800), ptr, u32}`, as in menus: the intro `CanimMoveCamera` flights plus object animations (`CanimMove`, `CanimSide`) |
|  3 | L+0x7C       | `{0, 0}`; copied to 0x800CBE90 and never read |
|  4 | L+0x80       | `{bike setup, 0, bike setup, 0}`; copied to 0x800CBE94 and never read |
|  5 | L+0xC6C      | collision surface (see Collision) |
|  6 | L+0xC70      | world struct (see World) |
|  7 | L+0x6C       | the level's sequence player `{0, Channel* list, active mask, previous mask}` (see Sequences); plays the intro (root 26); channels 5–7 are stopped at the start (0x80019DC0) |
|  8 | L+0x3E0      | runtime effect list head (0 in the files; nodes: next at +0x94, active at +0xB0; 0x800925A8 update, 0x80092684 draw) |
|  9 | L+0x3E4      | rider rig and appearance, see below |
| 10 | L+0x3E8      | first-person (cockpit) view: +0x00 enabled (0 in FSt), +0x04/+0x08 eye offset rotated by the bike's matrix (4200, 500 on road; 6000, −800 off-road), +0x0C pitch (s16, −200 ≈ −17.6°), +0x10 speed-needle gain (needle angle = speed × gain × 16 >> 16), +0x18 / +0x24 rotation axes of the rev and speed needles, +0x3C smoothed rev-needle angle (runtime), +0x44 → the **cockpit model**: a rig with `Corps` (bodywork), `Guidon` (handlebar), `Aiguille1/2` (needles), `Embrayage`/`Frein` (clutch/brake levers), grips, hands and fingers. Each frame 0x80033E4C writes the speed digits (texture-atlas patching), rotates the needles, blinks a warning light and poses the levers and hands; +0x14, +0x30…+0x38, +0x40 not read on that path |
| 11 | 0x800C5E0C   | the rider animation files: a linked list of 16-byte nodes `{AnimRec*, next*, char* source path, 0xCD}`, one per `.san` file the exporter read (e.g. `Data\Bikes\speed\Anims\c_glisg1.san` → `C_GLISG1`; 18 nodes on road levels, 28 in supercross), root 11 being the first node; only the loader uses it (the game reaches the animations through root 9) |
| 12 | 0x800C5E10   | an object handled by 0x80020200–0x80020AB0: 200-entry ring buffer of 24-byte entries plus up to 1600 56-byte records in a buffer it's given (skid marks / decals?) |
| 13 | 0x800C7F28   | sound state (runtime): 0x988 bytes of channel slots (0x40 each), then +0x988 → s16[112] sound → slot map; reset 0x8006CA50, play 0x8006CA84, update 0x8006DF68. Zeroed in RAM, the race freezes at the countdown |
| 14 | 0x800C9F30   | HUD sprite hash list |
| 15 | L+0x378      | race setup: +0x00 mode word, taken from the file as is (still 0x40 in RAM during a Sachsenring arcade race): 0x40 one player, 0x80 / 0x20 / 0x08 two players in the race / freestyle / trial `…2_PS` files. The code tests `& 0xA8` "two players" (38 places), `& 0x54` "one player" (end-of-race page, demo), `& 0x3C` / `& 0x3D` "stunt modes" (skips ranking and championship points), `& 0x102` (extra game-state processing); 0x04 / 0x10 (presumably one-player trial / freestyle) and 0x01, 0x02, 0x100 never occur in the files, +0x04 lap count (filled at run time), +0x08 discipline in the game's own numbering (1 motocross, 2 supercross, 3 trial, 4 freestyle, 5 speed incl. traffic, 6 dragster), the `Data\Bikes\…` path, +0x10 → struct whose +0x52C is the database discipline (1 motocross: Rey, Usa; 2 supercross: Bar, Chi, Sdf; 3 speed: Eas, IM2, IM3, IdM, Sac, Suz, Tf2; 5 trial: Tri, Tr2; 6 freestyle: FSt; 7 dragster: Dr1, Dr2; 8 traffic: Tfc), +0x2E8 five bike slots of 0x568 bytes |
| 16 | L+0x458      | trackside (replay/TV) cameras, see below |
| 17 | L+0x45C      | null in the files; the current trackside camera at run time |
| 18 | L+0x84       | u32[4], all equal: how many of root 0's objects are processed per frame |
| 19 | 0x800C89F4   | HUD state (runtime): lap text ("/", count, "Lap(s)"), speed digits (+0x90), per-bike records (+0x98 + 16·i); methods 0x80082904–0x800831BC |
| 20 | 0x800C89F8   | HUD strings `{?, "Best speed", "\|", "{"}`; 0x8008267C picks one of the two glyphs (speed unit?) |
| 21 | 0x800CBDB8   | HUD text descriptor pool (64 slots) |
| 22 | 0x800CBD50   | HUD elements per game mode: `table[(j + (32 − lzc(mode))·9)·2 + k]` (0x8008280C) |
| 23 | 0x800C89FC   | per-player HUD layout (runtime; 0x800831BC, 0x8008350C, 0x80083618) |
| 24 | 0x800C8A00   | freestyle trick display (runtime, FSt): trick name from the table at 0x800C73F8 (`SPLIT`, …), points, 300-tick timer (0x80083D40) |
| 25 | L+0xC64      | surface bump maps (see Collision / Surface types) |
| 26 | L+0x498      | intro script, see below |
| 27 | L+0xC60      | sky: +0x00 → the `b_sky (1)` object (null in Bar, indoors), then parameters and per-view state; 0x800939CC sets up the view, 0x80093150 draws |
| 28 | L+0x3EC      | **track gates** and racing lines, see below |
| 29 | L+0x37C      | 80 × s16 (all ≤ 0x99), the same in every level; **never read** (a scan of every load/store with this offset finds only the loader and the constructor 0x80048A2C that zeroes it) |
| 30 | L+0x3F4      | road-traffic controller, see below |
| 31 | L+0x390      | 5 AI performance records of 0x34 bytes, scaled by difficulty into the AI bikes (+0x45C…+0x48C) by 0x80064AA0; null in FSt and Tri |
| 32 | L+0x388      | 16 bike handling records of 0x198 bytes: `bike+0x5A0 = root32 + model·0x198` (0x8005DC10), from which 0x80024824 / 0x80024168 / 0x80024584 derive the physics. Menus carry the same table (menu root 6) |
| 33 | L+0x38C      | 8 counts (4, 4, 3, 4, 4, 6, 3, 37), groups of byte pairs (one of 37 pairs sweeping diagonally across a small grid, like a screen-wipe order), then four 0x1000-based scale pairs; same data as menu root 5; **never read** (exporter leftover) |
| 34 | L+0x398      | start-grid headings: 6 × `(0, yaw, 0, 0xCCCC)`, 4096 = 360° (Sac about −167°, the measured start direction); no reader found |
| 35 | L+0x460      | texture hash list (u32 count, -1, hashes) |
| 36 | L+0x464      | per-view intro camera `{CobjetCameraMotion*, 0, 0}`: the level's `cammotion (1)`; while the intro runs the view uses camera mode 3 (0x8004C9D0); `+0x5C` of the camera is a look-at object index (0x8004CD5C) |
| 37 | L+0x494      | post-race phase queue `{slots*, s32 current (−1), u32 8}`: 20-byte slots `{kind, ?, duration ms (−1 = until skipped), a, b}`, filled at the end of a race (0x800557C4), stepped by 0x80051AE0 / 0x80051EA4 |
| 38 | L+0x484      | **minimap**: +4 3×3 s16 world→map matrix, +0x18 translation, +0x24 dot sprite, +0x28 104×64 map sprite; 0x80086A78 draws it with one dot per bike. Zeroed in RAM, the map disappears. Null in FSt and Tri |
| 39 | O+0x78       | in-game menu draw-item table `{DrawItem** table, u32 1691}` (132 used in Sac); stored right after root 1's `{table, count}` |
| 40 | O+0x7C       | `{0, 0}`, unused (as level root 3 / menu root 3) |
| 41 | O+0xA0       | in-game menu **UI manager** (same structure as menu root 0), with the in-game menu's pages |
| 42 | O+0x70       | in-game menu animation table `{Canim** table, u32 12}` |
| 43 | O+0x144      | texture hash list |
| 44 | L+0xB0       | null in every level |
| 45 | L+0xB4       | attract-mode demo / replay buffer `{ptr, u32 size}` (size × 2 bytes), see below |
| 46 | L+0x2FC      | demo header (308 bytes): bike slots, +0xF4 = 0x3000 replay buffer size (0 = no demo), +0xF8 best lap in ms, +0xFC best-lap initials (Sac: 54000, `TOM`, the HUD's "Best Lap 00:54:00") |
| 47 | 0x800C5F28   | +4 = buffer size for the root-12 object, in 8-byte units (0x1400 in most levels) |
| 48 | 0x800CAB68   | track-section visibility (Eas, Rey, Sac, Suz, Usa): sections `{prev, next, u32, s16 lo/hi track progress, object lists}`; 0x80034AC8 follows the bike's progress and 0x80034C0C hides objects outside the current section |
| 49 | L+0x3B8      | 3 viewports × 92 bytes: projection, screen rectangle, clip rectangles, split-screen transition (from/to rectangles, start, duration, blend), player index (0x8005C128, 0x8005CA00; drawn by 0x800865B4) |
| 50 | L+0xAC       | Trial restart points (Tri): `{count, {0xD, Point*}…}`; 0x8005148C saves a rider's start position and heading at bike +0x548… |

The level's single export goes to `L+0x47C` (pointer) and `L+0x480`
(value: a byte size). During level setup (0x8005CDA4) the game hands this
block to the root-12 object as its record buffer, with a size of
`root47[+4] * 8` bytes (0x1400 * 8 in most levels). The flag-9 mesh's vertex
pointer points at the start of the same block.

### Track gates (root 28)

A 392-byte struct, mostly runtime (0xCDCD in the file): +0x10 racing lines
per gate list (Sac 2, Bar 4, Usa 4, Tfc 3; 0 in Tri and FSt), +0x14 lines
the bikes are spread over at the start (0x80064608: `(slot + 1) % count`;
Tfc uses 1, its other lines serve the traffic), +0x24 number of gate lists,
+0x28 → gate lists (20 bytes: `{u32 count, Gate* gates, Line** racing lines
(null-terminated), u32 exporter leftover (PC pointer, never read), s32 gate
of list 0 where this list rejoins it (-1 for list 0)}`), +0x34 enabled. List 0 is the lap;
others are branches (Barcelona's start straight rejoins at gate 13).

Gate (20 bytes): `s32 x, y, z` (1/32 units), `u32` distance along the list
(1/32 units), `u16` direction (4096 = 360°), `u8` +0x12 / `u8` +0x13 the
**track half-widths** on either side, in 8-unit steps (`byte × 256` in 1/32
units; equal on every gate, 255 on wide tracks and the dragster strip). The
AI steering (0x80065954) uses them as soft walls: inside the width it adds
`0x1388000 / (lat − b12·0x100) + 0x1388000 / (lat + b13·0x100)` to the
steering, pushing AI bikes away from both edges. Measured perpendicular to
the gates, the collision-surface width is `byte × 16` game units (Usa, Tfc,
Bar: correlation 1.00; on Sachsenring it follows the asphalt + kerbs). Sachsenring has 550
gates; the last distance, 14 055 359 (= 439 230 game units for a circuit of
about 3.7 km, so **a game unit is about a centimetre**), matches the summed
gate-to-gate lengths. Plotted over the collision surface the gates follow
every track. Per bike, 0x8001B974 finds the last gate plane passed
(direction · (bike − gate) ≥ 0) and keeps the current/next gate at bike
+0x1F4…+0x200: race progress and laps.

**Racing lines** are the AI's driving data: one 32-byte record per gate, of
which the game reads four bytes (the rest look like exporter leftovers):

| Offset | Type | Meaning |
|--------|------|---------|
| 0x06   | s8   | steering/lean contribution (`bike+0x2A0`, 0x800663AC; off while bike flag 0x100 is set) |
| 0x07   | s8   | lane offset: `value << 9` (1/32 units) along the gate's perpendicular; used by the AI (0x800650F8, 0x80068900) and the traffic (0x80073E54) |
| 0x0E   | u8   | target speed × 0x800 at this gate (57–157 on Sachsenring, 15–40 in supercross); the AI throttles from the change between the current and next gate (0x800650F8, 0x800678C8, 0x80065044); halved by the off-track flag, doubled for dragsters |
| 0x0F   | u8   | bits 0–5: lines a bike may switch to here (Sac 0x82 / 0x81: each may take the other; Chicago 0x8E: lines 1–3); non-zero allows the AI's lane-change / overtake mode (0x800692A8). Bit 7 clear marks a **jump section** (read only for discipline 2, supercross; present but inert elsewhere): entering one at ≥ 0.78 × the target speed puts the AI in jump mode (0x80065954): it aims at the first gate past the section (the landing), looks 3 gates ahead, and disables the surface bumps. The terrain inside is 3–4× steeper than the rest of the lap (Barcelona 31 % vs 8 % height change per gate distance) |

Checked in the emulator with every Sachsenring line record patched at the
race start: target speeds set to 0x40 leave the four AI bikes 13 606 units
behind after 1000 frames; lane offsets ±10 move them about ±150 units
sideways on the start straight (the AI only steers to the offset in some
states: 0x80068900 snaps a bike to line 0 within 128 units of it).

### Intro (roots 26, 36, 7)

Root 26 (48 bytes): +0x00 state (bits 27–31 = current step, 31 = idle),
+0x04 + 4k the sequence `intro<k>` for step k (or null), +0x2C `prestart`
(motocross/supercross). Each `introN` binds the intro camera (root 36) to
one `CanimMoveCamera` flight. 0x8005663C advances the step and plays it on
the level's player (root 7) only in a replay or for step 1; replays show
"Replay Present" at step 2 and "Replay Starting" at step 7. So a live race
only shows `intro1`, which only Bar, Chi, Sdf and FSt have: the road
tracks' flights play before replays (checked in the emulator: copying
Sachsenring's `intro2` into the `intro1` slot makes the race open with a
flight down the start straight). Start skips to step 7 (0x80060668).
`CanimMoveCamera` (0xA0 bytes, vtable 0x800C877C) copies its +0x9C (-1 in
every file) into the camera's look-at target, `CobjetCameraMotion` (0x60
bytes) +0x5C.

### Rider rig (root 9)

| Offset | Meaning |
|--------|---------|
| +0x04  | 16 pose records of 0x1C bytes (record 0 is a template slot without data) |
| +0x1C4 | animation count (26 road, 33 Rey/Usa, 36 Bar, 50 FSt), then pointers into root 11's animation records; the rider state machine picks from them (0x80060980) |
| +0x290 | 2 rider models; the rider draw (0x800618BC) uses entry 1 in mode 2, else entry 0 |
| +0x298 | 2 × 2 texture-atlas records (16 bytes each), one pair per mode |

Pose records are **keyframe poses** of the 21-joint skeleton. The base
riding pose (record 8) is applied every frame by 0x80060980 → 0x8008E1F8;
the rider animation code blends the others on top (0x80021154, 0x80022454,
0x80022A68 → blend helpers 0x800916B0, 0x80091FB4, 0x80091544): records 1,
2, 3 or 5 (picked by a side flag: left/right), 7, 11–15:

| Offset | Type | Meaning |
|--------|------|---------|
| +0x00  | u8   | joint count (21) |
| +0x01  | u8   | length of the translation list (+0x0C), with its 0xFF terminator |
| +0x02  | u8   | length of the rotation list (+0x08), with its 0xFF terminator |
| +0x03  | u8   | 1 = every joint has both (lists ignored) |
| +0x04  | u32* | packed rotations, one per joint in the rotation list: x bits 0–9, y 10–19, z 20–29 (10-bit signed × 4, so 4096 = 360°), bits 30–31 flags (3) |
| +0x08  | u8*  | joints that get a rotation |
| +0x0C  | u8*  | joints that get a translation |
| +0x10  | SVECTOR* | one translation per entry of the translation list |

**Assembly** (0x800910EC; checked by rendering the rest pose and poses 3
and 8 in Blender: a rider sitting on a bike). The 31-part tree comes from
a stored runtime rig in the level (u8 part count, +4 → a rider model, +8 →
31 runtime parts of 0x80 bytes, +4 of each = parent pointer; found as the
reloc slot pointing at one of the two models): parents 0 → 1, 2, 19, 20,
21, 25, 26; 1 → 17, 18, 22; 2 → 3; 3 → 4, 6, 8; 4 → 5 → 29; 6 → 7 → 30;
8 → 10 → 15, 16; 15 → 11 → 12 → 27; 16 → 13 → 14 → 28; 21 → 23; 22 → 24;
9 has none. Parts are visited in the order table (model +0x24), skipping
flags & 0x30 (locators). For each: `R_local = Rx·Ry·Rz` (angles = pose
rotation + base rotation at part +0x0C, 4096 = 360°), `t_local = pivot
(+ pose translation if flags & 0x40)`, `R = R_parent·R_local`,
`t = R_parent·t_local + t_parent`. A part transforms its vertices (model
+0x14 buffer, part +0x1C first, +0x1A count / 3) into scratchpad slots
(+0x1E byte offset / 8) and draws its polygons (+0x20, +0x14 count; their
indices are slot byte offsets), so seam polygons use neighbouring parts'
vertices; extra seam groups (model +0x4C / +0x6C / +0x70) follow. Rig space
is Y up. `tools/sdf_rig.py` implements it (OBJ export of any pose; write
back of vertices and poses). Level root 9 is **every** rider, the player's
included: scaling part 10 (chest/head) in the model enlarges all riders in
the emulator. Each bike has a runtime rig (five in a race); the game
switches a rig between model 0 and model 1 by distance, so model 1 is the
low-detail model (also used in split screen).

**Pose use** (checked in the emulator by zeroing pose records in RAM):
0x8008E1F8 walks joints 0–23 in order and applies the next joint of its
list as it reaches it; the riding pose 8 is applied with the list at
0x800C7570 (`0, 19, 20, 17, …`), which in effect sets only the bike body
and the footpegs. The rider's stance comes from the blends: pose **5** is
the **left** lean and pose **3** the **right** lean (zeroing pose 5 makes
the rider take a left corner sitting upright with arms out; riding
straight blends in a little of pose 3). By the same test, pose **1** is
the full-throttle tuck, pose **2** braking, pose **11** (with a little of
7) waiting at the start line; zeroing poses 1–15 changed nothing during a
crash into a wall. Poses 4, 6, 9 and 10 aren't referenced by the blend
code (0x80021154, 0x80022454, 0x80022A68). From the code of 0x80021154:
with a small lean (|lean| < 0x800, bike +0xA0) the stance blends pose 2
with poses 14 and 13 (slight lean either side), with a larger lean poses
5 / 3 take over; poses 11 and 12 are blended by a value that counts down
at rider +0x104 (the start); pose 15 is blended in over a 1000 ms timer
(+0x110) once a race-time condition holds, and blends back towards pose 2
(not observed: zeroing it changes nothing at the start, in crashes, or at a
won or lost single-player arcade finish). The trigger in 0x80021154 is
`rider+0x110 == 0 && rider[0x44] * 200 + 2600 < clock (0x800D60FC, ms) &&
rider[1] == 1`; in an arcade race `rider[1]` is 2 for every rider, and
forcing it to 1 in RAM still shows nothing, so another state blocks it.

The rider **models** (+0x290) are rigs: `{s16 part count, …, +0x0A s16
type (draw-function pair from 0x800C8D34), …, +0x28 Part** parts}`; their 31
named parts form a LightWave skeleton for rider and bike (`pilot`, `Pilot
Spine1`, `pilot L/R Clavicle`, `… Hand`, `… Foot`, `Moto PoigneeG/D`
grips, `Moto CalePiedG/D` footpegs, `Moto Muffler1/2`, `Moto FourcheAv`
fork). Model 0 is the normal rider; model 1 a low-poly one (276 vs 418) for
**two-player split screen**.

**Texture atlas** record: `u8 columns, cell width, cell height, polygon
count, use CLUT`, +0x08 → polygons to patch, +0x0C per polygon `s16` base
CLUT and the four UV words. For rider variant n, 0x8006139C / 0x80061484
add `(n % columns) × width | (n / columns) × height << 8` to the UVs and,
with the CLUT flag, `((n >> 2) << 6) | (n & 3)` to the CLUT: one rider model
shows every rider's own number and team decals. Rendered from `Sac.Vrm`:
record 0 (8 columns, 32 × 32) is the **race numbers** 1–8, record 1 (4
columns, 64 × 64, with a CLUT shift) the **team sponsor decals** (Michelin,
Wilkinson, DSI, Fructis, Certina, Motul, …). The variant is the bike
object's `flags & 7`. The second pair (+0x2B8) patches the second rider
model, drawn when root 15's mode word has a two-player bit (0xA8) set
(0x800618BC).

### Rider animations (root 11)

Root 9 +0x1C4 holds a count and that many pointers to animation records
(26 on road levels, 50 in freestyle; several slots share a record):

| Offset | Type  | Meaning |
|--------|-------|---------|
| 0x00   | char* | name (`C_GLISG1`, `CR_MURD`, `XMUR2`, …) |
| 0x04   | u32   | key count |
| 0x08   | u32   | length in ms |
| 0x10   | Key*  | keys, 0x20 bytes each |

A key is a pose record (0x1C bytes, the layout of root 9's poses; joint
indices are rig parts) followed by a u32 time in ms. Joint lists are shared
between an animation's keys; each key has its own rotation array.
Playback (0x8009243C start, 0x80092480 update): the two keys around the
current time are blended linearly (0x80091FB4), cross-fading from the
previous pose over the first 100 ms; at the end the last key is held.

Slots: 0–5 transitions / impacts, 6–8 `C_GLISG*` (fall and slide, left),
9 and 17 `C_MURD` / `CR_MURD` (wall), 12–14 `C_GLISD*` (fall and slide,
right), 20–22 `XMUR2–4`, 23–24 `C_DEF01/02` (**défaite**: played when the
player finishes behind; nothing plays on a win), 25 `C_RESPIR` (breathing,
waiting at the start); off-road
levels have `CR_ROT*` (rolls), `CR_CHOC*` (impacts), `CR_BACK*`, and
freestyle adds the tricks from slot 26 (`SPLITS`, `CUFFED`, `TWIST`,
`BARNEY`, `CLASSIC`, can-can, nac-nac, `SUPER`, `HANGER`, `HEEL`, …; trick
index + 26). A crash picks its first slot from 0x800C75F4 by crash state.
Checked in the emulator (an autopilot following the racing line, see
testing.md): a crash into Sachsenring's right-hand wall plays `CR_MURD` →
`XMUR2` → `XMUR3` → `XMUR4`; running wide off a corner plays `C_GLISG1` →
`C_GLISG2` → `C_GLISG3`; finishing 5th plays `C_DEF02`, finishing 1st
nothing; `C_RESPIR` plays on the grid; zeroing `XMUR3`'s keys (or editing
them in Blender) changes the picture only during its window.

### Trackside cameras (roots 16, 17)

Root 16: `{u32 count (Sac 19), Camera* list (next at +0x54), 0, ptr}`.
Camera: positions at +0x00 and +0x0C, two zone planes (+0x2C/+0x38,
+0x3C/+0x48), mask +0x5C, zone mode +0x76. 0x8008C678 picks the nearest
camera whose zone (0x8008B998) contains the bike (0x8008C500 by time);
the current one is kept in root 17.

### Traffic (root 30)

116 bytes, updated by 0x80072ED4: +0x2C enabled (1 in Tfc and Tf2), +0x30
vehicle count (8 / 12), +0x34 → 0xCC-byte vehicle records, +0x40…+0x4C
distances, +0x50 `c_trf_`: the name prefix of the traffic objects, whose
matrices are left unfilled in the file and set when they're placed along the
racing lines (0x80073E54, 0x800731EC).

### Demo (roots 45, 46)

The object at L+0x308 (built by 0x8006BDDC) records the player's input
every frame into a 0x3000-byte bit stream (0x8006C140) and plays it back
(0x8006C330, 0x8006C4A0). Root 45 is that buffer; in Sac, Sdf and Usa (one
per discipline) it holds the **attract-mode demo** the title screen plays.
The stream is 32-bit little-endian words read LSB first; per frame: 4 bits
(a position parity check and 3 booleans), then optional fields each behind
a flag bit: an 8-bit value, a 16-bit button mask (1 = accelerate), another
8-bit value and three analog bytes. A mask of 14135 ends it (Sachsenring:
5335 frames in exactly 9976 bytes). 0x8005A59C plays a demo only if root
46's +0xF4 ≠ 0 and +0xF0 > 0.

## Next steps

- Riders: what state enables pose 15.

