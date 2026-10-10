# The game's chunk_68: the vectors' operators, a menu's slots (#69)

The game's vector library (add, subtract, scale, shift, compare, dot and
cross products in fixed point, squared lengths and lengths, a
normaliser), a cubic ease, the game's start (the libraries, the cards,
then the main loop), and a two-player menu: its slots' callbacks, its
settings copied out, and the players' HUD each frame. One file,
`src/langimg/chunk_68.cpp`, 0x800990E8-0x8009B17C.

47 functions: 40 match, 6 are parked, 1 is still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, and no
small globals (`langimg.chunk_68_*`, `--small-externs=` left empty).

## Notes

- **Read, then operate in place.** The vector operators load the
  first operand's three fields, then the second's, then do the
  arithmetic: `x = a->vx; y = a->vy; z = a->vz; x -= b->vx; ...`, then
  the three stores. On `SVECTOR`s the locals are `int`.
- **Fixed point with `MULSHIFT`.** The dot and cross products, with 12
  bits of fraction or a variable count, use the game's macro
  (`include/mulshift.h`). The 4.12 dot product matched with the sum built
  as `r = x + y; r += z;`; the variable-shift one as one expression.
- **The cross product's caller passes its arguments on.**
  `func_80099B60` only calls `func_80099A38` and returns its first
  argument; the other three go through in `$a1` to `$a3` untouched.
- **The game's start.** `func_80099F2C` calls four setups, opens a card
  file, then loops forever on the main loop's step with a counter. The
  counter is set to 0 after the first call (it lands in the second
  call's delay slot), and the loop's argument is a scalar built with
  `la` each time (`&D_800CABC0`).
- **A 64-bit square, as an `asm` macro.** Four functions (the squared
  length, shifted or not; the length through a 64-bit or a 32-bit square
  root; and one through the GTE's leading-zero count) square each field
  with `mult; nop; nop; mflo; mfhi` and add the halves in C, carry
  included. `SQR64` gives that shape; the registers are still about 18
  instructions off, so they're parked.
- **`abs` as a macro and an inline helper.** The normaliser tests each
  field with `sra`/`xor`/`subu` (the `ABS` macro) and stores once after
  both paths (division or `func_80097A68`): an inline helper,
  `ScaleDiv`. The registers are still off (parked).
- **The players' HUD.** `func_8009A0B0` prints each player's label, calls
  `func_800B031C` with a value times `0xFF01` while a counter runs down,
  and fills ten value slots from a layout table.
  Keeping pointers to the field arrays (`int *sel =
  m->m_A9C->m_08.m_18;`) brought it from 266 to 88 off; the rest is
  registers: the original compares with 4, 7 and `~2` through `$t6`, the
  reload register (parked).
- **A slot's callback.** `func_8009A524` matched after the permuter
  replaced a local `int *p = d->m_114` with `d->m_114[...]` at each use.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800990E8` | parked | the normaliser: registers around `ABS` and the helper |
| `func_8009923C`, `func_8009931C` | parked | the length (32-bit root with the GTE's count; 64-bit root) |
| `func_800993C8`, `func_80099454` | parked | the squared length, plain or shifted: the halves' registers |
| `func_800994F0` to `func_800998D0` | match | scale (by an integer or in fixed point), divide, negate, add, subtract (15 functions) |
| `func_80099908`, `func_80099A38`, `func_80099B60` | match | the cross product, 4.12 or with a shift, and its wrapper |
| `func_80099B88`, `func_80099C20`, `func_80099CB0` | match | the dot products and the integer cross product |
| `func_80099D48` to `func_80099EF4` | match | shifts, equality, `SVECTOR` sums |
| `func_80099F2C` | matches | the game's start |
| `func_80099F88` | matches | the settings, copied out of `D_800CC030` |
| `func_8009A0B0` | parked | the players' HUD: registers (88 off) |
| `func_8009A524`, `func_8009A61C`, `func_8009A740` to `func_8009A93C` | match | the menu's slots, callbacks and counters |
| `func_8009A9A4` | matches | a cubic ease |
| `func_8009AA2C` | asm | a graph drawn with hand-linked primitives (468 instructions) |
