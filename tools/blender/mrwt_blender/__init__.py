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
    import vram_usage
    return vram_usage.find_vrm(sdf_path)


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
    """Per gate list: a path object (one vertex per gate centre, in order,
    with float attributes width_pos / width_neg in game units and orig =
    original index + 1) that can be edited freely (move, subdivide, delete,
    extrude), a preview of the gates as edges across the track (not
    exported), and one polyline per racing line."""
    for gl in track:
        verts = [to_blender((g.x, g.y, g.z), s) for g in gl.gates]
        me = bpy.data.meshes.new(f"{name}_gates_{gl.index}")
        me.from_pydata(verts, [(i, i + 1) for i in range(len(verts) - 1)], [])
        for attr, vals in (("width_pos", [g.width_pos * sc.WIDTH_UNIT for g in gl.gates]),
                           ("width_neg", [g.width_neg * sc.WIDTH_UNIT for g in gl.gates]),
                           ("orig", [i + 1 for i in range(len(gl.gates))])):
            a = me.attributes.new(attr, "FLOAT", "POINT")
            a.data.foreach_set("value", vals)
        me["mrwt_gates"] = gl.index
        ob = bpy.data.objects.new(f"{name} gates {gl.index}", me)
        coll.objects.link(ob)
        pv, pe = [], []
        for i, g in enumerate(gl.gates):
            a, b = gate_ends(g)
            pv += [to_blender(a, s), to_blender(b, s)]
            pe.append((2 * i, 2 * i + 1))
        pm = bpy.data.meshes.new(f"{name}_gates_{gl.index}_preview")
        pm.from_pydata(pv, pe, [])
        po = bpy.data.objects.new(f"{name} gates {gl.index} widths (preview)", pm)
        po.hide_select = True
        coll.objects.link(po)
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


def _path_order(me):
    """Vertex indices along the path, starting at the original gate 0 (or an end)."""
    nbr = {v.index: [] for v in me.vertices}
    for e in me.edges:
        a, b = e.vertices
        nbr[a].append(b)
        nbr[b].append(a)
    orig = [0.0] * len(me.vertices)
    if "orig" in me.attributes:
        me.attributes["orig"].data.foreach_get("value", orig)
    ends = [v for v, n in nbr.items() if len(n) <= 1]
    start = next((v for v in nbr if orig[v] == 1.0), None)
    if start is None or (ends and start not in ends and len(nbr[start]) > 1):
        start = min(ends, key=lambda v: (orig[v] if orig[v] >= 1 else 1e9)) if ends else 0
    order, prev = [start], None
    while True:
        nxt = [v for v in nbr[order[-1]] if v != prev and v not in order[-2:]]
        if not nxt or nxt[0] == start:
            break
        prev = order[-1]
        order.append(nxt[0])
    if len(order) != len(me.vertices):
        raise ValueError(f"{me.name}: gates must form one unbranched path")
    return order, orig


