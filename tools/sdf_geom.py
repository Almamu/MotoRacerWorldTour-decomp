#!/usr/bin/env python3
"""Export SDF geometry for editing and import it back.

  sdf_geom.py export <file.sdf> <dir>
  sdf_geom.py import <file.sdf> <dir> <out.sdf>

export writes:
  <dir>/item_NNN.obj    every draw item's mesh (its own coordinates)
  <dir>/ground.obj      level ground, one vertex per block vertex (world coords)
  <dir>/objects.json    placed Cobjets: name, draw item, position, rotation
  <dir>/geometry.json   checksums, so import only touches what was edited

OBJ conventions: Y is flipped (up is up); faces are in polygon order;
textured polygons use material `page_TTTT_CCCC` (tpage, CLUT, hex) with
`vt` = (u/256, 1 - v/256) in the texture page, untextured ones
`color_RRGGBB`. Quads are written as 0-1-3-2 outlines.

import, per edited file:
  item_NNN.obj with the same vertex and face counts: vertex positions and
      the UVs of textured polygons are written in place.
  item_NNN.obj with different counts: the item gets a new mesh (appended
      to the file): `page_*` faces become textured triangles/quads (group
      types 13/15), `color_*` and untextured faces flat ones (5/9). Faces
      must be triangles or quads; at most 13 polygon groups (up to 1023
      polygons each).
  ground.obj: vertex positions only (same vertex count). Ground collision
      may live elsewhere, so big changes might not match what the bikes
      ride on.
  objects.json: positions (world units, Y up) and 3x3 rotations.
Mesh bounds (mesh+0x08) are recomputed for edited meshes, never shrunk.
"""

import hashlib
import json
import math
import struct
import sys
from collections import Counter
from pathlib import Path

from sdf import parse, serialize
from sdf_mesh import (BLOCK_SCALE, TRANSLATION_SCALE, ROOT_WORLD, draw_items,
                      read_item_mesh)

MAX_GROUPS = 13          # draw item +0x10..+0x2B: 13 group headers + terminator
TEXTURED = {13: (3, 0x24), 15: (4, 0x2C)}
FLAT = {5: (3, 0x20), 9: (4, 0x28)}


def u16(sdf, off):
    return struct.unpack_from("<H", sdf.data, off)[0]


def sha(path):
    return hashlib.sha1(Path(path).read_bytes()).hexdigest()


# --- OBJ ---------------------------------------------------------------------

def write_obj(path, vertices, faces):
    """faces: list of (indices in GPU order, material, uvs or None)."""
    out = [f"# {len(vertices)} vertices, {len(faces)} faces"]
    out += [f"v {x} {-y} {z}" for x, y, z in vertices]
    vt = 1
    current = None
    for n, (idx, mat, uv) in enumerate(faces):
        order = [0, 1, 2] if len(idx) == 3 else [0, 1, 3, 2]
        if mat != current:
            out.append(f"usemtl {mat}")
            current = mat
        if uv:
            out += [f"vt {uv[i][0] / 256} {1 - uv[i][1] / 256}" for i in order]
            out.append("f " + " ".join(f"{idx[i] + 1}/{vt + k}" for k, i in enumerate(order)))
            vt += len(order)
        else:
            out.append("f " + " ".join(str(idx[i] + 1) for i in order))
    Path(path).write_text("\n".join(out) + "\n")


def read_obj(path):
    """Return vertices (Y flipped back) and faces (GPU order) with material and UVs."""
    verts, uvs, faces, mat = [], [], [], None
    for line in Path(path).read_text().splitlines():
        p = line.split()
        if not p or p[0].startswith("#"):
            continue
        if p[0] == "v":
            x, y, z = map(float, p[1:4])
            verts.append((x, -y, z))
        elif p[0] == "vt":
            uvs.append((float(p[1]), float(p[2])))
        elif p[0] == "usemtl":
            mat = p[1]
        elif p[0] == "f":
            idx, uv = [], []
            for tok in p[1:]:
                parts = tok.split("/")
                idx.append(int(parts[0]) - 1)
                if len(parts) > 1 and parts[1]:
                    u, v = uvs[int(parts[1]) - 1]
                    uv.append((max(0, min(255, round(u * 256))), max(0, min(255, round((1 - v) * 256)))))
            if len(idx) not in (3, 4):
                raise ValueError(f"{path}: only triangles and quads are supported")
            if len(idx) == 4:  # outline 0-1-2-3 -> GPU order 0-1-3-2
                idx = [idx[0], idx[1], idx[3], idx[2]]
                uv = [uv[0], uv[1], uv[3], uv[2]] if uv else uv
            faces.append((idx, mat, uv or None))
    return verts, faces


