# The game's chunk_32: a race's sequence of steps, its bikes' paths and its display (#33)

The race of chunk_38 (`Own32`) and its run's bikes (0x568 bytes):
- a bike moved along its path (`m_55C`, points of 32 bytes): to the
  next point when, with the y's cleared, `func_80099B88` of the two
  differences (`func_800998D0`, from the bike's body's position at 0x64)
  is positive and `func_800993C8` of the second at most 0x10000000; then
  the point's position and its 8 bytes at 0x0C copied to the bike;
  the furthest point reached kept at 0x544 and passed on (the run's
  0x1DF0 set from the point's shorts, `func_8006CA84`);
- a bike's call to `func_800333F8` by its body's values at 0x529, 0x52A
  and 0x530;
- a bike's count at 0x560 and the run's entry by its byte at 0x44
  (+5000) updated when a value passed in drops under 0x100 (and back
  over 0xF00 to rearm), while the run's body at 0x10 has 5 at 0x52C; the
  player's sprite's part 2 set.

The race's sequence of steps (`Seq32`, at 0x494): steps of 20 bytes, a
kind from 0 to 10, a count, a bike and a body. One set, the current one
returned, ended (kinds 3 and 4 give the bike the step's body, kind 5 sets
the race's 0x382), the next startable one started (`func_80051AE0`), and
the current one tested for its end by kind (a time, two calls to
`func_8006AC5C`, a node of the race's list at 0x6C, ...).

Then the display: a player's sprite (chunk_56's `func_8008280C`) and its
parts (`func_80053250`: the cameras whose value at 0x5A is the player's,
the sprite's flags at 0x0C, chunk_33's calls), the text
drawn for the run's mode 3, four binary digits of `D_800D5FD8`, the
image for 0x304.

One file, `src/langimg/chunk_32.cpp`, 0x800514F4-0x800536F4.

19 functions: 13 match, 4 are parked, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800C676C` and `D_800CB374`.

## Notes

- **The result set after the early return.** `func_80051618` returns 0
  at once without a path (`j` to the end, 0 in the delay slot) and
  otherwise keeps its result in `$s5`, set to 0 in the delay slot of the
  branch into the body: `int r; if (!p) return 0; r = 0;`. With `int r =
  0;` GCC knew `r` was 0 on every early exit and returned the constant.
  Its later tests are nested `if (ok) { ... }` (chunk_20's note).
- **A vector copied field by field.** The same function copies a vector
  into the bike with its first word at the field's offset and the other
  two through the field's address (`addiu $v0, $s3, 0x548`): an inline
  function storing `d->x`, `d->y`, `d->z` gave it; the struct's
  assignment copied three words through `$t1`-`$t3`.
- **The callee's fourth argument.** `func_80053198` keeps its index in
  `$a3` from the start: chunk_56's `func_8008280C` takes four arguments,
  the index the fourth.
- **A loop entered at its test: `goto`.** `func_80051AE0` jumps to its
  test first, steps the index before it, and loops back from the bottom
  while nothing's started: `goto test; next: i++; test: if (i < n) {
  ...; if (!r) goto next; }`. `for`, `while`, `for (...; i < n && !r;
  ...)` and `while (!r && i < n)` copied the test before the loop.
- **A case falling into the next.** In its `switch`, kinds 1 and 8 to 10
  set the result and fall into kind 0's test of the time; with a `break`
  the cases were laid out differently (150 off).
- **Field copies in order.** Its kind 3 copies the step's bike and body
  from the current step, then the time, then sets the result; 4 of the
  24 orders matched.
- **Flags cleared one by one.** `func_80053250` clears a sprite's flags
  with an `and` per bit (`-2`, `-3`; `-0x201`, `-0x401`, `-0x801`) and
  sets them with one `ori`: the short read into an `int` and `f &= ~1; f
  &= ~2;` gave it. As bitfields GCC merged the clears into one `andi`;
  as a `short`, the last clear went through `sll`/`sra`.
- **The clearing block first.** The same function's test `if (a == 7 &&
  b) set; else clear;` came out with the set first; the original's
  `clear` is first: `if (a != 7 || !b) clear; else set;`.
- **A global's value in a local.** It compares `D_800D49A4` with 1, then
  the player with the same value after a call: `(m = D_800D49A4) == 1`
  and `i == m`. A reused local (the bike's index) made it live across
  the function (227 off).
- **The cameras read through the array.** Its loop over the three
  cameras reads each through `o->m_3B8[k]` (base loaded, then
  `addu $a1, $s0, $v0`); a local pointer to the camera swapped the
  `addu`'s operands.
- **The run's two times read first.** The original loads the run's two
  times at 0x1E14 and 0x1E1C before testing either: `t0 = ...; t1 = ...;
  if (t0 != -1 && t1 == -1 && ...)`.
- **The bike pointer from the run in a local.** `func_80053250` passes
  the run it computed the bike from (`$a0`) to `func_800846AC`: `r =
  o->m_378; n = o->m_470[i]; b = n >= 0 ? &r->m_2E8[n] : 0;`.
- **Parked.**
  - `func_80051EA4` (the current step tested for its end by kind):
    registers, the list's node in `$v1` where the original has `$a0` (6
    off). The list's search is a `goto` loop as above; the permuter's
    match was a `do { } while (0)` around the search and the result.
  - `func_80052720` (four binary digits drawn): GCC steps a pointer
    through the text where the original adds the index to the text's
    address each time (and keeps the address in two registers); the
    last call loads the screen before the font (27 off).
  - `func_80052EB0` (a frame's display): the 1-bit test `-(o->m_00 &
    1)` keeps its `negu` only through a local; GCC then loads the image's
    handle before the three stores of the text's mode and colours, the
    original after the colour's (10 off).
  - `func_80053048` (the text for the run's mode 3): the screen's field
    read into a local before the call (the permuter's change) fixed most
    of it; the original then loads `D_800C89F4` before the font, GCC the
    font first (4 off).
- **Still asm.** `func_8005215C` (369 instructions) switches the stack
  to the scratchpad around a call (`$sp` saved in `D_800BCF54`, set to
  0x1F800400) and uses `$fp`; `func_80052868` (402 instructions) is
  marked hand-written by the splitter.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800514F4` | matches | a bike moved along its path, the furthest point kept |
| `func_80051578` | matches | whether a bike is at its path's last point |
| `func_800515A8` | matches | the run's 0x1DF0 set from a point |
| `func_80051618` | matches | a bike to its next point |
| `func_80051884` | matches | a bike's call by its body's values |
| `func_80051940` | matches | a bike's count and the run's entry updated |
| `func_80051A84` | matches | the current step ended, none current |
| `func_80051AB0` | matches | a step set |
| `func_80051AE0` | matches | the next startable step started |
| `func_80051DC4` | matches | the current step ended |
| `func_80051EA4` | parked | the current step tested: registers |
| `func_80052120` | matches | the current step, or 0 |
| `func_8005215C` | asm | 369 instructions (a stack switch) |
| `func_80052720` | parked | four binary digits drawn: the loop |
| `func_80052868` | asm | 402 instructions (hand-written) |
| `func_80052EB0` | parked | a frame's display: the stores' registers |
| `func_80053048` | parked | the text for the run's mode 3: the call's loads |
| `func_80053198` | matches | a player's sprite |
| `func_80053250` | matches | a player's display |
