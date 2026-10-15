# The game's chunk_66: a bit stream, CD reads, planes (#67)

The bit stream that chunk_45's settings are written to and read from,
over plain words or over halves of words kept in 16-byte blocks; CD
sector reads with retries; a pack of entries loaded from a file; an
object of settings with a "placed" flag; planes stored as a normal and a
31-bit distance. One file, `src/langimg/chunk_66.cpp`,
0x800950B0-0x80097128.

59 functions: 51 match, 6 are parked, 2 are still asm.

## The settings

GCC 2.91.66 (`func_800968B0`'s registers came out right only with it),
`-G8`, split addresses (`func_80096E28` builds the sine table's address
with `lui`/`addiu`), divisions without checks, five small globals
(`langimg.chunk_66_*`).

## The types

- `Bits66`: the stream. The words (`m_words`) or the blocks (`m_blks`),
  the position in each, how many words and halves are left, the size, a
  mode (2 when written), whether the words are its own to free, and the
  bit in the current word.
- `Plane66`: a pointer to the normal and one word holding a 31-bit
  distance and, in its top bit, the side of the normal (`m_d : 31`,
  `m_flip : 1`).
- `Obj66`: an object with a rectangle, a size, values set by setters that
  clear its "up to date" flag (0x38), the one placed before it (0x50), a
  sub-object (0x98, with a vtable at 0x14) and a sub-struct at 0xA0.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800950B0`, `func_800953A4` | asm | 141 and 137 instructions |
| `func_8009593C` | parked | the layout against the neighbours: branch tails (334 off) |
| `func_800952E0` | parked | a track point into the camera's frame: the loads' order (43 off) |
| `func_800955C4` to `func_800958E0` | match | a lookup by name, the constructor, setters, the placement |
| `func_80095F84` | matches | a view's projection set (third pass) |
| `func_800960D0` | parked | the sub-object made and called: the branches and registers (42 off) |
| `func_800961A0` to `func_80096240` | match | a virtual call, a rate, a lookup by id |
| `func_80096290` | parked | a pack loaded: GCC folds `size - (size - x)` (65 off) |
| `func_800963BC` | matches | the pack freed |
| `func_800963E8` | matches | the disc's sector 16 kept, the path reset (third pass) |
| `func_80096508` to `func_8009662C` | match | the CD's shell, sectors read, retried |
| `func_800966DC`, `func_80096724` | match | the stream emptied, back to its start |
| `func_8009674C` | parked | the stream over a buffer: registers (13 off) |
| `func_8009682C` to `func_80096C14` | match | the stream freed, its words and bits, its copy |
| `func_80096CA8` | parked | a value written with the first width it fits: registers (38 off) |
| `func_80096D84` to `func_8009707C` | match | a varargs read, planes |

- **A varargs list read with PsyQ's `va_arg`, the named argument
  copied.** `func_80096D84` keeps the width in a register and the named
  argument in its stack slot: `int w = n;` and `w = va_arg(ap, int);`.
  Reassigning `n` itself kept it in memory; a pointer walked by hand
  loaded before adding.
- **`n = 32 - n` in place.** `func_80096B74` and `func_80096ACC` compute
  the shift into the parameter's own register: `n = 32 - n; return (int)(v
  << n) >> n;`.
- **A product in each local.** `func_80096EC8`'s three `MULSHIFT`s matched
  as three locals summed; `func_80096F8C`'s two as `d = ...; d += ...;`;
  `func_8009707C` with the shift a literal, not a variable.
- **Bitfields for a flag in a word's top bit.** `if (p->m_flip)` tests
  the word's sign, `p->m_d` reads it with `sll`/`sra` by 1, and storing
  both makes one masked store (`func_80096EC8`).
- **An `int` stored into a `short` is loaded as a halfword.**
  `func_8009574C` reads the rectangle's `int`s with `lhu`; the fields are
  `int`s (the constructor stores whole words to them), GCC narrows the
  load.
- **A callee's return.** `func_800955C4`'s registers after
  `func_800A6344` (a string upcased) needed it to return `char *`.
- **The test that controls the loop.** `func_800955C4` loops while the
  result is -1, the count an inner `break`: `for (i = 0; r == -1 && i <
  n; i++)`.

## Third pass

- `func_80095F84` matches: the view's projection (at 0xA0) given the
  view's two sizes, then chunk_65's projection maths through an inline
  function (`Proj66Set`, the body of `func_80093C80`), the result passed
  to the owner at 0x9C. The two sizes are read into locals before either
  is stored (`int x = o->m_08; int y = o->m_0C;`), as the original's
  loads; stored as read, the first store came before the second load.
- `func_800963E8` matches: sector 16 read into `D_800D36D0` and copied to
  `D_800D2ED0` as a 0x800-byte struct of bytes (GCC's copy loop with its
  alignment test), the path at `D_800D4705` reset to `"\\"` and the
  volume's name copied 0x35 bytes before it. The `"\\"` is an inlined
  `strcpy`: its 2 bytes come from a 4-byte `.rodata` word, `D_800B7940`.
  A literal goes to `.sdata` here (`-G8`); a `const char[4]` with
  `__attribute__((section(".rodata")))` gave the place, but read where
  its initializer is visible, GCC folded it into a fresh literal, again
  in `.sdata`. Declared `extern` before the function and defined after
  it, the copy reads `D_800B7940` (`*(Root66 *)D_800D4705 = *(Root66
  *)D_800B7940`).

## Group C large functions

- `func_8009593C` (an object laid out against its neighbours at 0x54 to
  0x60, or by its sizes, then its edges and centre) is written and parked,
  334 off. Its branches are the original's: a size above 1.0 (16.16) is
  absolute, else a fraction of the whole read inside that branch (an
  inline function taking the whole by pointer, so the `lw` stays in the
  branch, and returning an `int`, so the shift stays `sra`); the result is
  set before the clamp's call (`r = 1; func_800958A0(&rc);`), which keeps
  it in `$s1` as the original. What differs is the tails: GCC merges the
  branches' final `+ 1` into one block where the original repeats it in
  each branch's delay slot, which shifts the rest. Obj66's 0x18 to 0x34
  are now named (the inner edges, centre and size).