def track_from_blender(root, s, old):
    """Gate lists and racing lines from the Blender objects (game units)."""
    import copy
    new = copy.deepcopy(old)
    by_list = {gl.index: gl for gl in new}
    olds = {gl.index: gl for gl in old}
    for ob in root.all_objects:
        if ob.type != "MESH" or "mrwt_gates" not in ob.data:
            continue
        me = ob.data
        gl, before = by_list[me["mrwt_gates"]], olds[me["mrwt_gates"]]
        order, orig = _path_order(me)
        wpos = [0.0] * len(me.vertices)
        wneg = [0.0] * len(me.vertices)
        me.attributes["width_pos"].data.foreach_get("value", wpos)
        me.attributes["width_neg"].data.foreach_get("value", wneg)
        pts = [to_game_float(ob.matrix_world @ me.vertices[v].co, s) for v in order]
        seen, origs = set(), []
        for v in order:
            o = orig[v]
            k = int(round(o)) - 1
            ok = abs(o - round(o)) < 1e-4 and 0 <= k < len(before.gates) and k not in seen
            origs.append(k if ok else None)
            if ok:
                seen.add(k)
        gates = []
        for i, v in enumerate(order):
            x, y, z = pts[i]
            k = origs[i]
            g = copy.copy(before.gates[k]) if k is not None else sc.Gate(x, y, z, 0, 0, 0, 0)
            moved = k is None or any(abs(a - b) > 0.5 for a, b in zip((x, y, z), (g.x, g.y, g.z)))
            if moved:
                a, b = pts[max(0, i - 1)], pts[min(len(pts) - 1, i + 1)]
                g.x, g.y, g.z = x, y, z
                g.angle = round(math.atan2(b[2] - a[2], b[0] - a[0]) * 4096 / (2 * math.pi)) & 0xFFF
            g.width_pos = max(0, min(255, round(wpos[v] / sc.WIDTH_UNIT)))
            g.width_neg = max(0, min(255, round(wneg[v] / sc.WIDTH_UNIT)))
            gates.append(g)
        gl.gates = gates
        gl.orig = origs
    for ob in root.all_objects:
        if ob.type != "MESH" or "mrwt_line" not in ob.data:
            continue
        me = ob.data
        k, j = me["mrwt_line"]
        gl = by_list[k]
        if gl.orig is not None and gl.orig != list(range(len(olds[k].gates))):
            continue  # the gate count changed: lines are resampled from the old ones on export
        pts = gl.lines[j]
        if len(me.vertices) != len(pts):
            raise ValueError(f"{ob.name}: racing-line points follow the gates; change the gates instead")
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
    # animations (root 11): one action each, keys at frame 1 + ms / 20 (PAL)
    for anim in sdf_rig.read_anims(sdf):
        act = bpy.data.actions.new(f"{name}_anim_{anim.name}")
        act["mrwt_anim"] = anim.record
        act["mrwt_length"] = anim.length
        act.use_fake_user = True
        arm_ob.animation_data.action = act
        for t, key in anim.keys:
            frame = 1 + t / ANIM_MS_PER_FRAME
            for k, ang in key.rotations.items():
                part = rig.parts[k]
                pb = arm_ob.pose.bones[bone_name(part)]
                pb.rotation_euler = [(a + b) * 2 * math.pi / 4096 for a, b in zip(ang, part.base_rot)]
                pb.keyframe_insert("rotation_euler", frame=frame)
            for k, tr in key.translations.items():
                pb = arm_ob.pose.bones[bone_name(rig.parts[k])]
                pb.location = tr
                pb.keyframe_insert("location", frame=frame)
        for fc in action_fcurves(act):
            for kp in fc.keyframe_points:
                kp.interpolation = "LINEAR"  # the game blends keys linearly
    arm_ob.animation_data.action = None
    for part in rig.parts:  # back to the base pose
        pb = arm_ob.pose.bones[bone_name(part)]
        pb.rotation_euler = [a * 2 * math.pi / 4096 for a in part.base_rot]
        pb.location = (0, 0, 0)
    return arm_ob


ANIM_MS_PER_FRAME = 20  # PAL, 50 frames per second


def action_fcurves(act):
    if hasattr(act, "layers"):  # Blender 4.4+: layered actions (possibly empty)
        out = []
        for layer in act.layers:
            for strip in layer.strips:
                for slot in act.slots:
                    bag = strip.channelbag(slot)
                    if bag:
                        out += list(bag.fcurves)
        return out
    return list(act.fcurves)


