# The game's chunk_11: the bike's frame flags, drag and drive (#12)

Six large methods of the bike (chunk_09): its per-frame state from the
motion's flags, its drag, the engine's force on the ground, and three
more. One file, `src/langimg/chunk_11.cpp`, 0x80027614-0x800297B4.

6 functions: 2 match, 3 are parked, 1 is still asm.

## The settings

As chunk_10: GCC 2.91.66, `-G8`, unsplit addresses, divisions without
checks, no small globals (`langimg.chunk_11_*`).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80027614` | parked | the automatic gearbox: registers (10 off) |
| `func_80027A90` | parked | the time to 100 km/h (60 mph) and over a distance, shown as text: a double store GCC drops (23 off) |
| `func_800283D0` | asm | 927 instructions |
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

## Sixth pass

`func_80027614`, the automatic gearbox, is written and parked 12 off: the
engine speed asked for (from chunk_14's `func_8002E684`, declared here
with its motion argument) clamped to the top speed, the speed's fraction
for the kind 3 bikes, then gears changed against the motor's upshift points
(`func_80027098`, `func_800270FC`) or by the motion's flags 0x10 and 0x20.
What made the difference:
- **The flags word read again.** The second flag test reads `b->m_5CC`
  again rather than the local the first one used (the permuter's find,
  76 off to 12): the original reloads the word for it.
- **One clamp written as a `?:`**, the other with the result set first
  (`r = q;`) and the negative case as the `else`, as the original lays
  them out.
- **An index computed as `gear + (shift - 1)`** in one test and as
  `gear + shift - 1` in the loop, as the original computes them.
Left: the top speed and the clamped speed, and the gear and the shift,
each in swapped registers.

## Near-misses pass

`func_80027614` went from 12 to 10 off with the change-down index written
shift first (`b->m_shift + b->m_gear > 0 && sp <
upshift[(b->m_shift - 1) + b->m_gear]`). Left: the kind-3 branch's divisor
and clamped value in other temporaries, and the gear and shift loads in the
change-down test.

`func_80027A90`: the 10-byte texts copied with `memcpy` (the original's
`lw`/`lw`/`lh`, a struct copy gave `lwl`/`lwr`), the speed in km/h as one
division (`sp * 36 / 40960`) and the shown text `D_800D4798` declared
small so its address is built at each use. Left: the original stores the
time to 0x5AC twice (the frame's time added, then the excess taken off),
where GCC drops the first, and takes the number buffer's address after
the text's copy (23 off).
