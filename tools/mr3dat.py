#!/usr/bin/env python3
"""Extract and rebuild MR3.DAT, the game's main data archive.

  mr3dat.py extract <MR3.DAT> <dir>   unpack every entry (LZSS undone) and
                                      write <dir>/manifest.json
  mr3dat.py pack <dir> <MR3.DAT>      rebuild the archive from <dir>

Archive layout (little-endian), see docs/formats/mr3dat.md:
  0x00  u32  entry count
  0x04  u16  flags (0x000F; bit 3: entries sorted by name hash)
  0x06  u16  entry size (0x10)
  0x08  u32  0, 0
  0x10  entry[count], sorted by name_hash: u32 crc, u32 size, u32 offset,
        u32 name_hash
  data: entries 2048-byte aligned, first at 0x1000

name_hash and crc use CRC-32 (reflected, poly 0xEDB88320, init 0, no final
xor); name_hash is taken over the upper-cased path without a leading
backslash, crc over the stored (possibly compressed) bytes.

LZSS entries: "LZSS", u32 unpacked size, then groups of a flag byte (LSB
first; 1 = literal byte, 0 = u16 reference: low 12 bits distance back in the
output, top 4 bits length - 3) ending with a 0x0000 reference.

The manifest keeps the original entry order on disc and whether each entry
was compressed. With the original archive given, `pack` stores an unchanged
entry exactly as it was (byte-identical rebuild) and recompresses edited
ones with the LZSS encoder below; an entry is stored raw instead (which the
loader also accepts) when compressing it doesn't help or wouldn't survive
the game's in-place decompression. New files can be added by appending an
entry with "name", "file" and "lzss" to the manifest. Entries without a known name live
in _unknown/<hash>.<ext> and are packed under their hash.
"""

import hashlib
import json
import re
import struct
import sys
import zlib
from pathlib import Path

NAMES_FILE = Path(__file__).with_name("mr3dat_names.txt")
SECTOR = 0x800
DATA_START = 0x1000
HEADER_FLAGS = 0x000F
ENTRY_SIZE = 0x10


def crc32(data):
    """Reflected CRC-32 (poly 0xEDB88320) with init 0 and no final xor."""
    return zlib.crc32(data, 0xFFFFFFFF) ^ 0xFFFFFFFF


def name_hash(name):
    return crc32(name.lstrip("\\").upper().encode("ascii"))


def load_names():
    names = {}
    for line in NAMES_FILE.read_text().splitlines():
        line = line.strip()
        if line and not line.startswith("#"):
            names[name_hash(line)] = line
    return names


# --- LZSS -----------------------------------------------------------------

def lzss_decompress(src, size):
    out = bytearray()
    i = 0
    while len(out) < size:
        flags = src[i]
        i += 1
        for bit in range(8):
            if len(out) >= size:
                break
            if flags >> bit & 1:
                out.append(src[i])
                i += 1
            else:
                word = src[i] | src[i + 1] << 8
                i += 2
                dist = word & 0xFFF
                for _ in range((word >> 12) + 3):
                    out.append(out[-dist])
    return bytes(out)


MIN_MATCH, MAX_MATCH, WINDOW = 3, 18, 0xFFF


def lzss_compress(data):
    """Greedy LZSS with hash chains; output decodes with lzss_decompress."""
    out = bytearray(b"LZSS" + struct.pack("<I", len(data)))
    head = {}          # 3-byte key -> most recent position
    prev = [-1] * len(data)
    n = len(data)
    pos = 0
    flag_at, bit = None, 8

    def emit(flag_value, payload):
        nonlocal flag_at, bit
        if bit == 8:
            flag_at = len(out)
            out.append(0)
            bit = 0
        if flag_value:
            out[flag_at] |= 1 << bit
        out.extend(payload)
        bit += 1

    def insert(p):
        if p + 2 < n:
            key = data[p:p + 3]
            prev[p] = head.get(key, -1)
            head[key] = p

    while pos < n:
        best_len, best_dist = 0, 0
        if pos + MIN_MATCH <= n:
            cand = head.get(data[pos:pos + 3], -1)
            limit = min(MAX_MATCH, n - pos)
            tries = 64
            while cand >= 0 and pos - cand <= WINDOW and tries:
                length = 3
                while length < limit and data[cand + length] == data[pos + length]:
                    length += 1
                if length > best_len:
                    best_len, best_dist = length, pos - cand
                    if length == limit:
                        break
                cand = prev[cand]
                tries -= 1
        if best_len >= MIN_MATCH:
            emit(False, struct.pack("<H", (best_len - 3) << 12 | best_dist))
            for p in range(pos, pos + best_len):
                insert(p)
            pos += best_len
        else:
            emit(True, data[pos:pos + 1])
            insert(pos)
            pos += 1
    emit(False, b"\x00\x00")  # end marker: a reference with distance 0
    return bytes(out)


IN_PLACE_SLACK = 0x1400


def in_place_margin(stored):
    """How far the decompressor's write position stays behind its read position.

    The game (0x80135610 in SCES_030.37) copies the packed entry to
    dest + unpacked - packed + 0x1400 and decompresses it from there into
    dest, so writing must never catch up with reading. Returns the smallest
    gap in bytes (must be > 0)."""
    size = struct.unpack_from("<I", stored, 4)[0]
    src = stored[8:]
    base = size - len(stored) + IN_PLACE_SLACK + 8
    i = o = 0
    gap = None
    while o < size:
        flags = src[i]
        i += 1
        for bit in range(8):
            if o >= size:
                break
            g = base + i - o
            gap = g if gap is None else min(gap, g)
            if flags >> bit & 1:
                i += 1
                o += 1
            else:
                word = src[i] | src[i + 1] << 8
                i += 2
                o += (word >> 12) + 3
    return gap if gap is not None else base


