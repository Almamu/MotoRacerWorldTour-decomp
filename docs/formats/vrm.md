# .Vrm (texture banks)

A chunk of VRAM plus descriptors for the textures, palettes and fonts in it.
Every level has one (`Data\Final\<code>.Vrm`, plus `<code>B.Vrm` where the
track has a `B` variant), and the menus have two. Tool: `tools/vrm.py`.

## Layout

| Offset             | Type                 | Meaning                                  |
|--------------------|----------------------|------------------------------------------|
| 0x00               | u32                  | chunk count `n`                          |
| 0x04               | u32                  | descriptor area size `d`                  |
| 0x08               | chunk[n]             | chunk table (12 bytes each)              |
| 0x08 + 12n         | u8[d]                | descriptor area                          |
| 0x08 + 12n + d     | RECT                 | where the pixels go in VRAM (u16 x, y, w, h) |
| +8                 | u16[w*h]             | VRAM pixels, row by row                  |

Chunk table entry:

| Offset | Type    | Meaning                                         |
|--------|---------|-------------------------------------------------|
| 0x00   | u32     | offset of the chunk in the descriptor area       |
| 0x04   | char[4] | tag: `DPAL`, `FNTS` or `BLKS`                    |
| 0x08   | u32     | name hash (names unknown)                        |

A chunk ends where the next one starts (the last one ends at `d`).

Every bank seen so far has RECT = (512, 0, 512, 512): the right half of VRAM,
i.e. texture pages 8–15 and 24–31. All `tpage`/`clut` values in the
descriptors are absolute VRAM coordinates.

## BLKS — texture

Laid out like the texture fields of a GPU `POLY_FT4` primitive:

| Offset | Type   | Meaning                                         |
|--------|--------|-------------------------------------------------|
| 0x00   | u8, u8 | u0, v0                                          |
| 0x02   | u16    | clut (CLUT id: x = (id & 0x3F) * 16, y = id >> 6) |
| 0x04   | u8, u8 | u1, v1                                          |
| 0x06   | u16    | tpage (x = (tp & 0xF) * 64, y = ((tp >> 4) & 1) * 256, colour mode = (tp >> 7) & 3) |
| 0x08   | u8, u8 | u2, v2                                          |
| 0x0A   | u8, u8 | u3, v3                                          |
| 0x0C   | u16    | `k`: number of CLUT ids that follow              |
| 0x0E   | u16[k] | CLUT ids (palette variants); the first one equals `clut` |

Small textures (sprites, HUD pieces, signs) have `k` = 1. Full 256x256 pages
(u/v 0–255) list 8–15 CLUTs. These are the ground and scenery pages, where
each polygon of the level chooses its own palette, so they only render
correctly with the level geometry.

Colour modes: 0 = 4 bpp (16-colour CLUT), 1 = 8 bpp (256-colour CLUT),
2 = 15-bit direct. Colour 0x0000 is transparent.

## DPAL — palette

8 bytes, e.g. `0002 0010 0020 0135`:

| Offset | Type | Meaning                       |
|--------|------|-------------------------------|
| 0x00   | u16  | unknown (2)                   |
| 0x02   | u16  | colour count (16)             |
| 0x04   | u16  | CLUT x / 16                   |
| 0x06   | u16  | CLUT y                        |

Every level bank has exactly these two (`0002 0010 0020 0135` and
`0002 0010 0021 0135`, hashes 0xD9162723 and 0x9092FD46); the two menu banks
have none. They are entries 35 and 36 of the HUD sprite hash list (level
root 14, resolved into 0x800CC030 by 0x800A1B54), but no code reads those
entries with a constant index, neither hash appears in the code, and
overwriting both chunks in RAM changes nothing during a race: they look
unused (other game modes not tested). Field 0 (= 2) has no known reader. The bank
loader (0x80096290) only special-cases `LPAL` chunks (relocating their +8
field), which no bank contains.

## FNTS — bitmap font

Decoded from the text drawing routine (0x80080040 in `data\LANGIMG.DAT`).
Each glyph is drawn as a textured sprite (`SPRT`, command 0x64) of
`width x height` pixels.

| Offset | Type      | Meaning                                       |
|--------|-----------|-----------------------------------------------|
| 0x00   | u8        | height (pixels)                               |
| 0x01   | u8        | glyph count                                   |
| 0x02   | u8        | first character code (32, or 33 in one menu font) |
| 0x04   | s8        | letter spacing (added after every glyph)       |
| 0x06   | u8        | width of a space                              |
| 0x14   | u16       | CLUT id                                       |
| 0x16   | u16       | tpage                                         |
| 0x18   | u32[count]| glyphs: byte 0 = u, byte 1 = v, byte 2 = width (byte 3 = height again) |

Characters outside `first .. first + count - 1` are skipped, except:
space (advances by the space width + spacing), 0x01 (the next three bytes
of the string are a new RGB colour), and 0x02 (the next byte is an index
into the HUD sprite table, drawn inline).

All 31 level banks carry the same 5 fonts (heights 17, 18, 17, 12 and 10;
27 to 224 glyphs), all on tpage 0x18 with their own CLUT. `MMenuVrm.vrm`
has 4 different ones (heights 17, 21, 12, 10; on tpages 0x18 and 0x08).

The HUD sprite table: level root 14 is a list of 163 chunk hashes (fonts at
indices 16–20). At load the game resolves it into descriptor pointers at
0x800CC030 (0x800A1B54), which the HUD code and the 0x02 escape use.
`tools/vrm.py` writes each font as a glyph strip plus JSON metrics.

## Writing

`vrm.py import <bank.Vrm> <dir> <out.Vrm>` writes edited `blks/*.png` and
`fonts/*.png` (as produced by `vrm.py export`) back into the VRAM block:

- Each texture keeps its size, position, bit depth and palette; edited
  colours are mapped to the nearest colour of the texture's own CLUT
  (alpha < 128 maps to the transparent colour 0x0000). 15-bit textures take
  the colour directly (opaque black gets the STP bit so it doesn't turn
  transparent).
- Only pixels that differ from the original bank are written. Textures can
  overlap in VRAM, so an unedited PNG of an overlapping texture must not
  write its old pixels back over an edited one.
- An unedited export imports back byte-identical.

Palettes are exported as `cluts/<id>.png` (one pixel per colour) for every
CLUT named by a `BLKS` (including its variant list), `FNTS` or `DPAL` chunk;
`cluts.json` lists each one's VRAM position and users. That covers every
palette the level geometry uses (checked for USA Park). Alpha carries the
PS1 STP bit: 0 = colour 0x0000 (transparent), 128 = STP set, 255 = STP
clear (opaque black is written as 0x8000). Edited palettes are imported
before textures, colour by colour, so textures that use them change
everywhere they're drawn.
