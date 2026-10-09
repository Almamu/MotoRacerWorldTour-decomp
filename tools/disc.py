#!/usr/bin/env python3
"""Patch files in the raw MODE2/2352 data track of the disc.

  disc.py replace <track01.bin> <out.bin> <ISO path> <file> [<ISO path> <file> ...]
      replace files (e.g. MR3.DAT). A file that still fits in its sectors
      is written in place; a bigger one is moved to the end of the track
      (the directory record and the volume size are updated). Files with
      Form 2 / interleaved XA attributes (movies) are given as raw
      2352-byte sectors, like tools/extract_iso.py writes them: their
      subheaders are kept, the sectors re-addressed and EDC/ECC recomputed.
  disc.py verify <track01.bin>
      recompute EDC/ECC of every Form 1 sector and compare.

Written sectors get a proper header (MSF address, mode 2), the XA subheader
of a data sector (submode 0x08, 0x89 on the last sector of a file) and
freshly computed EDC/ECC.

The other tracks are separate BIN files and don't move, so the CUE sheet
stays valid when the data track grows.
"""

import struct
import sys
from pathlib import Path

import numpy as np

SECTOR = 2352
USER = 2048
SYNC = b"\x00" + b"\xff" * 10 + b"\x00"
PREGAP = 150  # MSF addresses start at 00:02:00

# --- EDC / ECC (ECMA-130) ---------------------------------------------------

EDC_TABLE = np.zeros(256, np.uint32)
for i in range(256):
    e = i
    for _ in range(8):
        e = (e >> 1) ^ (0xD8018001 if e & 1 else 0)
    EDC_TABLE[i] = e

ECC_F = np.zeros(256, np.uint8)
ECC_B = np.zeros(256, np.uint8)
for i in range(256):
    j = (i << 1) ^ (0x11D if i & 0x80 else 0)
    ECC_F[i] = j & 0xFF
    ECC_B[i ^ (j & 0xFF)] = i


def edc(blocks):
    """EDC over each row of a (n, length) uint8 array."""
    e = np.zeros(len(blocks), np.uint32)
    for col in range(blocks.shape[1]):
        e = (e >> 8) ^ EDC_TABLE[(e ^ blocks[:, col]) & 0xFF]
    return e


def ecc_block(src, major_count, minor_count, major_mult, minor_inc):
    """src: (n, 2340) uint8 (sector bytes 12..2351, header zeroed for mode 2)."""
    size = major_count * minor_count
    out = np.zeros((len(src), major_count * 2), np.uint8)
    for major in range(major_count):
        index = (major >> 1) * major_mult + (major & 1)
        a = np.zeros(len(src), np.uint8)
        b = np.zeros(len(src), np.uint8)
        for _ in range(minor_count):
            t = src[:, index]
            index += minor_inc
            if index >= size:
                index -= size
            a ^= t
            b ^= t
            a = ECC_F[a]
        a = ECC_B[ECC_F[a] ^ b]
        out[:, major] = a
        out[:, major + major_count] = a ^ b
    return out


def fix_form1(sectors):
    """Recompute EDC and ECC of Mode 2 Form 1 sectors in a (n, 2352) uint8 array."""
    sectors[:, 2072:2076] = edc(sectors[:, 16:2072]).view(np.uint8).reshape(-1, 4)
    work = sectors[:, 12:].copy()
    work[:, 0:4] = 0  # mode 2: the header doesn't take part in the ECC
    p = ecc_block(work, 86, 24, 2, 86)
    work[:, 2064:2236] = p
    q = ecc_block(work, 52, 43, 86, 88)
    sectors[:, 2076:2248] = p
    sectors[:, 2248:2352] = q
    return sectors


