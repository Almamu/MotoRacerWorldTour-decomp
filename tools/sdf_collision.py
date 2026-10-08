#!/usr/bin/env python3
"""Read the collision surface of a level SDF (root 5) and export it.

  sdf_collision.py <level.sdf> <out.obj>     collision faces as OBJ (Y up)
  sdf_collision.py <level.sdf>               summary

See docs/formats/sdf.md ("Collision"). Each face is a convex triangle or
quad in the XZ plane given by its edge lines (angle + distance from the
face origin), with one plane (or two, split along a line) for its height.
The OBJ has one object per surface type (`surface_N`, the low byte of the
face's y word) and the corners computed by intersecting the edge lines.
"""

import math
import struct
import sys
from dataclasses import dataclass
from pathlib import Path

from sdf import parse

ROOT_COLLISION = 5
FACE_SIZE = 0x38
NO_NEIGHBOUR = -0x7FFF
NO_SPLIT = 0xFFFF
TRIG_TABLE = 0x800BF3A0      # in LANGIMG.DAT: 4096 x (cos << 16 | sin), 4096 = 1.0
LANGIMG_BASE = 0x800117F0


def _s16(v):
    return v - 0x10000 if v & 0x8000 else v


@dataclass
class Plane:
    nx: int
    ny: int
    nz: int
    w: int  # +0x1A / +0x36: plane offset (4096 * w / ny game units)

    def height(self, y0, dx, dz):
        """Plane height (1/32 units, Y down) at (dx, dz) game units from the
        face origin, as the game computes it (FUN_8001AFF4). Vertical planes
        (ny = 0, walls in the trial levels) give y0."""
        if self.ny == 0:
            return y0
        dx, dz = int(round(dx)), int(round(dz))
        mac = self.w + ((self.nx * dx + self.nz * dz) >> 12)
        return y0 - 32 * int((mac << 12) / self.ny)  # C division truncates


@dataclass
class Face:
    index: int
    x: int            # origin, 1/32 units
    y: int            # (word >> 8): origin height, 1/32 units, Y down
    surface: int      # word & 0xFF
    z: int
    neighbours: list  # 4 relative face indices, None = no neighbour
    plane: Plane
    edges: list       # 3 or 4 edge words (distance << 16 | angle)
    split: int        # edge word dividing the two planes, or None
    plane2: Plane     # used where the split edge is positive
    raw_edge4: int = 0  # the 4th edge word as stored (triangles: bit 15 set)
    raw: bytes = b""

    @property
    def is_triangle(self):
        return len(self.edges) == 3


class Trig:
    def __init__(self, langimg=None):
        self.table = None
        if langimg and Path(langimg).exists():
            raw = Path(langimg).read_bytes()
            off = TRIG_TABLE - LANGIMG_BASE
            # each u32 is cos << 16 | sin, i.e. the halfwords (sin, cos)
            pairs = (struct.unpack_from("<hh", raw, off + i * 4) for i in range(4096))
            self.table = [(c, s) for s, c in pairs]

    def cos_sin(self, angle):
        a = angle & 0xFFF
        if self.table:
            return self.table[a]
        r = a * 2 * math.pi / 4096
        return round(math.cos(r) * 4096), round(math.sin(r) * 4096)


def edge_value(trig, word, dx, dz):
    """The game's inside test for one edge (>= 0 is inside); dx, dz in game units."""
    c, s = trig.cos_sin(word)
    return _s16(word >> 16) + ((c * dx + s * dz) >> 12)


def read(sdf):
    hdr = sdf.roots[ROOT_COLLISION]
    count = struct.unpack_from("<h", sdf.data, hdr)[0]
    base = sdf.u32(hdr + 4)
    faces = []
    for i in range(count):
        p = base + i * FACE_SIZE
        x, yw, z = struct.unpack_from("<iIi", sdf.data, p)
        nb = struct.unpack_from("<4h", sdf.data, p + 0x0C)
        plane = Plane(*struct.unpack_from("<4h", sdf.data, p + 0x14))
        e = list(struct.unpack_from("<4I", sdf.data, p + 0x1C))
        split = struct.unpack_from("<I", sdf.data, p + 0x2C)[0]
        plane2 = Plane(*struct.unpack_from("<4h", sdf.data, p + 0x30))
        faces.append(Face(i, x, _s24(yw >> 8), yw & 0xFF, z,
                          [None if n == NO_NEIGHBOUR else i + n for n in nb],
                          plane, e[:3] if e[3] & 0x8000 else e,
                          None if split == NO_SPLIT else split, plane2,
                          e[3], bytes(sdf.data[p:p + FACE_SIZE])))
    return faces


