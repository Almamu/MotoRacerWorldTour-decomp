#!/usr/bin/env python3
"""Rider rig of a level SDF (root 9): skeleton, rest mesh, poses.

  sdf_rig.py <level.sdf>                     summary
  sdf_rig.py <level.sdf> <out.obj> [pose]    the rider in the rest pose or pose N

See docs/formats/sdf.md ("Rider rig"). The rig is 31 parts (rider and
bike) in a parent tree; part k's matrix is `R = R_parent · Rx·Ry·Rz`
(angles = pose rotation + the part's base rotation, 4096 = 360°) and
`t = R_parent · (pivot [+ pose translation]) + t_parent`. Each part
transforms a run of the model's vertex buffer into scratchpad slots and
then draws polygons that address slots, so a polygon can use vertices of
neighbouring parts (seams). Here every mesh vertex is one vertex-buffer
entry, owned by the part that transforms it.

Coordinates are the rig's own (Y up, game units); the bike's matrix puts
it in the level.
"""

import math
import struct
import sys
from dataclasses import dataclass, field
from pathlib import Path

from sdf import parse

ROOT_RIG = 9
POSE_COUNT = 16
POSE_SIZE = 0x1C
PART_RUNTIME = 0x80
HIDDEN = 0x30         # part flags: locator / not drawn
USES_TRANSLATION = 0x40


@dataclass
class Part:
    index: int
    name: str
    parent: int          # None for a root
    pivot: tuple         # s32[3], from the parent
    base_rot: tuple      # s16[3]
    flags: int
    record: int          # offset of the model part record
    first: int           # first vertex in the model buffer
    count: int           # vertex count
    slot: int            # first scratchpad slot
    polys: int           # offset of the polygons (28 bytes each)
    n_polys: int


@dataclass
class Pose:
    index: int
    rotations: dict      # part -> (x, y, z), 4096 = 360°
    translations: dict   # part -> (x, y, z)
    record: int


@dataclass
class Rig:
    model: int
    parts: list
    order: list
    vertices: list       # the model vertex buffer, (x, y, z) per entry
    vbase: int
    extra: list          # [(polys offset, count)] seam polygons drawn after the parts
    poses: list = field(default_factory=list)


def _name(sdf, rec):
    """Locator parts carry a name right after the record's fixed fields."""
    d = sdf.data
    raw = d[rec + 0x28:rec + 0x48]
    if raw[:1].isalpha():
        return raw.split(b"\0")[0].decode("latin-1")
    return ""


def find_template(sdf, model):
    """The stored runtime rig: u8 part count, +4 -> a rider model, +8 -> parts."""
    relocs = set(sdf.relocs)
    models = {sdf.u32(sdf.roots[ROOT_RIG] + 0x290), sdf.u32(sdf.roots[ROOT_RIG] + 0x294)}
    n = struct.unpack_from("<h", sdf.data, model)[0]
    for r in sdf.relocs:
        if sdf.u32(r) in models and sdf.data[r - 4] == n and (r + 4) in relocs:
            return r - 4
    raise ValueError("no stored rider rig found")


def _unpack_rot(w):
    def s10(v):
        return (v - 1024 if v & 512 else v) * 4
    return s10(w & 1023), s10((w >> 10) & 1023), s10((w >> 20) & 1023)


def _pack_rot(angles, flags_bits=3):
    w = 0
    for k, a in enumerate(angles):
        v = int(round(a / 4)) & 1023
        w |= v << (10 * k)
    return w | flags_bits << 30


def read(sdf, which=0):
    d = sdf.data
    r9 = sdf.roots[ROOT_RIG]
    model = sdf.u32(r9 + 0x290 + 4 * which)
    n = struct.unpack_from("<h", d, model)[0]
    tmpl = find_template(sdf, model)
    arr = sdf.u32(tmpl + 8)
    relocs = set(sdf.relocs)
    recs = [sdf.u32(sdf.u32(model + 0x28) + 4 * k) for k in range(n)]
    parts = []
    for k in range(n):
        rt = arr + PART_RUNTIME * k
        parent = (sdf.u32(rt + 4) - arr) // PART_RUNTIME if (rt + 4) in relocs else None
        rec = recs[k]
        first, slot = struct.unpack_from("<hh", d, rec + 0x1C)
        parts.append(Part(k, _name(sdf, rec), parent, struct.unpack_from("<3i", d, rec),
                          struct.unpack_from("<3h", d, rec + 0x0C),
                          struct.unpack_from("<H", d, rt + 0x36)[0], rec,
                          first, 3 * d[rec + 0x1A], slot // 8,
                          sdf.u32(rec + 0x20) if (rec + 0x20) in relocs else 0,
                          struct.unpack_from("<H", d, rec + 0x14)[0]))
    order = list(d[sdf.u32(model + 0x24):sdf.u32(model + 0x24) + n])
    vbase = sdf.u32(model + 0x14)
    nverts = max(p.first + p.count for p in parts)
    vertices = [struct.unpack_from("<3h", d, vbase + 8 * i) for i in range(nverts)]
    extra = []
    nx, tab, ext = sdf.u32(model + 0x6C), sdf.u32(model + 0x70), sdf.u32(model + 0x4C)
    for e in range(nx):
        cnt = struct.unpack_from("<h", d, tab + 4 * e)[0]
        extra.append((ext, cnt))
        ext += 28 * cnt
    rig = Rig(model, parts, order, vertices, vbase, extra)
    for k in range(POSE_COUNT):
        p = r9 + 4 + k * POSE_SIZE
        if (p + 4) in relocs:
            rig.poses.append(parse_pose(sdf, p, k, relocs))
    return rig