def bcd(v):
    return (v // 10) << 4 | v % 10


def header(lba):
    a = lba + PREGAP
    return SYNC + bytes([bcd(a // 4500), bcd(a // 75 % 60), bcd(a % 75), 2])


def raw_sectors(data, lba):
    """Raw 2352-byte sectors (any mode 2 form) re-addressed to start at
    `lba`, with EDC/ECC recomputed (Form 2: EDC over subheader and data)."""
    buf = np.frombuffer(bytes(data), np.uint8).reshape(-1, SECTOR).copy()
    for i in range(len(buf)):
        buf[i, :16] = np.frombuffer(header(lba + i), np.uint8)
    form2 = (buf[:, 18] & 0x20) != 0
    if (~form2).any():
        buf[~form2] = fix_form1(buf[~form2])
    if form2.any():
        buf[form2, 2348:2352] = edc(buf[form2, 16:2348]).view(np.uint8).reshape(-1, 4)
    return buf


def form1_sectors(data, lba):
    count = max(1, -(-len(data) // USER))
    buf = np.zeros((count, SECTOR), np.uint8)
    for i in range(count):
        buf[i, :16] = np.frombuffer(header(lba + i), np.uint8)
        sub = 0x89 if i == count - 1 else 0x08
        buf[i, 16:24] = (0, 0, sub, 0, 0, 0, sub, 0)
        chunk = data[i * USER:(i + 1) * USER]
        buf[i, 24:24 + len(chunk)] = np.frombuffer(chunk, np.uint8)
    return fix_form1(buf)


# --- ISO9660 ----------------------------------------------------------------

class Track:
    def __init__(self, data):
        self.data = bytearray(data)

    @property
    def sectors(self):
        return len(self.data) // SECTOR

    def user(self, lba, size=USER):
        off = lba * SECTOR + 24
        return bytes(self.data[off:off + size])

    def read(self, lba, size):
        n = -(-size // USER)
        return b"".join(self.user(lba + i) for i in range(n))[:size]

    def write_sectors(self, lba, sectors):
        raw = sectors.tobytes()
        end = lba * SECTOR + len(raw)
        if end > len(self.data):
            self.data.extend(b"\0" * (end - len(self.data)))
        self.data[lba * SECTOR:end] = raw

    def records(self, lba, size, path=""):
        """Yield (path, sector, offset in sector, extent lba, size, is_dir)."""
        buf = self.read(lba, size)
        pos = 0
        while pos < len(buf):
            length = buf[pos]
            if length == 0:
                pos = (pos // USER + 1) * USER
                continue
            ext, sz = struct.unpack_from("<I", buf, pos + 2)[0], struct.unpack_from("<I", buf, pos + 10)[0]
            flags, nlen = buf[pos + 25], buf[pos + 32]
            name = buf[pos + 33:pos + 33 + nlen]
            if name not in (b"\0", b"\1"):
                full = f"{path}/{name.decode('ascii').split(';')[0]}".lstrip("/")
                yield full, lba + pos // USER, pos % USER, ext, sz, bool(flags & 2)
                if flags & 2:
                    yield from self.records(ext, sz, full)
            pos += length

    def root(self):
        pvd = self.user(16)
        if pvd[:6] != b"\x01CD001":
            raise ValueError("no primary volume descriptor")
        return struct.unpack_from("<I", pvd, 156 + 2)[0], struct.unpack_from("<I", pvd, 156 + 10)[0]

    def find(self, path):
        want = path.replace("\\", "/").strip("/").upper()
        for rec in self.records(*self.root()):
            if rec[0].upper() == want:
                return rec
        raise KeyError(path)

    def used_extents(self):
        out = []
        for _, _, _, ext, sz, _ in self.records(*self.root()):
            out.append((ext, -(-sz // USER)))
        return out

    def rewrite_user(self, lba, patch_fn):
        """Modify the user data of one Form 1 sector and fix its EDC/ECC."""
        sec = np.frombuffer(bytes(self.data[lba * SECTOR:(lba + 1) * SECTOR]), np.uint8).copy()
        user = bytearray(sec[24:24 + USER].tobytes())
        patch_fn(user)
        sec[24:24 + USER] = np.frombuffer(bytes(user), np.uint8)
        self.write_sectors(lba, fix_form1(sec[None, :]))

    def is_raw(self, rec_lba, rec_off):
        """XA attributes say Form 2 or interleaved (stored as raw sectors)."""
        rec = self.user(rec_lba)[rec_off:]
        su = rec[33 + rec[32] + (rec[32] + 1) % 2:rec[0]]
        return len(su) >= 14 and su[6:8] == b"XA" and bool(struct.unpack_from(">H", su, 4)[0] & 0x3000)

    def replace(self, path, data):
        name, rec_lba, rec_off, ext, size, is_dir = self.find(path)
        if is_dir:
            raise ValueError(f"{path} is a directory")
        raw = self.is_raw(rec_lba, rec_off)
        if raw and len(data) % SECTOR:
            raise ValueError(f"{path} is an XA file: give it as raw {SECTOR}-byte sectors")
        to_sectors = raw_sectors if raw else form1_sectors
        old_sectors = -(-size // USER)
        new_sectors = len(data) // SECTOR if raw else -(-len(data) // USER)
        length = new_sectors * USER if raw else len(data)  # raw: 2048 per sector
        if new_sectors <= old_sectors:
            lba = ext
        else:
            # Move it after everything else, keeping the trailing gap.
            last = max(e + n for e, n in self.used_extents())
            tail = self.sectors - last
            lba = last
            gap = np.frombuffer(bytes(self.data[last * SECTOR:]), np.uint8).reshape(-1, SECTOR).copy()
            self.data = self.data[:last * SECTOR]
            self.write_sectors(lba, to_sectors(data, lba))
            end = lba + new_sectors
            for i in range(tail):  # re-address the gap sectors after the file
                gap[i, :16] = np.frombuffer(header(end + i), np.uint8)
            self.write_sectors(end, fix_form1(gap) if tail else gap)
            self.set_volume_size(self.sectors)
        if lba == ext:
            self.write_sectors(lba, to_sectors(data, lba))

        def patch(user):
            struct.pack_into("<I", user, rec_off + 2, lba)
            struct.pack_into(">I", user, rec_off + 6, lba)
            struct.pack_into("<I", user, rec_off + 10, length)
            struct.pack_into(">I", user, rec_off + 14, length)
        self.rewrite_user(rec_lba, patch)
        return name, lba, new_sectors, lba != ext

    def set_volume_size(self, sectors):
        def patch(user):
            struct.pack_into("<I", user, 80, sectors)
            struct.pack_into(">I", user, 84, sectors)
        self.rewrite_user(16, patch)


def verify(track):
    """Recompute EDC/ECC of all Form 1 sectors; return (checked, mismatches)."""
    raw = np.frombuffer(bytes(track.data), np.uint8).reshape(-1, SECTOR)
    form1 = np.where((raw[:, 15] == 2) & ((raw[:, 18] & 0x20) == 0) & (raw[:, :12] == np.frombuffer(SYNC, np.uint8)).all(1))[0]
    bad = 0
    for start in range(0, len(form1), 4096):
        idx = form1[start:start + 4096]
        fixed = fix_form1(raw[idx].copy())
        bad += int((fixed != raw[idx]).any(1).sum())
    return len(form1), bad


def main():
    args = sys.argv[1:]
    if len(args) == 2 and args[0] == "verify":
        checked, bad = verify(Track(Path(args[1]).read_bytes()))
        print(f"{checked} Form 1 sectors, {bad} with EDC/ECC differences")
    elif len(args) >= 5 and args[0] == "replace" and len(args) % 2 == 1:
        track = Track(Path(args[1]).read_bytes())
        for path, src in zip(args[3::2], args[4::2]):
            name, lba, n, moved = track.replace(path, Path(src).read_bytes())
            print(f"{name}: {n} sectors at LBA {lba}{' (moved to the end)' if moved else ''}")
        Path(args[2]).write_bytes(bytes(track.data))
        print(f"{track.sectors} sectors -> {args[2]}")
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main()
