# The game's chunk_05: race positions (#6)

The race state: which entries are racing, their order and places, the
ring of entries by distance, the racers' setup. One file,
`src/langimg/chunk_05.cpp`, 0x8001B778-0x8001D760, built as chunk_04
(GCC 2.91.66, `-G8`, split addresses, divisions without checks).

14 functions: 9 match, 2 are parked, 3 are still asm.
over the large functions).

The race types moved to `include/langimg/race.h`: the race's five
entries (0x568 bytes from `Race` + 0x2E8), their records (`RaceEntryX`,
with a `RacePos` at 0x1B4: the ring's links and the distance along the
track), the race state (`RaceSort`: kinds, entries sorted by kind, the
ring's first), a racer and its slot, a camera's state.

| Function | State | Notes |
|---|---|---|
| `func_8001B778` | matches | the entries sorted by kind (as chunk_04's `func_8001B6B4`, counts on the stack) |
| `func_8001B84C` | matches | the race state's frame |
| `func_8001B974` | asm | an entry's step (715 instructions) |
| `func_8001C4A0` | asm | vector work (264 instructions) |
| `func_8001C8C0` | parked | a position on the track, between two points, across a lane: a first draft (the track's sections, points and lanes are in `race.h`) |
| `func_8001CBA0` | matches | the highest kind index along a chain |
| `func_8001CC14` | parked | the ring by distance and its biggest gap: registers (111 off) |
| `func_8001CF34` | matches | places by distance |
| `func_8001D018` | matches | the difference along the track, within half a lap |
| `func_8001D07C`, `func_8001D108`, `func_8001D180`, `func_8001D1C4` | match | a camera's and a racer's setup, a destructor, a racer's slot |
| `func_8001D23C` | asm | 330 instructions |

- **An inline defined after its first use isn't inlined.** `VecZero` was
  called as a function until its definition moved above
  `func_8001B84C`, its first user.
- **Two of five vectors through an inline.** `func_8001D07C` sets five
  vectors to `0xCDCDCDCD`; two of them through a pointer (the original's
  `addiu $v1, $a0, 0x14` and stores off `$v1`), which an inline taking
  the vector gives; the other three field by field.
- **Chained assignments store the innermost first.** `r->m_24 = r->m_20 =
  -1` stores `m_20` first (`func_8001D108`).
- **One statement per stored value.** `r->m_180->m_00 = v > 0x1000 ? v >>
  12 : v` loads the target pointer before the compare, as the original
  does; with an `if` on a local the pointer was loaded after
  (`func_8001D1C4`).
- **A carried pointer in a bubble sort.** `func_8001CC14`'s sort keeps the
  current entry's position in a register: `q = p; p = next; if (p < q) {
  swap; p = q; }`, moved forward and back on a swap.
- **The struct's size is in the stride.** The entries' records are 0x568
  bytes apart (`addiu $s0, $s0, 0x568`); a field added without its tail
  showed up as a stride of 0x538.

## Second pass

- `func_8001CF34`: chunk_05 built with `-fmove-all-movables`, and the places' loop counting with `j`.
