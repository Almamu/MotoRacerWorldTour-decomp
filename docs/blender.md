# Editing scenes in Blender

`tools/blender/mrwt_blender` is a Blender add-on (tested with Blender 5.2)
that imports level and menu/end scenes (`.sdf`) with their textures, and
writes edits straight back to `.sdf`. It replaces the OBJ round trip of
`sdf_geom.py` for most work: objects keep their placement, meshes stay
shared between the objects that use them, and per-face game data survives.

## Installing

```
python3 tools/blender/build.py            # -> build/mrwt_blender.zip
```

Blender (4.2 or later): Edit > Preferences > Get Extensions > (menu)
Install from Disk, pick the zip. It is a regular extension
(`blender_manifest.toml`, GPL-3.0-or-later) and loads as
`bl_ext.user_default.mrwt_blender`. The zip carries its own copies
of `sdf.py`, `sdf_mesh.py`, `sdf_geom.py`, `sdf_collision.py` and `vrm.py`;
rebuild it after
changing those. (From a checkout, `tools/blender` can also be put on
Blender's script path; the add-on then uses the repo's `tools/` directly.)

## Importing

File > Import > Moto Racer WT scene (.sdf), e.g.
`ws/mr3dat/data/final/Sac_PS.sdf` from a workspace. Options:

- **Texture bank**: the `.Vrm` to texture with. Empty finds it next to the
  file: `Sac_PS.sdf` / `Sac2_PS.sdf` → `Sac.Vrm`; `Menu_N.Sdf` →
  `data/menu/banks/MMenuVrm.vrm`; `EndM_N.Sdf` →
  `data/menu/sc_banks/MENDVRM.vrm`.
- **Scale**: Blender units per game unit (default 0.01).

Game coordinates (Y down) become Blender's Z up: game (x, y, z) → Blender
(x, z, −y) × scale. The import creates a collection named after the file:

