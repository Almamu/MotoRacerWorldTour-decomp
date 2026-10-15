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

18 functions: 13 match, 3 are parked, 2 are still asm.

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
| `func_80048494` | parked | the game's step: the tables' addresses' order |
| `func_800487D0` | matches | an event sent, the stage told |
| `func_80048824` | matches | another object set up, a value from `func_800B5A1C` passed to it |
| `func_80048980` | matches | another object's fields set |
| `func_800489E4`, `func_80048A04` | match | destructors of classes on `Cobjet` |
| `func_80048A2C` | asm | 178 instructions (the constructor) |
| `func_80048CF4` | matches | a word stored |
| `func_80048CFC` | matches | the race's mode checked |
| `func_80048DD0` | matches | the destructor |
| `func_80048EC4` | parked | the racers given their tiles' slots: registers |
| `func_8004911C` | parked | the race set up on its stage: spills and a sum's order |

## Second pass

- Built with `-fmove-all-movables` (the Makefile's CFLAGS for the chunk, group A's finding in the techniques): every matched function still matches, and the parked ones it touches come closer. `func_80048EC4` went from 107 to 75 off.

## Group B follow-up

- `func_80048494` written and parked (27 off): the game's step by the
  stage's state at 0xA90 (4: `func_800AFC0C` and chunk_22's `func_8003E3AC`,
  then 3; 7: the next entry of two tables by `D_800D5F64`, clamped to 0-2;
  6: by the flags at 0xB4 and 0xBC). The stage is read through a local (no reload after the
  store at 4); the clamp is `if (v >= 0) { r = 2; if (v < 3) r = v; }
  else r = 0;`, which gives the original's branches. Left: GCC moves the
  clamped value's store below the two tables' loads.

## Group B follow-up, continued

- `func_80048494` from 27 to 20 off: the clamped index stored to
  `D_800D5F64` first and the two tables then read into locals
  (`int b = D_800C57F8[r]; int c = D_800C57EC[r];`) before the store and
  the call, as the original. Left: the two tables' addresses built in the
  other order, and the global loads right after the calls in `$v0` where
  the original uses `$v1`.

## Return types and a large function

- `func_80048494` from 20 to 14 off: chunk_28's `func_8004AC78` returns an
  `int` (its definition does); declared `void` here, the global load after
  the call used another register. Left: the two tables' addresses built in
  the other order (pointer locals or the reads swapped made it worse) and
  one load after a call.
- `func_8004911C` (380 instructions, the race set up on its stage: the
  tiles' ids from the stage's grid, two voice banks, the racers' lights by
  the stage's index, the cameras' fog) is written in full and parked, 354
  off. The calls and their arguments are the original's; the grid is
  `Grid27` (`Peer27`'s 0x30, its index at 0x28 = the peer's 0x58), the
  race's settings `Hold27`. `func_80044F9C` (chunk_25's, variadic,
  returning what its callee returns) is declared `int (Obj27 *, int, int,
  ...)`. Left: the original spills the peer and the stage's index to the
  stack (a frame of 0x68 against 0x60), and adds the ids' constant to the
  first id before the product (`(m_04 + 2) + i * m_08`) where GCC adds it
  to the product (in both orders tried).
