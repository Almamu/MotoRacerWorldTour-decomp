"""Read an SDF scene into plain data and write edits back (no bpy here).

Everything is in game units: PS1 coordinates (Y down), integer vertex
positions, UVs in texels. The Blender side (__init__.py) only converts
between these and Blender objects.

  load(path)              -> Scene
  save(base, out, edits)  -> list of log lines; writes `out`

Edits only touch what differs from `base`, so saving an unedited scene
gives back the same bytes.
"""

import math
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
    track: list = None         # [GateList], levels only


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
    track = read_track(sdf) if len(sdf.roots) == 51 else None
    return Scene(items, ground, read_objects(sdf), len(sdf.roots), collision, track)


# --- writing -----------------------------------------------------------------

def same_topology(old, new):
    """Same vertices and faces, and no face changed texture page / palette
    (or between textured and flat): those can be written in place."""
    if len(old.verts) != len(new.verts) or len(old.faces) != len(new.faces):
        return False
    kind = lambda f: f.material if f.textured else "flat"
    return all(a.poly == b.poly and len(a.idx) == len(b.idx) and kind(a) == kind(b)
               for a, b in zip(old.faces, new.faces))


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
    if changed:
        sdf_collision.rebuild_grid(sdf, trig())  # levels with a lookup grid
    return changed


def save(base, out, items=None, ground=None, objects=None, collision=None, track=None, rider=None):
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
    if rider:
        import sdf_rig
        nv, nj = sdf_rig.write(sdf, sdf_rig.read(sdf), **rider)
        if nv or nj:
            log.append(f"rider: {nv} vertices, {nj} pose/animation joints changed")
    if track is not None and old.track:
        ng, nl = write_track(sdf, old.track, track)
        if ng or nl:
            log.append(f"track: {ng} gates, {nl} racing-line points changed")
    Path(out).write_bytes(serialize(sdf))
    return log


# --- track gates and racing lines (root 28) ------------------------------------

ROOT_GATES = 28
GATE_SIZE = 20
LINE_REC = 32
WIDTH_UNIT = 8          # gate +0x12/+0x13: half-width in 8-unit steps
LANE_UNIT = 16          # racing line +0x07: lateral offset in 16-unit steps


@dataclass
class Gate:
    x: float            # game units (Y down)
    y: float
    z: float
    dist: int           # distance along the list, 1/32 units
    angle: int          # direction, 4096 = 360°: forward = (cos, sin) in x/z
    width_pos: int      # +0x12: half-width towards perp = (sin a, -cos a)
    width_neg: int      # +0x13: half-width the other way


@dataclass
class LinePoint:
    steer: int          # +0x06 s8
    lane: int           # +0x07 s8, lateral offset in LANE_UNIT steps along perp
    speed: int          # +0x0E u8, target speed
    flags: int          # +0x0F u8: bits 0-5 allowed lines, bit 7 clear = jump section


@dataclass
class GateList:
    index: int
    gates: list
    lines: list         # [[LinePoint] per line]
    rejoin: int
    orig: list = None   # with a changed gate count: old index of each new gate, None = new


def _s8(v):
    return v - 256 if v > 127 else v


def gate_frame(angle):
    """(forward, perp) unit vectors in x/z for a gate direction."""
    a = angle * 2 * math.pi / 4096
    return (math.cos(a), math.sin(a)), (math.sin(a), -math.cos(a))


