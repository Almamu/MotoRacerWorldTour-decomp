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

19 functions: 10 match, 5 are parked, 4 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, five
small globals.

## Notes

- **Four shorts copied with `lwl`/`lwr`.** The camera's points are four
  shorts, so their struct is 2-byte aligned and GCC copies it with
  unaligned loads and stores. Plain struct assignment (`c->m_40 = *v;`)
  matched, including the original's odd save and reload of `$s0`.
- **A global read before the stores.** `func_800863CC` loads the clock
  before storing the duration and the fraction; it matched with the clock's
  store written before them.
- **Products before stores.** `func_80086424`'s original computes all
  eight differences times the fraction before storing any result; with an
  inline storing as it goes, GCC kept each store in place (a store
  through a `short *` may change what the next load reads). Written as
  eight locals first, the shape is right; the registers aren't. Parked.
- **A gp global's neighbours.** `func_800869E4` stores to `D_800CBD30`
  (a gp global) and to words 8 and 16 bytes after it through its address,
  built with `lui`/`addiu`. With the address in a pointer local (`int *w
  = &D_800CBD30;`) it matched: the global is small, so GCC loads its
  address with an `la` (chunk_28 has the rule). An earlier try, a second
  unsized declaration of the symbol, left two registers swapped.

## Group C, continued

- `func_80085900` (the start's lights: the step's progress clamped to
  0..0x1000, the lamps lit one by one, the go, and the lights' size) is
  written and parked, 65 off. `Set58` is now the lights' state (centre,
  corner, size, the lamps' kinds and levels, the step and its timing).
  Its switch's jump table and bodies are the original's; GCC merges the
  first branch's size store into the second branch's tail, and the clamp
  and the bike's lookup come out in another order.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80085258` | parked | five entries' flags set: the table's address register |
| `func_80085284` | asm | 386 instructions |
| `func_80085888` | parked | a settings block filled: the stores' order |
| `func_80085900` | parked | the start's lights: 65 off |
| `func_80085C28` | parked | the start lights drawn: the packet pointer reloaded |
| `func_80086350` | matches | the camera set at a point |
| `func_800863CC` | matches | the camera moved to a point over a time |
| `func_80086424` | parked | the camera's interpolation: registers |
| `func_800865B4` | asm | 269 instructions |
| `func_800869E4` | matches | globals reset |
| `func_80086A38` | matches | a buffer's word |
| `func_80086A50` | matches | a point and two values set |
| `func_80086A78` | asm | 252 instructions |
| `func_80086E68` | matches | a buffer's constructor |
| `func_80086E7C` | matches | a buffer's destructor |
| `func_80086EC0` | matches | a buffer's memory freed if it's its own |
| `func_80086F14` | matches | a buffer given memory |
| `func_80086F20` | matches | a buffer's memory allocated |
| `func_80086F64` | asm | 322 instructions |

## Group C large functions, continued

`func_80085C28` (458 instructions) draws the start lights: a draw area for
the screen, the six lamps (each a lit image at its level and the dark one
at the rest), a grey bar, the box's outline (a polyline of three sides and
a line), the box in the player's colour, and a draw area for the box. It
is written in the original's order and parked (424 off; 196 with stack
offsets and branch targets left out):
- the draw area is a macro (`SET_AREA58`) reading its rectangle's fields
  where they're used, as the original does (`lhu` when masked, `lh` when
  added); passed as values or through a pointer, they were read once;
- the grey bar's four corners are computed into locals before its
  stores, the later packets read the fields again after each store;
- left: before each link the original loads the packet pointer
  `D_800C8C70` again; GCC keeps it in a register, not treating the
  packets' stores as able to change it. The draw areas' words are also
  or'ed in another order, and the images' base and the constant 5 are in
  swapped saved registers.

`ui.h` is included for `ADD_PRIM`, so the chunk's own `memset`, `malloc`
and `free` declarations went (`psyq.h` has them).
