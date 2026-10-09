"""Blender add-on: import and export Moto Racer World Tour scenes (.sdf).

File > Import > Moto Racer WT scene (.sdf) builds, under one collection:
  Items/    one object per draw item (hidden; the mesh data is shared)
  Objects/  every placed Cobjet, using its item's mesh, with its matrix
  Ground    the track ground (levels only)
  collision the collision surface (levels only, wireframe; corners shared
            between faces are welded)
Textured faces get a material per texture page + palette, rendered from the
level's .Vrm bank. Per-face attributes keep the game's polygon data:
psx_poly (record index + 1; 0 = new face), psx_type (group type); the Col
colour attribute holds polygon colours.

File > Export > Moto Racer WT scene (.sdf) writes the collection back,
starting from the file it was imported from:
  - item meshes with unchanged topology: positions, UVs and colours in place
  - item meshes with new topology: a new mesh (tris/quads; `page_*`
    materials stay textured, anything else becomes flat-coloured)
  - Ground: vertex positions (topology is fixed)
  - Objects: position / rotation / scale
  - collision: corner positions (faces are re-encoded: edges, planes);
    Object > Moto Racer WT: Snap Collision to Ground fits it to the ground
Unedited scenes export byte-identical. See docs/blender.md.
"""

bl_info = {
    "name": "Moto Racer World Tour scenes (.sdf)",
    "author": "MotoRacerWorldTour decomp project",
    "version": (0, 1, 0),
    "blender": (4, 2, 0),
    "location": "File > Import / Export",
    "description": "Edit PS1 Moto Racer World Tour levels and menu scenes",
    "category": "Import-Export",
}

import math
import sys
from pathlib import Path

_here = Path(__file__).resolve().parent
for _lib in (_here / "lib", _here.parents[1]):  # packaged copy, or the repo's tools/
    if (_lib / "sdf.py").exists():
        if str(_lib) not in sys.path:
            sys.path.insert(0, str(_lib))
        break

import bpy  # noqa: E402
import numpy as np  # noqa: E402
from bpy.props import BoolProperty, FloatProperty, StringProperty  # noqa: E402
from bpy_extras.io_utils import ExportHelper, ImportHelper  # noqa: E402
from mathutils import Matrix, Vector  # noqa: E402

from . import scene as sc  # noqa: E402

# game (x, y down, z) -> Blender (x, z, -y): Z up, still right-handed
C = Matrix(((1, 0, 0), (0, 0, 1), (0, -1, 0)))
CT = C.transposed()


def to_blender(v, s):
    x, y, z = v
    return (x * s, z * s, -y * s)


def to_game(v, s):
    x, y, z = v
    return (round(x / s), round(-z / s), round(y / s))


# --- textures ----------------------------------------------------------------

def find_vrm(sdf_path):
    """The texture bank for a scene: Sac_PS.sdf / Sac2_PS.sdf -> Sac.Vrm,
    Menu_N -> menu/banks/MMenuVrm.vrm, EndM_N -> menu/sc_banks/MENDVRM.vrm."""
    p = Path(sdf_path)
    files = {f.name.lower(): f for f in p.parent.iterdir()}
    stem = p.stem.lower()
    if stem.startswith("menu_"):
        cands = [p.parent.parent / "menu" / "banks" / "MMenuVrm.vrm"]
    elif stem.startswith("endm_"):
        cands = [p.parent.parent / "menu" / "sc_banks" / "MENDVRM.vrm"]
    else:
        base = stem[:-3] if stem.endswith("_ps") else stem
        cands = [files.get(f"{b}.vrm") for b in (base, base[:-1] if base.endswith("2") else None) if b]
    for c in cands:
        if c and c.exists():
            return c
    return None


