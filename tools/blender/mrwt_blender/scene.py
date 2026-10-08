"""Read an SDF scene into plain data and write edits back (no bpy here).

Everything is in game units: PS1 coordinates (Y down), integer vertex
positions, UVs in texels. The Blender side (__init__.py) only converts
between these and Blender objects.

  load(path)              -> Scene
  save(base, out, edits)  -> list of log lines; writes `out`

Edits only touch what differs from `base`, so saving an unedited scene
gives back the same bytes.
"""

import struct
from dataclasses import dataclass, field
from pathlib import Path

import sdf_collision
from sdf import parse, serialize
from sdf_mesh import TEXTURED_TYPES, draw_items, read_item_mesh
from sdf_geom import (TRANSLATION_SCALE, bounds_update, cobjets, ground_layout,
                      block_of_vertex, replace_item, s16, u16, BLOCK_SCALE)

# Group types whose word at +0x08 points to per-vertex colours (Gouraud).
GOURAUD = {7, 8, 11, 12, 14, 16, 18, 20, 22, 24}


@dataclass
class Face:
    idx: list                  # vertex indices, GPU order (quads 0-1-3-2 outline)
    type: int = 0              # group type (items) / flags (ground)
    uv: list = None            # [(u, v)] texels, textured faces only
    tpage: int = 0
    clut: int = 0
    colors: list = None        # [(r, g, b)] per corner
    poly: int = -1             # index of the polygon record it came from

    @property
    def textured(self):
        return self.uv is not None

    @property
    def material(self):
        if self.textured:
            return f"page_{self.tpage:04x}_{self.clut:04x}"
        r, g, b = self.colors[0] if self.colors else (128, 128, 128)
        return f"color_{r:02x}{g:02x}{b:02x}"


@dataclass
class Item:
    index: int
    verts: list
    faces: list                # triangles and quads
    lines: list = field(default_factory=list)   # (a, b) pairs, type 2 (never drawn)


@dataclass
class Placed:
    object: int                # offset of the Cobjet
    name: str
    item: int                  # LOD 0 draw item
    matrix: tuple              # 9 x s16 (4096 = 1.0), row major
    t: tuple                   # 3 x s32, 1/32 units


@dataclass
class CollisionFace:
    index: int
    corners: list              # [(x, y, z)] game units, Y down, edge order
    surface: int


@dataclass
class Scene:
    items: dict
    ground: Item = None
    objects: list = field(default_factory=list)
    roots: int = 0
    collision: list = None     # [CollisionFace], levels only


def rgb(word):
    return (word & 0xFF, (word >> 8) & 0xFF, (word >> 16) & 0xFF)


def has_geometry(sdf):
    return len(sdf.roots) in (15, 51)  # levels and menu/end scenes, not the DB


def read_item(sdf, i, item):
    mesh = read_item_mesh(sdf, item)
    p = sdf.u32(sdf.u32(item + 4) + 0x1C)
    relocs = set(sdf.relocs)
    faces, lines = [], []
    for n, poly in enumerate(mesh.polygons):
        rec = p + n * 28
        if len(poly.indices) == 2:
            lines.append(tuple(poly.indices))
            continue
        word2 = sdf.u32(rec + 8)
        k = len(poly.indices)
        if poly.type in GOURAUD and (rec + 8) in relocs:
            colors = [rgb(sdf.u32(word2 + 4 * c)) for c in range(k)]
        else:
            colors = [rgb(word2)] * k
        faces.append(Face(list(poly.indices), poly.type, poly.uv if poly.textured else None,
                          poly.tpage, poly.clut, colors, n))
    return Item(i, [tuple(v) for v in mesh.vertices], faces, lines)


