# The game's chunk_17: a rider's view and the maps (#18)

A rider's view (`View17`):
- reset: a value from a table by kind, three identity matrices;
- what it looks at (one of three targets at 0x78), chosen from its
  bike's state (chunk_41's object) and changed once the last change is
  done;
- a vector halved, clamped and smoothed with another value;
- eight words copied out.

Maps (`Map17`), each a range of positions with run-length rows:
- a list moved to the map whose range holds a position;
- a map's cell at a position: its row unpacked into the scratchpad
  (the row's number at 0x1F800000, the cells from 0x1F800004) when it
  isn't there already;
- a row unpacked: runs of 0 or 0xFF, or all 0.

Also a vector's three shorts passed to `func_80097E4C` (twice), and four
calls in a row.

One file, `src/langimg/chunk_17.cpp`, 0x80033720-0x80035518.

18 functions: 13 match, 5 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, one small
global (`D_800C4D78`).

## Notes

- **The scratchpad's address in a local.** `func_80034A38` keeps
  0x1F800004 (the cells) in a saved register and reads the row's number
  as `cells[-4]`: `u8 *cells = (u8 *)0x1F800004; if (cells[-4] != y)
  ...; return cells[x];`. The call and the store use the constants.
- **Each count from the field.** `func_80034C4C` splits a row's length
  into 16-byte blocks and bytes; `w = r->m_00 >> 4; n = r->m_00 & 0xF;`
  matched, one variable masked in place didn't.
- **A variable reused.** The same function's run count shares the row
  offset's register: `k = *p++;` after `p = r->m_08 + k;`.
- **`(c << 24) >> 31`.** A run's fill byte is the top bit spread: `(s8)c
  >> 7` became `srl` and `negu` (GCC knew `c` was a byte); the original's
  `sll`/`sra` is the shift written out.
- **A value read into a local first.** `func_80034190` ends with `*c =
  a[0] = (*c * 2 + a[0]) / 3;`; the registers matched with `*c` read
  into a local before the sum (`t = *c; t = (t * 2 + a[0]) / 3;`). The
  permuter found it.
- **A constant and a test in locals.** `func_8003491C` stores 0x1000 twice
  from one register and picks a target from a flag's negation:
  `one = 0x1000;` used for both stores, and `z = !b->m_149;` before the
  choice. With only the first, 3 instructions differed; with only the
  second, 11 (the permuter found both).
- **Identity matrices by an inline function.** `func_80033D4C` sets
  three matrices' diagonals to 0x1000 and the rest to 0, in an order of
  its own (each row's diagonal, translation, then the two others); an
  inline function with the twelve stores in that order matched for all
  three.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80033720` | asm | 384 instructions |
| `func_80033D1C`, `func_80034A08` | match | a vector's shorts passed on |
| `func_80033D4C` | matches | the view reset |
| `func_80033E4C` | asm | 209 instructions |
| `func_80034190` | matches | a vector halved, clamped and smoothed |
| `func_8003425C` | asm | 116 instructions (matrices on the stack) |
| `func_8003442C` | asm | 316 instructions |
| `func_8003491C` | matches | what the view looks at |
| `func_800349C0` | matches | what it looks at changed |
| `func_80034A38` | matches | a map's cell |
| `func_80034AC0` | matches | the current list chosen |
| `func_80034AC8` | matches | a list moved to a position |
| `func_80034C0C` | matches | the current map's cell, or 1 |
| `func_80034C4C` | matches | a row unpacked |
| `func_80034D14` | matches | four calls |
| `func_80034D60` | asm | 476 instructions |
| `func_800354D0` | matches | eight words copied out |
