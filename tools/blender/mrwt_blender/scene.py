"""Read an SDF scene into plain data and write edits back (no bpy here).

Everything is in game units: PS1 coordinates (Y up), integer vertex
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
from sdf_mesh import ROOT_DRAW_ITEMS, TEXTURED_TYPES, draw_items, read_item_mesh
from sdf_geom import (MAX_GROUPS, TRANSLATION_SCALE, bounds_update, cobjets, ground_layout,
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
    cell: int = -1             # ground only: grid cell whose sector holds it

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
    pads: list = None          # ground only: each vertex's 4th word
    vert_ids: list = None      # ground only: original vertex index per vertex, or None (new)


@dataclass
class Placed:
    object: int                # offset of the Cobjet (None: a new object)
    name: str
    item: int                  # LOD 0 draw item
    matrix: tuple              # 9 x s16 (4096 = 1.0), row major
    t: tuple                   # 3 x s32, 1/32 units


@dataclass
class CollisionFace:
    index: int
    corners: list              # [(x, y, z)] game units, Y up, edge order
    surface: int


@dataclass
class Scene:
    items: dict
    ground: Item = None
    objects: list = field(default_factory=list)
    roots: int = 0
    collision: list = None     # [CollisionFace], levels only
    track: list = None         # [GateList], levels only
    item_slots: int = 0        # size of the draw-item table: new items get indices from here


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


def ground_cells(sdf):
    """Ground grid: (cell size in game units, {cell index: (column, row)},
    {sector: cell}). Row records are 16 bytes: u8 width, u8 run count,
    u16 first cell at +6, runs* at +8 (s8: negative = empty columns,
    positive = cells); empty rows have a null pointer."""
    w = sdf.roots[6]
    size = round(sdf.u32(w + 0x34) / 32 / math.sqrt(2))
    rows = sdf.u32(w + 4)
    pos = {}
    for r in range(sdf.u32(w + 0x10)):
        ra = sdf.u32(rows + 4 * r)
        if not ra:
            continue
        n, first, runs = sdf.data[ra + 1], u16(sdf, ra + 6), sdf.u32(ra + 8)
        col, ci = 0, first
        for v in struct.unpack_from(f"<{n}b", sdf.data, runs):
            if v < 0:
                col -= v
            else:
                for _ in range(v):
                    pos[ci] = (col, r)
                    ci += 1
                    col += 1
    cells = sdf.u32(w + 0x24)
    owner = {}
    for c in range(sdf.u32(w + 0x14)):
        sec = struct.unpack_from("<h", sdf.data, cells + 12 * c + 10)[0]
        if sec >= 0:
            owner[sec] = c
    return size, pos, owner


def _ground_colours(sdf, relocs, g, rec, tex_at, flags, k):
    """Corner colours (outline order) of a ground polygon."""
    gouraud = flags & 0x10
    if g["rec"] == 8:   # in the 28-byte texture entry
        words = struct.unpack_from("<4I", sdf.data, tex_at + 12)
    else:
        word = sdf.u32(rec + 8)
        words = [sdf.u32(word + 4 * c) for c in range(k)] if gouraud and (rec + 8) in relocs \
            else [word] * 4
    return [rgb(words[c] if gouraud else words[0]) for c in range(k)]


def read_ground(sdf):
    g = ground_layout(sdf)
    owner = block_of_vertex(g)
    relocs = set(sdf.relocs)
    _, _, sector_cell = ground_cells(sdf)
    verts, pads = [], []
    for i in range(g["n_verts"]):
        x, y, z, pad = struct.unpack_from("<3hH", sdf.data, g["verts"] + i * 8)
        bx, bz = owner.get(i, (0, 0))
        verts.append((x + bx * BLOCK_SCALE, y, z + bz * BLOCK_SCALE))
        pads.append(pad)
    faces, n = [], 0
    for si, (first, block, counts, list_start) in enumerate(g["sectors"]):
        vstart = g["blocks"][block][3]
        for k in range(counts & 0xFF):
            rec = g["polys"] + (first + k) * g["rec"]
            flags, tex = struct.unpack_from("<HH", sdf.data, rec)
            quad = flags & 0x0C == 0x0C
            local = list(sdf.data[rec + 4:rec + 8])[:4 if quad else 3]
            idx = [vstart + u16(sdf, g["lists"] + (list_start + i) * 2) for i in local]
            uv0, clut, uv1, tpage, uv2, uv3 = struct.unpack_from("<6H", sdf.data, g["tex"] + tex)
            uv = [(w & 0xFF, w >> 8) for w in (uv0, uv1, uv2, uv3)][:len(idx)]
            colors = _ground_colours(sdf, relocs, g, rec, g["tex"] + tex, flags, len(idx))
            if quad:  # stored as an outline; use GPU order like the items
                idx, uv = [idx[0], idx[1], idx[3], idx[2]], [uv[0], uv[1], uv[3], uv[2]]
                colors = [colors[0], colors[1], colors[3], colors[2]]
            faces.append(Face(idx, flags, uv, tpage, clut, colors, n, sector_cell.get(si, -1)))
            n += 1
    return Item(-1, verts, faces, pads=pads, vert_ids=list(range(len(verts))))


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
    faces = sdf_collision.read(sdf)
    for f in faces:
        poly = sdf_collision.world_polygon(trig(), f, faces)
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
    slots = sdf.u32(sdf.roots[ROOT_DRAW_ITEMS] + 4)
    return Scene(items, ground, read_objects(sdf), len(sdf.roots), collision, track, slots)


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


def ground_unchanged(old, new):
    """Per old polygon: True if `new` has it with the same original vertices,
    texture, flags and colours. Returns (kept: set of old polygon indices,
    face_kept: per new face, the old polygon it is or None)."""
    ids = new.vert_ids or [None] * len(new.verts)
    seen = set()
    kept, face_kept = set(), []
    for f in new.faces:
        o = old.faces[f.poly] if 0 <= f.poly < len(old.faces) and f.poly not in seen else None
        if o is not None and [ids[i] for i in f.idx] == o.idx and f.uv == o.uv and \
                (f.tpage, f.clut, f.type) == (o.tpage, o.clut, o.type) and \
                [tuple(c) for c in f.colors] == [tuple(c) for c in o.colors]:
            kept.add(f.poly)
            seen.add(f.poly)
            face_kept.append(f.poly)
        else:
            face_kept.append(None)
    return kept, face_kept


def write_ground_any(sdf, old, new):
    """Positions only when the ground kept its vertices and polygons, else
    rebuild_ground. Returns (moved vertices, rebuilt cells)."""
    if new.vert_ids is None or (len(new.verts) == len(old.verts) and new.vert_ids == list(range(len(old.verts)))):
        kept, face_kept = ground_unchanged(old, new)
        if len(kept) == len(old.faces) and len(new.faces) == len(old.faces) and len(new.verts) == len(old.verts):
            return write_ground(sdf, old, new), 0
    return rebuild_ground(sdf, old, new)


def rebuild_ground(sdf, old, new):
    """Ground with added / removed / reshaped polygons. Cells whose polygons
    are all unchanged keep their sector, block, index list and records;
    the other cells get a new sector with a block of their own (copies of
    the vertices they use). New polygons go to the cell under their centre
    (or the nearest one); faces that still carry a cell (kept ones, or
    copies Blender made by extruding) stay in it. The original vertex array
    stays as the prefix of the new one (vertex animation points into it),
    the original texture entries as the prefix of the new table. Everything
    is appended to the file. Returns (moved original vertices, rebuilt cells)."""
    g = ground_layout(sdf)
    w = sdf.roots[6]
    relocs = set(sdf.relocs)
    size, cell_pos, sector_cell = ground_cells(sdf)
    pos_cell = {v: c for c, v in cell_pos.items()}
    ncells = sdf.u32(w + 0x14)
    cells_at = sdf.u32(w + 0x24)
    rec_size = g["rec"]
    tex_size = 12 if rec_size == 12 else 28
    mesh, extra = g["mesh"], sdf.u32(g["mesh"] + 0x28)
    n_tex = u16(sdf, extra + 0x14)
    ids = new.vert_ids or [None] * len(new.verts)
    pads = new.pads or [0] * len(new.verts)
    kept, face_kept = ground_unchanged(old, new)

    # original vertices: positions from Blender (first vertex carrying the id)
    orig_of_new = {}
    for v, i in enumerate(ids):
        if i is not None and 0 <= i < len(old.verts) and i not in orig_of_new:
            orig_of_new[i] = v
    vowner = block_of_vertex(g)
    vdata = bytearray(sdf.data[g["verts"]:g["verts"] + 8 * g["n_verts"]])
    moved = 0
    for i, v in orig_of_new.items():
        if tuple(new.verts[v]) != tuple(old.verts[i]):
            bx, bz = vowner.get(i, (0, 0))
            x, y, z = new.verts[v]
            struct.pack_into("<3h", vdata, 8 * i, s16(x - bx * BLOCK_SCALE), s16(y), s16(z - bz * BLOCK_SCALE))
            moved += 1

    # which cell every polygon of the new ground goes to
    old_cell = {o.poly: o.cell for o in old.faces}
    by_cell = {}
    changed_cells = set()
    for f, k in zip(new.faces, face_kept):
        if k is not None:
            c = old_cell[k]
        else:
            c = f.cell if f.cell in cell_pos else None
            if c is None:
                pts = [new.verts[i] for i in f.idx]
                col = math.floor(sum(p[0] for p in pts) / len(pts) / size)
                row = math.floor(sum(p[2] for p in pts) / len(pts) / size)
                c = pos_cell.get((col, row))
                if c is None:
                    c = min(cell_pos, key=lambda q: (cell_pos[q][0] - col) ** 2 + (cell_pos[q][1] - row) ** 2)
            changed_cells.add(c)
        by_cell.setdefault(c, []).append((f, k))
    for o in old.faces:
        if o.poly not in kept:
            changed_cells.add(o.cell)

    # texture entries: the original table, then new ones (deduplicated)
    tex = bytearray(sdf.data[g["tex"]:g["tex"] + tex_size * n_tex])
    tex_index = {bytes(tex[k:k + tex_size]): k for k in range(0, len(tex), tex_size)}
    colours = bytearray()        # Gouraud colour words (12-byte records)
    colour_ptrs = []             # (offset in the polygon array, offset in colours)

    def word(c):
        r, gr, b = c[:3]
        return r | gr << 8 | b << 16

    def tex_entry(f, outline_uv, outline_col):
        uv = list(outline_uv) + [outline_uv[-1]] * (4 - len(outline_uv))
        uvw = [u | v << 8 for u, v in uv]
        e = struct.pack("<6H", uvw[0], f.clut, uvw[1], f.tpage, uvw[2], uvw[3])
        if tex_size == 28:
            cols = list(outline_col) + [outline_col[-1]] * (4 - len(outline_col))
            e += struct.pack("<4I", *[word(c) for c in cols])
        if e not in tex_index:
            tex_index[e] = len(tex)
            tex.extend(e)
        if len(tex) > 0xFFFF:
            raise ValueError("ground: too many different texture entries (16-bit offsets)")
        return tex_index[e]

    verts = bytearray(vdata)
    blocks = bytearray(sdf.data[sdf.u32(w + 0x54):sdf.u32(w + 0x54) + 12 * len(g["blocks"])])
    sectors, lists, polys = bytearray(), bytearray(), bytearray()
    poly_ptrs = []               # Gouraud pointers kept from original records (offset, target)
    cell_sector = {}

    def emit_kept(si):
        first, block, counts, list_start = g["sectors"][si]
        npoly, nvert = counts & 0xFF, (counts >> 8) & 0xFF
        sec = struct.pack("<hhBBh8x", len(polys) // rec_size, block, npoly, nvert, len(lists) // 2)
        lists.extend(sdf.data[g["lists"] + 2 * list_start:g["lists"] + 2 * (list_start + nvert)])
        for k in range(npoly):
            rec = g["polys"] + (first + k) * rec_size
            if rec_size == 12 and (rec + 8) in relocs:
                poly_ptrs.append((len(polys) + 8, sdf.u32(rec + 8)))
            polys.extend(sdf.data[rec:rec + rec_size])
        return sec

    def emit_new(c, faces):
        used = []
        where = {}
        for f, _ in faces:
            for i in f.idx:
                if i not in where:
                    where[i] = len(used)
                    used.append(i)
        if len(faces) > 255 or len(used) > 255:
            raise ValueError(f"ground: grid cell {cell_pos[c]} would have {len(faces)} polygons / "
                             f"{len(used)} vertices (at most 255 each)")
        if any(not f.textured for f, _ in faces):
            raise ValueError("ground: every face needs a texture (a page_… material or your own image)")
        xs = [new.verts[i][0] for i in used]
        zs = [new.verts[i][2] for i in used]
        ox = round((min(xs) + max(xs)) / 2 / BLOCK_SCALE)
        oz = round((min(zs) + max(zs)) / 2 / BLOCK_SCALE)
        first_vert = len(verts) // 8
        for i in used:
            x, y, z = new.verts[i]
            verts.extend(struct.pack("<3hH", s16(x - ox * BLOCK_SCALE), s16(y), s16(z - oz * BLOCK_SCALE),
                                     pads[i] & 0xFFFF))
        block = len(blocks) // 12
        blocks.extend(struct.pack("<hhhhhh", ox, oz, len(used), first_vert, -1, 0))
        sec = struct.pack("<hhBBh8x", len(polys) // rec_size, block, len(faces), len(used), len(lists) // 2)
        lists.extend(struct.pack(f"<{len(used)}H", *range(len(used))))
        for f, _ in faces:
            n = len(f.idx)
            if n == 4:   # GPU order -> outline
                order = [0, 1, 3, 2]
            else:
                order = [0, 1, 2]
            local = [where[f.idx[k]] for k in order]
            uv = [f.uv[k] for k in order]
            col = [tuple(f.colors[k]) for k in order] if f.colors else [(128, 128, 128)] * n
            flags = f.type | 0x0C if n == 4 else (f.type & ~0x04 if f.type & 0x0C == 0x0C else f.type)
            t = tex_entry(f, uv, col)
            rec = struct.pack("<HH4B", flags & 0xFFFF, t, *(local + [0xFF] * (4 - n)))
            if rec_size == 12:
                if flags & 0x10:
                    colour_ptrs.append((len(polys) + 8, len(colours)))
                    colours.extend(struct.pack(f"<{n}I", *[word(c) for c in col]))
                    rec += struct.pack("<I", 0)
                else:
                    rec += struct.pack("<I", word(col[0]))
            polys.extend(rec)
        return sec

    for si in range(len(g["sectors"])):
        c = sector_cell[si]
        if c not in changed_cells:
            cell_sector[c] = len(sectors) // 16
            sectors.extend(emit_kept(si))
        elif by_cell.get(c):
            cell_sector[c] = len(sectors) // 16
            sectors.extend(emit_new(c, by_cell[c]))
    for c in sorted(by_cell):
        if c not in cell_sector and by_cell[c]:
            cell_sector[c] = len(sectors) // 16
            sectors.extend(emit_new(c, by_cell[c]))
    nverts = len(verts) // 8
    if nverts > 0xFFFF or len(polys) // rec_size > 0xFFFF:
        raise ValueError("ground: more than 65535 vertices / polygons")

    # write: new arrays at the end, pointers and counts updated
    old_verts = g["verts"]
    verts_at = sdf.append(bytes(verts))
    blocks_at = sdf.append(bytes(blocks))
    sectors_at = sdf.append(bytes(sectors))
    lists_at = sdf.append(bytes(lists))
    polys_at = sdf.append(bytes(polys))
    tex_at = sdf.append(bytes(tex))
    colours_at = sdf.append(bytes(colours)) if colours else 0
    for off, target in poly_ptrs:
        sdf.set_pointer(polys_at + off, target)
    for off, coff in colour_ptrs:
        sdf.set_pointer(polys_at + off, colours_at + coff)
    # pointers into the old vertex array (vertex animation) move along
    for r in list(sdf.relocs):
        t = sdf.u32(r)
        if old_verts <= t < old_verts + 8 * g["n_verts"] and r != mesh + 0x18:
            sdf.set_pointer(r, verts_at + (t - old_verts))
    sdf.set_pointer(mesh + 0x18, verts_at)
    sdf.set_pointer(w + 0x50, sectors_at)
    sdf.set_pointer(w + 0x54, blocks_at)
    sdf.set_pointer(w + 0x58, lists_at)
    sdf.set_pointer(extra + 0x18, polys_at)
    sdf.set_pointer(extra + 0x1C, tex_at)
    data = bytearray(sdf.data)
    struct.pack_into("<H", data, mesh, len(polys) // rec_size)
    struct.pack_into("<H", data, mesh + 4, nverts)
    struct.pack_into("<H", data, extra + 0x14, len(tex) // tex_size)
    struct.pack_into("<III", data, w + 0x40, len(lists) // 2, len(blocks) // 12, len(sectors) // 16)
    for c in range(ncells):
        struct.pack_into("<h", data, cells_at + 12 * c + 10, cell_sector.get(c, -1))
    sdf.data = bytes(data)
    return moved, len(changed_cells)


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


# --- new draw items and objects ------------------------------------------------

ROOT_OBJECTS = 0       # {Cobjet** objects, ptr, u32 count}: top-level objects
ROOT_OBJECTS_DRAWN = 18  # u32[4]: how many of them are drawn (the rest are bike slots)
OBJECT_SIZE = 0x54
OBJECT_VTABLE = 0x50
ITEM_SIZE = 0x10 + 2 * (MAX_GROUPS + 1)


def add_item(sdf, index, item):
    """Append a draw item with a new plain mesh as entry `index` (= the
    table's size: the table is copied with one more slot). Item and mesh
    headers are copied from an existing plain item (setup word, ZSF3/4)."""
    root = sdf.roots[ROOT_DRAW_ITEMS]
    table, count = sdf.u32(root), sdf.u32(root + 4)
    if index != count:
        raise ValueError(f"new draw item {index}: the table has {count} entries")
    items = draw_items(sdf)
    tmpl = next(off for i, off in sorted(items.items()) if sdf.data[sdf.u32(off + 4) + 6] == 1)
    mesh_t = sdf.u32(tmpl + 4)
    head = bytearray(sdf.data[mesh_t:mesh_t + 0x2C])
    struct.pack_into("<HHH", head, 0, 0, 0, 0)
    head[0x08:0x2C] = bytes(0x24)  # bounds (raised by replace_item), pointers
    head[6] = 1
    mesh = sdf.append(bytes(head))
    rec = bytearray(ITEM_SIZE)
    rec[:0x10] = sdf.data[tmpl:tmpl + 0x10]
    struct.pack_into("<H", rec, 0, index)
    at = sdf.append(bytes(rec))
    sdf.set_pointer(at + 4, mesh)
    relocs = set(sdf.relocs)
    new_table = sdf.append(bytes(4 * (count + 1)))
    data = bytearray(sdf.data)
    data[new_table:new_table + 4 * count] = sdf.data[table:table + 4 * count]
    sdf.data = bytes(data)
    for i in range(count):
        if table + 4 * i in relocs:
            sdf.set_pointer(new_table + 4 * i, sdf.u32(table + 4 * i))
    sdf.set_pointer(new_table + 4 * count, at)
    sdf.set_pointer(root, new_table)
    data = bytearray(sdf.data)
    struct.pack_into("<I", data, root + 4, count + 1)
    sdf.data = bytes(data)
    replace_item(sdf, at, item.verts, [(f.idx, f.material, f.uv) for f in item.faces])
    return at


HIDDEN = 0x2000000     # Cobjet flags: never drawn (the game's own invisible markers carry it)


def hide_objects(sdf, offsets):
    """Hide placed objects (flag 0x2000000: 0x80016E34 skips the draw). The
    records stay, so nothing else moves; their children (+0x40) still draw."""
    data = bytearray(sdf.data)
    for o in offsets:
        struct.pack_into("<I", data, o + 4, sdf.u32(o + 4) | HIDDEN)
    sdf.data = bytes(data)


def add_objects(sdf, placed):
    """Append new top-level Cobjets (name, LOD 0 draw item, matrix, t) and
    list them in root 0 before the bike slots, raising the drawn count
    (root 18). They get flags 0x2: each one is sphere-tested against the
    view on its own (mesh radius, world+0x38 distance), so they don't need
    to be listed in the visibility grid's cells."""
    if len(sdf.roots) != 51:
        raise ValueError("new objects are only supported in levels")
    r0, r18 = sdf.roots[ROOT_OBJECTS], sdf.roots[ROOT_OBJECTS_DRAWN]
    arr, count = sdf.u32(r0), sdf.u32(r0 + 8)
    drawn = sdf.u32(r18)
    cls = sdf.classes.index("Cobjet")
    relocs = set(sdf.relocs)
    slots = [(sdf.u32(arr + 4 * i), arr + 4 * i in relocs) for i in range(count)]
    new_slots = []
    for p in placed:
        name_at = sdf.append(p.name.encode("latin-1", "replace") + b"\0")
        lod_at = sdf.append(struct.pack("<hH", p.item, 0xCDCD))
        rec = bytearray(OBJECT_SIZE)
        struct.pack_into("<I", rec, 0x04, 0x2)
        struct.pack_into("<3i", rec, 0x08, *map(int, p.t))
        struct.pack_into("<9hH3i", rec, 0x14, *map(s16, p.matrix), 0xCCCC, *map(int, p.t))
        rec[0x3C:0x40] = bytes([1, 0, 0xFF, 0xFF])   # one LOD, selected 0
        rec[0x44] = 1
        struct.pack_into("<I", rec, 0x48, 0x808080)
        struct.pack_into("<I", rec, OBJECT_VTABLE, cls)
        obj = sdf.append(bytes(rec))
        sdf.set_pointer(obj, name_at)
        sdf.set_pointer(obj + 0x34, obj + 0x14)
        sdf.set_pointer(obj + 0x38, lod_at)
        sdf.objects = sdf.objects + [obj + OBJECT_VTABLE]
        new_slots.append((obj, True))
    slots = slots[:drawn] + new_slots + slots[drawn:]
    new_arr = sdf.append(bytes(4 * len(slots)))
    for i, (v, is_ptr) in enumerate(slots):
        if is_ptr:
            sdf.set_pointer(new_arr + 4 * i, v)
        else:
            data = bytearray(sdf.data)
            struct.pack_into("<I", data, new_arr + 4 * i, v)
            sdf.data = bytes(data)
    sdf.set_pointer(r0, new_arr)
    data = bytearray(sdf.data)
    struct.pack_into("<I", data, r0 + 8, len(slots))
    for k in range(4):
        struct.pack_into("<I", data, r18 + 4 * k, sdf.u32(r18 + 4 * k) + len(placed))
    sdf.data = bytes(data)


def write_collision(sdf, old, new, tolerance=2.5):
    """Re-encode the collision faces whose corners moved by more than
    `tolerance` game units (Blender welds corners within 1-2 units, so
    smaller moves are noise); returns the count. If faces were added or
    removed, or one changed its corner count or surface type, the whole
    surface is rebuilt instead (see rebuild_collision)."""
    faces = {f.index: f for f in sdf_collision.read(sdf)}
    before = {c.index: c for c in old}
    if (len(new) != len(old) or any(c.index not in before for c in new)
            or any(len(c.corners) != len(before[c.index].corners) or c.surface != before[c.index].surface
                   for c in new)):
        return rebuild_collision(sdf, faces, new)
    base = sdf.u32(sdf.roots[sdf_collision.ROOT_COLLISION] + 4)
    data = bytearray(sdf.data)
    changed = 0
    for c in new:
        o = before[c.index]
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


def rebuild_collision(sdf, faces, new):
    """New collision surface from [CollisionFace] (index None = new face):
    neighbours / walls from the edges, kept faces fold along their original
    diagonal; written at the end of the file (sdf_collision.replace_surface).
    Returns the face count, negative to tell it apart from a re-encode."""
    before = {c.index: c for c in read_collision(sdf)}
    unchanged = {}
    for pos, c in enumerate(new):
        o = before.get(c.index)
        if c.index in faces and o is not None and len(o.corners) == len(c.corners) and \
                all(abs(a - b) <= 2.5 for p, q in zip(c.corners, o.corners) for a, b in zip(p, q)):
            unchanged[c.index] = pos
    polys = []
    for c in new:
        f = faces.get(c.index)
        if c.index in unchanged:
            # unchanged: keep its record and its links to other unchanged faces
            keep = [-1 if j is None else unchanged.get(j) for j in f.neighbours[:len(f.edges)]]
            polys.append((before[c.index].corners, c.surface, None, f.raw, keep))
            continue
        diag = None
        if f is not None and f.split is not None and len(c.corners) == 4 and not f.is_triangle:
            diag = tuple(sdf_collision.split_corners(trig(), f)[0])
        polys.append((c.corners, c.surface, diag))
    records, quads = sdf_collision.build_surface(trig(), polys)
    sdf_collision.replace_surface(sdf, trig(), records, quads)
    return -len(records)


def save(base, out, items=None, ground=None, objects=None, collision=None, track=None, rider=None,
         removed=None):
    """Write `base` with the given edits to `out`.

    items: {index: Item} (verts and faces in game units); ground: Item;
    objects: [Placed] (object None = new); removed: offsets of placed
    objects to hide; collision: [CollisionFace]. Anything identical to
    `base` is left alone."""
    sdf = parse(Path(base).read_bytes())
    old = load(base)
    table = draw_items(sdf)
    log = []
    for i, new in sorted((items or {}).items()):
        if i not in old.items:
            add_item(sdf, i, new)
            log.append(f"item {i}: new draw item ({len(new.verts)} vertices, {len(new.faces)} faces)")
            continue
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
        n, cells = write_ground_any(sdf, old.ground, ground)
        if cells:
            log.append(f"ground: rebuilt {cells} grid cells ({len(ground.faces)} polygons, was "
                       f"{len(old.ground.faces)}), {n} original vertices moved")
        elif n:
            log.append(f"ground: {n} vertices moved")
    if objects:
        n = write_objects(sdf, old.objects, [o for o in objects if o.object is not None])
        if n:
            log.append(f"objects: {n} placements changed")
        new = [o for o in objects if o.object is None]
        if new:
            add_objects(sdf, new)
            log.append(f"objects: {len(new)} new ({', '.join(o.name for o in new)})")
    if removed:
        hide_objects(sdf, removed)
        names = {o.object: o.name for o in old.objects}
        log.append(f"objects: {len(removed)} hidden ({', '.join(names.get(o, hex(o)) for o in removed)})")
    if collision is not None and old.collision is not None:
        n = write_collision(sdf, old.collision, collision)
        if n < 0:
            log.append(f"collision: new surface, {-n} faces (was {len(old.collision)})")
        elif n:
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
    x: float            # game units (Y up)
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


def variant_removed(old_base, old_v, removed):
    """The variant's objects matching removed base objects (same name and placement)."""
    base_key = {p.object: (p.name, tuple(p.matrix), tuple(p.t)) for p in old_base.objects}
    by_key = {}
    for p in old_v.objects:
        by_key.setdefault((p.name, tuple(p.matrix), tuple(p.t)), []).append(p.object)
    out = []
    for o in removed or ():
        cands = by_key.get(base_key.get(o))
        if cands:
            out.append(cands.pop(0))
    return out


def variant_edits(old_base, old_v, items, ground, objects, collision, track):
    """The part of an edit (new states relative to `old_base`) that applies
    to a variant: only structures that were identical in both files.
    Returns (items, ground, objects, collision, track, skipped) where
    skipped lists what was left out."""
    import copy
    skipped = []
    v_items = {}
    remap = {}   # new draw items: index in the base -> index in the variant
    for i, new in sorted((items or {}).items()):
        if i not in old_base.items:
            remap[i] = old_v.item_slots + len(remap)
            v_items[remap[i]] = copy.copy(new)
            v_items[remap[i]].index = remap[i]
            continue
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
            if o.object is None:   # new object: its draw item must exist in the variant
                i = remap.get(o.item, o.item)
                if o.item in remap or (i in old_v.items and o.item in old_base.items
                                       and _item_sig(old_v.items[i]) == _item_sig(old_base.items[i])):
                    v_objects.append(Placed(None, o.name, i, o.matrix, o.t))
                else:
                    skipped.append(f"object {o.name}")
                continue
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
        elif len(collision) != len(old_base.collision) or \
                any(n.corners != o.corners for n, o in zip(collision, old_base.collision)):
            skipped.append("collision")
    v_track = None
    if track is not None and old_v.track is not None:
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
