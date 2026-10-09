# .DPS (FMV)

The three movies in `CINE/` are Sony STR streams (MDEC video interleaved
with XA ADPCM audio) with one extra header sector. Tool: `tools/dps.py`
(converts to MP4 with ffmpeg, and encodes any video back into a .DPS;
`tools/workspace.py` unpacks them to `assets/cine/*.mp4`).

| File          | Contents             | Size    | Frames | Rate   | Length  |
|---------------|----------------------|---------|--------|--------|---------|
| `LOGODSI.DPS` | Delphine logo        | 320x256 | 390    | 16.67 fps | 23.4 s (audio 25.9 s) |
| `INTRO.DPS`   | Intro                | 320x240 | 853    | 25 fps | 34.1 s (audio 34.6 s) |
| `MR3GEN.DPS`  | End credits          | 320x240 | 2705   | 25 fps | 108 s   |

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
| 0x1C   | u32     | number of frames (frames are numbered from 1) |

The rest of the sector is zero. There is no frame-rate field. The player
(in `SCES_030.37`, see the "`%s is not Dps File`" and "`Not Str Header`"
messages) reads the stream at double CD speed, 150 sectors per second, 15
of every 16 of them video, so the rate is 140.625 / (video sectors per
frame): 5.625 (45/8) for 25 fps, 8.4375 (135/16) for 16.67 fps. Checked in
the emulator with a test movie that changes colour every second of video:
LOGODSI.DPS plays at 16.67 fps, not 15.

## Layout

| Sectors | What |
|---------|------|
| 1 | header (above), subheader `01 01 48 80` |
| 4 | padding, subheader `01 01 40 80`, zero data |
| …  | the stream: sector *p* (counting from the first one after the padding) is audio when *p* mod 16 = 15, as long as there is audio left; the others carry video while there is video left; then empty sectors (`01 00 00 00`, zero data) up to the next *p* mod 16 = 15 |
| 10 | trailer: subheader `01 01 48 80` (the last one `01 01 C8 80`, end of file), data `60 01 01 80`, 12 zero bytes, `END` |

Frame *i* (from 0) gets video sectors ⌈*i*·*s*⌉ … ⌈(*i*+1)·*s*⌉ for *s*
sectors per frame (6, 6, 5, 6, 6, 5, 6, 5, … for 45/8). Audio and video
can end at different times (INTRO's audio runs on 0.5 s, LOGODSI's 2.5 s).
Video and padding sectors are Form 1 (EDC/ECC), audio sectors Form 2 with
an EDC. `dps.py remux` rebuilds all three movies byte for byte from these
rules and the decoded frame/audio data.

## Video sectors

Standard STR sectors: user data starts with the 32-byte STR header
(`u16 0x0160, u16 0x8001, u16 sector in frame, u16 sectors in frame,
u32 frame number, u32 frame data size, u16 width, u16 height, …`), followed
by the frame's MDEC data. Bytes 0x14-0x1B of the STR header repeat the
frame's first 8 bytes (its BS header), 0x1C-0x1F are zero. The last sector
of a frame is zero-padded.

Frames are **BS version 3**: header `u16 MDEC words` (the run/level codes
it decodes to, halved and rounded up to 32, like v2), `0x3800`,
`u16 qscale`, `u16 3`; then the bitstream (16-bit little-endian words, MSB
first), macroblocks top to bottom, then left to right, blocks Cr, Cb, Y0–Y3.
AC coefficients are coded as in the v2 still images ([bs.md](bs.md)); the
DC coefficient is the difference to the previous block of the same kind
(Cr, Cb or Y, starting from 0 for each frame), in units of 4, coded as an
MPEG-1 DC size code followed by that many bits (a leading 0 bit means
negative: value − (2^size − 1)):

| size | luma (Y) | chroma (Cr, Cb) |
|------|----------|-----------------|
| 0 | `100` | `00` |
| 1 | `00` | `01` |
| 2 | `01` | `10` |
| 3 | `101` | `110` |
| 4 | `110` | `1110` |
| 5 | `1110` | `11110` |
| 6 | `11110` | `111110` |
| 7 | `111110` | `1111110` |
| 8 | `1111110` | `11111110` |

After the last block come ten 1 bits, then the bitstream is padded to 16
bits, followed by 8 zero bytes and padding to 4 bytes; the frame data size
in the sector headers counts all of it.

## Audio sectors

XA ADPCM, 18.9 kHz stereo, 4 bits: 18 sound groups of 128 bytes, then 20
zero bytes. A group starts with 16 parameter bytes (`filter << 4 | shift`)
of its 8 sound units: units 0–3, the same again, units 4–7, the same again.
Then 28 words of 4 bytes, one sample of every unit each: byte *k* holds unit
2*k* in its low nibble and unit 2*k*+1 in its high nibble. Even units are the
left channel, odd ones the right; unit *u* holds samples (*u* >> 1)·28 …
+28 of the group's 112 per channel, so a sector holds 2016 samples per
channel. Decoding is like SPU ADPCM, with filters (0, 0), (60, 0),
(115, −52), (98, −55).

## Encoding

`dps.py encode <video> <original.DPS> <out.DPS>` scales the video to the
original's size and frame rate (ffmpeg) and encodes each frame with the
lowest qscale that fits its sectors; the audio is resampled to 18.9 kHz
stereo and each 28-sample unit gets the filter and shift with the smallest
error (re-encoding the original audio gives it back exactly). Length is
free; `tools/disc.py replace` moves a longer movie to the end of the data
track (the game finds it through the file system). Tested in the emulator:
a 12 s INTRO with an overlay and a 440 Hz tone (picture and tone come out),
a 46 s one moved to the end of the track (plays in full, the game goes on to
the language screen afterwards), and the frame-rate check above.

ffmpeg's `psxstr` demuxer and `mdec`/`adpcm_xa` decoders read the files
when forced with `-f psxstr` (it warns about the header sectors). It assumes
15 fps, so `dps.py` rewrites the video timestamps with the rate computed
above. ffmpeg has no MDEC encoder; `dps.py` has its own.