def material(poly_word2, textured, tpage, clut):
    if textured:
        return f"page_{tpage:04x}_{clut:04x}"
    return f"color_{poly_word2 & 0xFFFFFF:06x}" if poly_word2 & 0xFF000000 else "color_808080"


# --- export ------------------------------------------------------------------

def item_faces(sdf, item, mesh):
    p = sdf.u32(sdf.u32(item + 4) + 0x1C)
    faces = []
    for poly in mesh.polygons:
        word2 = sdf.u32(p + 8)
        mat = material(word2, poly.textured, poly.tpage, poly.clut)
        faces.append((poly.indices, mat, poly.uv if poly.textured else None))
        p += 28
    return faces


def ground_layout(sdf):
    world = sdf.roots[ROOT_WORLD]
    mesh = sdf.u32(world + 0x5C + 4)
    extra = sdf.u32(mesh + 0x28)
    return {
        "mesh": mesh,
        "verts": sdf.u32(mesh + 0x18),
        "n_verts": u16(sdf, mesh + 4),
        "blocks": [struct.unpack_from("<4h", sdf.data, sdf.u32(world + 0x54) + i * 12)
                   for i in range(sdf.u32(world + 0x44))],
        "sectors": [struct.unpack_from("<4h", sdf.data, sdf.u32(world + 0x50) + i * 16)
                    for i in range(sdf.u32(world + 0x48))],
        "lists": sdf.u32(world + 0x58),
        "rec": 12 if sdf.data[extra + 0x16] == 1 else 8,
        "polys": sdf.u32(extra + 0x18),
        "tex": sdf.u32(extra + 0x1C),
    }


def block_of_vertex(g):
    owner = {}
    for b, (bx, bz, count, first) in enumerate(g["blocks"]):
        for k in range(count):
            owner[first + k] = (bx, bz)
    return owner


def export_ground(sdf, path):
    g = ground_layout(sdf)
    owner = block_of_vertex(g)
    verts = []
    for i in range(g["n_verts"]):
        x, y, z = struct.unpack_from("<3h", sdf.data, g["verts"] + i * 8)
        bx, bz = owner.get(i, (0, 0))
        verts.append((x + bx * BLOCK_SCALE, y, z + bz * BLOCK_SCALE))
    faces = []
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
            if quad:  # stored as an outline; write in GPU order like the rest
                idx, uv = [idx[0], idx[1], idx[3], idx[2]], [uv[0], uv[1], uv[3], uv[2]]
            faces.append((idx, f"page_{tpage:04x}_{clut:04x}", uv))
    write_obj(path, verts, faces)


def cobjets(sdf):
    relocs = set(sdf.relocs)
    for obj in sdf.instances("Cobjet"):
        if sdf.data[obj + 0x3C] == 0 or (obj + 0x38) not in relocs:
            continue
        name_ptr = sdf.u32(obj)
        name = sdf.data[name_ptr:sdf.data.index(b"\0", name_ptr)].decode("latin-1") if name_ptr else ""
        yield obj, name, sdf.u32(obj + 0x34)


def export(sdf_path, out):
    sdf = parse(Path(sdf_path).read_bytes())
    out.mkdir(parents=True, exist_ok=True)
    for i, item in draw_items(sdf).items():
        mesh = read_item_mesh(sdf, item)
        write_obj(out / f"item_{i:03d}.obj", mesh.vertices, item_faces(sdf, item, mesh))
    if len(sdf.roots) == 51:
        export_ground(sdf, out / "ground.obj")
    objs = []
    for obj, name, mat in cobjets(sdf):
        m = struct.unpack_from("<9h", sdf.data, mat)
        t = struct.unpack_from("<3i", sdf.data, mat + 0x14)
        lod = struct.unpack_from("<h", sdf.data, sdf.u32(obj + 0x38))[0]
        objs.append({"object": obj, "name": name, "draw_item": lod,
                     "position": [t[0] / TRANSLATION_SCALE, -t[1] / TRANSLATION_SCALE, t[2] / TRANSLATION_SCALE],
                     "rotation": [[m[r * 3 + c] / 4096 for c in range(3)] for r in range(3)]})
    (out / "objects.json").write_text(json.dumps(objs, indent=1))
    state = {p.name: sha(p) for p in out.iterdir() if p.suffix in (".obj", ".json") and p.name != "geometry.json"}
    (out / "geometry.json").write_text(json.dumps(state, indent=1))
    print(f"{len(state)} files -> {out}")