def action_values(act, frame=1):
    """{(bone, property): [values]} of an action's F-curves at `frame`
    (Blender 4.4+ layered actions, or the older flat F-curve list)."""
    import re
    curves = action_fcurves(act)
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
    anims = {}
    by_rec = {a.record: a for a in sdf_rig.read_anims(parse(Path(path).read_bytes()))}
    for act in bpy.data.actions:
        anim = by_rec.get(act.get("mrwt_anim"))
        if anim is None:
            continue
        keys = []
        for t, key in anim.keys:
            vals = action_values(act, 1 + t / ANIM_MS_PER_FRAME)
            new = sdf_rig.Pose(key.index, {}, {}, key.record)
            for k, old_ang in key.rotations.items():
                part = rig.parts[k]
                v = vals.get((bone_name(part), "rotation_euler"))
                new.rotations[k] = old_ang if v is None else tuple(
                    round(a * 4096 / (2 * math.pi)) - b for a, b in zip(v, part.base_rot))
            for k, old_t in key.translations.items():
                v = vals.get((bone_name(rig.parts[k]), "location"))
                new.translations[k] = old_t if v is None else tuple(round(c) for c in v)
            keys.append(new)
        anims[anim.record] = keys
    return {"vertices": verts, "poses": poses, "base": False, "anims": anims}


def import_scene(context, path, vrm_path, s):
    data = sc.load(path)
    name = Path(path).stem
    textures = Textures(vrm_path, name)
    root = bpy.data.collections.new(name)
    root["mrwt_source"] = str(Path(path).resolve())
    if vrm_path:
        root["mrwt_vrm"] = str(Path(vrm_path).resolve())
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
        if not key and mat is not None and material_image(mat) is not None:
            key = "new:" + mat.name   # your own image: allocated in the bank on export
        textured = key.startswith("page_") or key.startswith("new:")
        if uv and key.startswith("new:"):
            uvs = [(uv[l].uv[0], uv[l].uv[1]) for l in loops]  # image space; mapped after allocation
        else:
            uvs = [(min(255, max(0, round(uv[l].uv[0] * 256))), min(255, max(0, round((1 - uv[l].uv[1]) * 256))))
                   for l in loops] if (uv and textured) else None
        if col and col.domain == "CORNER":
            colors = [tuple(round(c * 255) for c in col.data[l].color_srgb[:3]) for l in loops]
        elif mat is not None and not textured:
            colors = [tuple(round(c * 255) for c in mat.diffuse_color[:3])] * len(loops)
        else:
            colors = [(128, 128, 128)] * len(loops)
        tpage = clut = 0
        if key.startswith("page_"):
            _, tp, cl = key.split("_")
            tpage, clut = int(tp, 16), int(cl, 16)
        idx = [me.loops[l].vertex_index for l in loops]
        face = sc.Face(outline(idx), ptype[k], outline(uvs) if uvs else None, tpage, clut,
                       outline(colors), poly[k] - 1)
        if key.startswith("new:"):
            face.new_texture = key[4:]
        faces.append(face)
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


def material_image(mat):
    nt = getattr(mat, "node_tree", None)
    if nt is None:
        return None
    for n in nt.nodes:
        if n.type == "TEX_IMAGE" and n.image is not None:
            return n.image
    return None


def image_rgba(img):
    """Blender image -> uint8 RGBA, top row first."""
    w, h = img.size
    px = np.empty(w * h * 4, np.float32)
    img.pixels.foreach_get(px)
    return np.flipud((px.reshape(h, w, 4) * 255 + 0.5).clip(0, 255).astype(np.uint8))


def bank_scenes(vrm_path, source):
    """Scene files next to `source` that load the same texture bank."""
    folder = Path(source).parent
    out = []
    for f in sorted(folder.iterdir()):
        if f.suffix.lower() == ".sdf" and not f.name.lower().startswith("db_"):
            v = find_vrm(f)
            if v is not None and Path(v).resolve() == Path(vrm_path).resolve():
                out.append(f)
    return out or [Path(source)]


