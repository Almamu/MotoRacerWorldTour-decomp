# The game's chunk_55: text, a map and a pulse (#56)

What's here:
- **Text.** A string's width in a font (glyphs, spaces, a code that skips
  three bytes, icons), and characters mapped to the font's symbols
  (`-`, `+`, space and the digits) and back.
- **A text colour.** Chosen from the mode's flags.
- **A map (`Map55`).** Keys, values and a count: its constructor and
  destructor, its arrays allocated, an entry set or cleared.
- **Small helpers.** A pair's value looked up in a table, a sprite's two
  fields, a counter, and a value pulsed up and down by 32.

One file, `src/langimg/chunk_55.cpp`, 0x8007F294-0x80081270.

20 functions: 13 match, 3 are parked, 4 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals from `D_800C89D0` on.

## Notes

- **`char` is unsigned** (the techniques doc has it). Written with
  `char`, the mappings cut the argument with `andi 0xFF`; the original
  sign-extends it, so they take an `s8`.
- **An `if` chain.** The mappings test each character in turn, as an
  `if`/`else if` chain.
- **The table in a local.** `func_8007F2C8` looks for a pair in a table
  of 4-byte entries. With the table read through `t->m_18[i]`, GCC's
  three walking pointers came out in other registers. With the table in
  a local first (`Pair55 *e = t->m_18;`), it matched; the permuter found
  it.
- **A loop GCC doesn't see.** `func_800803C4`'s original enters its loop
  at the test at the bottom, re-materializes its constants on each pass,
  and doesn't duplicate the test before the loop. Those are signs of a
  loop GCC's loop optimizer didn't recognize. A `goto` loop gives that
  shape; the function's start and its registers still differ. Parked.
- **An empty case kept.** `func_80080F30` tests the value `0x1000`
  before the case it acts on, though the `0x1000` case does nothing: the
  switch is on an unsigned value with a third empty case (see "Group C
  near-misses" for what finished it).

## Group C, continued

- `func_8007F33C` (a string's width with its kerning, up to the end of
  its line) is written and parked, 92 off. Its loop keeps -1, -4, 0xFFFF
  and the glyphs' base in saved registers: the chunk is now built with
  `-fmove-all-movables`, which took it from 169 to 92 off (every matched
  function still matches, the parked `func_800803C4` unchanged). Left: the
  space's glyph addressed through the hoisted base where the original
  indexes the font, the previous character in another register, and the
  width added through a copy. The previous character declared `u8` saved
  the zero-extension before chunk_55's `func_8007F2C8` (which takes `u8`s).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8007F294` | matches | a counter |
| `func_8007F2AC` | matches | a sprite's two fields |
| `func_8007F2C8` | matches | a pair's value |
| `func_8007F33C` | parked | a string's width with its kerning: 92 off |
| `func_8007F5E8` | asm | 216 instructions |
| `func_8007F948` | asm | 446 instructions |
| `func_80080040` | asm | 225 instructions |
| `func_800803C4` | parked | a string's width: see above |
| `func_800804B8`, `func_80080598` | match | characters to the font's symbols and back |
| `func_80080678` | matches | a value pulsed |
| `func_800806D4` | asm | 535 instructions |
| `func_80080F30` | matches | four values cleared, then `func_8007F948` in mode 0 (its arguments passed through) |
| `func_80080F8C` | parked | the colour: registers |
| `func_8008106C`, `func_8008107C`, `func_800810C0` | match | the map's constructor and destructor |
| `func_80081154` | matches | the map's arrays |
| `func_800811C4`, `func_8008123C` | match | an entry set, cleared |

## Group C near-misses

- `func_80080F30` matches. Its result was in `$a0` where the original
  has `$t0` (3 off): chunk_22 calls it with four arguments (`font`, the
  text, x and y), and it passes them straight to `func_8007F948`, so they
  stay live in `$a0`-`$a3` until that call and the result goes to `$t0`.
  Both functions now take `(void *font, void *t, int x, int y)` (the
  callee's asm reads all four).