class Textures:
    def __init__(self, vrm_path, name):
        self.vrm = None
        self.name = name
        if vrm_path:
            import vrm
            self.vrm = vrm.Vrm(Path(vrm_path).read_bytes())
        self.mats = {}

    def image(self, tpage, clut):
        if not self.vrm:
            return None
        try:
            rgba = self.vrm.texture([(0, 0), (255, 255)], clut, tpage)
        except (IndexError, ValueError):
            return None  # page or palette outside this bank's part of VRAM
        img = bpy.data.images.new(f"{self.name}_page_{tpage:04x}_{clut:04x}", rgba.shape[1], rgba.shape[0], alpha=True)
        px = np.flipud(rgba).astype(np.float32) / 255.0
        img.pixels.foreach_set(px.ravel())
        img.pack()
        return img

    def material(self, key):
        """key: 'page_TTTT_CCCC' or 'flat'."""
        if key in self.mats:
            return self.mats[key]
        mat = bpy.data.materials.new(f"{self.name}_{key}")
        mat["mrwt_material"] = key
        if hasattr(mat, "use_nodes"):
            mat.use_nodes = True
        nt = mat.node_tree
        bsdf = next(n for n in nt.nodes if n.type == "BSDF_PRINCIPLED")
        bsdf.inputs["Roughness"].default_value = 1.0
        if key.startswith("page_"):
            _, tpage, clut = key.split("_")
            img = self.image(int(tpage, 16), int(clut, 16))
            if img:
                tex = nt.nodes.new("ShaderNodeTexImage")
                tex.image, tex.interpolation = img, "Closest"
                tex.location = (-400, 200)
                nt.links.new(tex.outputs["Color"], bsdf.inputs["Base Color"])
                nt.links.new(tex.outputs["Alpha"], bsdf.inputs["Alpha"])
                if hasattr(mat, "surface_render_method"):
                    mat.surface_render_method = "DITHERED"
            else:
                bsdf.inputs["Base Color"].default_value = (1, 0, 1, 1)
        else:
            attr = nt.nodes.new("ShaderNodeVertexColor")
            attr.layer_name = "Col"
            attr.location = (-400, 200)
            nt.links.new(attr.outputs["Color"], bsdf.inputs["Base Color"])
        self.mats[key] = mat
        return mat


# --- import ------------------------------------------------------------------

def outline(seq):
    """GPU order -> outline order (quads 0-1-3-2); triangles unchanged."""
    return [seq[0], seq[1], seq[3], seq[2]] if len(seq) == 4 else list(seq)


def build_mesh(name, item, s, textures):
    me = bpy.data.meshes.new(name)
    verts = [to_blender(v, s) for v in item.verts]
    faces = [outline(f.idx) for f in item.faces]
    me.from_pydata(verts, list(item.lines), faces)
    keys = []
    for f in item.faces:
        k = f.material if f.textured else "flat"
        if k not in keys:
            keys.append(k)
    for k in keys:
        me.materials.append(textures.material(k))
    me.polygons.foreach_set("material_index", [keys.index(f.material if f.textured else "flat") for f in item.faces])
    uv = me.uv_layers.new(name="UVMap")
    uvs = []
    for f in item.faces:
        for u, v in outline(f.uv) if f.textured else [(0, 0)] * len(f.idx):
            uvs += [u / 256, 1 - v / 256]
    uv.data.foreach_set("uv", uvs)
    col = me.color_attributes.new("Col", "BYTE_COLOR", "CORNER")
    cols = []
    for f in item.faces:
        for r, g, b in outline(f.colors):
            cols += [r / 255, g / 255, b / 255, 1.0]
    col.data.foreach_set("color_srgb", cols)
    for attr, values in (("psx_poly", [f.poly + 1 for f in item.faces]),
                         ("psx_type", [f.type for f in item.faces])):
        a = me.attributes.new(attr, "INT", "FACE")
        a.data.foreach_set("value", values)
    me.update()
    return me


def object_matrix(p, s):
    m = Matrix([[p.matrix[r * 3 + c] / 4096 for c in range(3)] for r in range(3)])
    rot = C @ m @ CT
    out = rot.to_4x4()
    out.translation = to_blender([t / sc.TRANSLATION_SCALE for t in p.t], s)
    return out


SURFACE_COLOURS = [(0.8, 0.2, 0.2, 1), (0.2, 0.7, 0.2, 1), (0.2, 0.4, 0.9, 1), (0.6, 0.3, 0.8, 1),
                   (0.9, 0.8, 0.1, 1), (0.9, 0.5, 0.1, 1), (0.5, 0.5, 0.5, 1), (0.1, 0.8, 0.8, 1)]