def _s24(v):
    return v - 0x1000000 if v & 0x800000 else v


def header(sdf):
    hdr = sdf.roots[ROOT_COLLISION]
    count, second = struct.unpack_from("<hh", sdf.data, hdr)
    gw, gh, cell, grid = struct.unpack_from("<4i", sdf.data, hdr + 0x18)
    return {"faces": count, "field_02": second, "grid_w": gw, "grid_h": gh, "cell": cell, "grid": grid}


def corners(trig, face):
    """Corners in game units relative to the face origin (x, z), in edge order:
    corner k is where edge k meets edge k+1."""
    lines = []
    for w in face.edges:
        c, s = trig.cos_sin(w)
        lines.append((c / 4096, s / 4096, _s16(w >> 16)))
    out = []
    for k in range(len(lines)):
        a1, b1, d1 = lines[k]
        a2, b2, d2 = lines[(k + 1) % len(lines)]
        det = a1 * b2 - a2 * b1
        if abs(det) < 1e-9:
            return None
        out.append(((-d1 * b2 + d2 * b1) / det, (-a1 * d2 + a2 * d1) / det))
    return out


def face_plane_at(trig, face, dx, dz):
    """The game uses the second plane where the split edge is positive."""
    if face.split is not None and edge_value(trig, face.split, int(dx), int(dz)) > 0:
        return face.plane2
    return face.plane


def world_polygon(trig, face):
    """Corners as world (x, y, z) game units (Y down)."""
    pts = corners(trig, face)
    if pts is None:
        return None
    out = []
    for dx, dz in pts:
        plane = face_plane_at(trig, face, dx, dz)
        y = plane.height(face.y, dx, dz) / 32
        out.append((face.x / 32 + dx, y, face.z / 32 + dz))
    return out


# --- writing -------------------------------------------------------------------

def split_corners(trig, face):
    """Indices of the two corners the split line runs through (a diagonal), and
    the corners on its positive (second plane) side."""
    pts = corners(trig, face)
    vals = [edge_value(trig, face.split, int(round(x)), int(round(z))) for x, z in pts]
    on = sorted(range(len(pts)), key=lambda k: abs(vals[k]))[:2]
    pos = [k for k in range(len(pts)) if k not in on and vals[k] > 0]
    return sorted(on), pos


def _edge_word(trig, a, b, centre):
    """Edge through a and b (local game units), normal pointing to centre."""
    ex, ez = b[0] - a[0], b[1] - a[1]
    nx, nz = -ez, ex
    if nx * (centre[0] - a[0]) + nz * (centre[1] - a[1]) < 0:
        nx, nz = -nx, -nz
    angle = round(math.atan2(nz, nx) * 4096 / (2 * math.pi)) & 0xFFF
    c, s = trig.cos_sin(angle)
    d = -math.floor((c * a[0] + s * a[1]) / 4096)
    # nudge so that both end points test as inside (>= 0) with the game's rounding
    while min(edge_value(trig, d << 16 & 0xFFFF0000 | angle, round(p[0]), round(p[1])) for p in (a, b)) < 0:
        d += 1
    return (d & 0xFFFF) << 16 | angle


def _plane(points, w):
    """Plane through 3+ points (x, y, z) in game units: unit normal x 16384,
    oriented like the game's (ny > 0 for a floor, with Y down)."""
    nx = ny = nz = 0.0
    for k in range(len(points)):
        x1, y1, z1 = points[k]
        x2, y2, z2 = points[(k + 1) % len(points)]
        nx += (y1 - y2) * (z1 + z2)
        ny += (z1 - z2) * (x1 + x2)
        nz += (x1 - x2) * (y1 + y2)
    length = math.sqrt(nx * nx + ny * ny + nz * nz) or 1
    if ny < 0:
        nx, ny, nz = -nx, -ny, -nz
    return Plane(round(nx / length * 16384), round(ny / length * 16384), round(nz / length * 16384), w)


