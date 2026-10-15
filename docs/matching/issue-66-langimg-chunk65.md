# The game's chunk_65: a renderer's subdivision, clipping and projection (#66)

A renderer that draws faces through the GTE (coprocessor 2) and
subdivides the ones that need it:
- faces of three and four points (28 bytes each, the points' indices
  first) passed to chunk_64's `func_80092C70` unless all their points
  share a flag in the scratchpad's table at 0x1F800030, the points'
  addresses written to the scratchpad first;
- a camera's projection (`Proj65`): copies of its fields, an angle from
  `ratan2` and values from the table at `D_800BA884`; and a view's five
  planes from it (`func_800939CC`, called by chunk_27);
- vertices of 20 bytes (a depth at 6, a screen position at 0x0C, flags
  at 0x11 and 0x13): a triangle or quadrangle subdivided (`func_80093DA0`,
  `func_80093FFC`) while the counter at 0x1D of the renderer's state
  lasts, by the edges `func_800944B8` splits (a new vertex from the pool
  at 0x10 when a length from its ends' screen positions and depths is
  over the value at 0x22), the tables at
  `D_800C8D5C` and `D_800C8D6C` giving the pattern; a face's screen
  bounds tested against the state's (`func_80094368`);
- a polygon's edges each drawn as a thin quadrangle (`func_80094F30`,
  `func_80094E80`: the two ends moved a pixel up and down, their depth
  increased).

The drawing functions keep the renderer's state in `$t9` and never set
it: the caller does, and every function reads it from there.

One file, `src/langimg/chunk_65.cpp`, 0x80093150-0x800950B0.

16 functions: 2 match, 8 are parked, 6 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **`$t9` as a register variable.** `func_80093DA0`, `func_80093FFC`,
  `func_80094368` and `func_800944B8` read the renderer's state through
  `$t9`, set by their caller, also after their own calls. A local
  `register Rnd65 *g_rnd65 asm("$25");` in each, never assigned, reads
  it: GCC uses `$t9` for it and doesn't save it around calls. A global
  register variable would be the natural declaration, but cc1plus
  refuses it in this file ("global register variable follows a function
  definition", even before `common.h`). To permute such a function, the
  base declares `Rnd65 *g_rnd65;` (pycparser doesn't read the `asm`) and
  `compile.sh` puts the `register ... asm("$25")` back with `sed`.
- **The factor's shift.** `func_80093C80` multiplies by `a * 2` with the
  shift on `a` (`sll $a1, $a1, 1; mult $a2, $a1`): `t * (a << 1)`
  matched; `t * (a * 2)` doubled `t` instead.
- **An edge loop counted down from `n - 1`.** `func_80094F30` draws the
  edges between consecutive vertices, then the closing one: `n--; do {
  ...; p++; } while (--n);` matched.
- **The projection's body twice.** `func_800939CC` calls `func_80093C80`
  on a projection of its own, changes three fields, and then repeats
  `func_80093C80`'s body in place, its last stores after the planes it
  computes. As an inline function GCC called it (`jal`) instead of
  inlining it; written out, the order of the stores is what's left.
- **Flags read and combined first.** The subdivisions test the vertices'
  flags at 0x13 with an `and` (all set: nothing to draw) and an `or`
  truncated to a byte (none set: the bounds test): `all = fc & (fa &
  fb); any = fc | (fa | fb);` with `any` an `s8`, both before the tests,
  gave the original's `and`s, `or`s and `sll`/`sra`.
- **Parked.**
  - `func_80093DA0` and `func_80093FFC` (a triangle and a quadrangle
    subdivided): the original moves the last vertex into `$a2` (`$a3`)
    again before the bounds test; GCC sees it's still there and drops
    the move, which shifts everything after by one instruction.
    `func_80093DA0` also sets its count to 0 earlier in the prologue.
    The permuter's best was a `do { } while (0)` after the flags' loads.
  - `func_80094368` (the bounds test): GCC turns the last test into
    `slt`/`xori`; the original branches to a `return 1` and a `return 0`
    (7 off).
  - `func_800944B8` (an edge split): the two vertices in swapped
    registers and the default length set earlier (13 off).
  - `func_800937F8` and `func_800938D0` (faces of three and four
    points): the original steps the face pointer in the loop's delay
    slot from one face before the first; written as `for (i = n; i; i--,
    f++)` the rest is registers and the order of the index loads (28 and
    44 off).
  - `func_800939CC` (a view's planes): the planes' addresses (the
    original computes each from the view and `i`) and registers (114
    off).
  - `func_80094E80` (an edge drawn as a quadrangle): the original copies
    each end's last three words as a block (`$t2`-`$t4`) into two of the
    four vertices; field by field, or as a struct copy, didn't give it
    (37 off).
- **Still asm.** `func_80094590`, `func_80094670`, `func_800946D0` and
  `func_80094FD4` are GTE code spimdisasm marks hand-written, and look
  it: `func_800946D0` saves its registers in an order GCC doesn't use,
  `func_80094670` ends with a `nop` in the `jr $ra`'s delay slot where
  GCC would put its last store. `func_80093150` (440
  instructions) and `func_800948EC` (358) mix GTE instructions into
  larger functions.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80093150` | asm | 440 instructions, GTE |
| `func_800937F8` | parked | faces of three points: the loop's pointer |
| `func_800938D0` | parked | faces of four points: the loop's pointer |
| `func_800939CC` | parked | a view's planes: addresses and registers |
| `func_80093C80` | matches | a camera's projection |
| `func_80093DA0` | parked | a triangle subdivided: one move |
| `func_80093FFC` | parked | a quadrangle subdivided: one move |
| `func_80094368` | parked | a face's bounds tested: the last test |
| `func_800944B8` | parked | an edge split: registers |
| `func_80094590` | asm | hand-written (GTE) |
| `func_80094670` | asm | hand-written (GTE) |
| `func_800946D0` | asm | hand-written (GTE) |
| `func_800948EC` | asm | 358 instructions, GTE |
| `func_80094E80` | parked | an edge drawn as a quadrangle: the copies |
| `func_80094F30` | matches | a polygon's edges drawn |
| `func_80094FD4` | asm | hand-written (GTE) |
