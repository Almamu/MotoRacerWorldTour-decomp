# The game's chunk_11: the bike's frame flags, drag and drive (#12)

Six large methods of the bike (chunk_09): its per-frame state from the
motion's flags, its drag, the engine's force on the ground, and three
more. One file, `src/langimg/chunk_11.cpp`, 0x80027614-0x800297B4.

6 functions: 2 match, 1 is parked, 3 are still asm.

## The settings

As chunk_10: GCC 2.91.66, `-G8`, unsplit addresses, divisions without
checks, no small globals (`langimg.chunk_11_*`).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80027614`, `func_80027A90`, `func_800283D0` | asm | 287, 276 (with `sprintf`) and 927 instructions |
| `func_80027EE0` | matches | the ground and clutch flags from the motion, and `m_2E4` raised and lowered (316 instructions) |
| `func_80029248` | parked | the engine's force: the first test's layout, and a flag GCC sets with `sltu` |
| `func_800295D4` | matches | the drag: the speed squared times the motor's drag (120 instructions) |

- **Read the divisor off the magic number.** `func_80027EE0` divides by
  0x334: `0x4FEC04FF` with a shift of 8 is `2^40 / 820`. 0x333, the value
  nearby, gave another multiplier.
- **A clamp through a local, stored once.** The last clamp of `m_2E4` is
  one store of `r` (`if (v < lo) r = lo; else if (v <= hi) r = v; else
  r = hi;`); clamping the field in place stored it twice.
- **The motion's flags.** `Motion::m_00` holds the motion's kind in its
  low two bits (`& 3`) and a flag in bit 7 of its first byte, read with
  `lbu` and `srl 7`: `m_bytes[0] >> 7`.

`include/langimg/bike.h` gained the fields these read; its generator now
sizes array fields properly (`u8 m_52C[4]` was one byte and moved
everything after it).
