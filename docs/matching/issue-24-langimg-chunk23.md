# The game's chunk_23: a named object and its stage (#24)

A C++ class of named objects with a small state machine, its vtable at
0x68 (`D_800C4EA8`), and a subclass (`D_800C53E8`) that sets up a race
stage: its tables, its sounds, its numbers from the race's settings.
One file, `src/langimg/chunk_23.cpp`, 0x8003F6B8-0x8004184C.

55 functions: 49 match, 4 are parked, 2 are still asm (the constructor
matched during chunk_45, #46).

## The settings

Not GCC 2.95.2, the default for the code past chunk_12: the first
functions matched only with GCC 2.91.66, `-G8` and split addresses, as
chunk_03 to chunk_05 (an array's address is built with `lui`/`addiu`
before the index is added, in `func_8003FD5C`). One small global,
`D_800CABB7`, the last byte of a text buffer (`langimg.chunk_23_*`).
So 2.91.66 code goes on past chunk_12, with its settings changing from
file to file.

## The class

As in chunk_03, the class is a struct (`Named`) and its methods plain
functions: the constructors and destructor set the vtable pointer
themselves, and virtual calls go through a `VtEntry` table (`VCALL`,
`VCALL1`). Many of its methods are the vtable's defaults: 17 of them
return 0 or 1, or nothing.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8003F6B8` | matches | a scene's items' object lists |
| `func_8003F740`, `func_80040E98` | asm | 314 and 621 instructions |
| `func_8003FC28` | parked | a sound from one of two tables: -1 kept in another register (7 off) |
| `func_8003FC94` | matches | the constructor: its zeros as one chained assignment (found with the permuter, during #46) |
| `func_8003FCF8` to `func_8003FF68` | match | the destructor, the states, the name, flags, the default virtuals |
| `func_8003FF70` | matches | a scene event: a name compared, two lists started |
| `func_80040034`, `func_80040178` to `func_8004047C`, `func_80040578` | match | entries by name, their text and flags, varargs wrappers, a subclass's destructor |
| `func_8004009C` | parked | an entry's text from a format, cut to its room (9 off) |
| `func_800404D0` | parked | the subclass's constructor: -1 in another register (7 off; the chained assignments didn't help) |
| `func_800405A0`, `func_800406A4` | match | the stage's numbers from the settings; a sound bank |
| `func_800406E0` | parked | the stage's setup, its two tables (20 off) |
| `func_80040A24` to `func_80040E50` | match | the stage's start, its sounds, virtual calls, the destructor's cleanup |

- **Old-style varargs.** `func_800401FC` and `func_80040178` store their
  last named argument to its home slot twice (as varargs, and because its
  address is taken) and pass `&c + 1` on: the list started from the last
  named argument's address, `(char *)&c + sizeof(c)`; `__builtin_next_arg`
  stored only once.
- **`new` evaluates its destination first.** `o->m_A0->m_15C = new
  int[21]` reads `o->m_A0` before calling `__builtin_vec_new`, as the
  original does; written as a call to `__builtin_vec_new`, the call came
  first.
- **A `u16` result is the caller's cast.** `func_80040B04` masks
  `func_800955C4`'s result with `andi 0xFFFF`: declared to return a `u16`
  GCC trusts it's already masked, so the function returns an `int` and the
  caller casts.
- **A result set after a call.** `func_80040CC8` keeps its result in a
  temporary, so it can't be live across the first call: `int v =
  VCALL(...); int r = 0; if (v) r = ...;`.
