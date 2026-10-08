"""Blender add-on: import and export Moto Racer World Tour scenes (.sdf).

File > Import > Moto Racer WT scene (.sdf) builds, under one collection:
  Items/    one object per draw item (hidden; the mesh data is shared)
  Objects/  every placed Cobjet, using its item's mesh, with its matrix
  Ground    the track ground (levels only)
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
from mathutils import Matrix  # noqa: E402

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
    items, ground, objects = {}, None, []
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
    return sc.save(base or root["mrwt_source"], out, items, ground, objects)


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


def menu_import(self, context):
    self.layout.operator(MRWT_OT_import.bl_idname, text="Moto Racer WT scene (.sdf)")


def menu_export(self, context):
    self.layout.operator(MRWT_OT_export.bl_idname, text="Moto Racer WT scene (.sdf)")


def register():
    bpy.utils.register_class(MRWT_OT_import)
    bpy.utils.register_class(MRWT_OT_export)
    bpy.types.TOPBAR_MT_file_import.append(menu_import)
    bpy.types.TOPBAR_MT_file_export.append(menu_export)


def unregister():
    bpy.types.TOPBAR_MT_file_export.remove(menu_export)
    bpy.types.TOPBAR_MT_file_import.remove(menu_import)
    bpy.utils.unregister_class(MRWT_OT_export)
    bpy.utils.unregister_class(MRWT_OT_import)