def read_ground(sdf):
    g = ground_layout(sdf)
    owner = block_of_vertex(g)
    verts = []
    for i in range(g["n_verts"]):
        x, y, z = struct.unpack_from("<3h", sdf.data, g["verts"] + i * 8)
        bx, bz = owner.get(i, (0, 0))
        verts.append((x + bx * BLOCK_SCALE, y, z + bz * BLOCK_SCALE))
    faces, n = [], 0
    for first, block, counts, list_start in g["sectors"]:
        vstart = g["blocks"][block][3]
        for k in range(counts & 0xFF):
            rec = g["polys"] + (first + k) * g["rec"]
            flags, tex = struct.unpack_from("<HH", sdf.data, rec)
            quad = flags & 0x0C == 0x0C
            local = list(sdf.data[rec + 4:rec + 8])[:4 if quad else 3]
            idx = [vstart + u16(sdf, g["lists"] + (list_start + i) * 2) for i in local]
            uv0, clut, uv1, tpage, uv2, uv3 = struct.unpack_from("<6H", sdf.data, g["tex"] + tex)
            uv = [(w & 0xFF, w >> 8) for w in (uv0, uv1, uv2, uv3)][:len(idx)]
            if quad:  # stored as an outline; use GPU order like the items
                idx, uv = [idx[0], idx[1], idx[3], idx[2]], [uv[0], uv[1], uv[3], uv[2]]
            faces.append(Face(idx, flags, uv, tpage, clut, [(128, 128, 128)] * len(idx), n))
            n += 1
    return Item(-1, verts, faces)


def read_objects(sdf):
    out = []
    for obj, name, mat in cobjets(sdf):
        if sdf.data[mat:mat + 18] == b"\xcd" * 18:
            continue  # matrix never filled in (0xCDCD): placed at run time (Tfc/Tf2 cones)
        lod0 = struct.unpack_from("<h", sdf.data, sdf.u32(obj + 0x38))[0]
        out.append(Placed(obj, name, lod0, struct.unpack_from("<9h", sdf.data, mat),
                          struct.unpack_from("<3i", sdf.data, mat + 0x14)))
    return out


_TRIG = None


def trig():
    """The game's sin/cos table, from LANGIMG.DAT next to data/final (falls
    back to computed values, which differ by at most 1/4096)."""
    global _TRIG
    if _TRIG is None:
        _TRIG = sdf_collision.Trig(LANGIMG)
    return _TRIG


LANGIMG = None


def read_collision(sdf):
    out = []
    for f in sdf_collision.read(sdf):
        poly = sdf_collision.world_polygon(trig(), f)
        if poly:
            out.append(CollisionFace(f.index, poly, f.surface))
    return out


def load(path):
    global LANGIMG
    if LANGIMG is None:
        LANGIMG = Path(path).resolve().parents[1] / "LANGIMG.DAT"
    sdf = parse(Path(path).read_bytes())
    if not has_geometry(sdf):
        raise ValueError(f"{path}: not a level or menu scene (no draw items)")
    items = {i: read_item(sdf, i, item) for i, item in draw_items(sdf).items()}
    ground = read_ground(sdf) if len(sdf.roots) == 51 else None
    collision = read_collision(sdf) if len(sdf.roots) == 51 else None
    return Scene(items, ground, read_objects(sdf), len(sdf.roots), collision)


# --- writing -----------------------------------------------------------------

def same_topology(old, new):
    if len(old.verts) != len(new.verts) or len(old.faces) != len(new.faces):
        return False
    return all(a.poly == b.poly and len(a.idx) == len(b.idx) for a, b in zip(old.faces, new.faces))


def update_item(sdf, item, old, new):
    """Same topology: rewrite what changed (positions, UVs, flat colours)."""
    data = bytearray(sdf.data)
    mesh = sdf.u32(item + 4)
    vbase, pbase = sdf.u32(mesh + 0x18), sdf.u32(mesh + 0x1C)
    relocs = set(sdf.relocs)
    changed = 0
    for i, (a, b) in enumerate(zip(old.verts, new.verts)):
        if tuple(a) != tuple(b):
            struct.pack_into("<3h", data, vbase + i * 8, *map(s16, b))
            changed += 1
    for a, b in zip(old.faces, new.faces):
        rec = pbase + a.poly * 28
        if a.textured and b.uv and list(a.uv) != list(b.uv):
            words = [u | v << 8 for u, v in b.uv] + [0] * (4 - len(b.uv))
            for off, w in zip((12, 16, 20, 22), words):
                struct.pack_into("<H", data, rec + off, w)
            changed += 1
        if b.colors and a.colors != b.colors:
            if a.type in GOURAUD and (rec + 8) in relocs:
                at = sdf.u32(rec + 8)
                for c, (r, g, bl) in enumerate(b.colors):
                    word = struct.unpack_from("<I", data, at + 4 * c)[0]
                    struct.pack_into("<I", data, at + 4 * c, (word & 0xFF000000) | bl << 16 | g << 8 | r)
            else:
                r, g, bl = b.colors[0]
                word = struct.unpack_from("<I", data, rec + 8)[0]
                struct.pack_into("<I", data, rec + 8, (word & 0xFF000000) | bl << 16 | g << 8 | r)
            changed += 1
    sdf.data = bytes(data)
    if changed:
        bounds_update(sdf, mesh, new.verts, old.verts)
    return changed