| Collection / object | What it is |
|---|---|
| `<name> items` (hidden) | one object per draw item; mesh `<name>_item_NNN` |
| `<name> objects` | every placed `Cobjet` (game name), using its LOD 0 item's mesh, with its matrix |
| `<name> ground` | levels: the track ground, one vertex per stored vertex |
| `<name> collision` | levels: the collision surface the bikes ride on (wireframe, coloured by surface type; corners shared by faces are welded) |
| `<name> track` / `gates K` | levels: one mesh per gate list (list 0 = the lap): each gate is an edge across the track, from its negative to its positive side; the gate sits at the edge's midpoint, faces along the edge's normal, and its half-widths are half the edge length |
| `<name> rider` (hidden) | levels: the rider rig (root 9): an armature with one bone per part (31, rider and bike; bones keep identity rest orientations, Euler mode `ZYX` = the game's Rx·Ry·Rz) and the rider mesh skinned to it (one vertex per vertex-buffer entry). Each pose record is an action `<name>_pose_NN` keyed at frame 1, each rider animation an action `<name>_anim_<NAME>` with linear keys at frame 1 + ms / 20 (PAL, 50 fps) |
| `<name> track` / `line K.J` | the AI racing lines of list K: one point per gate; point attributes `speed` (target speed), `flags` (allowed line changes; bit 7 clear = jump section) and `steer` |

Objects whose matrix is still the 0xCDCD fill (placed at run time, e.g. the
traffic cones in `Tfc`/`Tf2`) are skipped.

Materials: `<name>_page_TTTT_CCCC` per texture page + palette (the 256x256
page rendered with that palette, nearest filtering, palette entry 0x0000
transparent), and `<name>_flat` for untextured faces, which shows the `Col`
colour attribute. Each material's `mrwt_material` custom property holds its
key (`page_TTTT_CCCC` or `flat`); that is what the exporter reads.

Mesh attributes: `UVMap` (texel / 256), `Col` (polygon colours: flat
colour, or per-vertex for Gouraud types; 0x808080 = neutral on textured
faces), `psx_poly` (polygon record + 1, 0 for new faces) and `psx_type`
(group type, see [formats/sdf.md](formats/sdf.md)). Line primitives
(type 2, never drawn) come in as loose edges.

## Editing and exporting

File > Export > Moto Racer WT scene (.sdf) with an object of the scene
selected. The file name defaults to the imported file (overwriting it in a
workspace is the normal flow; `workspace.py repack` then picks up the
changed entry). **Base file** can point elsewhere; the edits are applied to
it. Only differences are written, so an unedited scene exports
byte-identical (checked on all 70 levels and menu/end scenes).

| Edit | Result |
|---|---|
| Move vertices / UVs, recolour `Col` of a mesh without changing its topology | written in place (bounds raised if the mesh grew) |
| Change a mesh's topology (add/delete faces or vertices) | the item gets a new mesh appended to the file: faces with a `page_*` material become textured (types 13/15), others flat (5/9) using `Col` (or the material's viewport colour); tris and quads only, ≤ 13 polygon groups of ≤ 1023 |
| Move / rotate / scale a placed object | its matrix and translation are rewritten |
| Move ground vertices | written in place (block-relative); topology is fixed |
| Move gate edge ends | position, direction and half-widths of the gate are rewritten; the list's distances are recomputed from the first moved gate on |
| Move racing-line points / edit their attributes | lane offset = the point's sideways distance from its gate (16-unit steps); target speed, flags and steer from the attributes. Checked in the emulator: lowering Sachsenring's target speeds in Blender slows the AI bikes as expected |
| Move rider mesh vertices (rest pose) | written back part-local to the model's vertex buffer (vertex count fixed). In the emulator the change shows on every rider, the player's included (scaling part 10 enlarges the chest/head); distant bikes use the low-detail model 1, which isn't imported |
| Edit a pose action's keys | the pose record's packed rotations (and translations of parts with flag 0x40) are rewritten; joints can't be added. Poses 5 / 3 are the left / right cornering stances, 1 the full-throttle tuck, 2 braking, 11 waiting at the start; pose 8 only drives the bike body and footpegs |
| Edit an animation action's key values | written back to that key (key times, count and joint lists are fixed). Checked in the emulator on the wall-crash animation `XMUR3` |
| Move collision vertices | the faces using them are re-encoded (edges, planes, height); moves under 2.5 units are ignored |

**The bikes ride on the collision surface, not on the ground mesh.** Its
outline edges are the walls, and the colours are the surface types
(on road tracks 0 = tarmac, 4 = kerb, 1–3 = grass / run-off, which slow the
bike), see [formats/sdf.md](formats/sdf.md). After
reshaping the ground, run Object > Moto Racer WT: Snap Collision to Ground
(with the level selected): every collision vertex within *Max distance*
(default 1 m) above or below the ground is moved onto it. Use *Selected
vertices only* to limit it to the area you changed. Collision faces can't
be added or removed, and their corners are shared with neighbours, so
large moves stretch the faces around them.

After reshaping a track, move the gates and racing lines with it: the
gates count laps and race positions (a bike must pass every gate plane in
order), and the AI drives along the racing lines and is kept off the edges
by the gate widths. Gates and racing-line points can't be added or removed
yet.

Not supported: new objects or duplicated placements, changing which mesh
an object uses, new textures or palettes (paint them in the workspace PNGs
instead), new ground faces. Replaced meshes lose their lighting /
environment-map extras and line primitives.

Blender stores transforms as location / rotation / scale, so it can't keep
the slight shear some game matrices have; an object whose rotation is within
2/4096 of the imported one (and translation within half a unit) keeps its
exact original values.

## Checked

- All 70 scenes: import + unedited export byte-identical.
- Sachsenring edited in Blender (moved object, lamp mesh 3× taller,
  magenta cube added to a sign mesh, ground raised): reads back as
  expected and the race loads and drives in Mednafen
  ([testing.md](testing.md)).