# --- extract / pack --------------------------------------------------------

def guess_ext(data):
    magic = data[:4]
    if magic.isalnum() and magic.isascii():
        return magic.decode().lower()
    return "bin"


def content_hint(data):
    m = re.search(rb"(?i)data\\[A-Za-z0-9_\\. ]+", data)
    return m.group().decode() if m else ""


def entry_path(name, nhash, ext):
    if name:
        # The game ignores case; lower-case directories so they merge on disk.
        *dirs, base = name.split("\\")
        return Path(*(d.lower() for d in dirs), base)
    return Path("_unknown", f"{nhash:08x}.{ext}")


def extract(archive, out):
    data = archive.read_bytes()
    out.mkdir(parents=True, exist_ok=True)
    names = load_names()
    count = struct.unpack_from("<I", data, 0)[0]
    entries = []
    for idx in range(count):
        crc, size, offset, nhash = struct.unpack_from("<4I", data, 0x10 + idx * 16)
        stored = data[offset:offset + size]
        if crc32(stored) != crc:
            print(f"warning: CRC mismatch for entry {idx} ({nhash:08x})")
        packed = stored[:4] == b"LZSS"
        blob = lzss_decompress(stored[8:], struct.unpack_from("<I", stored, 4)[0]) if packed else stored
        name = names.get(nhash)
        rel = entry_path(name, nhash, guess_ext(blob))
        (out / rel).parent.mkdir(parents=True, exist_ok=True)
        (out / rel).write_bytes(blob)
        entries.append({
            "name": name, "hash": f"{nhash:08x}", "file": rel.as_posix(),
            "offset": offset, "lzss": packed,
            "sha1": hashlib.sha1(blob).hexdigest(),
            "stored_sha1": hashlib.sha1(stored).hexdigest(),
            "hint": None if name else (content_hint(blob) or None),
        })
    manifest = {"archive": archive.name, "size": len(data), "entries": entries}
    (out / "manifest.json").write_text(json.dumps(manifest, indent=1))
    print(f"{count} entries, {sum(1 for e in entries if e['name'])} named -> {out}")


def pack(src, archive, original=None):
    """Rebuild the archive. Unchanged entries are copied from the original
    archive (if given, else re-read from the manifest's source) byte for byte."""
    manifest = json.loads((src / "manifest.json").read_text())
    entries = manifest["entries"]
    orig = original.read_bytes() if original else None
    orig_table = {}
    if orig:
        for idx in range(struct.unpack_from("<I", orig, 0)[0]):
            crc, size, offset, nhash = struct.unpack_from("<4I", orig, 0x10 + idx * 16)
            orig_table[nhash] = orig[offset:offset + size]

    # Data in the original on-disc order; the table is sorted by hash.
    order = sorted(entries, key=lambda e: e.get("offset", 1 << 62))
    body = bytearray()
    table = []
    changed = 0
    for e in order:
        nhash = int(e["hash"], 16) if not e["name"] else name_hash(e["name"])
        blob = (src / e["file"]).read_bytes()
        prev = orig_table.get(nhash)
        if prev is not None and hashlib.sha1(blob).hexdigest() == e.get("sha1") \
                and hashlib.sha1(prev).hexdigest() == e.get("stored_sha1"):
            stored = prev
        else:
            stored = blob
            if e.get("lzss") and blob[:4] != b"LZSS":
                packed = lzss_compress(blob)
                # The loader also takes uncompressed entries: keep the data raw
                # when compression doesn't pay off or isn't safe in place.
                if len(packed) < len(blob) and in_place_margin(packed) > 0:
                    stored = packed
            changed += 1
        offset = DATA_START + len(body)
        body.extend(stored)
        body.extend(b"\0" * (-len(body) % SECTOR))
        table.append((nhash, crc32(stored), len(stored), offset))
    # The original archive isn't padded after the last entry.
    last_len = table[-1][2] if table else 0
    end = table[-1][3] + last_len - DATA_START if table else 0
    body = body[:end]

    table.sort()
    header = bytearray(DATA_START)
    struct.pack_into("<IHHII", header, 0, len(table), HEADER_FLAGS, ENTRY_SIZE, 0, 0)
    for i, (nhash, crc, size, offset) in enumerate(table):
        struct.pack_into("<4I", header, 0x10 + i * 16, crc, size, offset, nhash)
    archive.write_bytes(bytes(header) + bytes(body))
    print(f"{len(table)} entries ({changed} rebuilt) -> {archive}, {len(header) + len(body)} bytes")


def main():
    args = sys.argv[1:]
    if len(args) == 3 and args[0] == "extract":
        extract(Path(args[1]), Path(args[2]))
    elif len(args) in (3, 4) and args[0] == "pack":
        pack(Path(args[1]), Path(args[2]), Path(args[3]) if len(args) == 4 else None)
    else:
        sys.exit(__doc__ + "\n  mr3dat.py pack <dir> <out.DAT> [original MR3.DAT]  (reuse unchanged entries)\n")


if __name__ == "__main__":
    main()