def write_ground(sdf, old, new):
    if len(new.verts) != len(old.verts):
        raise ValueError("the ground must keep its vertices (only positions can change)")
    g = ground_layout(sdf)
    owner = block_of_vertex(g)
    data = bytearray(sdf.data)
    changed = 0
    for i, (a, b) in enumerate(zip(old.verts, new.verts)):
        if tuple(a) != tuple(b):
            bx, bz = owner.get(i, (0, 0))
            x, y, z = b
            struct.pack_into("<3h", data, g["verts"] + i * 8,
                             s16(x - bx * BLOCK_SCALE), s16(y), s16(z - bz * BLOCK_SCALE))
            changed += 1
    sdf.data = bytes(data)
    return changed


def write_objects(sdf, old, new):
    by_offset = {o.object: o for o in old}
    data = bytearray(sdf.data)
    changed = 0
    for o in new:
        before = by_offset[o.object]
        if tuple(o.matrix) == tuple(before.matrix) and tuple(o.t) == tuple(before.t):
            continue
        mat = sdf.u32(o.object + 0x34)
        struct.pack_into("<9h", data, mat, *map(s16, o.matrix))
        struct.pack_into("<3i", data, mat + 0x14, *map(int, o.t))
        changed += 1
    sdf.data = bytes(data)
    return changed


def write_collision(sdf, old, new, tolerance=2.5):
    """Re-encode the collision faces whose corners moved by more than
    `tolerance` game units (Blender welds corners within 1-2 units, so
    smaller moves are noise); returns the count."""
    faces = {f.index: f for f in sdf_collision.read(sdf)}
    before = {c.index: c for c in old}
    base = sdf.u32(sdf.roots[sdf_collision.ROOT_COLLISION] + 4)
    data = bytearray(sdf.data)
    changed = 0
    for c in new:
        o = before[c.index]
        if len(c.corners) != len(o.corners):
            raise ValueError(f"collision face {c.index}: corner count changed")
        if all(abs(a - b) <= tolerance for p, q in zip(c.corners, o.corners) for a, b in zip(p, q)):
            continue
        rec = sdf_collision.encode_face(trig(), faces[c.index], c.corners)
        at = base + c.index * sdf_collision.FACE_SIZE
        data[at:at + len(rec)] = rec
        changed += 1
    sdf.data = bytes(data)
    return changed


def save(base, out, items=None, ground=None, objects=None, collision=None):
    """Write `base` with the given edits to `out`.

    items: {index: Item} (verts and faces in game units); ground: Item;
    objects: [Placed]; collision: [CollisionFace]. Anything identical to
    `base` is left alone."""
    sdf = parse(Path(base).read_bytes())
    old = load(base)
    table = draw_items(sdf)
    log = []
    for i, new in sorted((items or {}).items()):
        before = old.items[i]
        if same_topology(before, new):
            n = update_item(sdf, table[i], before, new)
            if n:
                log.append(f"item {i}: {n} vertices/faces updated in place")
        else:
            faces = [(f.idx, f.material, f.uv) for f in new.faces]
            replace_item(sdf, table[i], new.verts, faces)
            log.append(f"item {i}: new mesh ({len(new.verts)} vertices, {len(new.faces)} faces)")
    if ground is not None and old.ground is not None:
        n = write_ground(sdf, old.ground, ground)
        if n:
            log.append(f"ground: {n} vertices moved")
    if objects:
        n = write_objects(sdf, old.objects, objects)
        if n:
            log.append(f"objects: {n} placements changed")
    if collision is not None and old.collision is not None:
        n = write_collision(sdf, old.collision, collision)
        if n:
            log.append(f"collision: {n} faces re-encoded")
    Path(out).write_bytes(serialize(sdf))
    return log
