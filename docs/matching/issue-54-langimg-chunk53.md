# The game's chunk_53: drawing models through the GTE (#54)

Code that draws a model (`Obj53`: its description at 4, its codes at 0x10)
with a matrix, called from chunk_02b's `func_8007C354(model, m)`; most of
it is GTE code that splat marks hand-written:
- a model drawn: `func_8007ED28` with the matrix's translation when the
  description's flag 4 is set, the GTE's matrices set (`func_8007C1B8`),
  the stack moved to the scratchpad (`SetSp(0x1F8003F0)`), then
  `func_8007C780` (flag 2) or `func_8007BFB0`, and the stack put back
  (`func_8007C354`);
- the GTE's rotation and translation from the camera's view times the
  matrix (into the scratchpad at 0x1F8003E0), the translation scaled by the
  second argument through `MULSHIFT` unless it's 0x80000 (`func_8007C1B8`,
  parked);
- the same with the Z averages' scale factors set from the camera's lens
  and the scale for `func_8007BD1C`, then put back (`func_8007C428`);
- an ordering table of `16 << n` entries (n from the model data's count)
  taken from the packet buffer `D_800C8C70`, cleared and linked into the
  frame's table, then the model's codes run through the table of
  functions `D_800C896C` (a kind in the low 6 bits, a count above), at most
  25 of them (`func_8007C780`, parked).

One file, `src/langimg/chunk_53.cpp`, 0x8007B3C0-0x8007D130.

14 functions: 2 match, 2 are parked, 10 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800C88FC`, `D_800C8900` and `D_800C8904`.

## Notes

- **A vector copied field by field.** `func_8007C354` copies the matrix's
  translation to a local with three loads into `$v0`-`$a0` (`v.x =
  e->t[0]; ...`); as a struct copy GCC used `$t0`-`$t2`.
- **Reading the Z scale factors in one statement** (`GTE_GET_ZSF`, new in
  `include/gte.h`). `func_8007C428` saves ZSF3 and ZSF4 in `$s2` and `$s3`
  around its call: with two `GTE_CFC2`s, or one `asm` listing its outputs
  in order, GCC swapped the two saved registers. Listing ZSF4's output
  first (the macro does) gave the original's.
- **Parked.**
  - `func_8007C1B8`: the original drops the scratchpad matrix's address
    (`$s2`) after the third `MULSHIFT` and sets the rotation through two
    fresh copies of it (`$t2`, `$t1`); GCC keeps it in `$s2`, and the
    camera and the matrix are in swapped saved registers (68 off). The
    view's translation subtracted through pointers to both translations
    (the original's `$s0`/`$s1` + 0x14 and 0x74) and the rotation set
    through the matrix's variable got it from 97.
  - `func_8007C780`: the ordering table's count and pointer in swapped
    saved registers, the function table's address built in another
    register (76 off, most of it shifted by one instruction). The frame's
    table entry is read as `e[-6]` from `D_800CBDC0 + (len + base)`, as
    the original's load offset.
- **Still asm.** `func_8007B3C0`, `func_8007B664`, `func_8007B870`,
  `func_8007BB24`, `func_8007BD1C`, `func_8007BFB0`, `func_8007C4EC`,
  `func_8007C978`, `func_8007CC3C` and `func_8007CEB4` (127 to 178
  instructions each) are GTE code (`mtc2`/`ctc2`/`cop2`) marked
  hand-written; not tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8007B3C0` | asm | GTE, 170 instructions |
| `func_8007B664` | asm | GTE, 132 instructions |
| `func_8007B870` | asm | GTE, 174 instructions |
| `func_8007BB24` | asm | GTE, 127 instructions |
| `func_8007BD1C` | asm | GTE, 166 instructions |
| `func_8007BFB0` | asm | GTE, 131 instructions |
| `func_8007C1B8` | parked | the GTE's matrices: registers |
| `func_8007C354` | matches | a model drawn |
| `func_8007C428` | matches | the same with the Z scale factors |
| `func_8007C4EC` | asm | GTE, 166 instructions |
| `func_8007C780` | parked | the model's codes run: registers |
| `func_8007C978` | asm | GTE, 178 instructions |
| `func_8007CC3C` | asm | GTE, 159 instructions |
| `func_8007CEB4` | asm | GTE, 160 instructions |
