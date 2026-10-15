# The game's chunk_12: more of the bike (#13)

Bike methods (chunk_09): running into the back of another bike, a push
sideways, the motion's two limits from the motor, and larger ones. One
file, `src/langimg/chunk_12.cpp`, 0x800297B4-0x8002B800.

11 functions: 3 match, 5 are parked, 3 are still asm.

## The settings

As chunk_11: GCC 2.91.66, `-G8`, unsplit addresses, divisions without
checks, no small globals (`langimg.chunk_12_*`).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800297B4` | parked | slowing behind another bike (recursive, once, the other way round): the original negates a call's result in `$v0`, here it's copied first |
| `func_8002993C` | asm | 586 instructions |
| `func_8002A260` | matches | empty |
| `func_8002A268` | parked | a push sideways, scaled by `m_3AC`: `MULSHIFT`'s temporary register, one instruction more |
| `func_8002A394` | matches | one of two setups by the motor's flags, then a third call |
| `func_8002A3F0` | parked | the speed's vector scaled and passed to the motions: one copy's registers swapped (4 off) |
| `func_8002A7A0` | parked | the lean from the steering, wrapped within the motor's limit: two registers swapped in one branch (13 off) |
| `func_8002AF8C`, `func_8002B40C` | asm | 288 and 254 instructions |
| `func_8002ABE8` | parked | the slope's pull: a first draft |
| `func_8002AF3C` | matches | the motions' limits from the motor |

The bike's header gained its position (0x64), its velocity (0x11C) and
the fields these read; `m_59` is signed (`lb`).

Fourth pass: `func_8002A3F0` and `func_8002A7A0` written and parked. For
`func_8002A7A0` the shapes that mattered were the builtin `abs` (a copy,
then `negu`), the target picked with `g = 0; if (steer > 0) ... else if
(steer < 0) ...` (a ternary became `sra`/`andi`), the clamp into a
temporary laid out with its `else` first, and the two wrap loops written as
`while (limit < x && i < 100)` and `while (x < -limit && i < 200)`. The
header gained the bike's 0x3A4, 0x40D, 0x411 and 0x43D and the motor's
`short` at 0x14C and `int` at 0x15C.
