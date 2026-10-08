#!/usr/bin/env python3
"""Export the geometry of a level SDF to Wavefront OBJ.

Writes:
  <out>/ground.obj           the track ground (world mesh), assembled from its
                             blocks and sectors, in world coordinates
  <out>/items/item_NNN.obj   every draw item's mesh, in its own coordinates
  <out>/scene.obj            every Cobjet placed with its matrix (LOD 0)

With --vrm <level.Vrm>, textured polygons get UVs and materials, and every
texture page they use is written to <out>/textures/ (one PNG per
tpage/CLUT pair, 256x256 page coordinates).

See docs/formats/sdf.md for the structures. PS1 Y points down; the OBJ
output flips Y so that up is up.

usage: sdf_mesh.py <level.sdf> <out_dir> [--vrm <level.Vrm>]
"""

import struct
import sys
from dataclasses import dataclass, field
from pathlib import Path

from sdf import parse

ROOT_DRAW_ITEMS = 1  # root 1: {DrawItem** items, u32 count, ...}
ROOT_WORLD = 6       # root 6: world struct (grid, sectors, blocks, ground mesh)
COBJET = "Cobjet"
BLOCK_SCALE = 128    # block origin units -> vertex units

# Draw-item polygon group types that carry inline UV/CLUT/tpage.
TEXTURED_TYPES = {13, 15, 21, 23}


@dataclass
class Polygon:
    indices: list               # 3 or 4 vertex indices, GPU order (quad outline 0-1-3-2)
    uv: list = field(default_factory=list)
    clut: int = 0
    tpage: int = 0
    textured: bool = False
    type: int = 0               # draw-item group type, or ground flags


@dataclass
class Mesh:
    vertices: list
    polygons: list


def u16(sdf, off):
    return struct.unpack_from("<H", sdf.data, off)[0]


def split_uv(words, n):
    return [(w & 0xFF, w >> 8) for w in words][:n]


# --- draw items -----------------------------------------------------------

def read_item_mesh(sdf, item):
    """Read the mesh of a draw item, with each polygon's group type."""
    mesh = sdf.u32(item + 4)
    n_polys, n_verts = u16(sdf, mesh), u16(sdf, mesh + 4)
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
            polygons.append(Polygon(idx, split_uv((uv0, uv1, uv2, uv3), len(idx)), clut, tpage,
                                    ptype in TEXTURED_TYPES, ptype))
            p += 28
    if len(polygons) != n_polys:
        raise ValueError(f"item {item:#x}: groups give {len(polygons)} polygons, mesh says {n_polys}")
    return Mesh(vertices, polygons)


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


def transform(m, t, v):
    x, y, z = v
    return tuple((m[r * 3] * x + m[r * 3 + 1] * y + m[r * 3 + 2] * z) / 4096 + t[r] for r in range(3))


# --- ground ---------------------------------------------------------------

def read_ground(sdf):
    """Assemble the world mesh (root 6) into one Mesh in world coordinates."""
    world = sdf.roots[ROOT_WORLD]
    n_blocks, n_sectors = sdf.u32(world + 0x44), sdf.u32(world + 0x48)
    blocks_at, sectors_at, lists_at = sdf.u32(world + 0x54), sdf.u32(world + 0x50), sdf.u32(world + 0x58)
    mesh = sdf.u32(world + 0x5C + 4)  # the draw item embedded at world+0x5C
    extra = sdf.u32(mesh + 0x28)
    rec_size = 12 if sdf.data[extra + 0x16] == 1 else 8
    polys_at, tex_at = sdf.u32(extra + 0x18), sdf.u32(extra + 0x1C)
    verts_at = sdf.u32(mesh + 0x18)

    blocks = [struct.unpack_from("<4h", sdf.data, blocks_at + i * 12) for i in range(n_blocks)]
    vertices, polygons = [], []
    for s in range(n_sectors):
        first, block, counts, list_start = struct.unpack_from("<4h", sdf.data, sectors_at + s * 16)
        bx, bz, _, vstart = blocks[block]
        n_polys, n_verts = counts & 0xFF, (counts >> 8) & 0xFF
        base = len(vertices)
        for i in range(n_verts):
            vi = u16(sdf, lists_at + (list_start + i) * 2)
            x, y, z = struct.unpack_from("<3h", sdf.data, verts_at + (vstart + vi) * 8)
            vertices.append((x + bx * BLOCK_SCALE, y, z + bz * BLOCK_SCALE))
        for k in range(n_polys):
            rec = polys_at + (first + k) * rec_size
            flags, tex = struct.unpack_from("<HH", sdf.data, rec)
            quad = flags & 0x0C == 0x0C
            idx = [base + i for i in sdf.data[rec + 4:rec + 8]][:4 if quad else 3]
            uv0, clut, uv1, tpage, uv2, uv3 = struct.unpack_from("<6H", sdf.data, tex_at + tex)
            uv = split_uv((uv0, uv1, uv2, uv3), len(idx))
            if quad:
                # Ground quads are stored in outline order; use GPU order like the rest.
                idx = [idx[0], idx[1], idx[3], idx[2]]
                uv = [uv[0], uv[1], uv[3], uv[2]]
            polygons.append(Polygon(idx, uv, clut, tpage, True, flags))
    return Mesh(vertices, polygons)


