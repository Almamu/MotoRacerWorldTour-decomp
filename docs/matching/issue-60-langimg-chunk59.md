# The game's chunk_59: a sound's state and a grid of tiles (#60)

A sound's state (`Snd59`: a word of bitfields, its data, a buffer):
- its constructor and destructor (its data released through
  `func_800816B4`);
- its voices' two values: a voice's value times one of two scales, and
  0x8000000 divided by three and by four times that.

A grid of tiles (`Grid59`), each tile chunk_66's 0x110-byte object
(`Tile59`):
- its constructor and destructor, its tiles deleted (one by one, then
  the array of pointers and an array of tiles);
- a tile made anew at an index, a tile at an index or at a row and
  column;
- the tiles resized, brought up to date in two passes, each live tile's
  object told through its vtable;
- each drawn tile's primitives linked after the next one's (PsyQ's
  24-bit tags, the length byte kept).

One file, `src/langimg/chunk_59.cpp`, 0x80087468-0x80089200.

17 functions: 11 match, 3 are parked, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **A tile's constructor and destructor, inline.** `func_80088AA8` and
  `func_80088BBC` call `func_800893C8` before each `__builtin_delete`,
  and run a loop from the end of an array before `__builtin_vec_delete`
  (the count read from the cookie). `func_80088BBC` sets ten words of the
  part at 0xA0, then calls `func_800893E8` on it and `func_80095684` on
  the tile. With `Tile59` given an inline constructor and destructor that
  make those calls, and its part an inline constructor of its own, plain
  `delete`, `delete[]` and `new Tile59` matched.
- **`a = b = c` stores `b` first.** The part's constructor stores 0x2AA
  at 0x34 and then at 0x10: `m_10 = m_34 = 0x2AA;`.
- **A bitfield set first.** `func_8008784C` stores the bitfield word
  twice: once after setting its 12-bit field, once after clearing the
  next two. With the 12-bit field set first and the other three fields
  stored between, the two stores stayed apart.
- **Two results.** `func_80088D04` returns whether both passes worked
  (`r2 && r1`), so it's declared `int`; `func_80088A08` returns that, or
  0 when it doesn't call it (chunk_70's technique).
- **A virtual call's result.** `func_80088F34` matched with the call at
  0x24 declared returning `int`; with `void`, 4 instructions differ.
- **Parked.** `func_80087900` swaps two registers. `func_80088D04` tests
  each search loop's count at the top, where GCC tests it at the bottom.
  `func_80088FD4` keeps 0xFF000000 in `$fp` through the loop.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80087468` | asm | 249 instructions |
| `func_8008784C`, `func_8008788C` | match | a sound's constructor and destructor |
| `func_80087900` | parked | the voices' rates: registers |
| `func_800879D4`, `func_80087A14` | match | a grid's constructor and destructor |
| `func_80087A58` | asm | 278 instructions |
| `func_80087EB0` | asm | 732 instructions |
| `func_80088A08` | matches | the tiles resized |
| `func_80088AA8` | matches | the tiles deleted |
| `func_80088BBC` | matches | a tile made anew |
| `func_80088D04` | parked | the tiles brought up to date: the loops' tests |
| `func_80088F34` | matches | each live tile's object told |
| `func_80088FD4` | parked | the primitives linked: a constant's register |
| `func_80089190`, `func_800891C8`, `func_800891E8` | match | a tile at a row and column, or at an index |
