# The game's chunk_09: the motor's gearing, the bike (#10)

The motor's gearing (wheel speed from engine speed, per gear) and the
bike's object: its constructor and destructor, its frame helpers, its
heading. One file, `src/langimg/chunk_09.cpp`, 0x800236F0-0x80025614.

19 functions: 9 match, 2 are parked, 8 are still asm (the constructor
matched later, in the near-misses pass). Two of chunk_08's
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

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800236F0`, `func_80023788`, `func_800237E8` | match | wheel speed in a gear; a gear's ratio; all six |
| `func_8002385C`, `func_80023A30`, `func_80023E48` | asm | 117, 262 and 136 instructions |
| `func_80024064` | matches | the constructor; it matched once `func_8006BB70`, the animation channel's constructor, was declared to return its object (the permuter's finding) |
| `func_80024168` | matches | the top engine speed and the gearing from the motor |
| `func_800242A4` | matches | the destructor |
| `func_8002434C`, `func_80024584`, `func_80024824` | asm | 142, 169 and 271 instructions |
| `func_80024C60`, `func_80024C90` | match | a motion cleared; the frames copied from their sources |
| `func_80024D0C` | asm | 218 instructions |
| `func_80025074` | parked | the heading: registers, and a compare with the constant in a register (47 off) |
| `func_80025174` | asm | 162 instructions |
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
