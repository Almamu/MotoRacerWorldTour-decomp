# The game's chunk_44: sound objects and their lists (#45)

A sound object class (its vtable at 0x0C, `D_800C7724`) and two
subclasses (`D_800C76DC`, `D_800C769C`), lists of up to 16 of them with
the first free place kept, arrays of them made with `new`, the
position of a sound on the screen, and the channels' resets. One file,
`src/langimg/chunk_44.cpp`, 0x800692EC-0x8006B3B0.

50 functions: 43 match, 2 are parked, 5 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, one
small global (`D_800CB484`). `D_800CB480` is built with one `la` here, as
in chunk_45: declared an `int`, not an array.

## Notes

- **`new T[n]` with a constructor.** The original allocates, then calls
  the constructor on each element through a guarded loop that counts
  down to -1 while the pointer goes up:
  `i = n - 1; if (i >= 0) do { ctor(q++); } while (--i != -1);`
  (`func_8006A534`, `func_8006B098`). A plain `for (i = n - 1; i >= 0;
  i--)` tested `>= 0` at the bottom instead.
- **An `int` argument stored in a `short`.** `func_8006A534` stores its
  count unextended and uses the extended value: `int n` stored, `short k
  = n` used.
- **The virtual call's type.** Calls through vtable slot 8 matched with a
  function returning `int` (`VCALL2`), others with `void` (`VCALLV`):
  the result's type changes the registers even when it's ignored.
- **A loop guarded with `i > 0`.** `func_8006ACB0` tests `i > 0` before a
  loop that runs down to 0, so a list of one is left alone (`i =
  n - 1; if (i > 0) do ... while (--i >= 0);`); the searches
  `func_8006AC5C` and `func_8006ABD4` have the same shape.

Parked: `func_80069FB8` (the position scaled: registers, 19 off),
`func_8006A1B4` (a key-off: one register, 8 off), `func_8006A848` (a
sound played: two loads swapped, 4 off), `func_8006AD00` (the first free
place: the original tests the first item before its loop, 21 off).
Still asm: 13 functions of 43 to 276 instructions, among them
`func_8006A028` (the GTE's leading-zero count).

## Second pass

- `func_8006A1B4` and `func_8006A848` match: both are virtual functions that pass their second argument on untouched (`func_8006A1B4(o, a)` calls the vtable's entry 7 with it), and the entry's function returns nothing.
- `func_8006AD00` matches: the list's first item tested before a `do` loop counting down (`if (!*p++) { r = 0; goto done; } do {...} while (*p++);`).
- New: `func_80069B24` (the channels' pattern steps each frame), `func_8006A2D4` (a text sound drawn), `func_8006A5D0` (a text kept in the buffer: the sound's address as `(r * 5 << 4) + base`), `func_8006A6B0` (a text taken out), `func_8006AA30` (a text sound added: its five stores in the order x, y, colour, -1, index, found by trying all 120), `func_8006AD60` (expired sounds removed, a `do` loop) and `func_8006AE54` (a player's sounds drawn) match.
- `func_8006B134` (a group drawn with a box over its view) is written and parked, 36 off: the packets' constants and `ADD_PRIM`'s registers.
