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


def corners(trig, face, between=None):
    """Corners in game units relative to the face origin (x, z), in edge order:
    corner k is where edge k meets edge k+1. Two consecutive edges on the same
    line (how the game gives one side two neighbours, a T-junction) leave
    that corner open: `between(k, a, b)` may return a point on the segment
    a-b (local units) for it, else it goes in the middle."""
    lines = []
    for w in face.edges:
        c, s = trig.cos_sin(w)
        lines.append((c / 4096, s / 4096, _s16(w >> 16)))
    n = len(lines)
    out = [None] * n
    for k in range(n):
        a1, b1, d1 = lines[k]
        a2, b2, d2 = lines[(k + 1) % n]
        det = a1 * b2 - a2 * b1
        if abs(det) >= 1e-9:
            out[k] = ((-d1 * b2 + d2 * b1) / det, (-a1 * d2 + a2 * d1) / det)
    for k in range(n):
        if out[k] is None:
            a, b = out[k - 1], out[(k + 1) % n]
            if a is None or b is None:
                return None
            p = between(k, a, b) if between else None
            out[k] = p if p is not None else ((a[0] + b[0]) / 2, (a[1] + b[1]) / 2)
    return out


def face_plane_at(trig, face, dx, dz):
    """The game uses the second plane where the split edge is positive."""
    if face.split is not None and edge_value(trig, face.split, int(dx), int(dz)) > 0:
        return face.plane2
    return face.plane


def world_polygon(trig, face, faces=None):
    """Corners as world (x, y, z) game units (Y down). With `faces` (all of
    the level's), an open T-junction corner is put where the neighbouring
    faces along that line meet."""
    between = None
    if faces is not None:
        def between(k, a, b):
            ox, oz = face.x / 32, face.z / 32
            ax, az, bx, bz = a[0] + ox, a[1] + oz, b[0] + ox, b[1] + oz
            L = math.hypot(bx - ax, bz - az) or 1
            best = None
            for j in (face.neighbours[k], face.neighbours[(k + 1) % len(face.edges)]):
                if j is None or not 0 <= j < len(faces):
                    continue
                q = corners(trig, faces[j])
                for qx, qz in q or ():
                    px, pz = qx + faces[j].x / 32, qz + faces[j].z / 32
                    t = ((px - ax) * (bx - ax) + (pz - az) * (bz - az)) / (L * L)
                    off = abs((px - ax) * (bz - az) - (pz - az) * (bx - ax)) / L
                    if 0.01 < t < 0.99 and off < 4 and (best is None or off < best[0]):
                        best = (off, (px - ox, pz - oz))
            return best[1] if best else None
    pts = corners(trig, face, between)
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


def encode_face(trig, face, world, split_diag=None):
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
    if n == 4 and (split_diag is not None or face.split is not None):
        if split_diag is not None:
            on = list(split_diag)
            pos = [k for k in range(4) if k not in on][:1]
        else:
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
        y0 = face.y / 32 if face.raw else sum(p[1] for p in pts3) / len(pts3)
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
    all_faces = read(sdf)
    for f in all_faces:
        poly = world_polygon(trig, f, all_faces)
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
        poly = world_polygon(trig, f, faces)
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


# --- building a new collision surface ------------------------------------------

