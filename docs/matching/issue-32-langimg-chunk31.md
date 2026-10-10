# The game's chunk_31: the race's bikes and their objects (#32)

The race object (`Run31`) and its five bikes (`Bike31`, 0x568 bytes
from 0x2E8). It covers:
- the race's reset;
- each bike's mode, slot and rank (`qsort` with three comparators);
- the bikes' objects, made by kind, named (`"Moto %d"`, `"Moto X"`) and
  freed through their virtual destructors;
- a bike's lap time passed on;
- a position along a track segment;
- a position pushed back out along a collision's normal;
- a matrix set from an object's rotation and position.

One file, `src/langimg/chunk_31.cpp`, 0x8004F6C8-0x800514F4.

32 functions: 20 match, 8 are parked, 4 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **Tables named for their last entry.** The bikes are walked from the
  fifth down, and so are the tables beside them. splat named each table
  for the fifth entry's fields:
  - `D_800D5E68`, `D_800D5E69` and `D_800D5E6C` are three fields of one
    8-byte table;
  - `D_800D5F68` is a word table.

  Each is declared as a scalar and indexed from there,
  `(&D_800D5E69)[i - 4]`. The scalar declaration also put the address in
  the loop's register rather than a temporary.
- **A search's return out of line.** `func_8005102C` keeps the found
  case's return at the end of the function: `if (*p-- == k) goto found;
  ... return -1; found: return i;`. The pointer's decrement there fills
  the branch's delay slot.
- **The order of a loop's increments.** In `func_80050CA4` the counter
  is incremented before the bike pointer (`i++; b++;` at the end of a
  `while`); with the `for`'s `i++` last, the pointers' increments came
  first.
- **An argument read before the call.** `func_80050D7C` matched once
  `b->m_4C` went into a local before the call that takes it.
- **Addresses in locals.** `func_8004F83C` keeps the addresses of its
  local vectors in pointer variables (`pn = &n`, `pa = &a`, `pb = &b`).
  The permuter found it.
- **An index rather than a pointer.** `func_80050F5C` fills the rank
  list with `r->m_18[n++] = ...`; a pointer of its own kept the list's
  address in a saved register.
- **The callee takes the bike too.** `func_80051114` copies the bike into
  `$a1` before its call: `func_80033E4C(b->m_31C, b)`.
- **Comparators.** The `qsort` comparators load `*a` before `*b`, which
  locals in that order give.
- **Struct copies through address registers (open).** Five functions
  copy vectors and matrices with GCC's block move and keep the source's
  and destination's addresses in registers (`$v0`, `$v1`, `$a1`); one of
  them is then passed on to a call. Ours fold the offsets into the loads
  and stores whatever the source's shape: pointer locals, inline
  helpers, `memcpy`, an assignment as the argument. The parked
  `func_8004F6C8`, `func_8005148C` and `func_800508B4` differ only there.
- **Constants through `$t2` (open).** `func_800505BC` loads every
  constant into `$t2` just before its use, even loop invariants, and sets
  a bit from a test without a branch. That suggests macros or a register
  variable; it stays asm.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8004F6C8` | parked | a matrix from an object's rotation and position: the struct copies' registers |
| `func_8004F76C` | parked | the matrices of two entries: the counter and a pointer swap registers (9 off) |
| `func_8004F828` | matches | a value set, plus 0x40 |
| `func_8004F83C` | matches | a position moved, and pushed back along the normal when it hit |
| `func_8004F908` | asm | 332 instructions |
| `func_8004FE38`, `func_8004FE58` | match | wrappers |
| `func_8004FE88` | parked | the race's reset: the loops' pointers and counter |
| `func_8004FFAC`, `func_8004FFC8` | match | `qsort` comparators, without the low 3 bits |
| `func_8004FFE4` | asm | 282 instructions |
| `func_8005044C` | parked | a position along a segment (`MULSHIFT`): each value one register later |
| `func_800505BC` | asm | the bikes' modes and slots (125 instructions; the constants through `$t2`) |
| `func_800507B0` | parked | the bikes' slots: where the constant 1 is set (4 off) |
| `func_80050850` | matches | the bikes' values saved to or loaded from a table |
| `func_800508B4` | parked | an object made by kind, placed and named: the struct copies' registers |
| `func_80050A4C` | parked | the bikes' objects made and listed by mode: registers |
| `func_80050CA4` | matches | the bikes' objects freed |
| `func_80050D7C` | matches | a bike's lap passed on, in a race of kind 3 |
| `func_80050E88`, `func_80050EBC` | match | a kind's number, through a jump table |
| `func_80050F1C` | matches | a `qsort` comparator, without the low 4 bits |
| `func_80050F38`, `func_80050F5C` | match | the rank list cleared, and the bikes ranked |
| `func_8005102C` | matches | a bike's place in the rank list |
| `func_80051060`, `func_8005108C`, `func_80051094` | match | a bike's values set or reset |
| `func_800510B4`, `func_80051114` | match | a bike's entry from a table, a call when a flag is set |
| `func_8005114C` | asm | 208 instructions |
| `func_8005148C` | parked | a bike's position from its model: the struct copies' registers |
