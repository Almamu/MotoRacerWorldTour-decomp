# The game's chunk_13: more of the bike (#14)

More functions on the bike (`Bike`, `include/langimg/bike.h`), the first
three called from chunk_14's `func_8002D870`:
- a point checked against the ground (chunk_04's `func_8001B350`): if it's
  found there, the point is put back with the given height (0 below 0) and
  the normal is straight up (0x4000000), returning 0; else the height and
  normal from `func_8001AFF4` (or the point and normal from
  `func_8001B15C`), returning 1 (`func_8002B800`);
- a vector's height brought towards a plane given by a normal passed by
  value (its x and z through `MULSHIFT`, then `func_80097A68` with the
  normal's y), by an amount eased by the height's distance (a sixteenth
  on the flag at 0x14F; else in steps by size), then scaled back to its
  old length through `func_80023140` when the new one is over 0x20000; 1
  if it moved (`func_8002D1EC`);
- the same with the dot product's sign, the race state 6, the motor's
  gear table at 0x185 and a scale passed in (`func_8002CED4`, parked);
- the channel at 0x534 stepped through the states at 0x550 (0 to 3) with
  `func_8006BBC4`, its rate of change kept at 0x554 and 0x55C
  (`func_8002D3C0`, parked).

One file, `src/langimg/chunk_13.cpp`, 0x8002B800-0x8002D700. Named in
`bike.h`: 0x550, 0x558, 0x55C; in `motor.h`: the `short` at 0x168.

5 functions: 2 match, 2 are parked, 1 is still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **One exit for a result in a saved register** (chunk_34's note):
  `func_8002D1EC` returns its result's register from the early exit too;
  `if (!dot) return r;` became a constant 0, the body inside
  `if (dot) {...}` matched.
- **The result set after the first call** (chunk_32's note):
  `func_8002CED4` zeroes its result in the call's delay slot: `int r; int
  dot = f(...); r = 0;`.
- **`if`/`else` laid out by the delay slots.** The same function's scale
  is 0x200, 0x1000 or 0x200 by two tests whose branches jump to the join
  with the value in their delay slot: `if (b->m_434 >= 200) { if (n.vy >=
  0xFC1) k = 0x200; else k = 0x1000; } else k = 0x200;`, each `else`'s one
  store moved into the branch above it.
- **Hand-written by splat, `MULSHIFT` in C** (chunk_15's note):
  `func_8002D1EC` and `func_8002CED4` are marked hand-written for the
  macro's `sub`.
- **Parked.**
  - `func_8002CED4`: the new length and the flag for the vector's limit
    in swapped registers (6 off).
  - `func_8002D3C0`: GCC loads the channel's value once, before the
    state's test, for both the 0xFE0 test and the rate after it; the
    original loads it after the test and again for the rate (76 off).
- **Still asm.** `func_8002B91C` (1390 instructions), not tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8002B800` | matches | a point checked against the ground |
| `func_8002B91C` | asm | 1390 instructions |
| `func_8002CED4` | parked | a vector's height eased: registers |
| `func_8002D1EC` | matches | a vector's height eased towards a plane |
| `func_8002D3C0` | parked | the channel at 0x534's states: a load |
