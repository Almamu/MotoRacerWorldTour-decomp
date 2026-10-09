#!/usr/bin/env python3
"""Convert .DPS movies (raw 2352-byte sectors) to MP4 and back.

DPS is Sony's STR format with a header sector: MDEC video (BS v3 frames,
standard 0x0160/0x8001 STR sector headers) interleaved with XA ADPCM audio
(18.9 kHz stereo, one audio sector in 16). See docs/formats/dps.md.

The file has no frame rate field: frames are paced by the CD stream, which
the player reads at double speed (150 sectors per second, 140.625 of them
video), so the rate is 140.625 / (video sectors per frame): 25 fps for
INTRO.DPS and MR3GEN.DPS (5.625 sectors per frame), 16.67 fps for
LOGODSI.DPS (8.4375). ffmpeg's STR demuxer assumes 15 fps, so video
timestamps are rewritten here.

usage: dps.py <file.DPS> <out.mp4>                      decode (ffmpeg)
       dps.py encode <video> <original.DPS> <out.DPS>   encode any video
           ffmpeg can read (scaled to the original size, resampled to its
           frame rate; audio to 18.9 kHz stereo). Each frame gets the
           lowest qscale that fits its sectors. The length may differ
           from the original's.
       dps.py remux <file.DPS> <out.DPS>                rebuild from the
           decoded frame and audio data (a muxer self-test: identical
           output)

The .DPS written here has sector headers for LBA 0; tools/disc.py replace
re-addresses the sectors when it puts the file on the disc.
"""

import os
import struct
import subprocess
import sys
from fractions import Fraction
from multiprocessing import Pool
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
import bs  # noqa: E402
import disc  # noqa: E402

SECTOR = 2352
SECTORS_PER_SECOND = 150  # double-speed CD-ROM
AUDIO_EVERY = 16          # one XA sector in 16 (18.9 kHz stereo at 2x speed)
LEAD = 5                  # header sector + 4 padding sectors
TRAILER = 10              # "END" sectors, the last one flagged end-of-file
STR_HEADER = 32
VIDEO_PAYLOAD = 2048 - STR_HEADER
XA_GROUPS = 18            # sound groups per audio sector (128 bytes each)
XA_SAMPLES = XA_GROUPS * 4 * 28  # per channel per audio sector (2016)
XA_RATE = 18900
XA_FILTERS = [(0, 0), (60, 0), (115, -52), (98, -55)]

SUB_VIDEO = bytes([1, 1, 0x48, 0])
SUB_AUDIO = bytes([1, 1, 0x64, 5])
SUB_EMPTY = bytes([1, 0, 0, 0])


# --- container -----------------------------------------------------------------

def parse(data):
    """Split a .DPS into its parts: lead/trailer sectors, frame bitstreams
    (frame numbers start at 1), XA sector payloads and the frame rate."""
    if data[24:28] != b"DPS\0":
        raise ValueError("not a DPS file")
    raw = [data[i:i + SECTOR] for i in range(0, len(data), SECTOR)]
    width, height = struct.unpack_from("<HH", data, 24 + 0x10)
    chunks, audio, video_sectors = {}, [], 0
    for s in raw[LEAD:-TRAILER]:
        if s[18] == 0x64:
            audio.append(s[24:24 + 2324])
        elif s[18] == 0x48 and s[24:28] == b"\x60\x01\x01\x80":
            k, n, fn, size = struct.unpack_from("<HHII", s, 24 + 4)
            chunks.setdefault(fn, [size, {}])[1][k] = s[24 + STR_HEADER:24 + 2048]
            video_sectors += 1
    frames = [b"".join(c[1][k] for k in sorted(c[1]))[:c[0]] for _, c in sorted(chunks.items())]
    # Sectors per frame follow a 1/16-sector pattern (45/8, 135/16).
    spf = Fraction(round(video_sectors * 16 / len(frames)), 16)
    return {"width": width, "height": height, "frames": frames, "audio": audio, "spf": spf,
            "lead": raw[:LEAD], "trailer": raw[-TRAILER:]}