def read_track(sdf):
    r = sdf.roots[ROOT_GATES]
    if r is None:
        return []
    n_lists, lists = sdf.u32(r + 0x24), sdf.u32(r + 0x28)
    out = []
    for k in range(n_lists):
        L = lists + 20 * k
        n, g = sdf.u32(L), sdf.u32(L + 4)
        gates = []
        for i in range(n):
            x, y, z, dist, angle, w1, w2 = struct.unpack_from("<3iIHBB", sdf.data, g + GATE_SIZE * i)
            gates.append(Gate(x / 32, y / 32, z / 32, dist, angle, w1, w2))
        lines, p = [], sdf.u32(L + 8)
        while p and sdf.u32(p):
            base = sdf.u32(p)
            pts = []
            for i in range(n):
                rec = base + LINE_REC * i
                d = sdf.data
                pts.append(LinePoint(_s8(d[rec + 6]), _s8(d[rec + 7]), d[rec + 0x0E], d[rec + 0x0F]))
            lines.append(pts)
            p += 4
        out.append(GateList(k, gates, lines, struct.unpack_from("<i", sdf.data, L + 0x10)[0]))
    return out


def _encode_gate(g, dist):
    return struct.pack("<3iIHBB", round(g.x * 32), round(g.y * 32), round(g.z * 32), dist & 0xFFFFFFFF,
                       g.angle & 0xFFFF, max(0, min(255, g.width_pos)), max(0, min(255, g.width_neg)))


def _resample(sdf, old_list, new_list, lists_at):
    """Rebuild a gate list with a different gate count: new gate and line
    arrays appended to the file. Untouched gates keep their records; new
    gates get racing-line records interpolated between their neighbours.
    Returns {old index: new index} for the kept gates."""
    L = lists_at + 20 * old_list.index
    old_g = sdf.u32(L + 4)
    orig = new_list.orig
    n = len(new_list.gates)
    dists = [0] * n
    dists[0] = old_list.gates[orig[0]].dist if orig[0] is not None else 0
    for i in range(1, n):
        a, b = new_list.gates[i - 1], new_list.gates[i]
        dists[i] = dists[i - 1] + round(math.dist((a.x, a.y, a.z), (b.x, b.y, b.z)) * 32)
    gates = bytearray()
    for i, g in enumerate(new_list.gates):
        o = orig[i]
        if o is not None and old_list.gates[o] == g and dists[i] == old_list.gates[o].dist:
            gates += sdf.data[old_g + GATE_SIZE * o:old_g + GATE_SIZE * (o + 1)]
        else:
            gates += _encode_gate(g, dists[i])
    gates_at = sdf.append(bytes(gates))
    sdf.set_pointer(L + 4, gates_at)
    data = bytearray(sdf.data)
    struct.pack_into("<I", data, L, n)
    sdf.data = bytes(data)
    # racing lines: copy kept records, interpolate new ones between kept neighbours
    kept = [i for i in range(n) if orig[i] is not None]
    p = sdf.u32(L + 8)
    for j in range(len(old_list.lines)):
        line_at = sdf.u32(p + 4 * j)
        rec = lambda k: bytearray(sdf.data[line_at + LINE_REC * k:line_at + LINE_REC * (k + 1)])
        out = bytearray()
        for i in range(n):
            if orig[i] is not None:
                out += rec(orig[i])
                continue
            before = max((k for k in kept if k < i), default=None)
            after = min((k for k in kept if k > i), default=None)
            a = rec(orig[before if before is not None else after])
            b = rec(orig[after if after is not None else before])
            t = 0.5 if before is None or after is None else (i - before) / (after - before)
            r = bytearray(a if t < 0.5 else b)
            r[7] = round(_s8(a[7]) + (_s8(b[7]) - _s8(a[7])) * t) & 0xFF
            r[0x0E] = round(a[0x0E] + (b[0x0E] - a[0x0E]) * t)
            out += r
        sdf.set_pointer(p + 4 * j, sdf.append(bytes(out)))
    return {o: i for i, o in enumerate(orig) if o is not None}