def build_collision(name, faces, s):
    """Collision faces as one mesh; corners within 1 unit (x, z) and 2 units
    (y) of each other are welded so neighbouring faces move together."""
    verts, index, polys = [], {}, []
    for f in faces:
        loop = []
        for x, y, z in f.corners:
            key = (round(x), round(z))
            hit = None
            for k in index.get(key, ()):
                if abs(verts[k][1] - y) <= 2:
                    hit = k
                    break
            if hit is None:
                hit = len(verts)
                verts.append((x, y, z))
                index.setdefault(key, []).append(hit)
            loop.append(hit)
        polys.append(loop)
    me = bpy.data.meshes.new(name)
    me.from_pydata([to_blender(v, s) for v in verts], [], polys)
    surfaces = sorted({f.surface for f in faces})
    for t in surfaces:
        mat = bpy.data.materials.new(f"{name}_surface_{t}")
        mat.diffuse_color = SURFACE_COLOURS[t % len(SURFACE_COLOURS)]
        me.materials.append(mat)
    me.polygons.foreach_set("material_index", [surfaces.index(f.surface) for f in faces])
    for attr, values in (("psx_coll", [f.index + 1 for f in faces]), ("psx_surface", [f.surface for f in faces])):
        a = me.attributes.new(attr, "INT", "FACE")
        a.data.foreach_set("value", values)
    me["mrwt_collision"] = True
    me.update()
    return me


def collision_faces(ob, s):
    """Blender collision object -> [scene.CollisionFace] in game units."""
    me = ob.data
    idx = [0] * len(me.polygons)
    me.attributes["psx_coll"].data.foreach_get("value", idx)
    out = []
    for k, p in enumerate(me.polygons):
        if idx[k] <= 0:
            raise ValueError("collision: faces can't be added (only moved)")
        corners = [to_game_float(ob.matrix_world @ me.vertices[me.loops[l].vertex_index].co, s)
                   for l in p.loop_indices]
        out.append(sc.CollisionFace(idx[k] - 1, corners, 0))
    return out


def gate_ends(g):
    """Gate edge end points (game units): negative side, positive side."""
    _, (px, pz) = sc.gate_frame(g.angle)
    a = (g.x - px * g.width_neg * sc.WIDTH_UNIT, g.y, g.z - pz * g.width_neg * sc.WIDTH_UNIT)
    b = (g.x + px * g.width_pos * sc.WIDTH_UNIT, g.y, g.z + pz * g.width_pos * sc.WIDTH_UNIT)
    return a, b


def build_track(name, track, s, coll):
    """One mesh per gate list (an edge across the track per gate) and one
    polyline per racing line, with editable attributes."""
    for gl in track:
        verts, edges = [], []
        for i, g in enumerate(gl.gates):
            a, b = gate_ends(g)
            verts += [to_blender(a, s), to_blender(b, s)]
            edges.append((2 * i, 2 * i + 1))
        me = bpy.data.meshes.new(f"{name}_gates_{gl.index}")
        me.from_pydata(verts, edges, [])
        me["mrwt_gates"] = gl.index
        ob = bpy.data.objects.new(f"{name} gates {gl.index}", me)
        coll.objects.link(ob)
        for j, line in enumerate(gl.lines):
            pts = []
            for g, p in zip(gl.gates, line):
                _, (px, pz) = sc.gate_frame(g.angle)
                off = p.lane * sc.LANE_UNIT
                pts.append(to_blender((g.x + px * off, g.y, g.z + pz * off), s))
            lm = bpy.data.meshes.new(f"{name}_line_{gl.index}_{j}")
            lm.from_pydata(pts, [(i, i + 1) for i in range(len(pts) - 1)], [])
            for attr, vals in (("speed", [p.speed for p in line]), ("flags", [p.flags for p in line]),
                               ("steer", [p.steer for p in line])):
                a = lm.attributes.new(attr, "INT", "POINT")
                a.data.foreach_set("value", vals)
            lm["mrwt_line"] = [gl.index, j]
            lo = bpy.data.objects.new(f"{name} line {gl.index}.{j}", lm)
            coll.objects.link(lo)