def allocate_textures(root, items, out, log, scene_files):
    """Faces with your own image materials: put each image into free texture
    bank VRAM (4-bit, 16 colours) at a place that is free in every bank the
    scene files load (e.g. Sac.Vrm and the 500 cc SacB.Vrm), point the faces
    at it and write the banks next to `out`. An image keeps its place across
    exports (stored on the material as mrwt_alloc) while its size doesn't
    change."""
    new_faces = [f for it in items.values() for f in it.faces if getattr(f, "new_texture", None)]
    if not new_faces:
        return
    import vram_usage
    import vrm as V
    from sdf import parse
    bank_paths = []
    for f in scene_files:
        b = find_vrm(f)
        if b is not None and Path(b).resolve() not in [p.resolve() for p in bank_paths]:
            bank_paths.append(Path(b))
    if not bank_paths:
        raise ValueError("new textures need the scene's texture bank")
    banks, used = {}, None
    for bp in bank_paths:
        out_bank = Path(out).parent / bp.name
        src = out_bank if out_bank.exists() else bp
        banks[bp.name] = V.Vrm(src.read_bytes())
        loaders = [parse(f.read_bytes()) for f in scene_files
                   if find_vrm(f) is not None and Path(find_vrm(f)).resolve() == bp.resolve()]
        u = vram_usage.usage(src.read_bytes(), loaders)
        used = u if used is None else (used | u)
    placed = {}
    for name in sorted({f.new_texture for f in new_faces}):
        mat = bpy.data.materials[name]
        rgba = image_rgba(material_image(mat))
        h, w = rgba.shape[:2]
        if w > 256 or h > 256:
            raise ValueError(f"{name}: textures can be at most 256 x 256 (is {w} x {h})")
        bpp = int(mat.get("mrwt_bpp", 4))
        if bpp not in vram_usage.DEPTHS:
            raise ValueError(f"{name}: mrwt_bpp must be 4, 8 or 15")
        prev = mat.get("mrwt_alloc")
        if prev is not None and (prev["w"], prev["h"], prev.get("bpp", 4)) == (w, h, bpp):
            t = {k: prev[k] for k in ("tpage", "clut", "u", "v", "w", "h")}
            t["bpp"], t["colours"] = prev.get("bpp", 4), prev.get("colours", 16)
        else:
            t = vram_usage.add_texture(None, used, rgba, bpp)
            mat["mrwt_alloc"] = t
        for bank in banks.values():
            vram_usage.write_texture(bank, t, rgba)
        placed[name] = t
        log.append(f"texture {name}: {w}x{h} {t['bpp']}-bit"
                   f"{' ' + str(t['colours']) + ' colours' if t['colours'] else ''} at tpage {t['tpage']:04x} clut {t['clut']:04x} "
                   f"uv ({t['u']}, {t['v']}) in {', '.join(banks)}")
    for f in new_faces:
        t = placed[f.new_texture]
        f.tpage, f.clut = t["tpage"], t["clut"]
        f.uv = [(min(255, t["u"] + round(u * (t["w"] - 1))), min(255, t["v"] + round((1 - v) * (t["h"] - 1))))
                for u, v in f.uv] if f.uv else [(t["u"], t["v"])] * len(f.idx)
        f.new_texture = None
    for name, bank in banks.items():
        (Path(out).parent / name).write_bytes(bank.to_bytes())
        log.append(f"texture bank -> {Path(out).parent / name}")


def rider_for_variant(rider, base_path, variant_path):
    """The rider edit for a variant file, if its rig is the same as the base's."""
    if not rider:
        return None, False
    import sdf_rig
    from sdf import parse
    a, b = parse(Path(base_path).read_bytes()), parse(Path(variant_path).read_bytes())
    ra, rb = sdf_rig.read(a), sdf_rig.read(b)
    same = ra.vertices == rb.vertices and [(p.rotations, p.translations) for p in ra.poses] == \
        [(p.rotations, p.translations) for p in rb.poses]
    anims_a = {x.record: x for x in sdf_rig.read_anims(a)}
    anims_b = {x.name: x for x in sdf_rig.read_anims(b)}
    out = dict(rider)
    if not same:
        out["vertices"], out["poses"] = None, {}
    out["anims"] = {}
    for rec, keys in (rider.get("anims") or {}).items():
        xa, xb = anims_a.get(rec), anims_b.get(anims_a[rec].name) if rec in anims_a else None
        if xb is not None and [(t, k.rotations, k.translations) for t, k in xa.keys] == \
                [(t, k.rotations, k.translations) for t, k in xb.keys]:
            out["anims"][xb.record] = [sdf_rig.Pose(k.index, n.rotations, n.translations, k.record)
                                        for (_, k), n in zip(xb.keys, keys)]
    return out, same