# --- import ------------------------------------------------------------------

def bounds_update(sdf, mesh, verts, old_verts=()):
    """Raise mesh+0x08 bounds (max |x|, |y|, |z|, radius; 1/32 units) where the
    new vertices reach further than the old ones; never shrink them."""
    def extents(vs):
        ex = [max((abs(v[k]) for v in vs), default=0) for k in range(3)]
        return ex + [max((math.sqrt(x * x + y * y + z * z) for x, y, z in vs), default=0)]
    new, old_ex = extents(verts), extents(old_verts)
    bounds = list(struct.unpack_from("<4i", sdf.data, mesh + 8))
    for k in range(4):
        if new[k] > old_ex[k]:
            bounds[k] = max(bounds[k], int(new[k] * 32) + 32)
    data = bytearray(sdf.data)
    struct.pack_into("<4i", data, mesh + 8, *bounds)
    sdf.data = bytes(data)


def s16(v):
    return max(-32768, min(32767, int(round(v))))


def update_item(sdf, item, verts, faces):
    """Same topology: rewrite vertex positions and textured UVs in place."""
    mesh = sdf.u32(item + 4)
    old_verts = read_item_mesh(sdf, item).vertices
    data = bytearray(sdf.data)
    vbase = sdf.u32(mesh + 0x18)
    for i, (x, y, z) in enumerate(verts):
        struct.pack_into("<3h", data, vbase + i * 8, s16(x), s16(y), s16(z))
    p = sdf.u32(mesh + 0x1C)
    for idx, mat, uv in faces:
        if uv and mat and mat.startswith("page_"):
            words = [u | v << 8 for u, v in uv] + [0] * (4 - len(uv))
            struct.pack_into("<H", data, p + 12, words[0])
            struct.pack_into("<H", data, p + 16, words[1])
            struct.pack_into("<H", data, p + 20, words[2])
            struct.pack_into("<H", data, p + 22, words[3])
        p += 28
    sdf.data = bytes(data)
    bounds_update(sdf, mesh, verts, old_verts)


def flag_templates(sdf):
    """Most common polygon flags word (+0x18) per group type in this file."""
    seen = {}
    for item in draw_items(sdf).values():
        p = sdf.u32(sdf.u32(item + 4) + 0x1C)
        for g in range(MAX_GROUPS + 12):
            h = u16(sdf, item + 0x10 + g * 2)
            if h == 0:
                break
            for _ in range(h >> 6):
                seen.setdefault(h & 0x3F, Counter())[sdf.u32(p + 24)] += 1
                p += 28
    return {t: c.most_common(1)[0][0] for t, c in seen.items()}