def track_from_blender(root, s, old):
    """Gate lists and racing lines from the Blender objects (game units)."""
    import copy
    new = copy.deepcopy(old)
    by_list = {gl.index: gl for gl in new}
    for ob in root.all_objects:
        if ob.type != "MESH":
            continue
        me = ob.data
        if "mrwt_gates" in me:
            gl = by_list[me["mrwt_gates"]]
            if len(me.vertices) != 2 * len(gl.gates):
                raise ValueError(f"{ob.name}: gates can't be added or removed")
            for i, g in enumerate(gl.gates):
                a = to_game_float(ob.matrix_world @ me.vertices[2 * i].co, s)
                b = to_game_float(ob.matrix_world @ me.vertices[2 * i + 1].co, s)
                orig = old[[x.index for x in old].index(gl.index)].gates[i]
                oa, ob_ = gate_ends(orig)
                if all(abs(u - v) < 0.5 for p, q in ((a, oa), (b, ob_)) for u, v in zip(p, q)):
                    continue  # untouched (float noise)
                px, pz = b[0] - a[0], b[2] - a[2]
                length = math.hypot(px, pz) or 1.0
                px, pz = px / length, pz / length
                g.angle = round(math.atan2(px, -pz) * 4096 / (2 * math.pi)) & 0xFFF
                half = length / 2 / sc.WIDTH_UNIT
                g.width_pos = g.width_neg = max(0, min(255, round(half)))
                g.x, g.y, g.z = (a[0] + b[0]) / 2, (a[1] + b[1]) / 2, (a[2] + b[2]) / 2
    for ob in root.all_objects:
        if ob.type != "MESH" or "mrwt_line" not in ob.data:
            continue
        me = ob.data
        k, j = me["mrwt_line"]
        gl = by_list[k]
        pts = gl.lines[j]
        if len(me.vertices) != len(pts):
            raise ValueError(f"{ob.name}: racing-line points can't be added or removed")
        vals = {}
        for attr in ("speed", "flags", "steer"):
            buf = [0] * len(me.vertices)
            if attr in me.attributes:
                me.attributes[attr].data.foreach_get("value", buf)
                vals[attr] = buf
        for i, (g, p) in enumerate(zip(gl.gates, pts)):
            x, _, z = to_game_float(ob.matrix_world @ me.vertices[i].co, s)
            _, (px, pz) = sc.gate_frame(g.angle)
            p.lane = max(-128, min(127, round(((x - g.x) * px + (z - g.z) * pz) / sc.LANE_UNIT)))
            if "speed" in vals:
                p.speed, p.flags, p.steer = vals["speed"][i], vals["flags"][i], vals["steer"][i]
    return new


def rig_matrix(s):
    """Rig space (Y up) -> Blender: (x, y, z) -> (-x, z, y) * scale."""
    return Matrix(((-s, 0, 0, 0), (0, 0, s, 0), (0, s, 0, 0), (0, 0, 0, 1)))


def bone_name(part):
    return part.name or f"part_{part.index:02d}"