def find_neighbours(polys, tol=3.0):
    """Neighbour per edge for faces given as corner lists [(x, z)] (game
    units, edge order: edge k runs corner k-1 -> corner k): the face with
    an edge along the same line in the opposite direction that overlaps it
    most (so T-junctions, where a long edge meets several short ones, get a
    neighbour too), or None for a wall."""
    import collections
    cell = 256.0
    grid = collections.defaultdict(list)
    edges = []
    for i, p in enumerate(polys):
        for k in range(len(p)):
            a, b = p[k - 1], p[k]
            edges.append((i, k, a, b))
            for cx in range(int(min(a[0], b[0]) // cell), int(max(a[0], b[0]) // cell) + 1):
                for cz in range(int(min(a[1], b[1]) // cell), int(max(a[1], b[1]) // cell) + 1):
                    grid[(cx, cz)].append(len(edges) - 1)
    out = [[None] * len(p) for p in polys]
    for i, k, a, b in edges:
        dx, dz = b[0] - a[0], b[1] - a[1]
        length = math.hypot(dx, dz)
        if length < 1e-6:
            continue
        ux, uz = dx / length, dz / length
        best, best_overlap = None, tol
        seen = set()
        for cx in range(int(min(a[0], b[0]) // cell), int(max(a[0], b[0]) // cell) + 1):
            for cz in range(int(min(a[1], b[1]) // cell), int(max(a[1], b[1]) // cell) + 1):
                for e in grid[(cx, cz)]:
                    j, _, c, d = edges[e]
                    if j == i or e in seen:
                        continue
                    seen.add(e)
                    # on the same line (perpendicular distance; angles are stored in
                    # 12 bits, so long edges drift: allow ~0.25 degrees) and running
                    # the other way
                    slack = tol + 0.0045 * max(length, math.hypot(d[0] - c[0], d[1] - c[1]))
                    if abs((c[0] - a[0]) * uz - (c[1] - a[1]) * ux) > slack or \
                            abs((d[0] - a[0]) * uz - (d[1] - a[1]) * ux) > slack:
                        continue
                    tc = (c[0] - a[0]) * ux + (c[1] - a[1]) * uz
                    td = (d[0] - a[0]) * ux + (d[1] - a[1]) * uz
                    if td >= tc:
                        continue
                    overlap = min(length, tc) - max(0.0, td)
                    if overlap > best_overlap:
                        best, best_overlap = j, overlap
        out[i][k] = best
    return out


def is_convex(xz, tol=1.0):
    """Convex in XZ with the game's winding; a corner may bulge out by up to
    `tol` units (straight T-junction corners decode slightly off the line)."""
    n = len(xz)
    for k in range(n):
        a, b, c = xz[k - 1], xz[k], xz[(k + 1) % n]
        cross = (b[0] - a[0]) * (c[1] - b[1]) - (b[1] - a[1]) * (c[0] - b[0])
        if cross > tol * (math.hypot(c[0] - a[0], c[1] - a[1]) or 1):
            return False
    return True


def winding(xz):
    """Signed area term: negative for the game's corner order."""
    return sum(xz[k - 1][0] * xz[k][1] - xz[k][0] * xz[k - 1][1] for k in range(len(xz)))


def _triangulate(world):
    """Convex pieces (triangles / quads) of a polygon in game order: convex
    polygons of up to 4 corners stay, a concave quad is cut at its reflex
    corner, a convex n-gon becomes a fan; anything else is an error."""
    xz = [(x, z) for x, _, z in world]
    n = len(world)
    if is_convex(xz) and n <= 4:
        return [world]
    if n == 4:
        for r in range(4):
            a, b, c = xz[r - 1], xz[r], xz[(r + 1) % 4]
            if (b[0] - a[0]) * (c[1] - b[1]) - (b[1] - a[1]) * (c[0] - b[0]) > 0:   # reflex
                o = (r + 2) % 4
                return [[world[r], world[(r + 1) % 4], world[o]], [world[o], world[(o + 1) % 4], world[r]]]
    if is_convex(xz):
        return [[world[0], world[k], world[k + 1]] for k in range(1, n - 1)]
    raise ValueError(f"collision: a concave {n}-sided face (use triangles / convex quads)")


def _drop_straight(world, tol=1.0, keep=4):
    """Remove corners lying on the straight line between their neighbours
    (e.g. where a neighbouring face's edge was subdivided) while the face
    has more than `keep`: up to 4 the game encodes them itself (two edges
    on one line, each with its own neighbour); beyond that the face keeps
    its shape and the T-junction gets one neighbour from the edge search."""
    pts = list(world)
    changed = True
    while changed and len(pts) > keep:
        changed = False
        for k in range(len(pts)):
            a, b, c = pts[k - 1], pts[k], pts[(k + 1) % len(pts)]
            u = [c[i] - a[i] for i in range(3)]
            w = [b[i] - a[i] for i in range(3)]
            ln = math.sqrt(sum(x * x for x in u)) or 1
            cr = [u[1] * w[2] - u[2] * w[1], u[2] * w[0] - u[0] * w[2], u[0] * w[1] - u[1] * w[0]]
            t = sum(u[i] * w[i] for i in range(3)) / (ln * ln)
            if 0 < t < 1 and math.sqrt(sum(x * x for x in cr)) / ln < tol:
                del pts[k]
                changed = True
                break
    return pts


def _flatness(world):
    """Largest distance (game units) of a corner from the plane through the others."""
    if len(world) < 4:
        return 0.0
    worst = 0.0
    for k in range(4):
        a, b, c = [world[j] for j in range(4) if j != k]
        u = [b[i] - a[i] for i in range(3)]
        v = [c[i] - a[i] for i in range(3)]
        nrm = [u[1] * v[2] - u[2] * v[1], u[2] * v[0] - u[0] * v[2], u[0] * v[1] - u[1] * v[0]]
        ln = math.sqrt(sum(x * x for x in nrm)) or 1
        worst = max(worst, abs(sum((world[k][i] - a[i]) * nrm[i] for i in range(3))) / ln)
    return worst


def build_surface(trig, polys, flat=0.5):
    """Encode a whole collision surface from [(corners [(x, y, z)] game units
    Y down, surface type, split[, raw, links])] where split is the diagonal
    (two corner indices) a bent quad folds along, or None to pick the
    shorter one, raw an original record to keep as it is (corners in its
    own order, unchanged; only its neighbours and surface type are
    rewritten) and links its neighbours to keep, per edge, as positions in
    `polys` (-1: keep a wall; None: found from the edges);
    corners are put in the game's order, concave
    quads / n-gons cut into convex pieces, neighbours found from the edges
    (no neighbour = wall), quads bent by more than `flat` units split along
    a diagonal (two planes). Origins are the corner centroids. Returns
    (records, quad count)."""
    faces, first, links = [], [], []
    for world, surface, *rest in polys:
        world = [tuple(p) for p in world]
        diag = rest[0] if rest else None
        raw = rest[1] if len(rest) > 1 else None
        first.append(len(faces))
        if raw is not None:
            faces.append((world, surface, raw))
            links.append((len(faces) - 1, rest[2] if len(rest) > 2 else None))
            continue
        if winding([(x, z) for x, _, z in world]) > 0:
            world = world[::-1]
            if diag is not None:
                diag = tuple(len(world) - 1 - k for k in diag)
        world = _drop_straight(world)
        pieces = _triangulate(world)
        for piece in pieces:
            faces.append((piece, surface, diag if len(pieces) == 1 else None))
    nbs = find_neighbours([[(x, z) for x, _, z in w] for w, _, _ in faces])
    for i, keep in links:
        for k, pos in enumerate(keep or ()):
            if pos is not None and k < len(nbs[i]):
                nbs[i][k] = None if pos == -1 else first[pos]
    out, quads = [], 0
    for i, ((world, surface, diag), nb) in enumerate(zip(faces, nbs)):
        if isinstance(diag, (bytes, bytearray)):
            rec = bytearray(diag)
            old_nb = struct.unpack_from("<4h", rec, 0x0C)
            full = list(nb) + [None] * (4 - len(nb))
            vals = [-0x7FFF if v is None else v - i for v in full]
            if len(nb) == 3:
                vals[3] = old_nb[3]          # triangles: the unused 4th stays as it was
            struct.pack_into("<4h", rec, 0x0C, *vals)
            rec[4] = surface & 0xFF
            out.append(bytes(rec))
            quads += len(world) == 4
            continue
        cx = sum(p[0] for p in world) / len(world)
        cz = sum(p[2] for p in world) / len(world)
        f = Face(i, round(cx * 32), 0, surface, round(cz * 32), list(nb) + [None] * (4 - len(nb)),
                 None, [], None, None, NO_SPLIT)
        split = None
        if len(world) == 4 and _flatness(world) > flat:
            if diag is None:
                d02 = math.dist(world[0], world[2])
                d13 = math.dist(world[1], world[3])
                diag = (0, 2) if d02 <= d13 else (1, 3)
            split = tuple(sorted(diag))
        out.append(encode_face(trig, f, world, split))
        quads += len(world) == 4
    return out, quads


def replace_surface(sdf, trig, records, quads):
    """Write a new face array + header at the end of the file and point root
    5 at it (nothing else refers to the collision data); the lookup grid,
    if the level has one, keeps its place and is recomputed."""
    old = sdf.roots[ROOT_COLLISION]
    head = bytearray(sdf.data[old:old + 0x28])
    struct.pack_into("<hh", head, 0, len(records), quads)
    struct.pack_into("<4I", head, 8, 0, 0, 0, 0)
    blob = b"".join(records)
    faces_at = sdf.append(blob + bytes(head))
    hdr = faces_at + len(blob)
    sdf.set_pointer(hdr + 4, faces_at)
    grid = struct.unpack_from("<I", sdf.data, old + 0x24)[0]
    if grid:
        sdf.set_pointer(hdr + 0x24, grid)
    sdf.roots[ROOT_COLLISION] = hdr
    if grid:
        rebuild_grid(sdf, trig)
    return hdr
