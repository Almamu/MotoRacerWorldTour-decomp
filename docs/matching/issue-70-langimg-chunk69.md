# The game's chunk_69: a game object's screens (#70)

Functions on a large game object (`Game69`; chunk_70 works on the same
one). Through its two views (`m_A80`, `m_A84`, chosen by the mode at
`m_A90`) it reaches a screen (`Scr69`). The small functions here:
- a screen's three request flags set when a state is 2, and those
  requests handled (one copies a name back);
- a name copied between the screen's drawing and a record (`m_A9C`);
- a 0x7000-byte buffer passed to `func_80087468` through chunk_58's
  buffer class;
- timers and a flag set or cleared;
- a part of the screen moved by a fraction of the time;
- three slots reset;
- a 0x15AC-byte block passed to `func_8009E01C`, and one copied back
  into `D_800BC884`, with two of the display's values set from it.

One file, `src/langimg/chunk_69.cpp`, 0x8009B17C-0x8009D0E4.

23 functions: 18 match, 4 are parked, 1 is still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, one small
global.

## Notes

- **An 11-byte name copied as a block.** The names are `char c[11]`
  structs at odd offsets (0x17C, 0x187); struct assignment gave the
  original's two `lwl`/`lwr` words and three byte moves.
- **chunk_58's buffer on the stack.** `func_8009CC38` builds a buffer
  object on the stack around a `new char[0x7000]`, calling its
  constructor and destructor (`func_80086E68`, `func_80086E7C` with 2)
  by hand. The array is freed with an explicit `if (p) delete[] p;`.
- **`memcpy` called, not inlined.** With `D_800BC884` declared as a
  `u8 *`, GCC expanded the 0x15AC-byte `memcpy` inline. Declared as a
  `void *` (as chunk_70 does), it's a call, as in the original.
- **A callee's result, unused.** `func_8009CD78` ends with a call to
  `func_8006CA84`, which returns a handle (chunk_71 keeps it). Declared
  `void`, two registers swapped before the call; declared returning
  `int`, it matched (the permuter found it).
- **A record's address kept.** `func_8009CB04` and `func_8009C9A4` keep
  `&o->m_A9C->m_08` in one saved register and store its first field
  through it. GCC folds that first store into `m_A9C + 8` and keeps both
  addresses. Both are parked.
- **`try_func` doesn't see relocations, again.** `func_8009C9A4` was 4
  instructions off but left unparked by mistake; `make` failed and the
  differing bytes, mapped to an address (`0x80011800 + offset - 0x10`),
  pointed at it.

## Group C, continued

- `func_8009B5E8` (the settings screen filled from the record: the
  fields hidden or shown by the record's mode, eight values set through
  `func_8009B8F8`, the name copied) is written and parked, 10 off, in
  registers only. The entries' counter incremented in a statement of its
  own (`k++;` after the call, not `s->m_5C[k++]` in it) took it from 153
  to 10. `Scr69` now names its fields at 0x30 to 0xA4.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8009B17C` | asm | 283 instructions |
| `func_8009B5E8` | parked | the settings screen filled: 10 off |
| `func_8009B838` | matches | the name copied to the drawing |
| `func_8009B8BC` | matches | a call when there's a screen |
| `func_8009B8F8` | matches | a part moved by a fraction |
| `func_8009B9B4` | parked | the speed graph: a saved register more (188 off) |
| `func_8009BDB8` | matches | a run's measures computed and shown (group C large functions) |
| `func_8009C3BC` | matches | the view's four items shown or hidden |
| `func_8009C534` | matches | the screen's requests handled |
| `func_8009C694` | matches | the view's record picked and named |
| `func_8009C84C` | matches | the name kept from the drawing |
| `func_8009C944`, `func_8009C964`, `func_8009C984` | match | a request flag set when the state is 2 |
| `func_8009C9A4` | parked | the record set up, with a label: the record's address |
| `func_8009CB04` | parked | the record set up: the record's address |
| `func_8009CC18` | matches | a timer set, a flag cleared |
| `func_8009CC38` | matches | a buffer passed to `func_80087468` |
| `func_8009CCEC` | matches | a timer reset |
| `func_8009CD24` | matches | the 0x15AC-byte block passed on |
| `func_8009CD78` | matches | the block copied back |
| `func_8009CEAC` | matches | three slots reset |
| `func_8009CF14` | matches | a script's cheat codes |

## Group C follow-up

- `func_8009C3BC`: the view's four items (two through objects at 0x21C0
  and 0x21C4, two directly) get flag 2 set or cleared, and the layout's
  two values are set to match; with flag set, chunk_20's `func_8003AB24`.
  Matched as written once `View69` and `Scr69` had the fields.
- `func_8009C694`: the record (0x198 bytes, `Draw69`) for the mode, the
  track's laps (`D_800C9330`'s table copied to the stack) and the player,
  named from the saved name. `D_800D5F34` is also read as a number here
  (an `asm` alias, as in chunk_71), and the scene's words at 0x14 and
  0x21D0 are written as words.

## Group C, continued

`func_8009CF14` (a script's handler: a code looked up in `D_800C9364`'s
list, its effect, then a flash) matches:
- the list is declared small (`extern int D_800C9364;`, passed as
  `(char *)&D_800C9364`): GCC then accesses it `$gp`-relative and maspsx,
  the symbol not being one of the chunk's small globals, expands it into
  one `la`, which the scheduler can't split into the branches' delay slots
  as it did the `lui` of an array's address;
- the flash's colours go through two locals (`lo`, `hi`), and the call is
  the two-argument `func_8006CA84(6, 127)` after the stores through a
  pointer to the flash.

## Group C large functions

- `func_8009BDB8` (the run's measures: chunk_09's `func_80023E48` and
  `func_80023A30` fill a record of 0x3C bytes per track and units at the
  screen's 0x1FF8, its times in tenths, then eleven lines printed into the
  texts at 0x2180) matches. The times go through an inline function that
  reads the text's pointer inside each branch (`Time69(s, k, v)`, not the
  pointer passed in). Two of the lines pass `func_800A6850`'s and
  `func_80086A38`'s results straight as `sprintf`'s arguments, which put
  the results in the original's saved registers (written into locals, the
  last two came out swapped; the permuter found the first). The screen's
  0x14 is read as a word here and as a `short` by `func_8009CD78`: a
  union (`m_14`, `m_14w`).

## Group C: more functions

- `func_8009B9B4` (the speed graph) is written and parked, 188 off: the
  frame line, the two rows of ticks and the curve with a draw mode after
  each segment are the original's packets in its order (the corners as one
  4-short array: two 2-short arrays get 8-byte-aligned slots). The original
  keeps the corners and the last point in temporaries after the two calls
  (a frame of 0x30); GCC keeps one of them in a saved register more (0x38),
  which shifts everything after. The chunk now includes `psyq.h`.
