# The game's chunk_12: more of the bike (#13)

Bike methods (chunk_09): running into the back of another bike, a push
sideways, the motion's two limits from the motor, and larger ones. One
file, `src/langimg/chunk_12.cpp`, 0x800297B4-0x8002B800.

11 functions: 3 match, 2 are parked, 6 are still asm.

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
| `func_8002A3F0`, `func_8002A7A0`, `func_8002ABE8`, `func_8002AF8C`, `func_8002B40C` | asm | 213 to 288 instructions |
| `func_8002AF3C` | matches | the motions' limits from the motor |

The bike's header gained its position (0x64), its velocity (0x11C) and
the fields these read; `m_59` is signed (`lb`).