def find_root(context):
    roots = [c for c in bpy.data.collections if "mrwt_source" in c]
    ob = context.active_object
    if ob:
        for c in roots:
            if ob.name in c.all_objects:
                return c
    return roots[0] if len(roots) == 1 else None


def export_scene(root, out, base=None, variants=True, everywhere=False):
    """Write the edited scene to `out`. With `variants`, the same edit also
    goes to the track's other level files found next to the source (two
    players, 500 cc: <code>2_PS, <code>B_PS, <code>B2_PS), written next to
    `out` under their own names, for every structure that was identical to
    the source's; new textures go into every bank those files load. With
    `everywhere`, other tracks' level files in the folder get the rider and
    draw-item edits too, where their rig / item is identical (e.g. the bike
    and rider shared by several tracks)."""
    bpy.context.view_layer.update()  # make matrix_world current after scripted moves
    s = root.get("mrwt_scale", 0.01)
    source = Path(base or root["mrwt_source"])
    items, ground, objects, collision = {}, None, [], None
    old = sc.load(source)
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
    rider = rider_from_blender(bpy.context, root, source)
    others = sc.variant_files(source) if variants else []
    tracks = []
    if everywhere:
        known = {p.resolve() for p in [source] + others}
        tracks = [f for f in sorted(source.parent.iterdir())
                  if f.name.lower().endswith("_ps.sdf") and f.resolve() not in known]
    log = []
    edited = {i: it for i, it in items.items()}
    allocate_textures(root, items, out, log, [source] + others + tracks)
    log += sc.save(source, out, items, ground, objects, collision, track, rider)
    for v in others:
        old_v = sc.load(v)
        v_items, v_ground, v_objects, v_collision, v_track, skipped = sc.variant_edits(
            old, old_v, items, ground, objects, collision, track)
        v_rider, _ = rider_for_variant(rider, source, v)
        dest = Path(out).parent / v.name
        v_log = sc.save(v, dest, v_items, v_ground, v_objects, v_collision, v_track, v_rider)
        if dest.read_bytes() == v.read_bytes():
            dest.unlink()
        log += [f"{v.name}: {line}" for line in v_log]
        changed = " ".join(log)
        skipped = [x for x in skipped
                   if (x.startswith("item ") and f"{x}:" in changed) or (x == "ground" and "ground:" in changed)
                   or (x == "collision" and "collision:" in changed) or (x == "gates" and "track:" in changed)
                   or (x.startswith("object ") and "objects:" in changed)]
        if skipped:
            log.append(f"{v.name}: differs from {source.name} in {', '.join(skipped)}, not applied there")
    for t in tracks:
        old_t = sc.load(t)
        by_sig = {}
        for i, it in old_t.items.items():
            by_sig.setdefault(sc._item_sig(it), i)
        t_items = {}
        for i, new in edited.items():
            j = by_sig.get(sc._item_sig(old.items[i]))
            if j is not None:
                t_items[j] = new
        t_rider, same_rig = rider_for_variant(rider, source, t)
        if not same_rig and t_rider:
            t_rider["vertices"], t_rider["poses"] = None, {}
        dest = Path(out).parent / t.name
        t_log = sc.save(t, dest, t_items, None, [], None, None, t_rider)
        if dest.read_bytes() == t.read_bytes():
            dest.unlink()   # nothing shared with this track
        else:
            log += [f"{t.name}: {line}" for line in t_log]
    return log


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
    variants: BoolProperty(name="Track variants", default=True,
                           description="Also edit the track's 2-player and 500 cc level files (and their banks)")
    everywhere: BoolProperty(name="Identical tracks", default=False,
                             description="Also apply rider and draw-item edits to other tracks where they are identical (shared bike / rider)")
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
            log = export_scene(root, self.filepath, bpy.path.abspath(self.base) if self.base else None,
                               self.variants, self.everywhere)
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
