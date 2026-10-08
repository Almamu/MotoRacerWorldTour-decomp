# .snd (sound banks)

A custom header with sound and group names, wrapping a standard Sony VAB
(`pBAV`) bank. One bank per game mode (`data\sounds\<name>.snd`), plus
`menu.snd`. Tool: `tools/snd.py`.

## Header

| Offset | Type | Meaning                                                    |
|--------|------|------------------------------------------------------------|
| 0x00   | u16  | 0x0380                                                     |
| 0x02   | u16  | unknown (count; one more than the name count in `menu.snd`) |
| 0x04   | u32  | name count                                                 |
| 0x08   | u32  | group count                                                |
| 0x0C   | u32  | offset of an unknown table                                 |
| 0x10   | u32  | offset of the name table                                   |
| 0x14   | u32  | offset of the group table                                  |
| 0x18   | u32  | offset of the VAB header                                   |
| 0x1C   | u32  | offset of the VAB body (sample data)                       |

`menu.snd`: 13 names at 0x20, 3 groups at 0x1F4, unknown table at 0x254,
VAB header at 0x4BC, samples at 0x14DC.

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

Every tone maps one note to one sample, with centre note 64, so the game
seems to use tones as sample slots and set the pitch itself. The real sample
rates aren't known yet; `snd.py` writes 44.1 kHz WAVs, which may play too
fast.

## Unknown

- Header field 0x02 and the table at header offset 0x0C (616 bytes in
  `menu.snd`).