def build_rider(context, name, path, s, coll):
    """The rider rig (model 0) as an armature + skinned mesh; each pose record
    becomes an action `<name>_pose_NN` keyed at frame 1."""
    import sdf_rig
    from sdf import parse
    sdf = parse(Path(path).read_bytes())
    rig = sdf_rig.read(sdf)
    zero = sdf_rig.world_matrices(rig, None, base=False)
    arm = bpy.data.armatures.new(f"{name}_rider")
    arm_ob = bpy.data.objects.new(f"{name} rider", arm)
    arm_ob.matrix_world = rig_matrix(s)
    arm_ob["mrwt_rider"] = True
    coll.objects.link(arm_ob)
    context.view_layer.objects.active = arm_ob
    bpy.ops.object.mode_set(mode="EDIT")
    bones = {}
    for k in rig.order:
        part = rig.parts[k]
        b = arm.edit_bones.new(bone_name(part))
        head = Vector(zero[k][1])
        b.head, b.tail, b.roll = head, head + Vector((0, 20, 0)), 0.0  # identity rest orientation
        if part.parent is not None:
            b.parent = bones[part.parent]
        bones[k] = b
    bpy.ops.object.mode_set(mode="OBJECT")
    for part in rig.parts:
        pb = arm_ob.pose.bones[bone_name(part)]
        pb.rotation_mode = "ZYX"  # matrix Rx·Ry·Rz, as the game
        pb.rotation_euler = [a * 2 * math.pi / 4096 for a in part.base_rot]
    # mesh: one vertex per vertex-buffer entry (zero-angle frame), skinned to its part
    verts = sdf_rig.posed_vertices(rig, None, base=False)
    fs = sdf_rig.faces(sdf, rig)
    me = bpy.data.meshes.new(f"{name}_rider_mesh")
    me.from_pydata([tuple(v) for v in verts], [], [idx for idx, _, _ in fs])
    me["mrwt_rider"] = True
    ob = bpy.data.objects.new(f"{name} rider mesh", me)
    ob.parent = arm_ob
    coll.objects.link(ob)
    own = sdf_rig.owners(rig)
    groups = {p.index: ob.vertex_groups.new(name=bone_name(p)) for p in rig.parts}
    for i in range(len(verts)):
        groups[own.get(i, 0)].add([i], 1.0, "REPLACE")
    ob.modifiers.new("rig", "ARMATURE").object = arm_ob
    # poses
    arm_ob.animation_data_create()
    for pose in rig.poses:
        act = bpy.data.actions.new(f"{name}_pose_{pose.index:02d}")
        act["mrwt_pose"] = pose.index
        act.use_fake_user = True
        arm_ob.animation_data.action = act
        for k, ang in pose.rotations.items():
            part = rig.parts[k]
            pb = arm_ob.pose.bones[bone_name(part)]
            pb.rotation_euler = [(a + b) * 2 * math.pi / 4096 for a, b in zip(ang, part.base_rot)]
            pb.keyframe_insert("rotation_euler", frame=1)
        for k, tr in pose.translations.items():
            pb = arm_ob.pose.bones[bone_name(rig.parts[k])]
            pb.location = tr
            pb.keyframe_insert("location", frame=1)
    arm_ob.animation_data.action = None
    for part in rig.parts:  # back to the base pose
        pb = arm_ob.pose.bones[bone_name(part)]
        pb.rotation_euler = [a * 2 * math.pi / 4096 for a in part.base_rot]
        pb.location = (0, 0, 0)
    return arm_ob


def action_values(act, frame=1):
    """{(bone, property): [values]} of an action's F-curves at `frame`
    (Blender 4.4+ layered actions, or the older flat F-curve list)."""
    import re
    curves = []
    if getattr(act, "layers", None):
        for layer in act.layers:
            for strip in layer.strips:
                for slot in act.slots:
                    bag = strip.channelbag(slot)
                    if bag:
                        curves += list(bag.fcurves)
    else:
        curves = list(act.fcurves)
    out = {}
    for fc in curves:
        m = re.match(r'pose\.bones\["(.+)"\]\.(\w+)', fc.data_path)
        if m:
            vals = out.setdefault((m.group(1), m.group(2)), [0.0, 0.0, 0.0])
            vals[fc.array_index] = fc.evaluate(frame)
    return out


def rider_from_blender(context, root, path):
    """(vertices in the zero-angle frame, {pose index: Pose}) or None."""
    import sdf_rig
    from sdf import parse
    arm_ob = next((o for o in root.all_objects if o.get("mrwt_rider") and o.type == "ARMATURE"), None)
    mesh_ob = next((o for o in root.all_objects if o.type == "MESH" and o.data.get("mrwt_rider")), None)
    if arm_ob is None:
        return None
    rig = sdf_rig.read(parse(Path(path).read_bytes()))
    verts = None
    if mesh_ob is not None:
        if len(mesh_ob.data.vertices) != len(rig.vertices):
            raise ValueError("rider mesh: vertices can't be added or removed")
        verts = [tuple(v.co) for v in mesh_ob.data.vertices]
    poses = {}
    for act in bpy.data.actions:
        if "mrwt_pose" not in act:
            continue
        pose = next((p for p in rig.poses if p.index == act["mrwt_pose"]), None)
        if pose is None:
            continue
        vals = action_values(act)
        new = sdf_rig.Pose(pose.index, {}, {}, pose.record)
        for k, old_ang in pose.rotations.items():
            part = rig.parts[k]
            v = vals.get((bone_name(part), "rotation_euler"))
            new.rotations[k] = old_ang if v is None else tuple(
                round(a * 4096 / (2 * math.pi)) - b for a, b in zip(v, part.base_rot))
        for k, old_t in pose.translations.items():
            v = vals.get((bone_name(rig.parts[k]), "location"))
            new.translations[k] = old_t if v is None else tuple(round(c) for c in v)
        poses[pose.index] = new
    return {"vertices": verts, "poses": poses, "base": False}


