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
`0002 0010 0021 0135`); the two menu banks have none. Possibly palettes
the game rewrites at runtime.

## FNTS — font / sprite sheet

Not decoded yet. Level banks have 5, menu banks 4. A chunk starts like this (u16s):
`<uv> <clut> 0301 0005 0000 ffff 4da7 0000 00a2 05f6 <id> 0018`, followed by
pairs of u16s that look like per-glyph entries.