def parse_pose(sdf, p, index, relocs=None):
    """A pose record (0x1C bytes: joint counts, packed rotations, joint lists,
    translations); also the first 0x1C bytes of an animation key."""
    d = sdf.data
    relocs = relocs if relocs is not None else set(sdf.relocs)
    nt, nr = d[p + 1], d[p + 2]
    rw, rl = sdf.u32(p + 4), sdf.u32(p + 8)
    rots = {d[rl + j]: _unpack_rot(sdf.u32(rw + 4 * j)) for j in range(nr - 1)}
    trans = {}
    if (p + 0x0C) in relocs and nt > 1:
        tl, tv = sdf.u32(p + 0x0C), sdf.u32(p + 0x10)
        trans = {d[tl + j]: struct.unpack_from("<3h", d, tv + 8 * j) for j in range(nt - 1)}
    return Pose(index, rots, trans, p)


# --- animations (root 11 records, listed at root 9 +0x1C4) --------------------

KEY_SIZE = 0x20


@dataclass
class Anim:
    record: int          # AnimRec offset: {char* name, u32 keys, u32 length ms, 0, Key* keys}
    name: str
    length: int          # ms
    keys: list           # [(time ms, Pose)]
    slots: list          # indices in root 9's animation list that use it


def read_anims(sdf):
    d = sdf.data
    r9 = sdf.roots[ROOT_RIG]
    n = sdf.u32(r9 + 0x1C4)
    relocs = set(sdf.relocs)
    by_rec = {}
    for slot in range(n):
        rec = sdf.u32(r9 + 0x1C8 + 4 * slot)
        if rec in by_rec:
            by_rec[rec].slots.append(slot)
            continue
        name_at, count, length, keys_at = sdf.u32(rec), sdf.u32(rec + 4), sdf.u32(rec + 8), sdf.u32(rec + 0x10)
        name = d[name_at:d.index(b"\0", name_at)].decode("latin-1")
        keys = [(sdf.u32(keys_at + KEY_SIZE * i + 0x1C), parse_pose(sdf, keys_at + KEY_SIZE * i, i, relocs))
                for i in range(count)]
        by_rec[rec] = Anim(rec, name, length, keys, [slot])
    return list(by_rec.values())


# --- geometry --------------------------------------------------------------

def _rot(ax, ay, az):
    a = [v * 2 * math.pi / 4096 for v in (ax, ay, az)]
    cx, sx, cy, sy, cz, sz = (math.cos(a[0]), math.sin(a[0]), math.cos(a[1]), math.sin(a[1]),
                              math.cos(a[2]), math.sin(a[2]))
    rx = ((1, 0, 0), (0, cx, -sx), (0, sx, cx))
    ry = ((cy, 0, sy), (0, 1, 0), (-sy, 0, cy))
    rz = ((cz, -sz, 0), (sz, cz, 0), (0, 0, 1))
    return _mul(_mul(rx, ry), rz)


def _mul(a, b):
    return tuple(tuple(sum(a[i][k] * b[k][j] for k in range(3)) for j in range(3)) for i in range(3))


def _apply(m, v):
    return tuple(sum(m[i][k] * v[k] for k in range(3)) for i in range(3))


def world_matrices(rig, pose=None, base=True):
    """{part: (R, t)} in rig space for a pose (None = rest). base=False leaves
    out the parts' base rotations (the zero-angle frame Blender uses)."""
    rots = pose.rotations if pose else {}
    trans = pose.translations if pose else {}
    world = {}
    for k in rig.order:
        p = rig.parts[k]
        ang = [a + (b if base else 0) for a, b in zip(rots.get(k, (0, 0, 0)), p.base_rot)]
        t = list(p.pivot)
        if p.flags & USES_TRANSLATION and k in trans:
            t = [a + b for a, b in zip(t, trans[k])]
        rl = _rot(*ang)
        if p.parent is None:
            rp, tp = ((1, 0, 0), (0, 1, 0), (0, 0, 1)), (0, 0, 0)
        else:
            rp, tp = world[p.parent]
        world[k] = (_mul(rp, rl), tuple(a + b for a, b in zip(_apply(rp, t), tp)))
    return world


def _face_indices(sdf, at):
    idx = list(struct.unpack_from("<4H", sdf.data, at))
    while idx and idx[-1] in (0xFFFF, 0xCDCD):
        idx.pop()
    if len(idx) == 4:
        idx = [idx[0], idx[1], idx[3], idx[2]]  # GPU order -> outline
    return idx


