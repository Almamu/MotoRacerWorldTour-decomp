#!/usr/bin/env python3
"""Extract the ISO9660 filesystem from a raw MODE2/2352 PS1 data track.

Regular (Form 1) files are written as their 2048-byte user data. Files whose
CD-XA attributes mark them as Form 2 or interleaved (XA audio, STR video) are
written as raw 2352-byte sectors instead, so subheaders and Form 2 payloads
survive. A listing of every entry (LBA, size, XA attributes, how it was
dumped) is written to <out>/files.txt.

usage: extract_iso.py <track01.bin> <out_dir>
"""

import struct
import sys
from pathlib import Path

RAW_SECTOR = 2352
USER_OFFSET = 24  # 12 sync + 4 header + 8 subheader (Mode 2)
FORM1_SIZE = 2048

# CD-XA attribute bits (big-endian u16 in the directory record's system use).
XA_FORM1 = 0x0800
XA_FORM2 = 0x1000
XA_INTERLEAVED = 0x2000
XA_CDDA = 0x4000
XA_DIRECTORY = 0x8000


class Track:
    def __init__(self, path):
        self.data = Path(path).read_bytes()
        if len(self.data) % RAW_SECTOR:
            sys.exit(f"{path}: size is not a multiple of {RAW_SECTOR}")
        self.sectors = len(self.data) // RAW_SECTOR

    def raw(self, lba):
        return self.data[lba * RAW_SECTOR:(lba + 1) * RAW_SECTOR]

    def user(self, lba):
        off = lba * RAW_SECTOR + USER_OFFSET
        return self.data[off:off + FORM1_SIZE]

    def read(self, lba, size):
        count = (size + FORM1_SIZE - 1) // FORM1_SIZE
        return b"".join(self.user(lba + i) for i in range(count))[:size]


def parse_records(buf):
    """Yield directory records from a directory extent."""
    pos = 0
    while pos < len(buf):
        length = buf[pos]
        if length == 0:
            # Records never straddle a sector; skip to the next one.
            pos = (pos // FORM1_SIZE + 1) * FORM1_SIZE
            continue
        rec = buf[pos:pos + length]
        lba = struct.unpack_from("<I", rec, 2)[0]
        size = struct.unpack_from("<I", rec, 10)[0]
        flags = rec[25]
        name_len = rec[32]
        name = rec[33:33 + name_len]
        su = rec[33 + name_len + (1 - name_len % 2):]
        xa = None
        if len(su) >= 14 and su[6:8] == b"XA":
            xa = struct.unpack_from(">H", su, 4)[0]
        yield name, lba, size, flags, xa
        pos += length


def walk(track, lba, size, path, entries):
    for name, rlba, rsize, flags, xa in parse_records(track.read(lba, size)):
        if name in (b"\x00", b"\x01"):
            continue
        name = name.decode("ascii").split(";")[0]
        full = f"{path}/{name}" if path else name
        if flags & 0x02:
            entries.append((full + "/", rlba, rsize, xa, "dir"))
            walk(track, rlba, rsize, full, entries)
        else:
            entries.append((full, rlba, rsize, xa, None))


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    track = Track(sys.argv[1])
    out = Path(sys.argv[2])
    out.mkdir(parents=True, exist_ok=True)

    pvd = track.user(16)
    if pvd[0:6] != b"\x01CD001":
        sys.exit("no primary volume descriptor at LBA 16")
    volume_id = pvd[40:72].decode("ascii").strip()
    root = pvd[156:190]
    root_lba = struct.unpack_from("<I", root, 2)[0]
    root_size = struct.unpack_from("<I", root, 10)[0]

    entries = []
    walk(track, root_lba, root_size, "", entries)

    listing = [f"# volume: {volume_id}, {track.sectors} sectors",
               "# lba      size        xa    mode  path"]
    for full, lba, size, xa, kind in entries:
        if kind == "dir":
            (out / full).mkdir(parents=True, exist_ok=True)
            mode = "dir"
        else:
            dest = out / full
            dest.parent.mkdir(parents=True, exist_ok=True)
            raw = xa is not None and xa & (XA_FORM2 | XA_INTERLEAVED)
            if raw:
                # For raw XA files the record size counts 2048 per sector.
                count = (size + FORM1_SIZE - 1) // FORM1_SIZE
                dest.write_bytes(b"".join(track.raw(lba + i) for i in range(count)))
                mode = "raw"
            else:
                dest.write_bytes(track.read(lba, size))
                mode = "data"
        xa_s = f"{xa:04x}" if xa is not None else "----"
        listing.append(f"{lba:<8d} {size:<11d} {xa_s}  {mode:<5s} {full}")

    (out / "files.txt").write_text("\n".join(listing) + "\n")
    print("\n".join(listing))


if __name__ == "__main__":
    main()