def _remap_gate_refs(sdf, list_index, mapping, n_old, n_new, lists_at, n_lists):
    """Gate indices stored elsewhere: other lists' rejoin gate (+0x10, into
    list 0) and the track-section visibility ranges (level root 48)."""
    def new_index(i):
        while i < n_old and i not in mapping:
            i += 1          # deleted: the next kept gate
        return mapping.get(i, n_new - 1)
    data = bytearray(sdf.data)
    if list_index == 0:
        for k in range(1, n_lists):
            at = lists_at + 20 * k + 0x10
            j = struct.unpack_from("<i", data, at)[0]
            if j >= 0:
                struct.pack_into("<i", data, at, new_index(j))
        r48 = sdf.roots[48] if len(sdf.roots) > 48 else None
        relocs = set(sdf.relocs)
        if r48 is not None and r48 in relocs:
            node, seen, nodes = sdf.u32(r48), set(), []
            while node and node not in seen:
                seen.add(node)
                nodes.append(node)
                node = sdf.u32(node + 4) if (node + 4) in relocs else 0
            for node in nodes:
                lo, hi = struct.unpack_from("<2h", data, node + 0xC)
                struct.pack_into("<2h", data, node + 0xC, new_index(lo) if lo > 0 else 0,
                                 n_new - 1 if hi >= n_old - 1 else new_index(hi + 1) - 1)
    sdf.data = bytes(data)


def write_track(sdf, old, new):
    """Write moved gates (position, direction, widths; distances recomputed
    for lists with moved gates) and changed racing-line bytes. Gate and line
    counts are fixed. Returns (gates changed, line points changed)."""
    r = sdf.roots[ROOT_GATES]
    lists = sdf.u32(r + 0x28)
    ng = nl = 0
    for o, nw in zip(old, new):
        if nw.orig is not None and (len(nw.gates) != len(o.gates) or nw.orig != list(range(len(o.gates)))):
            mapping = _resample(sdf, o, nw, lists)
            _remap_gate_refs(sdf, o.index, mapping, len(o.gates), len(nw.gates), lists, len(old))
            ng += len(nw.gates)
            continue
    data = bytearray(sdf.data)
    for o, nw in zip(old, new):
        if nw.orig is not None and (len(nw.gates) != len(o.gates) or nw.orig != list(range(len(o.gates)))):
            continue
        if len(o.gates) != len(nw.gates) or len(o.lines) != len(nw.lines):
            raise ValueError(f"gate list {o.index}: gate and racing-line counts don't match")
        L = lists + 20 * o.index
        g = sdf.u32(L + 4)
        moved = [round(a.x * 32) != round(b.x * 32) or round(a.y * 32) != round(b.y * 32)
                 or round(a.z * 32) != round(b.z * 32) for a, b in zip(o.gates, nw.gates)]
        dists = [a.dist for a in o.gates]
        if any(moved):
            first = moved.index(True)
            for i in range(max(1, first), len(nw.gates)):
                a, b = nw.gates[i - 1], nw.gates[i]
                step = math.dist((a.x, a.y, a.z), (b.x, b.y, b.z)) * 32
                dists[i] = dists[i - 1] + round(step)
        for i, (a, b) in enumerate(zip(o.gates, nw.gates)):
            vals = (round(b.x * 32), round(b.y * 32), round(b.z * 32), dists[i] & 0xFFFFFFFF,
                    b.angle & 0xFFFF, max(0, min(255, b.width_pos)), max(0, min(255, b.width_neg)))
            if vals != (round(a.x * 32), round(a.y * 32), round(a.z * 32), a.dist, a.angle,
                        a.width_pos, a.width_neg):
                struct.pack_into("<3iIHBB", data, g + GATE_SIZE * i, *vals)
                ng += 1
        p = sdf.u32(L + 8)
        for lo, ln in zip(o.lines, nw.lines):
            base = sdf.u32(p)
            for i, (a, b) in enumerate(zip(lo, ln)):
                if (a.steer, a.lane, a.speed, a.flags) != (b.steer, b.lane, b.speed, b.flags):
                    rec = base + LINE_REC * i
                    data[rec + 6] = max(-128, min(127, b.steer)) & 0xFF
                    data[rec + 7] = max(-128, min(127, b.lane)) & 0xFF
                    data[rec + 0x0E] = max(0, min(255, b.speed))
                    data[rec + 0x0F] = b.flags & 0xFF
                    nl += 1
            p += 4
    sdf.data = bytes(data)
    return ng, nl


