# The game's chunk_10: the bike's gearbox (#11)

More of the bike's methods (chunk_09): changing gear up and down, the
gearbox's states, the engine speed from the speed asked for, its
position's two ends, a reset. One file, `src/langimg/chunk_10.cpp`,
0x80025614-0x80027614.

20 functions: 12 match, 4 are parked, 4 are still asm (after the
near-misses pass and the pass over the large functions).

## The settings

As chunk_09: GCC 2.91.66, `-G8`, unsplit addresses, divisions without
checks, no small globals (`langimg.chunk_10_*`).

## The bike's header

The bike's struct moved from chunk_09 to `include/langimg/bike.h`, with
`Motion`, `Frame`, `AnimChan`, what owns the bike (`BikeOwner`, its
`m_54`) and the race state chunk_09 reads. It's generated from a list of
the fields the code reads, with padding between them; three got names
here: `m_gear` (0x3FA), `m_shift` (0x2C8, the gears still to change by)
and `m_clutch` (0x2CC, the gearbox's state, as far as these functions show: 1
engaging, 2 neutral, 3 and 4 shifting up and down).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80025614` | asm | the bike's physics (725 instructions) |
| `func_80026164` | matches | a turn's start: its side and size, at least 400 |
| `func_80026364` | parked | a first draft: registers and layout (59 off) |
| `func_80026450` | matches | an `SVECTOR` copied unaligned (`lwl`/`lwr`) into the owner |
| `func_800264B0` | matches | values decaying towards their floors |
| `func_8002659C` | matches | the bike's reset |
| `func_80026648` | matches | once `func_80099D48` was declared to return its vector, as it does |
| `func_80026720`, `func_800269C4`, `func_800269F0` | match | the motor's functions in the current gear |
| `func_8002675C`, `func_80026BCC`, `func_8002726C` | asm | 155 to 246 instructions |
| `func_80026A1C` | parked | the clutch's engagement: the first branch's clamp isn't cross-jumped into the last one as in the original (24 off) |
| `func_80026FA0` | parked | a first draft: the gearbox's states in another order (56 off) |
| `func_80027098` | matches | up a gear |
| `func_800270FC` | matches | down a gear: the gear below in its own variable (`int g = cur - 1`) |
| `func_800271BC`, `func_800271D0` | match | in neutral; engaging |
| `func_800271E0` | parked | the engine speed clamped: the original reads it twice (15 off) |

- **Compare in the original's order.** `func_800264B0` loads `m_130`
  before `m_12E` only when the test is written `b->m_130 > b->m_12E`; GCC
  loads the operands of `<` and `>` in the order they're written.
- **A new local for a result.** `v = w - w / 16` rather than `v -= v /
  16` puts the result in another register, as the original has it
  (`func_800264B0`).
- **A store moved up.** `func_8002659C` matched with the motor's lowest
  speed stored right after the first two calls; written where it seemed
  to belong (before a third call), the load came too late.
