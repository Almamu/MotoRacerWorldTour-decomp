# The game's chunk_42: more of a bike's model (#43)

More functions on a bike's model (`Model42`, chunk_43's `Model43`: the
bike at 0x54, its speed at 0x278 and velocity at 0x27C):
- the eight vectors at 0x388 and the values at 0x3E8 and 0x3EC cleared
  (`func_800671EC`);
- the velocity at 0x27C copied from a vector, passed with the value at
  0x454 to `func_80099718`, then `func_8009975C` (with 0x1000) and
  `func_80099898` with the vector at 0x78, the result copied to 0x64, 1 at
  0x308; then the bike's byte at 0x187 set to -3, or 25 at 0x35E
  (`func_80067230`);
- the motion's values reset: 0x1000 at 0x440, the vectors at 0x27C, 0x30C,
  0x318 and 0x164 and some thirty values cleared, 25 at 0x35E, -1 at 0x400,
  the small global `D_800CB42C` cleared (`func_800672F0`, parked).

One file, `src/langimg/chunk_42.cpp`, 0x800653F4-0x800673CC.

6 functions: 2 match, 1 is parked, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800CB42C`, `D_800CB450`, `D_800CB454` and `D_800CB474`.

## Notes

- **A callee's return type.** `func_80067230` matched once
  `func_80099898` was declared `void` (as `include/langimg/cobjet.h` has
  it): declared returning a pointer, GCC scheduled the copy after the call
  differently (4 off, the permuter's find).
- **Parked.** `func_800672F0`: registers only. The original computes the
  address of 0x318 into `$v0` after the stores through 0x27C, and 0x164's
  after storing -1, reusing `$v0`; GCC computes 0x318's into `$a1` at the
  start and keeps -1 in `$v1` (19 off). Taking the first two addresses
  into pointers first gave the same.
- **Still asm.** `func_800653F4` (344 instructions; it walks the models
  linked from this one like chunk_43's parked `func_80068900`, with `$fp`
  and stack spills), `func_80065954` (662) and `func_800663AC` (912), not
  tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800653F4` | asm | 344 instructions |
| `func_80065954` | asm | 662 instructions |
| `func_800663AC` | asm | 912 instructions |
| `func_800671EC` | matches | eight vectors cleared |
| `func_80067230` | matches | the velocity and position set |
| `func_800672F0` | parked | the motion reset: registers |
