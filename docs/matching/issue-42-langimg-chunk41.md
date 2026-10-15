# The game's chunk_41: a bike's model object (#42)

The class of a bike's model object (`Obj41`; chunk_31's `Def31` is the
same object, `Bike31::m_30`). Its functions:
- its constructor and destructor;
- getters and setters, and an angle converted to 4096ths of a turn
  (`(a << 12) / 25736`, 25736 being 2π × 4096);
- two lookups through its states, and the states copied between objects;
- a counter and a shift register;
- a speed from a table, capped;
- its orientation matrix from its three angles;
- the bikes ahead and behind on the track walked.

One file, `src/langimg/chunk_41.cpp`, 0x80063428-0x800653F4.

23 functions: 16 match, 3 are parked, 4 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, twenty
small globals.

## Notes

- **Vectors copied through pointers.** `func_80063848` copies five
  0x20-byte states. Each vector in them is read whole before it's
  written (all three loads first), and the second and third accesses go
  through an address register (`addiu $a3, $t0, 0x8; lw 0x4($a3)`). An
  inline `VecCopyL41(Vec41 *d, Vec41 *s)` called with the fields'
  addresses matched at once (chunk_47's `VecCopyL`).
- **The base's constructor returns `this`.** `func_80064340` matched once
  the base class's constructor (`func_80062E40`) was declared returning
  the object. C++ constructors return `this`, and with `void` its
  registers differed (the permuter found it). The empty count-down loop
  for its eight-element member array is chunk_47's dead-pointer loop.
- **A narrowed load avoided through an inline.** In `func_800643E4`,
  `b.x = -o->m_298` (a short from an int) was loaded with `lhu`; through
  an inline setter taking `int`s it's an `lw`, as in the original. The
  function stays parked on the open problem of stack addresses kept in
  saved registers (chunk_02b).
- **An empty varargs function.** `func_8006347C` saves `$a1`-`$a3` to the
  stack and nothing else. GCC 2.91.66, 2.8.1 and 2.95.2 also save `$a0`,
  whether it's written as `f(int a, ...)`, `f(Obj *o, ...)` or a C++
  member `f(...)`. It has no direct callers. It stays asm.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80063428` to `func_80063448` | match | getters and setters |
| `func_80063450` | matches | the angle in 4096ths of a turn |
| `func_8006347C` | asm | an empty varargs function: see above |
| `func_8006348C` | matches | two values into out-parameters |
| `func_800634BC` | asm | 227 instructions |
| `func_80063848` | matches | the states copied |
| `func_80063A04`, `func_80063A30`, `func_80063A5C` | match | a state's kind, a value |
| `func_80063A68` | parked | the bikes ahead and behind passed to `func_80063C60`: the outer loop's shape and registers (far off) |
| `func_80063C60` | asm | 412 instructions |
| `func_800642D0` | matches | a counter up to 16, two bits shifted in |
| `func_80064310` | matches | a vector's three shorts passed on |
| `func_80064340` | matches | the constructor |
| `func_800643BC` | matches | the destructor |
| `func_800643E4` | parked | the orientation matrix: stack addresses in saved registers |
| `func_80064608` | asm | 294 instructions |
| `func_80064AA0` | matches | a bike's values from its motor and the race |
| `func_80065044` | parked | a speed from a table, capped: the cell's address the other way round (2 off) |
| `func_800650F8` | parked | a slope between two points: two registers |

## Second pass

- `func_80065044` matches: the cell's address as a byte offset added to the row (`(Cell41 *)((j << 5) + (u8 *)row)`).
- Built with `-fmove-all-movables` (the Makefile's CFLAGS for the chunk, group A's finding in the techniques): every matched function still matches, and the parked ones it touches come closer. `func_80063A68` went from 116 to 86 off.

## Group B follow-up

- `func_800650F8` written and parked (5 off): the slope between the
  bike's point and the next one, each a section's point moved sideways to
  its lane (`LanePt41`: the point copied, a vector from the sine table
  turned by the lane's side and added), the heights' difference times
  their mean over the distance, limited to `D_800CB448`. What got it from
  162 to 6: one scratch vector passed into the inline function for both
  points (the original's frame), the cell indexed from the index inside
  the inline function, as arrays, `d->x` stored before `d->y = 0`, and
  the first row written in place, not through a local (a permuter's find).
  Left: the second row's index and table loaded into swapped registers.

## Large functions

- `func_80064AA0` (369 instructions) matches: a bike's values at
  0x45C-0x48C and 0x118 from its motor's entry (0x34 bytes) in the race's
  table at 0x390, and twenty globals from the race's settings at 0x3EC,
  through `MULSHIFT` by a factor (the settings' value at 0x174 by
  `D_800D5F30`, plus `D_800D5F4C`, at least 0x199) or `0x2000` minus it.
  Three things mattered:
  - the last switch (the game mode, 1-4 and 5-6) written with a body per
    case: with the cases sharing two bodies GCC compared; with one each it
    built the original's jump table and merged the bodies after;
  - the top speed at 0x118 stored after the entry's value at 0x30 (the
    original's store order);
  - the run's value read into a local before the index is stored
    (`int r = ...; o->m_450 = k; o->m_3F0 = r;`).
  The repeated `MULSHIFT`s (with their shift loaded again where the
  original does) needed nothing special.
