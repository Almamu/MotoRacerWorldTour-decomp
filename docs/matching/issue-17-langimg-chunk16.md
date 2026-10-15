# The game's chunk_16: more of the bike (#17)

More functions on the bike (`Bike`, `include/langimg/bike.h`, chunk_09
on):
- the value at 0x500 from a distance added up at 0x504 (the value at
  0x298 each call), by the byte at 0x185 of the motor's entry
  (11 bytes each) indexed at 0x170: for 0, 0x1000 up to 59999, falling to
  -0x1000 by 119999; for 2, rising from -0x1000 to 0x1000 by 119999;
  otherwise 0. Only for the motor kind 0 with the motor's value at 0x16C
  set and the speed above 0x3000 (`func_80033280`);
- the bike placed at a position and angles, then reset: chunk_09's
  `func_80024584`, chunk_14's `func_8002E548`, the gear to 0, the gearbox
  to 2, the engine speed from the motor's lowest (0x26), then
  `func_800630D8` (`func_800333F8`);
- whether the speed is above the gear's upshift point, never for the
  motor kind 3 (`func_800334B0`);
- the bike set from another: its position, its angles from the other's
  matrix (`func_80098418`), the link at 0x1B4 member by member, then
  `func_80024584`, the vector at 0x78 (shifted by 5) and the motion at
  0x5C8, and `func_80063848` (`func_800334E8`).

One file, `src/langimg/chunk_16.cpp`, 0x80031500-0x80033720. New fields in
`bike.h` (0x61, the link at 0x1B4, 0x500 and 0x504) and `motor.h` (0x16C,
0x170 and the 11-byte entries at 0x185).

6 functions: 4 match, 1 is parked, 1 is still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **The compare written the other way round.** `func_800334B0` loads the
  speed before the upshift point: `return b->m_29C >
  b->m_motor->m_upshift[b->m_gear];`. With the upshift point on the left
  the loads and the registers came out the other way.
- **A field read before the stores, unsigned.** `func_800333F8` reads the
  motor's lowest engine speed (`lhu`) before its run of stores and stores
  it last: `u16 e = b->m_motor->m_26;` first; read in place GCC loaded it
  after the stores, and a `short` gave `lh`.
- **Two stack slots for the angles.** The original copies the angles
  `func_80098418` writes into a second stack slot and from there into the
  bike (unaligned `lwl`/`lwr` copies, at the `SVECTOR`'s alignment):
  `SVECTOR r, a; func_80098418(m, &a); r = a;`, declared in that order for
  the slots (declared `a, r`, 13 off).
- **A struct copied member by member.** The link at 0x1B4 (0x6C bytes) is
  copied with one statement per member (`LinkCopy`): words with `lw`/`sw`
  alternating, its two vectors with all three loads first (`VecCopyL`);
  as struct assignments the vectors used `$t0`-`$t2` at fixed offsets.
  chunk_43's `func_80067650` copies the same link.
- **Still asm.** `func_80031500` (1350 instructions, marked hand-written),
  not tried (`func_80032A14` is now parked, below).

## Large functions pass

- `func_80032A14` (539 instructions, the engine sound channel at 0x4B8:
  its range from the speed and the motor's values at 0x13A and 0x13C, now
  named in `motor.h`, its target by the bike's state, and the wheelie and
  slide flags at 0x4D8-0x4DA) is written and parked, 157 off. The speed
  ratio is clamped into a copy and the state byte read once, as the
  original's loads; the bytes at 0x4D8 are read as a word and a half
  through casts. Left: the original keeps the motor in a second register
  for its high end, clamps the power differently, and has two
  instructions more, which shifts the rest.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80031500` | asm | 1350 instructions |
| `func_80032A14` | parked | the engine sound's range and the wheelie flags: a copy, a clamp |
| `func_80033280` | matches | the value at 0x500 from the distance |
| `func_800333F8` | matches | the bike placed and reset |
| `func_800334B0` | matches | whether it's past the upshift point |
| `func_800334E8` | matches | the bike set from another |