def import_scene(context, path, vrm_path, s):
    data = sc.load(path)
    name = Path(path).stem
    textures = Textures(vrm_path, name)
    root = bpy.data.collections.new(name)
    root["mrwt_source"] = str(Path(path).resolve())
    root["mrwt_scale"] = s
    context.scene.collection.children.link(root)
    items_col = bpy.data.collections.new(f"{name} items")
    objs_col = bpy.data.collections.new(f"{name} objects")
    root.children.link(items_col)
    root.children.link(objs_col)
    meshes = {}
    for i, item in data.items.items():
        me = build_mesh(f"{name}_item_{i:03d}", item, s, textures)
        me["mrwt_item"] = i
        meshes[i] = me
        ob = bpy.data.objects.new(f"item_{i:03d}", me)
        items_col.objects.link(ob)
    items_col.hide_viewport = True
    items_col.hide_render = True
    for p in data.objects:
        ob = bpy.data.objects.new(p.name or f"object_{p.object:x}", meshes.get(p.item))
        m = object_matrix(p, s)
        ob.matrix_world = m
        ob["mrwt_object"] = p.object
        ob["mrwt_matrix"] = list(p.matrix)
        ob["mrwt_t"] = list(p.t)
        objs_col.objects.link(ob)
    if data.ground:
        me = build_mesh(f"{name}_ground", data.ground, s, textures)
        me["mrwt_ground"] = True
        ob = bpy.data.objects.new(f"{name} ground", me)
        root.objects.link(ob)
    if data.collision:
        ob = bpy.data.objects.new(f"{name} collision", build_collision(f"{name}_collision", data.collision, s))
        ob.display_type = "WIRE"
        ob.hide_render = True
        root.objects.link(ob)
    if data.track:
        track_col = bpy.data.collections.new(f"{name} track")
        root.children.link(track_col)
        build_track(name, data.track, s, track_col)
    if data.track is not None:  # levels: the rider rig
        rider_col = bpy.data.collections.new(f"{name} rider")
        root.children.link(rider_col)
        build_rider(context, name, path, s, rider_col)
        rider_col.hide_viewport = True
    return data, root


# --- export ------------------------------------------------------------------

def mesh_item(me, s, matrix=None):
    """Blender mesh -> scene.Item in game units (matrix: object -> world)."""
    verts = [to_game(matrix @ v.co if matrix else v.co, s) for v in me.vertices]
    n = len(me.polygons)
    poly = [0] * n
    ptype = [0] * n
    if "psx_poly" in me.attributes:
        me.attributes["psx_poly"].data.foreach_get("value", poly)
    if "psx_type" in me.attributes:
        me.attributes["psx_type"].data.foreach_get("value", ptype)
    uv = me.uv_layers.active.data if me.uv_layers.active else None
    col = me.color_attributes.get("Col")
    faces = []
    for k, p in enumerate(me.polygons):
        if p.loop_total > 4:
            raise ValueError(f"{me.name}: face {k} has {p.loop_total} sides; triangulate n-gons first")
        loops = list(p.loop_indices)
        mat = me.materials[p.material_index] if me.materials else None
        key = mat.get("mrwt_material", "") if mat else ""
        textured = key.startswith("page_")
        uvs = [(min(255, max(0, round(uv[l].uv[0] * 256))), min(255, max(0, round((1 - uv[l].uv[1]) * 256))))
               for l in loops] if (uv and textured) else None
        if col and col.domain == "CORNER":
            colors = [tuple(round(c * 255) for c in col.data[l].color_srgb[:3]) for l in loops]
        elif mat is not None and not textured:
            colors = [tuple(round(c * 255) for c in mat.diffuse_color[:3])] * len(loops)
        else:
            colors = [(128, 128, 128)] * len(loops)
        tpage = clut = 0
        if textured:
            _, tp, cl = key.split("_")
            tpage, clut = int(tp, 16), int(cl, 16)
        idx = [me.loops[l].vertex_index for l in loops]
        faces.append(sc.Face(outline(idx), ptype[k], outline(uvs) if uvs else None, tpage, clut,
                             outline(colors), poly[k] - 1))
    return sc.Item(-1, verts, faces)