def encode_face(trig, face, world):
    """New 56-byte record for `face` with corners `world` [(x, y, z)] in game
    units (Y down, same order as corners()). Origin (x, z), neighbours and
    surface type are kept; edges, planes and the origin height are rebuilt.
    A split quad keeps its diagonal: the first plane covers the triangle on
    the split edge's negative side, the second the positive side."""
    ox, oz = face.x / 32, face.z / 32
    local = [(x - ox, z - oz) for x, _, z in world]
    pts3 = [(x - ox, y, z - oz) for x, y, z in world]
    centre = (sum(p[0] for p in local) / len(local), sum(p[1] for p in local) / len(local))
    n = len(local)
    # corner k is where edge k meets edge k+1, so edge k runs corner k-1 -> corner k
    edges = [_edge_word(trig, local[k - 1], local[k], centre) for k in range(n)]
    split = None
    if face.split is not None and n == 4:
        on, pos = split_corners(trig, face)
        neg = [k for k in range(4) if k not in on and k not in pos]
        p1 = _plane([pts3[k] for k in sorted(on + neg)], 0)
        p2 = _plane([pts3[k] for k in sorted(on + pos)], 0)
        split = _edge_word(trig, local[on[0]], local[on[1]], local[pos[0]] if pos else centre)
        q1, q2 = pts3[(on + neg)[0]], pts3[(on + pos)[0]]
    else:
        p1 = _plane(pts3, 0)
        p2, q1 = None, pts3[0]
    # height = Y0 - (4096 w + nx dx + nz dz) / ny (game units): put Y0 on the
    # first plane (w = 0) and give the second plane the offset it needs
    if p1.ny:
        y0 = q1[1] + (p1.nx * q1[0] + p1.nz * q1[2]) / p1.ny
    else:
        y0 = face.y / 32
    if p2 is not None and p2.ny:
        p2.w = round(((y0 - q2[1]) * p2.ny - (p2.nx * q2[0] + p2.nz * q2[2])) / 4096)
    yw = (round(y0 * 32) & 0xFFFFFF) << 8 | face.surface
    nb = [-0x7FFF if v is None else v - face.index for v in face.neighbours]
    e = edges + ([] if n == 4 else [face.raw_edge4])
    out = struct.pack("<iIi4h4h4I", face.x, yw, face.z, *nb, p1.nx, p1.ny, p1.nz, p1.w, *e)
    if split is None:
        return out + struct.pack("<I4h", NO_SPLIT, 0, 0, 0, 0)
    return out + struct.pack("<I4h", split, p2.nx, p2.ny, p2.nz, p2.w)


def rebuild_grid(sdf, trig):
    """Recompute the lookup grid (header +0x24) from the faces' extents: each
    cell gets the [first, last] index range of the faces overlapping it (a
    superset is fine: the game tests every face in the range). Empty cells
    get (0, -1). Returns False if the level has no grid."""
    h = header(sdf)
    if not h["grid"]:
        return False
    w, hgt, size = h["grid_w"], h["grid_h"], h["cell"]
    ranges = [[None, None] for _ in range(w * hgt)]
    for f in read(sdf):
        poly = world_polygon(trig, f)
        if not poly:
            continue
        # cell = (pos >> 12) // size with pos in 1/32 units, i.e. game units / 128
        xs = [int(x * 32) >> 12 for x, _, _ in poly]
        zs = [int(z * 32) >> 12 for _, _, z in poly]
        for cz in range(max(0, min(zs) // size), min(hgt - 1, max(zs) // size) + 1):
            for cx in range(max(0, min(xs) // size), min(w - 1, max(xs) // size) + 1):
                r = ranges[cz * w + cx]
                r[0] = f.index if r[0] is None else min(r[0], f.index)
                r[1] = f.index if r[1] is None else max(r[1], f.index)
    data = bytearray(sdf.data)
    for k, (a, b) in enumerate(ranges):
        struct.pack_into("<hh", data, h["grid"] + 4 * k, *((0, -1) if a is None else (a, b)))
    sdf.data = bytes(data)
    return True


def export_obj(sdf, out, langimg=None):
    trig = Trig(langimg)
    faces = read(sdf)
    groups = {}
    for f in faces:
        poly = world_polygon(trig, f)
        if poly:
            groups.setdefault(f.surface, []).append(poly)
    lines, v = [], 1
    for surface in sorted(groups):
        lines.append(f"o surface_{surface}")
        for poly in groups[surface]:
            lines += [f"v {x:.2f} {-y:.2f} {z:.2f}" for x, y, z in poly]
            lines.append("f " + " ".join(str(v + k) for k in range(len(poly))))
            v += len(poly)
    Path(out).write_text("\n".join(lines) + "\n")
    return len(faces)


def main():
    a = sys.argv[1:]
    if len(a) not in (1, 2):
        sys.exit(__doc__)
    sdf = parse(Path(a[0]).read_bytes())
    langimg = Path(a[0]).resolve().parents[1] / "LANGIMG.DAT"
    if len(a) == 2:
        n = export_obj(sdf, a[1], langimg)
        print(f"{n} collision faces -> {a[1]}")
    else:
        h = header(sdf)
        faces = read(sdf)
        print(h, f"{sum(f.is_triangle for f in faces)} triangles,",
              f"{sum(f.split is not None for f in faces)} split")


if __name__ == "__main__":
    main()
