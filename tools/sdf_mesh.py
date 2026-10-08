#!/usr/bin/env python3
"""Export the meshes of a level SDF to Wavefront OBJ.

Writes:
  <out>/items/item_NNN.obj   every draw item's mesh, in its own coordinates
  <out>/scene.obj            every Cobjet placed with its matrix (LOD 0)

See docs/formats/sdf.md for the structures. The track ground (exported
vertex pool) isn't decoded yet, so it isn't included. PS1 Y points down;
the OBJ output flips Y so that up is up.

usage: sdf_mesh.py <level.sdf> <out_dir>
"""

import struct
import sys
from dataclasses import dataclass, field
from pathlib import Path

from sdf import parse

ROOT_DRAW_ITEMS = 1  # root 1: {DrawItem** items, u32 count, ...}
COBJET = "Cobjet"


@dataclass
class Polygon:
    type: int
    indices: list  # 3 or 4 vertex indices, GPU order (quad outline is 0-1-3-2)
    word2: int     # RGB + command, or a pointer to 4 colour words (Gouraud types)
    uv: list = field(default_factory=list)
    clut: int = 0
    tpage: int = 0
    flags: int = 0


@dataclass
class Mesh:
    vertices: list
    polygons: list
    flags: int


def u16(sdf, off):
    return struct.unpack_from("<H", sdf.data, off)[0]


def read_mesh(sdf, item):
    """Read the mesh of a draw item, with each polygon's group type."""
    mesh = sdf.u32(item + 4)
    n_polys, n_verts, flags = u16(sdf, mesh), u16(sdf, mesh + 4), sdf.data[mesh + 6]
    vbase, pbase = sdf.u32(mesh + 0x18), sdf.u32(mesh + 0x1C)
    vertices = [struct.unpack_from("<3h", sdf.data, vbase + i * 8) for i in range(n_verts)]
    polygons = []
    p = pbase
    for g in range(25):
        header = u16(sdf, item + 0x10 + g * 2)
        if header == 0:
            break
        ptype, count = header & 0x3F, header >> 6
        for _ in range(count):
            idx = list(struct.unpack_from("<4H", sdf.data, p))
            if idx[3] == 0xFFFF:
                idx = idx[:3]
            uv0, clut, uv1, tpage, uv2, uv3 = struct.unpack_from("<6H", sdf.data, p + 12)
            uv = [(x & 0xFF, x >> 8) for x in (uv0, uv1, uv2, uv3)][:len(idx)]
            polygons.append(Polygon(ptype, idx, sdf.u32(p + 8), uv, clut, tpage, sdf.u32(p + 24)))
            p += 28
    if len(polygons) != n_polys:
        raise ValueError(f"item {item:#x}: groups give {len(polygons)} polygons, mesh says {n_polys}")
    return Mesh(vertices, polygons, flags)


def draw_items(sdf):
    """Return {index: item offset} for the level's draw-item table (root 1)."""
    root = sdf.roots[ROOT_DRAW_ITEMS]
    table, count = sdf.u32(root), sdf.u32(root + 4)
    relocs = set(sdf.relocs)
    items = {}
    for i in range(count):
        slot = table + i * 4
        if slot in relocs and (sdf.u32(slot) + 4) in relocs:
            items[i] = sdf.u32(slot)
    return items


def placed_objects(sdf):
    """Yield (object offset, name, matrix, translation, draw item index) for each Cobjet."""
    relocs = set(sdf.relocs)
    for obj in sdf.sorted_objects:
        if sdf.class_of(obj) != COBJET or sdf.data[obj + 0x40] == 0 or (obj + 0x3C) not in relocs:
            continue
        mat = sdf.u32(obj + 0x38)
        m = struct.unpack_from("<9h", sdf.data, mat)
        t = struct.unpack_from("<3i", sdf.data, mat + 0x14)
        lod0 = struct.unpack_from("<h", sdf.data, sdf.u32(obj + 0x3C))[0]
        name_ptr = sdf.u32(obj + 4)
        name = sdf.data[name_ptr:sdf.data.index(b"\0", name_ptr)].decode("latin-1") if name_ptr else ""
        yield obj, name, m, t, lod0


def faces(mesh, base):
    out = []
    for poly in mesh.polygons:
        idx = poly.indices if len(poly.indices) == 3 else [poly.indices[i] for i in (0, 1, 3, 2)]
        out.append("f " + " ".join(str(base + i) for i in idx))
    return out


def write_obj(path, groups):
    """groups: list of (name, [(x, y, z)], Mesh)."""
    lines, base = [], 1
    for name, verts, mesh in groups:
        lines.append(f"o {name}")
        lines += [f"v {x} {-y} {z}" for x, y, z in verts]
        lines += faces(mesh, base)
        base += len(verts)
    path.write_text("\n".join(lines) + "\n")


def transform(m, t, v):
    x, y, z = v
    return tuple((m[r * 3] * x + m[r * 3 + 1] * y + m[r * 3 + 2] * z) / 4096 + t[r] for r in range(3))


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    sdf = parse(Path(sys.argv[1]).read_bytes())
    out = Path(sys.argv[2])
    (out / "items").mkdir(parents=True, exist_ok=True)
    items = draw_items(sdf)
    meshes = {i: read_mesh(sdf, off) for i, off in items.items()}
    for i, mesh in meshes.items():
        write_obj(out / "items" / f"item_{i:03d}.obj", [(f"item_{i}", mesh.vertices, mesh)])
    scene = []
    for obj, name, m, t, lod0 in placed_objects(sdf):
        if lod0 in meshes:
            mesh = meshes[lod0]
            scene.append((f"{name or 'obj'}_{obj:x}", [transform(m, t, v) for v in mesh.vertices], mesh))
    write_obj(out / "scene.obj", scene)
    print(f"{len(meshes)} draw items, {len(scene)} placed objects -> {out}")


if __name__ == "__main__":
    main()