def object_placement(ob, s):
    """Game matrix (9 x 1/4096) and translation (1/32 units) of a placed object.

    Blender keeps transforms as location/rotation/scale, so it can't hold the
    small shear some game matrices have, and float32 adds noise: a rotation
    within 2/4096 of the imported one, or a translation within half a unit,
    counts as untouched and keeps its exact original values."""
    m = CT @ ob.matrix_world.to_3x3() @ C
    matrix = [round(m[r][c] * 4096) for r in range(3) for c in range(3)]
    t = [round(v * sc.TRANSLATION_SCALE) for v in to_game_float(ob.matrix_world.translation, s)]
    if "mrwt_matrix" in ob:
        if all(abs(a - b) <= 2 for a, b in zip(matrix, ob["mrwt_matrix"])):
            matrix = list(ob["mrwt_matrix"])
        if all(abs(a - b) <= 16 for a, b in zip(t, ob["mrwt_t"])):
            t = list(ob["mrwt_t"])
    return matrix, t


def to_game_float(v, s):
    x, y, z = v
    return (x / s, -z / s, y / s)


def find_root(context):
    roots = [c for c in bpy.data.collections if "mrwt_source" in c]
    ob = context.active_object
    if ob:
        for c in roots:
            if ob.name in c.all_objects:
                return c
    return roots[0] if len(roots) == 1 else None


def export_scene(root, out, base=None):
    bpy.context.view_layer.update()  # make matrix_world current after scripted moves
    s = root.get("mrwt_scale", 0.01)
    items, ground, objects, collision = {}, None, [], None
    old = sc.load(base or root["mrwt_source"])
    track = track_from_blender(root, s, old.track) if old.track else None
    for ob in root.all_objects:
        if "mrwt_object" in ob:
            matrix, t = object_placement(ob, s)
            objects.append(sc.Placed(ob["mrwt_object"], ob.name, -1, matrix, t))
        if ob.type != "MESH":
            continue
        me = ob.data
        if "mrwt_item" in me and me["mrwt_item"] not in items:
            items[me["mrwt_item"]] = mesh_item(me, s)
        if me.get("mrwt_ground"):
            ground = mesh_item(me, s, ob.matrix_world)
        if me.get("mrwt_collision"):
            collision = collision_faces(ob, s)
    rider = rider_from_blender(bpy.context, root, base or root["mrwt_source"])
    return sc.save(base or root["mrwt_source"], out, items, ground, objects, collision, track, rider)


# --- operators ---------------------------------------------------------------

class MRWT_OT_import(bpy.types.Operator, ImportHelper):
    """Import a Moto Racer World Tour level or menu scene"""
    bl_idname = "import_scene.mrwt_sdf"
    bl_label = "Import Moto Racer WT scene"
    bl_options = {"UNDO"}

    filename_ext = ".sdf"
    filter_glob: StringProperty(default="*.sdf;*.Sdf;*.SDF", options={"HIDDEN"})
    vrm: StringProperty(name="Texture bank", description="The scene's .Vrm (empty: found next to the .sdf)", subtype="FILE_PATH")
    scale: FloatProperty(name="Scale", description="Blender units per game unit", default=0.01, min=1e-5)

    def execute(self, context):
        vrm_path = bpy.path.abspath(self.vrm) if self.vrm else find_vrm(self.filepath)
        try:
            data, root = import_scene(context, self.filepath, vrm_path, self.scale)
        except ValueError as e:
            self.report({"ERROR"}, str(e))
            return {"CANCELLED"}
        self.report({"INFO"}, f"{len(data.items)} items, {len(data.objects)} objects"
                    + (", ground" if data.ground else "") + ("" if vrm_path else " (no texture bank found)"))
        return {"FINISHED"}


