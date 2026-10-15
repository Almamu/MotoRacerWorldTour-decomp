# The game's chunk_37: a race's bikes and cameras (#38)

The race (chunk_33's `Race33`, here `Own37`) and its run's bikes (0x568
bytes each):
- the bikes counted by kind (1 and 2), then as many of the run's bytes
  at 0x1E26 (for kind 2) and 0x1E24 (for kind 1) written to a table of
  four (`D_800D5F70`), the rest -1;
- a bike reset: its fields and flags set, its list's eight entries
  cleared, its body placed (by name, `"n_moto"` and a digit, a matrix
  copied from the object found), the calls for its kind, an entry of the
  run's list at 0x1E40 looked up, the grid node at its position
  recorded;
- the bike at the run's 0x1E2B flagged (0x40) or unflagged by
  `D_800CAE90`, and a call when the bike at 0x1E24 is in state 3;
- a call by a bike's state (4 or 3).

The race's three cameras (chunk_58's `Cam58`, 0x5C bytes): each reset
from the race's position at 0x3BC, or set from the value at 0x30 of what
`func_800891E8` returns (and a scale by the camera's index, from a
table), and its value at 0x5A cleared.

Also a value by index (an 18-case `switch`, then `func_8005C424`), two
delay loops on a counter's first use, a vector's three shorts passed to
`func_80097E4C`, and three small calls.

One file, `src/langimg/chunk_37.cpp`, 0x8005B788-0x8005D15C.

21 functions: 15 match, 5 are parked, 1 is still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, one small
global (`D_800CB3C0`).

## Notes

- **The tables declared small.** `func_8005B788` stores through
  `D_800D5F70` and `func_8005C128` reads `D_800CB400` by index, the
  index's shift before the address's `lui`. Declared as arrays, GCC
  loaded the address first; declared `extern int` (chunk_47's case),
  `(&D_800D5F70)[n++]` matched, and `D_800CB400` only by bytes, after the
  other factor: `o->m_3C4.pad * *(int *)((u8 *)&D_800CB400 + (i << 2))`.
- **The counts through an inline function.** `func_8005B788` counts the
  bikes of kind 1, then of kind 2, with chunk_33's loop; each count is
  copied out of the same register. As an inline function taking the run
  (`func_8005B788_count(o->m_378, 1)`) it matched; with the run in a
  local first, the permuter's change, `o->m_378` passed each time, was
  needed.
- **Count-down copies.** The same function copies the counted indices
  with a count going down to 0 behind a `blez`: `if (n2 > 0) do { ... }
  while (--n2);`. `for` loops kept the count going up (`slt`).
- **The last loop's bound.** It then writes -1 to the table's entries
  from `n` to 4, a `blez` on `4 - n` and a `bgez` at the bottom: `k = 4
  - n; if (k > 0) do { ... } while (--k >= 0);`.
- **The bike through an inline function.** `func_8005BEC4` takes a slot's
  bike (or 0) through `func_8005BEC4_bike` into a local, then sets or
  clears its flag; written in place (a `?:` or an `if`) the pointer's
  copy into `$v1` was missing.
- **A load before the stores.** `func_8005B8D0` stores four fields of the
  bike after loading the run's byte at 0x1F44; `b->m_42 =
  o->m_378->m_1F44;` written before the three stores put them in the
  load's delay.
- **A loop counter of its own.** In the same function, clearing the
  run's eight entries with the counter later reused for a call's result
  swapped the loop's two registers; a separate `j` matched.
- **`while (i--)` from 100.** `func_8005C594`'s delay loops start the
  original's count at 99 (chunk_03's "empty loops count from one more").
- **Parked.**
  - `func_8005BB44` (a bike's body placed): the name's copy matches
    (`name[0] = 0;` then the 8 bytes as a struct, `"n_motoX"`, the digit
    and the terminator), not the matrix's: the original copies it 3, 2 and
    3 words at a time through `$a0`-`$a2`, GCC's block move 4 and 4
    through `$t2`-`$t5`. Loads into locals in that grouping got it to
    `$v0`/`$v1` swapped; the permuter's matches were noise.
  - `func_8005BFEC` (a call by a bike's state): the -1 stored at 0x44 is loaded
    again in the original; GCC keeps the one `k` was compared with in a
    saved register. The permuter's matches reused one variable for -1 and
    for `k`.
  - `func_8005BC94` (an entry of the run's list looked up): GCC
    copies the loop's first test before it (the index known to be 0);
    the original tests at the top each time. None of `while`, `do` with a
    `break`, or chunk_25's `while (!done) { if (...) break; ... }` gave
    the layout.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8005B788` | matches | the bikes counted by kind, the table written |
| `func_8005B8D0` | matches | a bike reset |
| `func_8005BB44` | parked | a bike's body placed: the matrix's copy |
| `func_8005BC94` | parked | an entry of the run's list looked up: the loop's test |
| `func_8005BDE4` | matches | a call by a bike's state |
| `func_8005BEC4` | matches | a bike flagged or unflagged |
| `func_8005BFEC` | parked | a call by a bike's state: the -1's register |
| `func_8005C0E4` | matches | the three cameras reset |
| `func_8005C128` | matches | a camera set from `func_800891E8`'s value |
| `func_8005C304` | matches | a camera reset |
| `func_8005C3FC` | matches | a camera's value at 0x5A cleared |
| `func_8005C424` | matches | a value by index, or 0 |
| `func_8005C46C` | matches | a value by index, through a `switch` |
| `func_8005C594` | matches | two delay loops on a counter's first use |
| `func_8005C5D8` | matches | a vector's shorts passed on |
| `func_8005C608` | matches | two calls |
| `func_8005C648` | asm | 238 instructions |
| `func_8005CA00` | parked | the display's layout: registers |
| `func_8005CD9C` | matches | empty |
| `func_8005CDA4` | parked | the race set up: two arms' shared load |
| `func_8005D12C` | matches | a call and a global copied |

## Group B follow-up, continued

- The chunk is now built with `-fmove-all-movables`: every matched
  function still matches, `func_8005BC94` goes from 82 to 75 off and the
  new `func_8005CDA4` from 214 to 134 (its loop keeps 4 in `$s7` as the
  original).
- `func_8005CDA4` written and parked: the run's mode and laps from the
  settings, two and three of chunk_51's objects made (`operator new` and
  their constructor `func_80078244` called directly, as the original), the
  two text tables `D_800CB2F8`/`D_800CB2F4` picked by the rules' kind and
  the mode, each object's values copied, three buffers made with `new
  u8[]`, then `func_80020298`, `func_8006BE7C` and `func_8006CA78`.
  `func_8005CD9C` (empty) now takes the race, as its caller passes it.
  Left: in the third mode's two arms the original loads `D_800C656C` in
  each, GCC shares it (134 off, most of it a shift).
- `func_8005CA00` written and parked (165 off): the display's layout from
  the font's text sizes and the mode, the cameras' `D_800CB400` factors,
  and the cameras' fonts and texts. Left: the original keeps the first
  loop's counter in a saved register shared with the second loop, and
  reloads the text's height in another order.
