# The game's chunk_48: a track's sections and the objects groups place on it (#49)

The track's sections (`Ent48`, 0x68 bytes: a count of points at 8, the
next section at 0x50 and the previous at 0x54, -1 at 2 for the track's
ends) and groups of objects placed along them (`Group48`: the run's bikes
in the race, objects of 0xCC bytes with a matrix at 0x14, a random seed
at 4):
- a section by index, or 0 (`func_8007142C`);
- a point found along the sections from a position, going back or on
  to the neighbouring section (`func_80071994`, recursive), and three
  more functions on the sections (`func_80071464`, `func_800716A0`,
  `func_80071BCC`, still asm);
- a group set up: its bikes in the race listed, its objects reset
  (`func_80072DA0`); an object reset to its defaults, 0xCD filled, its
  matrix the identity (`func_80071E1C`); its four entries' flags cleared
  (bits 1 and 2, `func_80072D00`); an object placed from its kind's tables
  (`func_800728E0`, then `func_80072A3C`, still asm); a group's objects
  spawned with the seed (`func_800731EC`: `seed * 214013 + 2531011`,
  xored with the definition's value at 0x10C);
- an object's values at 0x74 and 0x78 set and the time stored at 0x48
  (`func_80072D80`).

One file, `src/langimg/chunk_48.cpp`, 0x8007142C-0x8007345C.

14 functions: 7 match, 3 are parked, 4 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800C8454` and `D_800C8458`.

## Notes

- **A `goto` into the other branch.** `func_80071994`'s loop leaves
  straight for the "went back" branch when the distance is negative, and
  otherwise tests the value it re-read at the bottom: `if (r < 0) goto
  back; ... t = *pr; } while (t >= 0 && ...); if (t < 0) { back: ...`.
  A `break` with `t = r` cost a copy.
- **The loop's end in a local.** `func_80072DA0` counts the bikes from
  the last to the first with a pointer, against the first's address in a
  local set between two stores (`first = r->m_2E8;`); written in the
  `while`, the two addresses came out in the other order (the
  permuter's find).
- **A shared counter.** The same function's second loop counts with the
  variable the third loop uses (one saved register for both).
- **Tables indexed by bytes** (chunk_37's case): `func_800728E0` reads
  three tables with the index shifted before the table's `lui`:
  `*(int *)((u8 *)&D + (i << 2))`, the tables declared `extern int`.
- **A field read before two stores.** The same function reads the
  definition's value at 0x1F8 before storing two of the object's fields
  (`base = t->m_1F8;`), which put its stack arguments' loads where the
  original has them (the permuter's find).
- **Chained assignments store the last first.** `func_80071E1C` zeroes a
  vector with `v->vx = v->vy = v->vz = 0` and each matrix row with
  `m[r][a] = m[r][b] = t[r] = 0` through inline functions taking
  pointers, as the original's stores (`vz` first, through the vector's
  address).
- **Parked.**
  - `func_80071E1C` (an object reset): registers only; the 0xCDCDCDCD,
    0x1000 and `memset` arguments in other registers (25 off).
  - `func_800731EC` (a group's objects spawned): the group and the
    result in swapped saved registers, and the span's computation
    (57 off).
- **Still asm.** `func_80071464` (143 instructions), `func_800716A0`
  (189), `func_80071BCC` (148), `func_80071ED8` (654), `func_80072A3C`
  (177) and `func_80072ED4` (198), not tried.
- **`func_80072ED4` (fifth pass)** matched as written, with the bikes'
  definition test written `d->m_10C <= D_800C872C` (the original keeps 1
  when the definition's value isn't above the global).
- **`func_80072A3C` (fifth pass), parked.** The original loads the frame's
  time first and walks the points' tables with the row's byte offset added
  to the point's; GCC loads the time late and folds the offsets otherwise
  (63 off; the tables as `[k][11]` arrays came out worse).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8007142C` | matches | a section by index |
| `func_80071464` | asm | 143 instructions |
| `func_800716A0` | parked | the nearest point in the sections ahead or behind: registers |
| `func_80071994` | matches | a point found along the sections |
| `func_80071BCC` | asm | 148 instructions |
| `func_80071E1C` | parked | an object reset: registers |
| `func_80071ED8` | asm | 654 instructions |
| `func_800728E0` | matches | an object placed from its kind's tables |
| `func_80072A3C` | parked | an object's run timed: registers |
| `func_80072D00` | matches | an object's four entries' flags cleared |
| `func_80072D80` | matches | an object's values and the time |
| `func_80072DA0` | matches | a group set up |
| `func_80072ED4` | matches | a group each frame |
| `func_800731EC` | parked | a group's objects spawned: registers |

## Group B, more $fp functions

- `func_800716A0` (the nearest point searched in the sections linked ahead
  or behind) is parked at 171 off with the original's stack slots and
  calls. The candidates' table is cleared in an inline helper (as #289's
  rule says for the recomputed address), but our first walker still shares
  the table's address; the step's sign and the found flag (the original
  keeps it on the stack) differ after.
