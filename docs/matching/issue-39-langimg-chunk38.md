# The game's chunk_38: a race's bikes and their controls (#39)

The race of chunk_37 (`Own38`) and its run's five bikes (0x568 bytes):
- a counter at `D_800CB3C8`, a call when it reaches 1 and another when
  it's back to 0;
- a bike set up: its controls cleared (`func_8005F380`: 16 bytes, a
  table of 32 and one of 24, then `func_8005F464`), its body pointed back
  at it, then the calls for its kind (`func_8005DC10`, parked);
- a bike's calls by kind when its state's first byte is set;
- a bike's controls read into flags (the two shorts at 0 and 2 or'ed),
  two of them dropped by the value at 4, then set by its state
  (parked);
- the bikes of kind 1 in the race passed to chunk_45's table at 0x308
  (`func_8006C094`, `func_8006C644`, `func_8006C4A0`, `func_8006C694`),
  by the race's flags and the frame's time;
- a configuration's blocks copied into the run (parked).

One file, `src/langimg/chunk_38.cpp`, 0x8005D15C-0x8005F464.

17 functions: 12 match, 3 are parked, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, one small
global (`D_800CB3C8`).

## Notes

- **The callees' real prototypes.** chunk_45 defines the table's
  functions: `func_8006C694` returns an `int`, and with that
  `func_8005E2A8` matched (declared `void`, one register differed);
  `func_8006C094` takes three arguments, and `func_8005DF6C` passes its
  own second and third on (the original keeps `$a1` and `$a2` free in
  its loop). `func_8006976C` (hand-written asm) also takes a third, the
  element whose fields its first two are.
- **Loops entered at their body.** The loops over the five bikes jump
  into their body and test the count at the top of the next pass: `i =
  0; b = o->m_378->m_2E8; do { ...; b++; } while (++i < 5);`. A `for`,
  with either step order, came out rotated.
- **A `continue` that skips the step.** `func_8005E2A8`'s path for a
  frame time of 0 counts on without moving to the next bike: `if
  (!D_800D6100) continue;` before the `b++` at the end of the body.
- **Constants as locals.** The same loops keep 1 and 2 in registers:
  `int one = 1;` (and `two`) in the body.
- **The found path through the common return.** `func_8005E1D0` returns
  `$s2`, -1 until found: both paths of the found bike end in `break`, and
  one `return r;` follows the loop.
- **A return per test.** `func_8005E0D8`: `if (!o->m_308) return 0; if
  (!(o->m_378->m_00 & 0x54)) return 0; if (o->m_304) return 0;`.
- **The body read first.** `func_8005DD70` reads the bike's body
  pointer before testing its state's byte.
- **Parked.**
  - `func_8005DC10` (the calls for a bike's kind): the race's mode in
    `$a0` where the original has it in `$v1` (7 off). The slot's 11-byte
    name copies as a struct of `s8`.
  - `func_8005DE2C` (a bike's controls read into flags): its `switch` is
    a jump table for 0 to 4 (`case 0: case 2: break;` gave it); the
    original then loads the run's word at 0x1E08 before the last call
    and doesn't use it. GCC drops that load; read through a `volatile`
    pointer it was 13 off.
  - `func_8005E000` (a configuration copied): the 12-byte record's copy.
    The original loads and stores its two words at their offsets, then
    its two halves through the records' addresses, the result in `$v1`;
    an inline function copying the four fields takes the source's
    address after the first word.
- **Still asm.** `func_8005D15C` and `func_8005E3A4` (614 and 681
  instructions); `func_8005EE48` matched later (see the follow-up below).
- **`func_8005F0D4` (fifth pass).** The picks' table is indexed by bytes
  (the index shifted before the table's `lui`), and each struct copy goes
  through a pointer to its destination taken first (`Set38 *d =
  &D_800C71C4; *d = ...;`); assigned directly, the source's address came
  first and the copy loop's registers were swapped.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8005D15C` | asm | 614 instructions |
| `func_8005DAF4` | matches | the counter down, a call at 0 |
| `func_8005DB30` | matches | the counter up, a call at 1 |
| `func_8005DB70` | matches | a bike set up |
| `func_8005DC10` | parked | the calls for a bike's kind: registers |
| `func_8005DD70` | matches | a bike's calls by kind |
| `func_8005DE2C` | parked | a bike's controls into flags: an unused load |
| `func_8005DF6C` | matches | the bikes passed to `func_8006C094` |
| `func_8005E000` | parked | a configuration copied: the record's copy |
| `func_8005E0D8` | matches | a bike of kind 1 passed on with the time |
| `func_8005E1D0` | matches | a value read for a bike of kind 1 |
| `func_8005E2A8` | matches | a bike of kind 1 passed to `func_8006C694` |
| `func_8005E3A4` | asm | 681 instructions |
| `func_8005EE48` | matches | the bike's contact points against two shapes |
| `func_8005F0D4` | matches | the players' picks copied to the globals |
| `func_8005F358` | matches | a bike's controls cleared, returned |
| `func_8005F380` | matches | a bike's controls cleared |

## Second pass

- `func_8005DE2C` came from 83 to 39 off with its parameters copied into locals; still parked.

## Group B follow-up

- `func_8005EE48` matches: the bike's front and back contact points
  (0x234 and 0x240 of its body, each shifted by 5) looked up in the body's
  two collision sets with chunk_04's `func_8001B350`, the hits' normals
  fetched, and chunk_10's `func_80025614` called with the four vectors by
  value; tried again once when that call returns non-zero (and the
  bike's byte at 0x188 is clear). Three things made it
  match:
  - the retry is a `goto` back to a label, not a loop: as a `for (;;)`
    GCC hoisted the contact points' addresses out of it;
  - the front point's address is a pointer set right after the label
    (`top: pa = &a;`): `reorg` then copies that first instruction into the
    backward jump's delay slot, as in the original;
  - the early exits go through one `out: return r;`, so the result comes
    from its saved register; written as `return r;` GCC returned the
    constant 1.
