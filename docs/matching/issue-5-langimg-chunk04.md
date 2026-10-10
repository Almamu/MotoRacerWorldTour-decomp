# The game's chunk_04: sequences, ranges, grids (#5)

More of the code GCC 2.91.66 built between the classes: the sequence set
(started, stepped, searched by name), ranges with a needle and a sprite,
and grids of 32-unit cells with a coarse index and GTE plane tests.
One file, `src/langimg/chunk_04.cpp`, 0x8001983C-0x8001B778.

34 functions: 23 match, 7 are parked, 4 are still asm (after the pass
over the large functions).

## The settings

As chunk_03: GCC 2.91.66, `-G8`, split addresses, no small externs, and
divisions without checks (`--div-no-checks`): `func_8001AD78`'s division
is a bare `div`/`mflo`, and no function of the chunk has ASPSX's checks.

The sequence types moved to `include/langimg/seq.h` (`Seq` is a `CName`,
found through `CName::Get`; `SeqSet` holds them along `Seq::m_next`).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8001983C` | parked | a sequence's frame; registers only (6 off) |
| `func_80019A98`, `func_80019B2C`, `func_80019BC4` | match | flags, links and direction of a sequence's entries |
| `func_80019C78`, `func_80019D0C`, `func_80019D60`, `func_80019DC0` | match | find by name, start, reset |
| `func_80019E30` | matches | the set's frame; the state read into a local |
| `func_80019F0C`, `func_80019FA4`, `func_80019FB0`, `func_80019FBC` | match | a range set up from its definition, moved |
| `func_80019FF8` | parked | the range's draw (`sprintf`): 3 off, `&h` taken before `r->m_3C` is read |
| `func_8001A2A0` | parked | the needle: multiplications scheduled otherwise |
| `func_8001A4F0` | parked | the range's sprite: registers |
| `func_8001A62C`, `func_8001A63C` | match | a pair's constructor and destructor |
| `func_8001A664`, `func_8001A6AC` | match | a position in a grid, in a set of grids |
| `func_8001A7F4` | parked | the first of n grids: scheduling (7 off) |
| `func_8001A86C` | parked | the grids' search (a grid, its neighbours, theirs): the original spills `g` and two constants, a first draft |
| `func_8001ABBC` | asm | their plane test (GTE) |
| `func_8001ACE4` | parked | a plane test through the GTE: scheduling, registers |
| `func_8001AD78`, `func_8001AD9C`, `func_8001AE40` | match | a ratio, an interpolation, a plane crossing |
| `func_8001AF3C`, `func_8001AFB0` | match | positions to cells and back |
| `func_8001AFF4`, `func_8001B15C`, `func_8001B350` | asm | GTE plane pushes and the grid's update |
| `func_8001B6B4`, `func_8001B76C` | match | the race entries sorted by kind |

- **Bitfields read into a local.** `if (s->m_state)` on a signed 2-bit
  field compiles to `andi 3`; the original extracts the field (`sll 30`,
  and `sll 28; sra 30` for the next one) and tests that, which
  `int st = s->m_state; if (st)` gives (`func_80019E30`,
  `func_8001983C`). chunk_03's `func_80017B88` wrote the shifts by hand
  for the same thing.
- **Where the loop pass puts constants.** In `func_80019BC4` the shifted
  direction is hoisted after `0xFFF000` and `-1` and before `-0xF01`: in
  the order the loop's statements first use them. Declared as a local in
  the innermost block, after the id test, it lands where the original has
  it; before the loop, or at the top of the body, it doesn't.
- **A `while` whose condition calls a function.** `func_8001A7F4` tests
  the count and calls at the top of the loop, with the increments before
  the test: GCC doesn't copy an exit test that contains a call, so
  `while (n && (r = f(g, v), g++, !r))` keeps that layout; the comma puts
  `g++` after the call, where the original has it.
- **Skipped, not returned.** `if (r >= 0) r += c[0]; return r;` rather
  than `if (r < 0) return r;`: the delay slot filler takes the shared
  return's copy into the branch (`func_8001A6AC`).
- **4-byte struct copies.** A struct of shorts and bytes is copied with
  `lwl`/`lwr`; the original's `lw`/`sw` copy needs an `int` member to
  align it (`RangeDef::m_00`, `func_80019F0C`).
- **An unused first parameter.** `func_8001AD78` and `func_8001AD9C` take
  their values from `$a1` on: a method's `this`, written `void *self`.
- **A parameter used as two things.** `func_8001AE40` passes its second
  argument on as a pointer and uses its value as an angle; written so,
  with a comment.
- **GTE.** `include/gte.h` has more multi-operand moves:
  `GTE_SET_V0`, `GTE_SET_BK` (the `mvmva` addend), `GTE_SET_LIGHT`,
  `GTE_GET_MAC13` and `GTE_MVMVA_LV0TR`. An `asm` operand of a `short`
  is loaded with `lhu`; cast it to `int` for `lh`.
