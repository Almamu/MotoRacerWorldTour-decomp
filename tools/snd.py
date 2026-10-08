#!/usr/bin/env python3
"""Dump a .snd sound bank: its sound names and every VAG sample as WAV.

Layout (little-endian):
  0x00  u16  0x0380
  0x02  u16  ? (count; names + 1)
  0x04  u32  name count
  0x08  u32  group count
  0x0C  u32  ? table offset
  0x10  u32  name table offset: char name[32], u32 index
  0x14  u32  group table offset (char name[32] each, e.g. "effects", "special")
  0x18  u32  VAB header offset ("pBAV" v5: 32-byte header, 128 program
             attributes, 16 tone attributes per program, 256 u16 VAG sizes/8)
  0x1C  u32  VAB body offset (concatenated PS-ADPCM VAG samples)

usage: snd.py <file.snd> <out_dir>
"""

import struct
import sys
import wave
from pathlib import Path

ADPCM_FILTERS = [(0, 0), (60, 0), (115, -52), (98, -55), (122, -60)]
SAMPLE_RATE = 44100  # SPU pitch 0x1000; actual playback depends on the tone's centre note


def decode_vag(data):
    """Decode raw PS-ADPCM blocks (16 bytes -> 28 samples) to 16-bit PCM."""
    out = []
    s1 = s2 = 0
    for pos in range(0, len(data) - 15, 16):
        shift_filter, flags = data[pos], data[pos + 1]
        shift = shift_filter & 0xF
        f0, f1 = ADPCM_FILTERS[min(shift_filter >> 4, 4)]
        for byte in data[pos + 2:pos + 16]:
            for nibble in (byte & 0xF, byte >> 4):
                s = (nibble - 16 if nibble >= 8 else nibble) << 12
                s = (s >> shift) + ((s1 * f0 + s2 * f1 + 32) >> 6)
                s = max(-32768, min(32767, s))
                out.append(s)
                s2, s1 = s1, s
        if flags & 1:  # loop end / sample end
            break
    return struct.pack(f"<{len(out)}h", *out)


def parse(data):
    _, _, n_names, n_groups, _, o_names, o_groups, o_vh, o_vb = struct.unpack_from("<HHIIIIIII", data)
    names = []
    for i in range(n_names):
        raw, idx = struct.unpack_from("<32sI", data, o_names + i * 36)
        names.append((idx, raw.split(b"\0")[0].decode("latin-1")))
    groups = [data[o_groups + i * 32:o_groups + i * 32 + 32].split(b"\0")[0].decode("latin-1")
              for i in range(n_groups)]
    if data[o_vh:o_vh + 4] != b"pBAV":
        raise ValueError("no VAB header")
    n_progs, n_tones, n_vags = struct.unpack_from("<HHH", data, o_vh + 0x12)
    sizes_at = o_vh + 32 + 128 * 16 + n_progs * 16 * 32
    sizes = [s * 8 for s in struct.unpack_from("<256H", data, sizes_at)]
    vags = []
    pos = o_vb
    # Entry 0 of the size table is unused; VAGs are numbered from 1.
    for i in range(1, n_vags + 1):
        vags.append(data[pos:pos + sizes[i]])
        pos += sizes[i]
    return names, groups, (n_progs, n_tones, n_vags), vags


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    names, groups, counts, vags = parse(Path(sys.argv[1]).read_bytes())
    out = Path(sys.argv[2])
    out.mkdir(parents=True, exist_ok=True)
    print(f"groups {groups}, programs/tones/vags {counts}")
    print("names", ", ".join(f"{i}:{n}" for i, n in names))
    for i, vag in enumerate(vags, 1):
        with wave.open(str(out / f"vag{i:02d}.wav"), "wb") as w:
            w.setnchannels(1)
            w.setsampwidth(2)
            w.setframerate(SAMPLE_RATE)
            w.writeframes(decode_vag(vag))


if __name__ == "__main__":
    main()
