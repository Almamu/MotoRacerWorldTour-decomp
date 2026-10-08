# .DPS (FMV)

The three movies in `CINE/` are Sony STR streams (MDEC video interleaved
with XA ADPCM audio) with one extra header sector. Tool: `tools/dps.py`
(converts to MP4 with ffmpeg).

| File          | Contents             | Size    | Frames | Rate   | Length  |
|---------------|----------------------|---------|--------|--------|---------|
| `LOGODSI.DPS` | Delphine logo        | 320x256 | 391    | 15 fps | 26 s    |
| `INTRO.DPS`   | Intro                | 320x240 | 854    | 25 fps | 34.6 s  |
| `MR3GEN.DPS`  | End credits          | 320x240 | 2706   | 25 fps | 108 s   |

The files are stored as XA Form 2 interleaved, so they have to be read as
raw 2352-byte sectors (`tools/extract_iso.py` does this).

## Sectors

Sector types, by the XA subheader (`file, channel, submode, coding`):

| Submode | Coding | What                                                     |
|---------|--------|----------------------------------------------------------|
| 0x48    | 0x80   | first sector: DPS header                                 |
| 0x40    | 0x80   | padding before the stream                                |
| 0x48    | 0x00   | video (Form 1 data, real-time)                           |
| 0x64    | 0x05   | audio: XA ADPCM, 18.9 kHz, stereo, 4-bit                 |
| 0x00    | 0x00   | (channel 0) padding at the end                           |
| 0xC8    | 0x80   | last sector: `60 01 01 80`, then `END`                   |

## Header sector (user data)

| Offset | Type    | Meaning                     |
|--------|---------|-----------------------------|
| 0x00   | char[4] | `DPS\0`                     |
| 0x10   | u16     | width                       |
| 0x12   | u16     | height                      |
| 0x1C   | u32     | index of the last frame     |

There is no frame-rate field. The player (in `SCES_030.37`, see the
"`%s is not Dps File`" and "`Not Str Header`" messages) reads the stream at
double CD speed, 150 sectors per second, so the rate follows from the
interleave: 150 / (sectors per frame), i.e. about 10 sectors per frame for
15 fps and 6 for 25 fps. The audio length (sectors × 2016 samples / 18900)
matches the video length at those rates.

## Video sectors

Standard STR sectors: user data starts with the 32-byte STR header
(`u16 0x0160, u16 0x8001, u16 sector in frame, u16 sectors in frame,
u32 frame number, u32 frame data size, u16 width, u16 height, …`), followed
by the frame's MDEC data. Frames are **BS version 3** (DC coefficients are
coded differentially, unlike the version 2 still images in `MR3.DAT`, see
[bs.md](bs.md)).

ffmpeg's `psxstr` demuxer and `mdec`/`adpcm_xa` decoders read the files
when forced with `-f psxstr` (it warns about the header sectors). It assumes
15 fps, so `dps.py` rewrites the video timestamps with the rate computed
above.
