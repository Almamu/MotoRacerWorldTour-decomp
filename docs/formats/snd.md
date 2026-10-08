# .snd (sound banks)

A custom header with sound and group names, wrapping a standard Sony VAB
(`pBAV`) bank. One bank per game mode (`data\sounds\<name>.snd`), plus
`menu.snd`. Tool: `tools/snd.py`.

## Header

| Offset | Type | Meaning                                                    |
|--------|------|------------------------------------------------------------|
| 0x00   | u16  | 0x0380                                                     |
| 0x02   | u16  | number of sound definitions                                |
| 0x04   | u32  | name count                                                 |
| 0x08   | u32  | group count                                                |
| 0x0C   | u32  | offset of the sound definitions (44 bytes each)            |
| 0x10   | u32  | offset of the name table                                   |
| 0x14   | u32  | offset of the group table                                  |
| 0x18   | u32  | offset of the VAB header                                   |
| 0x1C   | u32  | offset of the VAB body (sample data)                       |

`menu.snd`: 13 names at 0x20, 3 groups at 0x1F4, definitions at 0x254,
VAB header at 0x4BC, samples at 0x14DC.

The loader (0x80011E44, called through 0x80014724 with
`data\sounds\%s.snd`) turns the offsets at 0x0C–0x1C into pointers,
rewrites the VAB's VAG size table into SPU addresses (from 0x202 × 8),
uploads the samples (SpuWrite, 0x800B4274) and opens the VAB (0x800B5730).
Bit 7 of byte 0 (set in every bank) selects a mode flag.

### Sound definitions

`header[0x02]` records of 44 bytes (the table runs exactly up to the next
section in all 14 banks):

| Offset | Type     | Meaning                                                     |
|--------|----------|-------------------------------------------------------------|
| 0x00   | u8       | VAB program (= group)                                       |
| 0x01   | u8       | not read by the play path; 0–18, ≥ the tone index (probably the authoring tool's sample number) |
| 0x02   | u8       | tone within the program                                     |
| 0x03   | u8       | next layer: relative index (+1 in practice) of a sound played together with this one; 0xFF = none |
| 0x04   | u16      | flags: 0x01 has a layer (exactly the chain heads), 0x04 reverb, 0x10 loop, 0x100 double voice (second voice at 1.05× pitch, 0x8001295C), 0x200 no panning, 0x400 uses a second voice; 0x800 set at run time |
| 0x06   | u16      | loop start, in 16-byte ADPCM blocks                          |
| 0x08   | u16      | length in blocks (0 in some banks)                           |
| 0x0A   | u16      | start offset in blocks (0; 0xFFFF = none; overwritten by the caller at run time) |
| 0x0C   | char[32] | name                                                        |

### Name table

`name count` entries of 36 bytes:

| Offset | Type     | Meaning                                     |
|--------|----------|---------------------------------------------|
| 0x00   | char[32] | sound name, NUL-terminated, padded with 0xCD |
| 0x20   | u32      | sound index                                 |

The names are the ones the game code asks for: `Idle`, `Accel`, `Decel`,
`freeWheel`, `cri1`–`cri4` (rider shouts), `chute_pilote` (rider fall),
`wheel`, `crash`, `brake1`, `terre`, `Foule1`… (crowd), `three`, `two`,
`one`, `go`, `finallap`, `racecompleted`, `bestlap`, …; in `menu.snd`
`cancel`, `back`, `select`, `focus`, `title`, `mrwt`, …

### Group table

`group count` entries of `char[32]`, e.g. `moto_engine`, `moto_pilote`,
`lfo`, `moto_effects`, `ambiances`, `voices`, `effects`, `special`.

## VAB

Standard VAB version 5:

- 32-byte header (`pBAV`, version, id, size, …; at +0x12 program count,
  +0x14 tone count, +0x16 VAG count)
- 128 program attributes × 16 bytes
- program count × 16 tone attributes × 32 bytes
- 256 × u16 VAG sizes (size / 8; entry 0 unused)
- then, at the VAB body offset, the VAG samples back to back (raw PS-ADPCM,
  16-byte blocks of 28 samples)

Every tone maps one note to one sample, with centre note 64: the game uses
tones as sample slots and sets the pitch itself. The play routine
(0x80012504) sets the SPU pitch to `requested × rate / 44100`, where `rate`
is the tone attribute's u16 at **+0x0C** (normally the pitch-bend range):
the **sample rate in Hz**. Rates used: 16000 (most), 8000, 22050 (menu
voices), 11127, 5000, 3000, 13000, 9000, 11025; placeholder tones hold
0x0202. When the tone's shift byte (+5) is non-zero the pitch is also scaled
by `(shift + 30) / 64`. Volume = tone volume (+2) × program volume (+1) >> 7.
`snd.py` writes each WAV at its sample's rate.

### VAB size fields and sample flags

The VAB header's u32 at 0x0C is the VAB size (header + sample data). Sample
data is in 16-byte ADPCM blocks whose second byte holds flags:

- one-shot samples: 0 in every block, 1 on the last one, sometimes followed
  by a trailing silent block flagged 7 (or 0);
- looping samples (engine sounds): 0 on the first block, 2 on the others,
  6 on the loop-start block, 3 (loop end + repeat) on the last one.

## Writing

`snd.py import <file.snd> <dir> <out.snd>` replaces every sample whose
`vagNN.wav` (16-bit mono; a different rate is resampled to the sample's) was edited: it encodes PS-ADPCM
(per 28-sample block, the filter/shift pair with the smallest error, mirroring
the decoder), keeps the original sample's loop layout (looping samples loop
from the second block) and its trailing blocks, then rewrites the VAB size
table and size field. An unedited export imports back byte-identical; a
test tone replacing a menu sample decodes at about 58 dB SNR. The samples go
to the SPU's 512 KB of sound RAM when the bank is loaded, so banks can't grow
much beyond the original sizes.

## Unknown

- Definition byte 0x01 (not read). Layers: 0x80012D38 plays a definition,
  then follows byte 3 until 0xFF; only five chain (`land1` → `land2` in
  cross1, cross2, fstyle, scross1; `select2-E` → `select2b-E` in menu).
