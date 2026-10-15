# The game's chunk_52: the display (#53)

The display's object (`Gfx52`) and the graphics system around it:
- its draw and display environments' origin and colour, from the
  settings;
- the vsync callback (the frame's work, then a user callback with its
  argument) and the drawsync callback (the frame's length);
- the callbacks installed and removed inside critical sections;
- `ResetGraph`;
- a buffer allocated and freed;
- the screen cleared;
- the GTE's matrix set from the camera or from an object through it;
- a list of entries drawn.

One file, `src/langimg/chunk_52.cpp`, 0x800792DC-0x8007B3C0.

27 functions: 14 match, 4 are parked, 9 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **PsyQ's functions.** `VSync`, `VSyncCallback`, `DrawSyncCallback`,
  `EnterCriticalSection`, `ResetGraph`, `ClearImage` and the others come
  from `lib/psyq/include/psyq.h`, as in chunk_72.
- **Globals read split.** The callback, its argument and the frame's
  times are read with `lui $v1` and `lw $v0, %lo(x)($v1)`, two registers.
  That's GCC's split, so they're declared as arrays of unknown size and
  used as `x[0]`. The camera pointer (`D_800C8868`) is read with one
  register (the assembler's expansion of a small global's `lw`), so it's
  a scalar. The techniques doc has the rule.
- **A result variable.** `func_800794E8` returns 1 through a variable set
  at the top (`int ok = 1; ... return ok;`); a plain `return 1` changed
  its registers. The permuter found it.
- **The GTE's matrix.** `func_80079AE4` uses chunk_56's `GTE_SET_ROT_V`
  (the matrix through `$v0` and `$v1`), `GTE_SET_TRANS`, and `MULSHIFT`
  with a shift of 24 for the scaled translation. It stays parked on two
  saved registers.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800792DC` | matches | the environments' origin and colour |
| `func_80079328` | matches | the callbacks removed, `ResetGraph(3)` |
| `func_80079350`, `func_80079390` | match | the vsync and drawsync callbacks |
| `func_800793C0`, `func_80079400` | match | the callbacks installed and removed |
| `func_80079438` | parked | a check through the buffer: registers |
| `func_80079494`, `func_800794B4`, `func_800794BC` | match | a wrapper, a return of 1, a reset |
| `func_800794E8` | matches | the screen cleared (and the line at 510 moved to 511) |
| `func_800795A0`, `func_800795FC` | match | the buffer allocated and freed |
| `func_80079648` | parked | the user's callback set: two `%hi` registers swap (4 off) |
| `func_8007968C` | parked | the frame swapped: two loads' order |
| `func_80079848` | matches | the entries drawn |
| `func_800798FC` | parked | the drawing area: addresses |
| `func_80079AE4` | parked | the GTE's matrix: two saved registers swap (9 off) |
| `func_80079C50` | asm | a GTE primitive (93 instructions) |
| `func_80079DC0` | asm | 247 instructions |
| `func_8007A198` | asm | 332 instructions |
| `func_8007A6C4`, `func_8007A884`, `func_8007AA74`, `func_8007AC90`, `func_8007AED0`, `func_8007B164` | asm | 113 to 166 instructions |

## Second pass

- `func_80079648` matches: `EnterCriticalSection` returns a value (the syscall's), so `lib/psyq/include/psyq.h` now declares it `int`.

## Fourth pass

- `func_8007968C` (the frame: `DrawSync`, `VSync` by the mode at 0x14C,
  the frame's length in 312ths, the buffer's environments put, a callback,
  the primitives' size kept, `DrawOTag`, the buffer flipped) is parked 32
  off: the first 75 instructions match with `ok = 1` set after `DrawSync`
  and compared with as the `1` of the mode's test; the original then loads
  the primitives' end (`D_800C8C70`) before their start, GCC the start.
- `func_800798FC` (the drawing area's two packets, 0xE3 and 0xE4, linked at
  the ordering table's last entry, offset by the buffer unless 0x15C is
  set) is parked 127 off: the original builds each global's high half
  once and keeps it (`$a3`, `$t0`, `$t1`), GCC builds it at each use.

## Group B near-misses

- `func_80079848` matched (from 51 off): the entry's four fields are read
  into locals in order before the call that takes them
  (`int a0 = e->m_00, a1 = e->m_04, a2 = e->m_08, a3 = e->m_0C;`). With
  that the system pointer's `%hi` is no longer hoisted out of the loop into
  `$s3`, the frame is the original's 0x28, and the loads come in the
  original's order.
