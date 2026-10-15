# The game's chunk_27: a race on chunk_23's named objects (#28)

A class on chunk_23's named objects (`Obj27`, its vtable at 0x68), with
two players' and three others' racers (chunk_05's, 0x184 bytes each),
their tiles and a stage:
- its destructor: its buffers freed, its members' destructors called,
  last first, then chunk_23's;
- the race's cleanup: what it allocated freed, globals reset, five
  globals set from its fields;
- its handlers: another named object found by its state and given data,
  the stage told, a check through the vtable;
- each racer given its tile's slot.

Also two destructors of classes on `Cobjet`, and a word stored.

One file, `src/langimg/chunk_27.cpp`, 0x80046F2C-0x8004970C.

18 functions: 13 match, 1 is parked, 4 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, one small
global (`D_800C5868`).

## Notes

- **A comparison as a value.** `func_80048CFC` tests `D_800D5F40 == 8`
  with `xori` and `bnez`, where `if (D_800D5F40 == 8)` gives `li` and
  `bne`. With the comparison returned by an inline function, or kept in
  a local, it matched.
- **`void`, not `return 1`.** The same function ends by storing 1 at
  0x348 with `$v0`; returning 1 as well gave a second register. It's
  `void`.
- **A global that keeps its place.** `func_800481E0` stores 1 to
  `D_800D5FCC` after five stores through the object. Declared `int`, GCC
  moved that store above them; declared as an array of two with its
  neighbour (`D_800D5FCC[2]`, the second being `D_800D5FD0`), it stayed
  after them. GCC 2 assumes a scalar global and a field reached through a
  pointer don't overlap; an array element may.
- **A value computed before a call.** `func_80048824` subtracts 0x8000
  in the delay slot of the call printing the value; with the difference
  in a local set before the call, it matched (the permuter).
- **Member arrays destroyed.** `func_80048DD0` destroys two arrays of
  racers from their ends, each after testing its address. Written as
  `if (o->m_7A4) { e = o->m_7A4 + 3; while (o->m_7A4 != e) ...` it
  matched; with `e != o->m_7A4`, the comparison's registers swap.
- **Parked.** `func_80048EC4` keeps the players' count on the stack and
  its second loop's pointers in other registers.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80046F2C` | asm | 1136 instructions |
| `func_800480EC` | matches | another object's tile given data |
| `func_8004818C`, `func_800490C8` | match | a check through the vtable |
| `func_800481E0` | matches | the race's cleanup |
| `func_8004845C` | matches | the stage told the state |
| `func_80048494` | asm | 207 instructions |
| `func_800487D0` | matches | an event sent, the stage told |
| `func_80048824` | matches | another object set up, a value from `func_800B5A1C` passed to it |
| `func_80048980` | matches | another object's fields set |
| `func_800489E4`, `func_80048A04` | match | destructors of classes on `Cobjet` |
| `func_80048A2C` | asm | 178 instructions (the constructor) |
| `func_80048CF4` | matches | a word stored |
| `func_80048CFC` | matches | the race's mode checked |
| `func_80048DD0` | matches | the destructor |
| `func_80048EC4` | parked | the racers given their tiles' slots: registers |
| `func_8004911C` | asm | 380 instructions |

## Second pass

- Built with `-fmove-all-movables` (the Makefile's CFLAGS for the chunk, group A's finding in the techniques): every matched function still matches, and the parked ones it touches come closer. `func_80048EC4` went from 107 to 75 off.