def fps(spf):
    return Fraction(SECTORS_PER_SECOND * (AUDIO_EVERY - 1), AUDIO_EVERY) / spf


def frame_sectors(spf, count):
    """Video sectors given to each frame: 6,6,5,6,6,5,6,5... for 45/8."""
    edge = [-(-i * spf // 1) for i in range(count + 1)]
    return [b - a for a, b in zip(edge, edge[1:])]


def _sector(sub, user):
    s = bytearray(SECTOR)
    s[:16] = disc.header(0)
    s[16:20] = s[20:24] = sub
    s[24:24 + len(user)] = user
    return s


def build(parts, frames, audio, lba=0):
    """Interleave frame bitstreams and XA payloads like the originals:
    audio in every 16th stream sector, video in the others (each frame in
    its share of sectors), empty sectors once a stream has ended, then the
    trailer at the next audio slot."""
    w, h = parts["width"], parts["height"]
    counts = frame_sectors(parts["spf"], len(frames))
    video = []
    for fn, (bits, n) in enumerate(zip(frames, counts), 1):
        if len(bits) > n * VIDEO_PAYLOAD:
            raise ValueError(f"frame {fn}: {len(bits)} bytes don't fit {n} sectors")
        head = struct.pack("<HHHHIIHH", 0x0160, 0x8001, 0, n, fn, len(bits), w, h) + bits[:8] + bytes(4)
        for k in range(n):
            head = head[:4] + struct.pack("<H", k) + head[6:]
            video.append(head + bits[k * VIDEO_PAYLOAD:(k + 1) * VIDEO_PAYLOAD])
    out = []
    lead = [bytearray(s) for s in parts["lead"]]
    struct.pack_into("<HH", lead[0], 24 + 0x10, w, h)
    struct.pack_into("<I", lead[0], 24 + 0x1C, len(frames))
    out += lead
    vi = ai = 0
    p = 0
    while vi < len(video) or ai < len(audio) or p % AUDIO_EVERY != AUDIO_EVERY - 1:
        if p % AUDIO_EVERY == AUDIO_EVERY - 1 and ai < len(audio):
            out.append(_sector(SUB_AUDIO, audio[ai]))
            ai += 1
        elif vi < len(video):
            out.append(_sector(SUB_VIDEO, video[vi]))
            vi += 1
        else:
            out.append(_sector(SUB_EMPTY, b""))
        p += 1
    out += parts["trailer"]
    return disc.raw_sectors(b"".join(bytes(s) for s in out), lba).tobytes()


# --- BS v3 frames -------------------------------------------------------------
#
# Like the v2 frames of the loading screens (tools/bs.py), except for the
# DC coefficients: each one is coded as the difference to the previous
# block's of the same kind (Cr, Cb, Y; starting at 0), in units of 4, with
# the MPEG-1 DC size codes, and the frame ends with ten 1 bits.

DC_LUMA = ["100", "00", "01", "101", "110", "1110", "11110", "111110", "1111110"]
DC_CHROMA = ["00", "01", "10", "110", "1110", "11110", "111110", "1111110", "11111110"]
_DC_DECODE = [{c: n for n, c in enumerate(t)} for t in (DC_LUMA, DC_CHROMA)]


def decode_frame(data, width, height):
    """Decode a BS v3 frame to RGB (for tests; the MP4 export uses ffmpeg)."""
    _, magic, qscale, version = struct.unpack_from("<4H", data)
    if magic != 0x3800 or version != 3:
        raise ValueError(f"not a BS v3 frame ({magic:04x} v{version})")
    br = bs.BitReader(data[8:])
    pred = [0, 0, 0]  # Cr, Cb, Y

    def block(kind):
        table = _DC_DECODE[kind < 2]
        size = next(table[c] for n in range(2, 9) if (c := br.bits[br.pos:br.pos + n]) in table)
        br.pos += len(DC_CHROMA[size] if kind < 2 else DC_LUMA[size])
        diff = int(br.read(size), 2) if size else 0
        if size and diff < 1 << (size - 1):
            diff -= (1 << size) - 1
        pred[kind] += diff * 4
        coeffs = np.zeros(64)
        coeffs[0] = pred[kind] * bs.QUANT[0]
        i = 0
        while (sym := br.vlc()) != bs.EOB:
            if sym == bs.ESCAPE:
                run, level = int(br.read(6), 2), br.signed(10)
            else:
                run, level = sym
                if br.read(1) == "1":
                    level = -level
            i += run + 1
            coeffs[bs.ZIGZAG[i]] = level * qscale * bs.QUANT[bs.ZIGZAG[i]] / 8
        return bs._C.T @ coeffs.reshape(8, 8) @ bs._C

    rgb = np.zeros((height, width, 3))
    for mx in range(0, width, 16):
        for my in range(0, height, 16):
            cr, cb = block(0), block(1)
            y = np.zeros((16, 16))
            for k in range(4):
                y[(k >> 1) * 8:(k >> 1) * 8 + 8, (k & 1) * 8:(k & 1) * 8 + 8] = block(2)
            cr = cr.repeat(2, 0).repeat(2, 1)
            cb = cb.repeat(2, 0).repeat(2, 1)
            y = y + 128
            rgb[my:my + 16, mx:mx + 16] = np.stack(
                [y + 1.402 * cr, y - 0.344136 * cb - 0.714136 * cr, y + 1.772 * cb], -1)
    return np.clip(np.rint(rgb), 0, 255).astype(np.uint8)


_ZZ = np.array(bs.ZIGZAG)
_QZ = np.array(bs.QUANT, float)[_ZZ]
_AC = {k: v + "0" for k, v in bs.CODES.items()}
_AC.update({(r, -l): v + "1" for (r, l), v in bs.CODES.items()})


def frame_coefficients(rgb):
    """DCT coefficients in zigzag order, (macroblocks, 6 blocks, 64); the
    macroblocks run top to bottom, then left to right; blocks Cr, Cb, Y0-Y3."""
    h, w = rgb.shape[:2]
    img = rgb.astype(np.float64)
    y = 0.299 * img[..., 0] + 0.587 * img[..., 1] + 0.114 * img[..., 2]
    cb = (img[..., 2] - y) / 1.772
    cr = (img[..., 0] - y) / 1.402
    mby, mbx = h // 16, w // 16

    def mbs(c, size):  # (mbx, mby, size, size) in stream order
        return c.reshape(mby, size, mbx, size).transpose(2, 0, 1, 3)

    sub = lambda c: c.reshape(h // 2, 2, w // 2, 2).mean((1, 3))
    yb = mbs(y - 128, 16).reshape(mbx, mby, 2, 8, 2, 8).transpose(0, 1, 2, 4, 3, 5).reshape(mbx, mby, 4, 8, 8)
    blocks = np.concatenate([mbs(sub(cr), 8)[:, :, None], mbs(sub(cb), 8)[:, :, None], yb], 2)
    blocks = blocks.reshape(-1, 6, 8, 8)
    coeffs = np.einsum("ij,nbjk,lk->nbil", bs._C, blocks, bs._C).reshape(-1, 6, 64)
    return coeffs[:, :, _ZZ]


def _dc_bits(diff, table):
    size = abs(diff).bit_length()
    if not size:
        return table[0]
    return table[size] + format(diff if diff > 0 else diff + (1 << size) - 1, f"0{size}b")


def encode_frame(coeffs, qscale):
    """Encode zigzagged coefficients (frame_coefficients) as a BS v3 frame."""
    dc = np.clip(np.rint(coeffs[:, :, 0] / (bs.QUANT[0] * 4)), -128, 127).astype(int)
    ac = np.clip(np.rint(coeffs[:, :, 1:] * 8 / (qscale * _QZ[1:])), -512, 511).astype(int)
    out = []
    codes = 0
    pred = [0, 0, 0]
    for mb in range(len(coeffs)):
        for b in range(6):
            kind = min(b, 2)
            out.append(_dc_bits(int(dc[mb, b]) - pred[kind], DC_CHROMA if b < 2 else DC_LUMA))
            pred[kind] = int(dc[mb, b])
            row = ac[mb, b]
            nz = np.flatnonzero(row)
            last = -1
            for i in nz.tolist():
                level = int(row[i])
                run = i - last - 1
                last = i
                code = _AC.get((run, level))
                out.append(code if code else "000001" + format(run, "06b") + format(level & 0x3FF, "010b"))
            out.append("10")
            codes += len(nz) + 2
    out.append("1" * 10)  # end of frame
    bits = "".join(out)
    bits += "0" * (-len(bits) % 16)
    stream = int(bits, 2).to_bytes(len(bits) // 8, "big") if bits else b""
    stream = b"".join(stream[i:i + 2][::-1] for i in range(0, len(stream), 2))
    words = -(-((codes + 1) // 2) // 32) * 32
    # The originals pad with 8 zero bytes, then to 4 bytes.
    body = struct.pack("<4H", words, 0x3800, qscale, 3) + stream + bytes(8)
    return body + bytes(-len(body) % 4)


def encode_fitting(job):
    """(rgb, limit) -> the best-quality frame that fits `limit` bytes."""
    rgb, limit = job
    coeffs = frame_coefficients(rgb)
    for qscale in range(1, 64):
        data = encode_frame(coeffs, qscale)
        if len(data) <= limit:
            return data
    raise ValueError("frame doesn't fit even at qscale 63")


# --- XA ADPCM -----------------------------------------------------------------
#
# 18 sound groups of 128 bytes per sector (+20 zero bytes): a 16-byte header
# (parameters of units 0-3, again, of units 4-7, again; filter << 4 | shift)
# and 28 words of 4 bytes, one sample of every unit: byte k holds unit 2k in
# its low nibble and 2k+1 in its high one. Even units are the left channel,
# odd units the right; unit u covers samples (u >> 1) * 28 .. +28 of the
# group's 112 per channel.

def xa_decode(payloads):
    """XA sector payloads -> (n, 2) int16 samples (for tests)."""
    out = []
    s = [[0, 0], [0, 0]]
    for p in payloads:
        for g in range(XA_GROUPS):
            grp = p[g * 128:(g + 1) * 128]
            params = list(grp[0:4]) + list(grp[8:12])
            pcm = np.zeros((112, 2), int)
            for u in range(8):
                ch, blk = u & 1, u >> 1
                shift, filt = params[u] & 0xF, params[u] >> 4 & 3
                k0, k1 = XA_FILTERS[filt]
                s1, s2 = s[ch]
                for j in range(28):
                    nib = grp[16 + 4 * j + blk] >> (4 * ch) & 0xF
                    t = ((nib - 16 if nib >= 8 else nib) << 12) >> shift
                    v = max(-32768, min(32767, t + ((s1 * k0 + s2 * k1 + 32) >> 6)))
                    pcm[blk * 28 + j, ch] = v
                    s2, s1 = s1, v
                s[ch] = [s1, s2]
            out.append(pcm)
    return np.concatenate(out).astype(np.int16)


def xa_encode(pcm):
    """(n, 2) int16 samples -> XA sector payloads (2324 bytes each). Every
    28-sample unit tries all 4 filters and 13 shifts and keeps the one with
    the smallest error (both channels at once)."""
    pcm = np.asarray(pcm, np.int64)
    pcm = np.concatenate([pcm, np.zeros((-len(pcm) % XA_SAMPLES, 2), np.int64)])
    filt = np.repeat(np.arange(4), 13)
    shift = np.tile(np.arange(13), 4)
    k0 = np.array([XA_FILTERS[f][0] for f in filt])
    k1 = np.array([XA_FILTERS[f][1] for f in filt])
    s1 = np.zeros((2, 1), np.int64)
    s2 = np.zeros((2, 1), np.int64)
    payloads = []
    for sec in range(len(pcm) // XA_SAMPLES):
        payload = bytearray(2324)
        for g in range(XA_GROUPS):
            grp = payload[g * 128:(g + 1) * 128]
            base = sec * XA_SAMPLES + g * 112
            for blk in range(4):
                x = pcm[base + blk * 28:base + blk * 28 + 28].T  # (2, 28)
                a1 = np.repeat(s1, 52, 1)
                a2 = np.repeat(s2, 52, 1)
                err = np.zeros((2, 52), np.int64)
                nib = np.zeros((2, 52, 28), np.int64)
                for j in range(28):
                    pred = (a1 * k0 + a2 * k1 + 32) >> 6
                    d = x[:, j:j + 1] - pred
                    n = np.clip(np.rint(d * (1 << shift) / 4096), -8, 7).astype(np.int64)
                    v = np.clip(((n << 12) >> shift) + pred, -32768, 32767)
                    err += (x[:, j:j + 1] - v) ** 2
                    nib[:, :, j] = n & 0xF
                    a2, a1 = a1, v
                best = err.argmin(1)
                for ch in range(2):
                    c = best[ch]
                    u = blk * 2 + ch
                    param = filt[c] << 4 | shift[c]
                    at = u if u < 4 else u + 4
                    grp[at] = grp[at + 4] = param
                    for j in range(28):
                        grp[16 + 4 * j + blk] |= int(nib[ch, c, j]) << (4 * ch)
                    s1[ch, 0], s2[ch, 0] = a1[ch, c], a2[ch, c]
            payload[g * 128:(g + 1) * 128] = grp
        payloads.append(bytes(payload))
    return payloads


# --- commands -----------------------------------------------------------------

def to_mp4(src, dst):
    parts = parse(Path(src).read_bytes())
    rate = fps(parts["spf"])
    print(f"{Path(src).name}: {parts['width']}x{parts['height']}, {len(parts['frames'])} frames, "
          f"{float(rate):.2f} fps, {len(parts['audio']) * XA_SAMPLES / XA_RATE:.1f} s of audio")
    subprocess.run([
        "ffmpeg", "-nostdin", "-loglevel", "error", "-y",
        "-f", "psxstr", "-i", str(src),
        "-vf", f"setpts=N/({rate}*TB)", "-r", str(rate),
        "-c:v", "libx264", "-pix_fmt", "yuv420p", "-crf", "18",
        "-c:a", "aac", "-ar", "44100", "-b:a", "192k",
        str(dst),
    ], check=True)


def encode(video, original, dst):
    parts = parse(Path(original).read_bytes())
    w, h, rate = parts["width"], parts["height"], fps(parts["spf"])
    raw = subprocess.run([
        "ffmpeg", "-nostdin", "-loglevel", "error", "-i", str(video),
        "-vf", f"scale={w}:{h},fps={rate}", "-pix_fmt", "rgb24", "-f", "rawvideo", "-"],
        check=True, stdout=subprocess.PIPE).stdout
    rgb = np.frombuffer(raw, np.uint8).reshape(-1, h, w, 3)
    pcm = subprocess.run([
        "ffmpeg", "-nostdin", "-loglevel", "error", "-i", str(video), "-vn",
        "-ac", "2", "-ar", str(XA_RATE), "-f", "s16le", "-"],
        check=True, stdout=subprocess.PIPE).stdout
    pcm = np.frombuffer(pcm, "<i2").reshape(-1, 2)
    limits = [n * VIDEO_PAYLOAD for n in frame_sectors(parts["spf"], len(rgb))]
    with Pool(os.cpu_count()) as pool:
        frames = pool.map(encode_fitting, zip(rgb, limits), chunksize=4)
    audio = xa_encode(pcm)
    data = build(parts, frames, audio)
    Path(dst).write_bytes(data)
    q = [struct.unpack_from("<H", f, 4)[0] for f in frames]
    print(f"{dst}: {len(frames)} frames ({float(rate):.2f} fps, qscale {min(q)}-{max(q)}), "
          f"{len(audio)} audio sectors, {len(data) // SECTOR} sectors")


def main():
    args = sys.argv[1:]
    if len(args) == 4 and args[0] == "encode":
        encode(*args[1:])
    elif len(args) == 3 and args[0] == "remux":
        parts = parse(Path(args[1]).read_bytes())
        Path(args[2]).write_bytes(build(parts, parts["frames"], parts["audio"]))
    elif len(args) == 2:
        to_mp4(*args)
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main()
