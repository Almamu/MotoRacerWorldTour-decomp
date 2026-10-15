# The game's chunk_72: memory cards and the CD loader (#73)

The memory cards' state (two ports, their slots sorted by what's in
them, the files of a directory), the card events' handlers and counters,
and the loader the game reads its packs with: a CD reader with retries,
a pack's header and blocks found by a hash of their names, a CRC check.
Also a glyph lookup for text and a fast fill. One file,
`src/langimg/chunk_72.cpp`, 0x800A1110-0x800A32A0.

59 functions: 52 match, 5 are parked, 2 are still asm.

## The settings

GCC 2.91.66 (2.95.2 gave the same so far), `-G8`, split addresses,
divisions without checks, four small globals (`langimg.chunk_72_*`).

`-G8` matters here as in chunk_45: most of the globals this file reads
are split into `lui`/`lw %lo`, so GCC can't have thought them small;
they're declared as arrays of unknown size (`extern int D_800D6094[];`,
used as `D_800D6094[0]`). Declared as `int`s they came out as one `lw`
macro.

## The types

- `Card72` (`D_800D4898`): the cards' state. The directories' positions
  (0x40) and the current one (0x7C), flags, two lists of 0x4C-byte
  objects, five slots of 8 bytes, a table of pointers into itself
  (0x1630), the file to start at, the state (0x16A8), the slots in use
  (0x1700) and their counts (0x1714).
- `Pack72`: a pack's header: the blocks' count, flags (8: sorted by
  hash), the blocks' size, the blocks from 0x10. `Blk72`: a block's CRC,
  size, position on the CD and name hash.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800A1110`, `func_800A1170` | parked | the file to start at; the next one: registers (14 and 32 off) |
| `func_800A1228` to `func_800A12C4` | match | the slots cleared, sorted by their counts (`qsort`) |
| `func_800A138C` | matches | a slot's index |
| `func_800A13C0` to `func_800A164C` | match | pointers, positions, the cards' first user |
| `func_800A1654`, `func_800A17EC` | match | the loading spinner; a picture shown |
| `func_800A195C` | parked | the game started: one instruction placed |
| `func_800A1B4C` | matches | |
| `func_800A1B54` | matches | the sounds' data by id (the data pointer declared small) |
| `func_800A1BD0` to `func_800A1C74` | match | the CD's start, a file searched for twice |
| `func_800A1CF8` | matches | the CD reader |
| `func_800A1EFC` | parked | a block by its name's hash (74 off) |
| `func_800A207C` | matches | a file's header, its entries' positions |
| `func_800A2148`, `func_800A2234` | match | a block read with a CRC check; a block by name |
| `func_800A2290` to `func_800A2304` | match | wrappers, a fast fill |
| `func_800A2380` | parked | a character's glyph: the endings' order (23 off) |
| `func_800A2490` to `func_800A26A0` | match | the card events' handlers and counters |
| `func_800A26DC` | matches | the card's events opened |
| `func_800A28B8` to `func_800A2AB0` | match | the events closed and tested |
| `func_800A2AC0`, `func_800A2DA8` | asm | 193 and 324 instructions |

- **`volatile` for what the card's events change.** The handlers' event
  codes and counters are written from the events: declared `volatile`,
  the clear (`func_800A26A0`) reloads each counter after zeroing it as
  the original does, and the handlers keep their stores in order.
- **Arguments evaluated in order.** `func_800A1558` calls `func_800A1504`
  first, though its result is the second argument: it was read into a
  local first.
- **A second counter for a second loop.** `func_800A15A0`'s two
  count-down loops matched with a counter each.
- **A test the other way.** `if (!f()) return -1; return 1;` and the
  reverse lay their branches out differently (`func_800A1C10`).

## Second pass

- `func_800A138C`: the search walks a pointer down with a post-decrement in
  the test (`if (*p-- == x)`), which puts the decrement in the compare's
  delay slot.
- `func_800A2148`: chunk_74's `func_800A6448` is `void` (it was declared
  `u32` here), and the CRC test is `b->m_crc != crc`.
- `func_800A2234` matched as it was, once `func_800A2148` did.

## Group C follow-up

- `func_800A1654`: the loading spinner, 32 three-point lines (`LINE_G3`,
  written as words) out from (460, 425) through the sine table, their
  length swinging between 11 and 16. The next angle is computed after the
  first point's products, as the original's `addiu`.
- `func_800A17EC`: a picture shown full screen (the named one, else the
  default `D_800C9F1C`) through chunk_58's buffer functions. The rectangle
  is set field by field (`w`, `h`, `x`, `y`); `setRECT` is a function in
  this build's headers.

## Group C, continued

- `func_800A26DC` (the card's eight events opened, then enabled) matches,
  with the events' globals indexed `[0]` as `func_800A28B8` has them.
- `func_800A195C` (the game started: the cards, the GTE, the sound, the
  spinner, the display and its 49-argument layout call) is parked one
  instruction off: the original sets the 1 it keeps in `$s0` in the delay
  slot of `func_800A0CC4`'s call; GCC puts it in `ResetCallback`'s, which
  shifts the rest.

## Inline helpers and small symbols

- `func_800A1B54` (the 163 sounds' data found by their ids) matches. The
  data pointer `D_800CBE84` is read with its own `lui` inside the loop in
  the original; declared as a plain pointer (`extern char *D_800CBE84;`,
  small by size, not one of the chunk's small globals) GCC addresses it
  `$gp`-relative and maspsx expands each read into `lui`/`lw`, which loop
  optimisation can't hoist. The counter first, then the output pointer,
  then the ids gave the original's saved registers.
- `func_800A1CF8` stays 2 off (the hook's address's high half in `$v1`);
  not tried with these changes.

## Group C: more functions

- `func_800A1CF8` (the CD reader) matches, from 2 off. The hook it calls at
  the end is a global pointer read once: declared as a 4-byte object, GCC
  reads it `$gp`-relative and maspsx expands that into a `lui` and a `lw`
  through the same register, where the original builds the high half in
  `$v1` and loads into `$v0`. Declared unsized (`extern Hook72
  *D_800D6000[];`, read as `D_800D6000[0]`), GCC builds the address itself
  and picks the original's registers.