class MRWT_OT_export(bpy.types.Operator, ExportHelper):
    """Write the edited scene back to a .sdf"""
    bl_idname = "export_scene.mrwt_sdf"
    bl_label = "Export Moto Racer WT scene"

    filename_ext = ".sdf"
    filter_glob: StringProperty(default="*.sdf;*.Sdf;*.SDF", options={"HIDDEN"})
    base: StringProperty(name="Base file", description="File to apply the edits to (empty: the imported one)", subtype="FILE_PATH")
    check_existing: BoolProperty(default=True, options={"HIDDEN"})

    def invoke(self, context, event):
        root = find_root(context)
        if root is not None:
            self.filepath = root["mrwt_source"]
        return ExportHelper.invoke(self, context, event)

    def execute(self, context):
        root = find_root(context)
        if root is None:
            self.report({"ERROR"}, "select an object of an imported scene")
            return {"CANCELLED"}
        try:
            log = export_scene(root, self.filepath, bpy.path.abspath(self.base) if self.base else None)
        except ValueError as e:
            self.report({"ERROR"}, str(e))
            return {"CANCELLED"}
        for line in log:
            print(line)
        self.report({"INFO"}, "; ".join(log) if log else "no changes")
        return {"FINISHED"}


class MRWT_OT_snap_collision(bpy.types.Operator):
    """Move the collision vertices up or down onto the scene's ground mesh"""
    bl_idname = "object.mrwt_snap_collision"
    bl_label = "Snap Collision to Ground"
    bl_options = {"REGISTER", "UNDO"}

    selected_only: BoolProperty(name="Selected vertices only", default=False)
    max_distance: FloatProperty(name="Max distance", description="Leave vertices farther than this from the ground",
                                default=1.0, min=0.0)

    def execute(self, context):
        from mathutils.bvhtree import BVHTree
        root = find_root(context)
        obs = list(root.all_objects) if root else []
        coll = next((o for o in obs if o.type == "MESH" and o.data.get("mrwt_collision")), None)
        ground = next((o for o in obs if o.type == "MESH" and o.data.get("mrwt_ground")), None)
        if coll is None or ground is None:
            self.report({"ERROR"}, "select an object of an imported level (needs ground and collision)")
            return {"CANCELLED"}
        if coll.mode == "EDIT":
            bpy.ops.object.mode_set(mode="OBJECT")
            back_to_edit = True
        else:
            back_to_edit = False
        deps = context.evaluated_depsgraph_get()
        tree = BVHTree.FromObject(ground, deps)  # ground-object space
        g_inv = ground.matrix_world.inverted()
        to_world, to_local = coll.matrix_world, coll.matrix_world.inverted()
        moved = 0
        for v in coll.data.vertices:
            if self.selected_only and not v.select:
                continue
            w = to_world @ v.co
            best = None
            for direction in ((0, 0, -1), (0, 0, 1)):
                origin = g_inv @ w
                d = (g_inv.to_3x3() @ Vector(direction)).normalized()
                hit, _, _, dist = tree.ray_cast(origin, d, self.max_distance)
                if hit is not None and (best is None or dist < best[1]):
                    best = (ground.matrix_world @ hit, dist)
            if best is not None:
                v.co = to_local @ Vector((w.x, w.y, best[0].z))
                moved += 1
        coll.data.update()
        if back_to_edit:
            bpy.ops.object.mode_set(mode="EDIT")
        self.report({"INFO"}, f"{moved} collision vertices snapped")
        return {"FINISHED"}


def menu_object(self, context):
    self.layout.operator(MRWT_OT_snap_collision.bl_idname, text="Moto Racer WT: Snap Collision to Ground")


def menu_import(self, context):
    self.layout.operator(MRWT_OT_import.bl_idname, text="Moto Racer WT scene (.sdf)")


def menu_export(self, context):
    self.layout.operator(MRWT_OT_export.bl_idname, text="Moto Racer WT scene (.sdf)")


def register():
    bpy.utils.register_class(MRWT_OT_import)
    bpy.utils.register_class(MRWT_OT_export)
    bpy.utils.register_class(MRWT_OT_snap_collision)
    bpy.types.VIEW3D_MT_object.append(menu_object)
    bpy.types.TOPBAR_MT_file_import.append(menu_import)
    bpy.types.TOPBAR_MT_file_export.append(menu_export)


def unregister():
    bpy.types.TOPBAR_MT_file_export.remove(menu_export)
    bpy.types.TOPBAR_MT_file_import.remove(menu_import)
    bpy.types.VIEW3D_MT_object.remove(menu_object)
    bpy.utils.unregister_class(MRWT_OT_snap_collision)
    bpy.utils.unregister_class(MRWT_OT_export)
    bpy.utils.unregister_class(MRWT_OT_import)
