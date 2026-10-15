# The game's chunk_33: the race and its bikes (#34)

The race (`Race33`, chunk_39's `Own39`) and its run's five bikes (0x568
bytes each, chunk_39's `Obj39`):
- a bike by a player's slot (`m_470`): the element after its current one
  marked (bit 1), the others unmarked;
- a string and one or two numbers drawn, the text state set first;
- up to four images drawn, a counter advanced by a bike's value at 0x43E;
- the zones' entries flagged (0x10) once each, the zones out of the
  current map dropped;
- the entries flagged (0x10) when `func_8001DF10` accepts their position;
- the course's three lists of items unflagged;
- each bike's two boxes reset to empty (low corners 0x7FFFFFFF, high
  0x80000000), then updated through `func_80090E58`, `func_80098DD4`
  and `func_80098E38`;
- the race's counts (bikes in, of kind 1), its reset: fields and flags
  set, the counts recomputed;
- a string by index (a `switch` over six), and an image drawn scaled by
  a bike's values.

One file, `src/langimg/chunk_33.cpp`, 0x800536F4-0x800554E0.

21 functions: 15 match, 4 are parked, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800C679C`, `D_800C67A0`, `D_800C67A4` and `D_800C67A8`.

## Notes

- **The racer declared small.** `func_80053E44` and `func_80053D4C` pass
  `D_800CA7D8` (chunk_06's racer) as one `la`, never split. Declared as a
  `Racer` or an array of unknown size it was split and scheduled (with a
  `nop` gone from the call's delay slot); declared `extern int
  D_800CA7D8;` and passed as `(Racer *)&D_800CA7D8`, both matched.
- **A bike's flags as shifts.** `func_800550C0` counts the bikes in the
  race (bit 6) and those of kind 1 (bits 1-5, signed). As bitfields, GCC
  merged the two tests into one masked compare (`andi 0x7E`, `== 0x42`)
  and compared the kind as `andi 0x3E`; the original extracts each
  field. `(p->m_00 >> 6) & 1` and `(int)(p->m_00 << 26) >> 27 == 1`
  matched.
- **A counter and an end per loop.** The same function's two loops each
  have their own count and end pointer: with one count and one end for
  both, the first loop's registers swapped. Then the constant 1 in a
  local (`one = 1;` before the second loop, `== one`) put its `li` where
  the original has it (the permuter found it).
- **A load in each branch.** `func_800537FC` loads the screen's x from
  one of two fields and the y (the same field either way) in each branch;
  with the y loaded after the `if`, it was scheduled later.
- **A field read before a copy.** `func_80053D4C` reads the found
  object's pointer at 0x04 before copying a vector to the stack:
  `Ent33x *y = x->m_04;` first.
- **The step's order.** `func_80055410`'s loop increments its pointers
  before its count: `for (i = 0; i < 5; b++, i++)`.
- **`do { } while (0)` around three statements.** `func_800542A4` copies
  a vector to the stack and passes its address to a call in a loop; GCC
  hoisted the address out of the loop and kept it on the stack, the
  original computes it before the call. The permuter's `do { ... } while
  (0)` around the copy, a store and the call matched; an inline function
  for them didn't.
- **`&= 1` on a flag.** `func_80053BF8` masks a 0-or-1 flag with
  `andi 1` before clearing it: `test &= 1;` written out matched, a `bool`
  didn't.
- **A `mult` for a constant.** `func_800547FC` multiplies by 0xB33 with
  `mult`; written `* 0xB33`, GCC used shifts and adds; with the constant
  in a local (`sc = 0xB33;`), `mult`.
- **Parked.**
  - `func_80054744` (a call on one of two objects with a value from a
    table): the call through an inline function (the permuter's idea)
    and the colour masked first get it to registers, one up from the
    original's.
  - `func_800547FC` (an image drawn scaled): registers only.
  - `func_800544A8` (the bikes' blocks updated, then passed on for each
    of two flags): saved registers swapped.
  - `func_800539DC` (the four images): the drawing loop walks more
    pointers than the original's.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800536F4` | matches | two of the screen's fields passed on, unless 0x358 is set |
| `func_80053738` | matches | the element after a bike's current one marked |
| `func_800537FC` | matches | a string and numbers drawn |
| `func_800539DC` | parked | four images: the loop's registers |
| `func_80053BF8` | matches | the zones' entries flagged |
| `func_80053D4C` | matches | the entries flagged by position |
| `func_80053E44` | matches | the course's lists unflagged |
| `func_80053F54` | asm | 212 instructions (matrices by value) |
| `func_800542A4` | matches | the boxes reset and updated |
| `func_800544A0`, `func_800547F4` | match | empty |
| `func_800544A8` | parked | the blocks updated and passed on: registers |
| `func_800546D4` | matches | a string by index |
| `func_80054744` | parked | a call on one of two objects: registers |
| `func_800547FC` | parked | an image drawn scaled: registers |
| `func_800549EC` | asm | 445 instructions |
| `func_800550C0` | matches | the race's counts |
| `func_80055188` | matches | the race's reset |
| `func_80055320` | matches | the sequences of kind 2 started |
| `func_800553CC` | matches | two calls if set |
| `func_80055410` | matches | the bikes' flags cleared |
