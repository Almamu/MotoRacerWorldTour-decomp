# The game's chunk_14: more of the bike (#15)

More functions on the bike (`Bike`, `include/langimg/bike.h`, chunk_09
on):
- a value shown as text with its sign (`+` in 0xFF00, `-` in 0xFF, in
  `D_800D4798`), from `func_800A6850`'s result, through chunk_44's
  `func_8006AA30` for the bike's index at 0x43, unless the game's value at
  0x304 is set or the mode `D_800D5F40` is 0 or 2 (`func_8002D700`);
- the vector at 0x2A0 cut to 0 within 1310 on each axis, its length
  (`func_8009923C`, in 1/32) to 0x29C, limited to the value at 0x118 when
  the motion at 0x5C8 or 0x5CC has its value at 0x10 set; at 0 the value
  at 0x328 is cleared, 0x324 set and the vector zeroed (`func_8002E548`);
- the value at 0x328 set (`func_8002E7E4`), or computed from the dot
  product of the vector at 0x2A0 with the one at 0x33C (adjusted by the
  vector at 0x260 or 0x254 by the motion's flags), limited to the value at
  0x29C, with 0x324 set (`func_8002E684`);
- the vector at 0x354 from 0x330, then `func_80022D44` for the motor
  kinds 1 and 2 (`func_8002E7EC`); two vectors out from 0x330 through a
  cross product for those kinds, or copied from 0x33C and 0x348
  (`func_8002E85C`);
- the x of the vector at 0x30C reduced by the value at 0xF4 (clamped to
  ±0x64000, plus the motor's value at 0x48 under conditions) times the
  motor's values at 0x148 and 0x14A, through `MULSHIFT` (`func_8002F328`);
- a value at a pointer brought towards 0 by a dot product
  (`func_8002E984`, parked).

One file, `src/langimg/chunk_14.cpp`, 0x8002D700-0x8002F4E4. The fields
it reads are now named in `bike.h` (0x43, 0x328, the game's 0xC4 and 0x304)
and `motor.h` (0x48, 0x14A).

10 functions: 7 match, 1 is parked, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **A nested `?:` for a dead zone.** `func_8002E548` cuts each axis with
  two compares and the value or 0 in the delay slots: `return x < -1310 ?
  x : x < 1311 ? 0 : x;` in an inline function. Written as a range test,
  GCC folded it into one `sltiu`; as `if`s, it kept the value in the
  other register.
- **Two names for one buffer.** `func_8002D700` writes the sign to
  `D_800D4798` and prints the number after it; splat's `D_800D4799` is the
  same buffer plus 1: `sprintf(&D_800D4798 + 1, ...)` gave the original's
  scheduling, the separate symbol didn't.
- **An assignment and its result in one statement.** `func_8002E684`
  stores the shifted dot product to 0x328 before setting 0x324: `b->m_328
  = d = f() >> 5; b->m_324 = 1;`.
- **Pointers to the stack vectors.** `func_8002E85C` passes two local
  vectors to four calls through pointers set at the start (`Vector3 *pw =
  &w;`), which put their addresses in saved registers before the first
  copy, but copies the last one out by `&w`.
- **Fields by the original's loads.** The motor's value at 0x14A is a
  `short` (`lhu`, then sign-extended), the bike's at 0x3F7 an `s8` (`lb`).
- **`MULSHIFT` matched again** for `func_8002F328`, splat's "hand-written"
  function (its `sub`), with the branch for the motor's kind written as
  `if (!b->m_58) {...} else if (b->m_3F7)`.
- **Parked.**
  - `func_8002E984`: registers only. The original keeps the dot product
    in `$v1` and the first branch's result in the same register; GCC
    puts the dot product in `$a2` (20 off).
- **Still asm.** `func_8002D870` (822 instructions) and `func_8002EBC0`
  (475), not tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8002D700` | matches | a value shown with its sign |
| `func_8002D870` | asm | 822 instructions |
| `func_8002E548` | matches | the vector at 0x2A0 cut and measured |
| `func_8002E684` | matches | the value at 0x328 computed |
| `func_8002E7E4` | matches | the value at 0x328 set |
| `func_8002E7EC` | matches | the vector at 0x354 from the heading |
| `func_8002E85C` | matches | two vectors from the heading |
| `func_8002E984` | parked | a value brought towards 0: registers |
| `func_8002EBC0` | asm | 475 instructions |
| `func_8002F328` | matches | the x at 0x30C reduced |