def replace_item(sdf, item, verts, faces):
    """New topology: append new vertex/polygon arrays and point the item at them."""
    templates = flag_templates(sdf)
    old_verts = read_item_mesh(sdf, item).vertices
    groups = {}
    for idx, mat, uv in faces:
        textured = bool(mat and mat.startswith("page_") and uv)
        n = len(idx)
        gtype = (13 if n == 3 else 15) if textured else (5 if n == 3 else 9)
        groups.setdefault(gtype, []).append((idx, mat, uv))
    headers, polys = [], bytearray()
    for gtype in sorted(groups):
        items = groups[gtype]
        for start in range(0, len(items), 1023):
            chunk = items[start:start + 1023]
            headers.append(gtype | len(chunk) << 6)
            for idx, mat, uv in chunk:
                rec = bytearray(28)
                ids = list(idx) + [0xFFFF] * (4 - len(idx))
                struct.pack_into("<4H", rec, 0, *ids)
                if gtype in TEXTURED:
                    _, tpage, clut = mat.split("_")
                    words = [u | v << 8 for u, v in uv] + [0] * (4 - len(uv))
                    struct.pack_into("<I", rec, 8, TEXTURED[gtype][1] << 24 | 0x808080)
                    struct.pack_into("<6H", rec, 12, words[0], int(clut, 16), words[1], int(tpage, 16),
                                     words[2], words[3])
                else:
                    rgb = int(mat[6:], 16) if mat and mat.startswith("color_") else 0x808080
                    struct.pack_into("<I", rec, 8, FLAT[gtype][1] << 24 | rgb)
                default = 0x18000000 if len(idx) == 4 else 0x10000000
                struct.pack_into("<I", rec, 24, templates.get(gtype, default))
                polys += rec
    if len(headers) > MAX_GROUPS:
        raise ValueError(f"too many polygon groups ({len(headers)} > {MAX_GROUPS})")
    vblob = b"".join(struct.pack("<3hH", s16(x), s16(y), s16(z), 0) for x, y, z in verts)
    vert_at = sdf.append(vblob)
    poly_at = sdf.append(bytes(polys))
    mesh = sdf.u32(item + 4)
    sdf.set_pointer(mesh + 0x18, vert_at)
    sdf.set_pointer(mesh + 0x1C, poly_at)
    data = bytearray(sdf.data)
    struct.pack_into("<H", data, mesh, len(faces))
    struct.pack_into("<H", data, mesh + 4, len(verts))
    data[mesh + 6] = 1  # plain mesh: drop the extra lighting / env blocks
    head = struct.pack(f"<{len(headers)}H", *headers) + b"\0\0"
    data[item + 0x10:item + 0x10 + len(head)] = head
    sdf.data = bytes(data)
    bounds_update(sdf, mesh, verts, old_verts)


def update_ground(sdf, verts):
    g = ground_layout(sdf)
    if len(verts) != g["n_verts"]:
        raise ValueError("ground.obj must keep its vertex count")
    owner = block_of_vertex(g)
    data = bytearray(sdf.data)
    for i, (x, y, z) in enumerate(verts):
        bx, bz = owner.get(i, (0, 0))
        struct.pack_into("<3h", data, g["verts"] + i * 8,
                         s16(x - bx * BLOCK_SCALE), s16(y), s16(z - bz * BLOCK_SCALE))
    sdf.data = bytes(data)


def update_objects(sdf, objs):
    data = bytearray(sdf.data)
    for o in objs:
        mat = sdf.u32(o["object"] + 0x34)
        m = [int(round(v * 4096)) for row in o["rotation"] for v in row]
        x, y, z = o["position"]
        struct.pack_into("<9h", data, mat, *(max(-32768, min(32767, v)) for v in m))
        struct.pack_into("<3i", data, mat + 0x14, int(round(x * TRANSLATION_SCALE)),
                         int(round(-y * TRANSLATION_SCALE)), int(round(z * TRANSLATION_SCALE)))
    sdf.data = bytes(data)


def import_(sdf_path, src, out):
    sdf = parse(Path(sdf_path).read_bytes())
    state = json.loads((src / "geometry.json").read_text())
    edited = [n for n, h in state.items() if (src / n).exists() and sha(src / n) != h]
    items = draw_items(sdf)
    for name in edited:
        if name.startswith("item_"):
            i = int(name[5:8])
            verts, faces = read_obj(src / name)
            old = read_item_mesh(sdf, items[i])
            same = len(verts) == len(old.vertices) and len(faces) == len(old.polygons) and \
                all(len(f[0]) == len(p.indices) for f, p in zip(faces, old.polygons))
            (update_item if same else replace_item)(sdf, items[i], verts, faces)
            print(f"{name}: {'updated' if same else 'replaced'} ({len(verts)} vertices, {len(faces)} faces)")
        elif name == "ground.obj":
            update_ground(sdf, read_obj(src / name)[0])
            print("ground.obj: vertices updated")
        elif name == "objects.json":
            update_objects(sdf, json.loads((src / name).read_text()))
            print("objects.json: placements updated")
    Path(out).write_bytes(serialize(sdf))
    print(f"{len(edited)} edited files -> {out}")


def main():
    a = sys.argv[1:]
    if len(a) == 3 and a[0] == "export":
        export(a[1], Path(a[2]))
    elif len(a) == 4 and a[0] == "import":
        import_(a[1], Path(a[2]), a[3])
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main()
