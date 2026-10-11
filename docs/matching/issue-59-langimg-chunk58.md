# The game's chunk_58: a camera's moves and a buffer (#59)

A camera's move (`Cam58`):
- its two pairs of four shorts (where it is, where it looks), set at once
  or moved from where it is to a new point over a time;
- its interpolation by the time elapsed (`D_800D60EC` the clock).

A buffer (`Buf58`: its memory, its size, whether it owns it):
- its constructor, destructor, memory allocated or given, and a word read.

Also:
- a 0x34-byte settings block cleared and filled from the game's settings;
- a point and two values set;
- five entries' flags set;
- globals reset, then `func_80019F0C` (chunk_04's range setup) called.

One file, `src/langimg/chunk_58.cpp`, 0x80085258-0x80087468.

19 functions: 9 match, 4 are parked, 6 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, five
small globals.

## Notes

- **Four shorts copied with `lwl`/`lwr`.** The camera's points are four
  shorts, so their struct is 2-byte aligned and GCC copies it with
  unaligned loads and stores. Plain struct assignment (`c->m_40 = *v;`)
  matched, including the original's odd save and reload of `$s0`.
- **A global read before the stores.** `func_800863CC` loads the clock
  before storing the time and the fraction; it matched with the clock's
  store written before them.
- **Products before stores.** `func_80086424`'s original computes all
  eight differences times the fraction before storing any result; with an
  inline storing as it goes, GCC kept each store in place (a store
  through a `short *` may change what the next load reads). Written as
  eight locals first, the shape is right; the registers aren't. Parked.
- **Two declarations of one global.** `func_800869E4` stores to
  `D_800CBD30` (a gp global) and to words 8 and 16 bytes after it through
  its address, built with `lui`/`addiu`. Declared once more without a size
  (`extern int D_800CBD30_w[] asm("D_800CBD30");`), GCC builds the
  address that way; two registers still swap. Parked.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80085258` | parked | five entries' flags set: the table's address register |
| `func_80085284` | asm | 386 instructions |
| `func_80085888` | parked | a settings block filled: the stores' order |
| `func_80085900` | asm | 214 instructions |
| `func_80085C28` | asm | 458 instructions |
| `func_80086350` | matches | the camera set at a point |
| `func_800863CC` | matches | the camera moved to a point over a time |
| `func_80086424` | parked | the camera's interpolation: registers |
| `func_800865B4` | asm | 269 instructions |
| `func_800869E4` | parked | globals reset: two registers swap |
| `func_80086A38` | matches | a buffer's word |
| `func_80086A50` | matches | a point and two values set |
| `func_80086A78` | asm | 252 instructions |
| `func_80086E68` | matches | a buffer's constructor |
| `func_80086E7C` | matches | a buffer's destructor |
| `func_80086EC0` | matches | a buffer's memory freed if it's its own |
| `func_80086F14` | matches | a buffer given memory |
| `func_80086F20` | matches | a buffer's memory allocated |
| `func_80086F64` | asm | 322 instructions |
