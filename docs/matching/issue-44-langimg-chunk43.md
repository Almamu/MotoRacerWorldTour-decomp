# The game's chunk_43: a bike's model and its motion (#44)

Functions on a bike's model (`Model43`, chunk_35's `Body35`: the bike at
0x54, its speed at 0x278 and velocity at 0x27C, the link to another bike
at 0x1B4), called with the camera (`Tab43`, chunk_35's `Cam35`, its table
at 0x28):
- the bike's byte at 0x188 set (`func_800673CC`);
- the values at 0xE8, 0xF0, 0xF2, 0x110 and 0xF4 cleared between two calls
  (`func_800673DC`);
- the velocity set from a direction passed by value: blended with the
  current one by their dot product, limited to the top speed at 0x118,
  its length to 0x278 and its direction to 0x2E4, then `func_80067230`
  (`func_8006741C`);
- the value at 0x33C from a top value (0x488 in the state 6 at 0x490, the
  small global `D_800CB448` with the flags 0x202 at 0x494, else 0x45C) and
  the speed against half the argument, a third of it with bit 0 of
  `D_800D5FD4` (`func_80068038`);
- whether the table row at the model's 0x1F4, 0x210 and 0x1F8 has its byte
  at 0xF set (`func_800692A8`);
- the models linked from this one, each given its distance to the
  camera's bike and the time (`func_80068900`, parked).

One file, `src/langimg/chunk_43.cpp`, 0x800673CC-0x800692EC.

10 functions: 5 match, 2 are parked, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800CB42C` to `D_800CB460` (twelve of them).

## Notes

- **The division first in the compare.** `func_80068038` computes half
  its argument before loading the speed, so `reorg` fills the three
  branches' delay slots with the halving: `if (len / 2 > m->m_278)`. With
  the speed read first (`x < len / 2`), the delay slots stayed empty.
- **One copy after two branches.** `func_8006741C` copies its working
  vector back once after two of its three branches (`VecCopyL43(&r,
  &t);`), the third copying its own and jumping past it (a `goto`); with a
  copy in each branch GCC merged different tails.
- **A pointer for each vector passed twice** (chunk_35's case):
  `func_8006741C`'s first branch takes `&u` and `&t` into pointers before
  its two calls, as the original's saved registers.
- **A returned vector copied with all three loads first** (`VecCopyL43(&r,
  func_800995C4(&r, l))`), where `r = *f(...)` used `$t0`-`$t2`.
- **Parked.** `func_80068900`: the original keeps 1000's reciprocal, 2
  and 5 in saved registers for the whole loop (a frame of 0x30); GCC
  loads them where they're used (0x20), which changes everything after.
  A `do`, a `for (;;)` with `break`s and a `while` entered at its body all
  gave the same. Its flag at 0x14D is the two compares or'ed without
  short-circuit (`(a < d) | (d < b)`).
- **Still asm.** `func_800678C8` (476 instructions), `func_800681A4` (480)
  and `func_80068B60` (466), not tried.

## Group B, more functions

- **`func_80067650`** (a model copied from another, then set up) is written
  and parked, 13 off. Everything matches but the view matrix's copy: the
  original copies it three, two, then three words through a pointer (as
  chunk_09's `MatCopy`; a struct assignment gives four-register groups),
  loading the destination before the first word, and its three registers
  in another order. The block at 0x1B4 is copied as the original does it,
  words and two vectors (`Ctr43`).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800673CC` | matches | the bike's byte at 0x188 set |
| `func_800673DC` | matches | five values cleared |
| `func_8006741C` | matches | the velocity set from a direction |
| `func_80067650` | parked | a model copied from another: one copy's registers |
| `func_800678C8` | asm | 476 instructions |
| `func_80068038` | matches | the value at 0x33C |
| `func_800681A4` | asm | 480 instructions |
| `func_80068900` | parked | the linked models: constants |
| `func_80068B60` | asm | 466 instructions |
| `func_800692A8` | matches | a table row's flag |

## Second pass

- Built with `-fmove-all-movables` (the Makefile's CFLAGS for the chunk, group A's finding in the techniques): every matched function still matches, and the parked ones it touches come closer. `func_80068900` went from 146 to 95 off.
