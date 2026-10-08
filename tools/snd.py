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

usage: snd.py <file.snd> <out_dir>                export: names + vagNN.wav
       snd.py import <file.snd> <dir> <out.snd>  replace samples whose
           vagNN.wav in <dir> was edited (16-bit mono; the rate isn't stored,
           keep the exported one). Each new sample keeps the original's loop
           structure (looping or one-shot) and trailing blocks.
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


def encode_vag_blocks(pcm):
    """Encode 16-bit samples as PS-ADPCM blocks (flags left 0); mirrors decode_vag."""
    pcm = list(pcm) + [0] * (-len(pcm) % 28)
    out = bytearray()
    s1 = s2 = 0
    for pos in range(0, len(pcm), 28):
        block = pcm[pos:pos + 28]
        best = None
        for f in range(5):
            f0, f1 = ADPCM_FILTERS[f]
            # pick the shift from the residual of the ideal prediction
            p1, p2, peak = s1, s2, 0
            for x in block:
                peak = max(peak, abs(x - ((p1 * f0 + p2 * f1 + 32) >> 6)))
                p2, p1 = p1, x
            shift = 12
            while shift > 0 and peak > (7 << (12 - shift)):
                shift -= 1
            for sh in {shift, max(0, shift - 1)}:
                a1, a2, err, nib = s1, s2, 0, []
                for x in block:
                    pred = (a1 * f0 + a2 * f1 + 32) >> 6
                    n = ((x - pred) << sh) / 4096
                    n = max(-8, min(7, int(round(n))))
                    y = max(-32768, min(32767, ((n << 12) >> sh) + pred))
                    err += (x - y) ** 2
                    nib.append(n & 0xF)
                    a2, a1 = a1, y
                if best is None or err < best[0]:
                    best = (err, f, sh, nib, a1, a2)
        _, f, sh, nib, s1, s2 = best
        out.append(f << 4 | sh)
        out.append(0)
        out.extend(nib[i] | nib[i + 1] << 4 for i in range(0, 28, 2))
    return out


def encode_like(pcm, original):
    """Encode `pcm` using the loop/end flag layout of the original VAG data."""
    flags = [original[i + 1] for i in range(0, len(original), 16)]
    end = next((i for i, f in enumerate(flags) if f & 1), len(flags) - 1)
    trailer = bytes(original[(end + 1) * 16:])  # e.g. a silent block flagged 7
    blocks = encode_vag_blocks(pcm)
    n = len(blocks) // 16
    looping = flags[end] == 3
    for i in range(n):
        f = 0
        if looping:
            f = 2 if i else 0
            if i == min(1, n - 1):
                f = 6
        if i == n - 1:
            f = 3 if looping else 1
        blocks[i * 16 + 1] = f
    return bytes(blocks) + trailer


def rebuild(data, vags):
    """Return the .snd bytes with its VAG samples replaced by `vags`."""
    o_vh, o_vb = struct.unpack_from("<II", data, 0x18)
    n_progs, n_tones, n_vags = struct.unpack_from("<HHH", data, o_vh + 0x12)
    sizes_at = o_vh + 32 + 128 * 16 + n_progs * 16 * 32
    out = bytearray(data[:o_vb])
    for i, v in enumerate(vags, 1):
        if len(v) % 16:
            raise ValueError("VAG data must be whole 16-byte blocks")
        struct.pack_into("<H", out, sizes_at + i * 2, len(v) // 8)
    body = b"".join(vags)
    struct.pack_into("<I", out, o_vh + 0x0C, (o_vb - o_vh) + len(body))
    return bytes(out) + body


def read_wav(path):
    with wave.open(str(path), "rb") as w:
        if w.getnchannels() != 1 or w.getsampwidth() != 2:
            raise ValueError(f"{path}: needs 16-bit mono")
        frames = w.readframes(w.getnframes())
    return struct.unpack(f"<{len(frames) // 2}h", frames)


def main():
    if len(sys.argv) == 5 and sys.argv[1] == "import":
        data = Path(sys.argv[2]).read_bytes()
        _, _, _, vags = parse(data)
        src = Path(sys.argv[3])
        new, changed = [], 0
        for i, vag in enumerate(vags, 1):
            wav = src / f"vag{i:02d}.wav"
            if wav.exists():
                pcm = read_wav(wav)
                if struct.pack(f"<{len(pcm)}h", *pcm) != decode_vag(vag):
                    vag = encode_like(pcm, vag)
                    changed += 1
            new.append(vag)
        Path(sys.argv[4]).write_bytes(rebuild(data, new))
        print(f"{changed} samples replaced -> {sys.argv[4]}")
        return
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
