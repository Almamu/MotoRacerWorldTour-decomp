# The game's chunk_09: the motor's gearing, the bike (#10)

The motor's gearing (wheel speed from engine speed, per gear) and the
bike's object: its constructor and destructor, its frame helpers, its
heading. One file, `src/langimg/chunk_09.cpp`, 0x800236F0-0x80025614.

19 functions: 11 match, 6 are parked, 2 are still asm.
near-misses pass and the pass over the large functions). Two of chunk_08's
parked functions match now too (#9).

## The settings

As chunk_08: GCC 2.91.66, `-G8`, unsplit addresses, divisions without
checks, no small globals (`langimg.chunk_09_*`).

## `MULSHIFT` is volatile

`func_800236F0` multiplies twice by 12-bit fractions, and the original
loads the shift, 12, into a register for each: GCC would keep one copy
of the constant for both. It loads it again only when the `asm` is
`volatile` (CSE forgets what it knew at a volatile `asm`). chunk_08's
functions match either way, and its `func_8002309C` matched once the
macro was volatile.

## Two nops between a division and a multiply

`func_80023788` divides and passes the quotient straight to `MULSHIFT`:
`mflo` then `mult`, with two `nop`s between them in the original (the
R3000 needs two instructions between a move from LO and the next
multiply or divide; ASPSX adds them). `--div-no-checks` in
`tools/maspsx_plus.py` gave its `mflo` one `nop`, as a load's delay; it
now gives two when the next instruction is a multiply or a divide. With
that, chunk_08's `func_8002357C` matched as well, written as nested
`MULSHIFT`s.

## The bike

The bike (0x5D4 bytes) is a C++ object: its constructor calls a base
constructor (`func_80062E40`), stores its vtable (`D_800C4D60`) at 0x50,
constructs five animation channels and two frames, and allocates three
`Motion`s with `new`; the destructor deletes them and passes its flags to
the base destructor (`func_80062EEC`). As in chunk_03 these are plain
functions on a struct (`Bike`, `include` nothing yet), so no vtable is
emitted here. `Motor` moved to `include/langimg/motor.h`, shared with
chunk_08.

## Second pass

- `func_80023E48`: chunk_09 built with `-fmove-all-movables` (/1000's multiplier hoisted into `$fp`), the outputs and the upshift points indexed (`out[i]`, `m->m_upshift[g]`, strength-reduced as the original's pointers), and the last gear's case first.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800236F0`, `func_80023788`, `func_800237E8` | match | wheel speed in a gear; a gear's ratio; all six |
| `func_8002385C` | parked | the upshift points: two saved registers swapped (11 off) |
| `func_80023A30` | asm | 262 instructions |
| `func_80023E48` | matches | the speed over time through the gears |
| `func_80024064` | matches | the constructor; it matched once `func_8006BB70`, the animation channel's constructor, was declared to return its object (the permuter's finding) |
| `func_80024168` | matches | the top engine speed and the gearing from the motor |
| `func_800242A4` | matches | the destructor |
| `func_8002434C` | parked | the bike's matrix from its angles: the stack layout matches, but the locals' addresses go to saved registers |
| `func_80024584` | parked | placing the bike: the matrix copy's two pointers swap registers (26 off) |
| `func_80024824` | asm | 271 instructions |
| `func_80024C60`, `func_80024C90` | match | a motion cleared; the frames copied from their sources |
| `func_80024D0C` | parked | the bike's angles and heading: a first draft, registers throughout |
| `func_80025074` | parked | the heading: registers, and a compare with the constant in a register (47 off) |
| `func_80025174` | matches | the frame's flags (lean, tricks), forces cleared, the frame's steps |
| `func_800253FC` | matches | the frame's end: the motions rotated |
| `func_800254F0` | parked | the original multiplies by -196 with `mult`, GCC here with shifts |

- **The motor read again.** `func_80024168` matched once every use read
  `b->m_motor` again rather than a local: GCC keeps the reloads where the
  stores in between might alias.
- **A struct copy through an inline.** `func_80024C90` copies two frames;
  written in place GCC reused the source pointer's register, and the
  original's registers came from a `FrameCopy` inline (the fields, then a
  vector read into locals).
- **`delete` on a POD.** `if (p) { delete p; p = 0; }` gives the
  original's single test and `__builtin_delete` call.