# --- level variants ------------------------------------------------------------

def variant_files(source):
    """The other level files of the same track: <code>_PS, <code>2_PS (two
    players), <code>B_PS (500 cc), <code>B2_PS, found next to `source`."""
    p = Path(source)
    stem = p.stem
    if not stem.lower().endswith("_ps"):
        return []
    code = stem[:-3]
    if code.endswith("2"):
        code = code[:-1]
    if code.endswith("B"):
        code = code[:-1]
    names = {f.name.lower(): f for f in p.parent.iterdir()}
    out = []
    for v in (code, code + "2", code + "B", code + "B2"):
        f = names.get(f"{v}_ps.sdf".lower())
        if f is not None and f.resolve() != p.resolve():
            out.append(f)
    return out


def _item_sig(item):
    return (tuple(map(tuple, item.verts)),
            tuple((tuple(f.idx), f.type, tuple(f.uv) if f.uv else None, f.tpage, f.clut,
                   tuple(f.colors) if f.colors else None) for f in item.faces),
            tuple(item.lines))


def variant_edits(old_base, old_v, items, ground, objects, collision, track):
    """The part of an edit (new states relative to `old_base`) that applies
    to a variant: only structures that were identical in both files.
    Returns (items, ground, objects, collision, track, skipped) where
    skipped lists what was left out."""
    skipped = []
    v_items = {}
    for i, new in (items or {}).items():
        if i in old_v.items and _item_sig(old_v.items[i]) == _item_sig(old_base.items[i]):
            v_items[i] = new
        elif _item_sig(new) != _item_sig(old_base.items[i]):
            skipped.append(f"item {i}")
    v_ground = None
    if ground is not None and old_v.ground is not None:
        if old_v.ground.verts == old_base.ground.verts:
            v_ground = ground
        elif ground.verts != old_base.ground.verts:
            skipped.append("ground")
    v_objects = []
    if objects:
        by_key = {}
        for p in old_v.objects:
            by_key.setdefault((p.name, tuple(p.matrix), tuple(p.t)), []).append(p.object)
        base_key = {p.object: (p.name, tuple(p.matrix), tuple(p.t)) for p in old_base.objects}
        for o in objects:
            cands = by_key.get(base_key.get(o.object))
            if cands:
                v_objects.append(Placed(cands.pop(0), o.name, o.item, o.matrix, o.t))
            elif (tuple(o.matrix), tuple(o.t)) != base_key.get(o.object, (None, None, None))[1:]:
                skipped.append(f"object {o.name}")
    v_collision = None
    if collision is not None and old_v.collision is not None:
        same = [c.corners for c in old_v.collision] == [c.corners for c in old_base.collision]
        if same:
            v_collision = collision
        elif any(n.corners != o.corners for n, o in zip(collision, old_base.collision)):
            skipped.append("collision")
    v_track = None
    if track is not None and old_v.track is not None:
        import copy
        if [gl.gates for gl in old_v.track] == [gl.gates for gl in old_base.track]:
            v_track = copy.deepcopy(track)
            for nl, ob, ov in zip(v_track, old_base.track, old_v.track):
                if len(ob.lines) != len(ov.lines):
                    nl.lines = copy.deepcopy(ov.lines)   # different set of AI lines: keep the variant's
                    continue
                for j, (lb, lv) in enumerate(zip(ob.lines, ov.lines)):
                    if lb != lv:
                        # the variant has its own racing line (e.g. 500 cc): keep it,
                        # or let a gate-count change resample it from its own data
                        if nl.orig is None or nl.orig == list(range(len(ob.gates))):
                            nl.lines[j] = copy.deepcopy(lv)
        elif any(n.gates != o.gates for n, o in zip(track, old_base.track)):
            skipped.append("gates")
    return v_items, v_ground, v_objects, v_collision, v_track, skipped