# --- output ---------------------------------------------------------------

class Materials:
    """Texture pages (tpage, clut) used by the exported polygons."""

    def __init__(self, vrm, out):
        self.vrm, self.out, self.used = vrm, out, set()

    def name(self, poly):
        if not (self.vrm and poly.textured):
            return None
        key = (poly.tpage, poly.clut)
        self.used.add(key)
        return f"page_{key[0]:04x}_{key[1]:04x}"

    def write(self):
        if not self.vrm:
            return
        from PIL import Image
        (self.out / "textures").mkdir(parents=True, exist_ok=True)
        mtl = []
        for tpage, clut in sorted(self.used):
            name = f"page_{tpage:04x}_{clut:04x}"
            try:
                rgba = self.vrm.texture([(0, 0), (255, 255)], clut, tpage)
                Image.fromarray(rgba).save(self.out / "textures" / f"{name}.png")
            except (IndexError, ValueError):
                continue  # page or CLUT outside this bank's VRAM block
            mtl += [f"newmtl {name}", f"map_Kd textures/{name}.png", ""]
        (self.out / "materials.mtl").write_text("\n".join(mtl))


def write_obj(path, groups, materials):
    """groups: list of (name, [(x, y, z)], Mesh)."""
    lines, vbase, tbase = ["mtllib materials.mtl"], 1, 1
    for name, verts, mesh in groups:
        lines.append(f"o {name}")
        lines += [f"v {x} {-y} {z}" for x, y, z in verts]
        current = None
        for poly in mesh.polygons:
            order = [0, 1, 2] if len(poly.indices) == 3 else [0, 1, 3, 2]
            mat = materials.name(poly)
            if mat != current:
                lines.append(f"usemtl {mat}" if mat else "usemtl none")
                current = mat
            if mat:
                lines += [f"vt {poly.uv[i][0] / 256} {1 - poly.uv[i][1] / 256}" for i in order]
                lines.append("f " + " ".join(f"{vbase + poly.indices[i]}/{tbase + n}" for n, i in enumerate(order)))
                tbase += len(order)
            else:
                lines.append("f " + " ".join(str(vbase + poly.indices[i]) for i in order))
        vbase += len(verts)
    path.write_text("\n".join(lines) + "\n")


def main():
    args = sys.argv[1:]
    vrm = None
    if "--vrm" in args:
        i = args.index("--vrm")
        from vrm import Vrm
        vrm = Vrm(Path(args[i + 1]).read_bytes())
        del args[i:i + 2]
    if len(args) != 2:
        sys.exit(__doc__)
    sdf = parse(Path(args[0]).read_bytes())
    out = Path(args[1])
    (out / "items").mkdir(parents=True, exist_ok=True)
    materials = Materials(vrm, out)

    ground = read_ground(sdf)
    write_obj(out / "ground.obj", [("ground", ground.vertices, ground)], materials)

    meshes = {i: read_item_mesh(sdf, off) for i, off in draw_items(sdf).items()}
    for i, mesh in meshes.items():
        # Item OBJs live one directory down; give them their own mtllib path.
        write_obj(out / "items" / f"item_{i:03d}.obj", [(f"item_{i}", mesh.vertices, mesh)], materials)
        text = (out / "items" / f"item_{i:03d}.obj").read_text()
        (out / "items" / f"item_{i:03d}.obj").write_text(text.replace("mtllib materials.mtl", "mtllib ../materials.mtl", 1))
    scene = []
    for obj, name, m, t, lod0 in placed_objects(sdf):
        if lod0 in meshes:
            mesh = meshes[lod0]
            scene.append((f"{name or 'obj'}_{obj:x}", [transform(m, t, v) for v in mesh.vertices], mesh))
    write_obj(out / "scene.obj", scene, materials)
    materials.write()
    print(f"ground: {len(ground.vertices)} vertices, {len(ground.polygons)} polygons; "
          f"{len(meshes)} draw items, {len(scene)} placed objects; "
          f"{len(materials.used)} texture pages -> {out}")


if __name__ == "__main__":
    main()