def faces(sdf, rig):
    """[(vertex-buffer indices (outline order), poly offset, owner part)] by
    emulating the scratchpad slots in draw order."""
    slots, out = {}, []

    def emit(at, count, owner):
        for i in range(count):
            p = at + 28 * i
            idx = _face_indices(sdf, p)
            if len(idx) >= 3 and all(o // 8 in slots for o in idx):
                out.append(([slots[o // 8] for o in idx], p, owner))

    for k in rig.order:
        part = rig.parts[k]
        if part.flags & HIDDEN:
            continue
        for j in range(part.count):
            slots[part.slot + j] = part.first + j
        if part.polys:
            emit(part.polys, part.n_polys, k)
    for at, cnt in rig.extra:
        emit(at, cnt, None)
    return out


def owners(rig):
    """Vertex-buffer index -> owning part."""
    own = {}
    for p in rig.parts:
        for j in range(p.count):
            own[p.first + j] = p.index
    return own


def posed_vertices(rig, pose=None, base=True):
    world = world_matrices(rig, pose, base)
    own = owners(rig)
    out = []
    for i, v in enumerate(rig.vertices):
        r, t = world[own.get(i, 0)]
        out.append(tuple(a + b for a, b in zip(_apply(r, v), t)))
    return out


# --- writing -----------------------------------------------------------------

def write(sdf, rig, vertices=None, poses=None, base=True, anims=None):
    """vertices: rest-pose rig-space positions per buffer entry (moved ones are
    written back part-local; base=False: given in the zero-angle frame);
    poses: {index: Pose} with the same joint lists; anims: {AnimRec offset:
    [Pose per key]} (key values only; times and joint lists are fixed).
    Returns (vertices changed, pose joints changed)."""
    data = bytearray(sdf.data)
    nv = nj = 0
    if vertices is not None:
        rest = world_matrices(rig, None, base)
        own = owners(rig)
        old = posed_vertices(rig, None, base)
        for i, (a, b) in enumerate(zip(old, vertices)):
            if all(abs(x - y) < 0.5 for x, y in zip(a, b)):
                continue
            r, t = rest[own.get(i, 0)]
            rel = tuple(x - y for x, y in zip(b, t))
            local = tuple(sum(r[k][j] * rel[k] for k in range(3)) for j in range(3))  # R^T
            struct.pack_into("<3h", data, rig.vbase + 8 * i, *(max(-32768, min(32767, round(c))) for c in local))
            nv += 1
    targets = [(pose, (poses or {}).get(pose.index)) for pose in rig.poses]
    if anims:
        old_keys = {a.record: a for a in read_anims(sdf)}
        for rec, new_keys in anims.items():
            for (_, old), new in zip(old_keys[rec].keys, new_keys):
                targets.append((old, new))
    for pose, new in targets:
        if new is None:
            continue
        p = pose.record
        d = sdf.data
        nr, rw, rl = d[p + 2], sdf.u32(p + 4), sdf.u32(p + 8)
        for j in range(nr - 1):
            joint = d[rl + j]
            if joint not in new.rotations:
                continue
            a, b = pose.rotations[joint], new.rotations[joint]
            if all(abs(x - y) < 2 for x, y in zip(a, b)):
                continue
            old_w = sdf.u32(rw + 4 * j)
            struct.pack_into("<I", data, rw + 4 * j, _pack_rot(b, old_w >> 30))
            nj += 1
        nt = d[p + 1]
        if pose.translations and nt > 1:
            tl, tv = sdf.u32(p + 0x0C), sdf.u32(p + 0x10)
            for j in range(nt - 1):
                joint = d[tl + j]
                if joint in new.translations and tuple(new.translations[joint]) != tuple(pose.translations[joint]):
                    struct.pack_into("<3h", data, tv + 8 * j, *(round(c) for c in new.translations[joint]))
                    nj += 1
    sdf.data = bytes(data)
    return nv, nj


def main():
    a = sys.argv[1:]
    if len(a) not in (1, 2, 3):
        sys.exit(__doc__)
    sdf = parse(Path(a[0]).read_bytes())
    rig = read(sdf)
    if len(a) == 1:
        print(f"{len(rig.parts)} parts, {len(rig.vertices)} vertices, {len(faces(sdf, rig))} faces, "
              f"{len(rig.poses)} poses")
        for p in rig.parts:
            print(f"  {p.index:2d} {p.name or '-':18s} parent {p.parent} flags {p.flags:#06x} "
                  f"verts {p.count} polys {p.n_polys}")
        return
    pose = None
    if len(a) == 3:
        pose = next(p for p in rig.poses if p.index == int(a[2]))
    verts = posed_vertices(rig, pose)
    lines = [f"v {x} {y} {z}" for x, y, z in verts]
    lines += ["f " + " ".join(str(i + 1) for i in idx) for idx, _, _ in faces(sdf, rig)]
    Path(a[1]).write_text("\n".join(lines) + "\n")
    print(f"-> {a[1]}")


if __name__ == "__main__":
    main()
