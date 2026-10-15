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

23 functions: 15 match, 2 are parked, 6 are still asm.

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
| `func_80064AA0` | asm | 369 instructions |
| `func_80065044` | parked | a speed from a table, capped: the cell's address the other way round (2 off) |
| `func_800650F8` | asm | 191 instructions |

## Second pass

- `func_80065044` matches: the cell's address as a byte offset added to the row (`(Cell41 *)((j << 5) + (u8 *)row)`).
- Built with `-fmove-all-movables` (the Makefile's CFLAGS for the chunk, group A's finding in the techniques): every matched function still matches, and the parked ones it touches come closer. `func_80063A68` went from 116 to 86 off.
