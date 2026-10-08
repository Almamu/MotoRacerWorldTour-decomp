#!/usr/bin/env python3
"""Convert a .DPS movie (raw 2352-byte sectors) to MP4 with ffmpeg.

DPS is Sony's STR format with a header sector: MDEC video (BS v3 frames,
standard 0x0160/0x8001 STR sector headers) interleaved with XA ADPCM audio
(18.9 kHz stereo). See docs/formats/dps.md.

The file has no frame rate field: frames are paced by the CD stream, which
the player reads at double speed (150 sectors per second). The rate is
150 / (sectors per frame), i.e. 15 fps for LOGODSI.DPS and 25 fps for the
others; ffmpeg's STR demuxer assumes 15 fps, so video timestamps are
rewritten here.

usage: dps.py <file.DPS> <out.mp4>
"""

import struct
import subprocess
import sys
from pathlib import Path

SECTOR = 2352
SECTORS_PER_SECOND = 150  # double-speed CD-ROM


def info(data):
    if data[24:28] != b"DPS\0":
        raise ValueError("not a DPS file")
    width, height = struct.unpack_from("<HH", data, 24 + 0x10)
    last_frame = struct.unpack_from("<I", data, 24 + 0x1C)[0]
    sectors = len(data) // SECTOR
    fps = round(SECTORS_PER_SECOND * (last_frame + 1) / sectors)
    return width, height, last_frame + 1, sectors, fps


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    src, dst = Path(sys.argv[1]), Path(sys.argv[2])
    width, height, frames, sectors, fps = info(src.read_bytes())
    print(f"{src.name}: {width}x{height}, {frames} frames, {sectors} sectors, {fps} fps")
    subprocess.run([
        "ffmpeg", "-nostdin", "-loglevel", "error", "-y",
        "-f", "psxstr", "-i", str(src),
        "-vf", f"setpts=N/({fps}*TB)", "-r", str(fps),
        "-c:v", "libx264", "-pix_fmt", "yuv420p", "-crf", "18",
        "-c:a", "aac", "-ar", "44100", "-b:a", "192k",
        str(dst),
    ], check=True)


if __name__ == "__main__":
    main()
