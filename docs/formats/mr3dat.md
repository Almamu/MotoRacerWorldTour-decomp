# MR3.DAT (main archive)

A flat archive of 150 files. It stores CRC-32 hashes of the file names
instead of the names themselves. Tool: `tools/extract_dat.py`.

## Header

| Offset | Type | Meaning                                                   |
|--------|------|-----------------------------------------------------------|
| 0x00   | u32  | entry count (150)                                         |
| 0x04   | u16  | flags; bit 3 = entries sorted by hash (binary search)     |
| 0x06   | u16  | entry size; 0 means 0x30. This archive uses 0x10          |
| 0x08   | u32  | 0                                                         |
| 0x0C   | u32  | 0                                                         |
| 0x10   |      | entry table                                               |

The archive's header value at 0x04 is 0x0010000F (flags 0x000F, entry size
0x10).

## Entry (16 bytes)

| Offset | Type | Meaning                                       |
|--------|------|-----------------------------------------------|
| 0x00   | u32  | CRC-32 of the stored data (same variant as the name hash) |
| 0x04   | u32  | stored size in bytes                          |
| 0x08   | u32  | offset from the start of the archive (multiple of 0x800) |
| 0x0C   | u32  | name hash                                     |

Entries are sorted by name hash. File data is packed back to back on
2048-byte boundaries, starting at 0x1000 and running to the end of the
archive.

## Name hash

The loader (`0x8013598C` in `SCES_030.37`) removes one leading backslash,
upper-cases the name, and runs a reflected CRC-32 (polynomial 0xEDB88320,
the usual zlib table) with **initial value 0 and no final XOR**:

```python
def name_hash(name):
    crc = 0
    for b in name.lstrip("\\").upper().encode("ascii"):
        crc = TABLE[(crc ^ b) & 0xFF] ^ (crc >> 8)
    return crc

name_hash("data\\LANGIMG.DAT") == 0x4C3C4EE3
```

This is the same as `zlib.crc32(name, 0xFFFFFFFF) ^ 0xFFFFFFFF`. The same
CRC, over the stored (still compressed) bytes, is the first field of each
entry; the boot executable checks it after reading ("Unrecoverable CRC
error on block load.").

## LZSS compression

An entry whose data starts with `LZSS` is compressed:

| Offset | Type | Meaning                 |
|--------|------|-------------------------|
| 0x00   | char[4] | `LZSS`               |
| 0x04   | u32  | decompressed size       |
| 0x08   |      | compressed stream       |

The stream is a sequence of groups: one flag byte, then 8 items, with flag
bits consumed least-significant first.

- bit = 1: copy one literal byte.
- bit = 0: read a u16 `w` (little-endian). Copy `(w >> 12) + 3` bytes from
  `distance = w & 0xFFF` bytes back in the **output** (it may overlap, as
  usual for LZ77).

Decoding stops once the decompressed size has been produced. The stored
size includes 2–3 trailing padding bytes.

```python
def lzss_decompress(src, size):
    out, i = bytearray(), 0
    while len(out) < size:
        flags = src[i]; i += 1
        for bit in range(8):
            if len(out) >= size:
                break
            if flags >> bit & 1:
                out.append(src[i]); i += 1
            else:
                w = src[i] | src[i + 1] << 8; i += 2
                for _ in range((w >> 12) + 3):
                    out.append(out[-(w & 0xFFF)])
    return bytes(out)
```

110 of the 150 entries are compressed.

## File names

The names come from format strings in the game code
([../executables.md](../executables.md)); 146 of 150 are recovered in
`tools/mr3dat_names.txt`. Case doesn't matter to the game.

| Template                          | Files                                                    |
|-----------------------------------|----------------------------------------------------------|
| `Data\Final\%s%s%s_P%c.sdf`        | levels: `<code>[B][2]_PS.sdf`                            |
| `Data\Final\%s%s.Vrm`              | level texture banks: `<code>.Vrm`, `<code>B.Vrm`          |
| `Data\Final\<code>.bs`             | level loading screens (+ `Tr2P.bs`)                       |
| `data\final\Menu_%d.Sdf`, `EndM_%d.Sdf` | menu and end scenes, 0–5                            |
| `Data\DB_X_X.sdf`                  | `Data\DB_D_0.sdf` … `DB_D_5.sdf`                          |
| `data\sounds\%s.snd`               | `menu traffic cross1 cross2 scross1 scross2 fstyle trial speed1 speed2 dragster` (+ older single banks `cross`, `speed`, `scross`) |
| literal                            | `data\LANGIMG.DAT`, `data\cineendr.dxr`, `data\Final\fl256.bs`, `data\Final\fl512.bs` (512x512 generic "Loading"), `data\menu\banks\MMenuVrm.vrm`, `data\menu\sc_banks\MENDVRM.vrm` |

In the level names, `B` is a variant of the same track (it has its own
`B.Vrm`), `2` marks the two-player version, and `_PS` presumably stands
for PlayStation. The 6 variants of the menu scenes probably match the 6
languages listed in the game code (English, Français, Deutsch, Italiano,
Español, Svenska).

### Level codes

From the table in the game code, in order. Track names are from each code's
loading screen (`Data\Final\<code>.bs`):

| Code | Track                | Discipline (judging by the loading screen) |
|------|----------------------|-----------------------------------------|
| Sdf  | Stade de France      | supercross                              |
| Suz  | Suzuka               | speed                                   |
| Bar  | Barcelona            | supercross                              |
| Chi  | Belo Horizonte       | supercross                              |
| Rey  | Reygades             | motocross                               |
| Usa  | USA Park             | motocross                               |
| Sac  | Sachsenring          | speed                                   |
| Eas  | Eastern Creek        | speed                                   |
| IdM  | Isle of Man – Hills  | road                                    |
| IM2  | Isle of Man – Town   | road                                    |
| IM3  | Isle of Man – Road   | road                                    |
| Tri  | Night Show           | trial                                   |
| Tr2  | Indoor               | trial (`Tr2P.bs` = "Trial 2 players")   |
| FSt  | Freestyle            | freestyle                               |
| Tfc  | Rive Gauche          | traffic                                 |
| Tf2  | West Coast           | traffic                                 |
| Dr1  | Speed Ring           | dragster                                |
| Dr2  | Highway              | dragster                                |

The discipline column is inferred and still needs checking against the
game. What exactly `B` changes for a track (layout, reverse, time of day…)
is also still open.

### Still unnamed

Four sound banks that are variants of named ones: same size and sound
names, with a few samples (or one VAB tone byte) different. The game's bank
table (0x8006C85C) only lists the 11 `%s.snd` names above, so they're
probably unused leftovers; their names weren't found with track-code or
short-suffix guesses.

| Hash     | Same as        | Difference                         |
|----------|----------------|------------------------------------|
| 1c136175 | `cross1.snd`   | 18457 bytes of sample data          |
| 4645261e | `cross1.snd`   | 18458 bytes of sample data          |
| bf45e7dc | `cross2.snd`   | 1 byte in the VAB tone attributes   |
| 7275ff12 | `traffic.snd`  | 1664 bytes of sample data           |

## Contents by type

| Count | Type      | Format                                    |
|-------|-----------|-------------------------------------------|
| 76    | `SDF0`    | [sdf.md](sdf.md)                           |
| 33    | VRM       | [vrm.md](vrm.md)                           |
| 21    | `BSx0`    | [bs.md](bs.md)                             |
| 18    | SND       | [snd.md](snd.md)                           |
| 1     | code      | `data\LANGIMG.DAT`                         |
| 1     | DXR       | `data\cineendr.dxr`, [dxr.md](dxr.md)        |
