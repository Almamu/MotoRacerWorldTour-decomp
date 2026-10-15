# The game's chunk_34: the race's steps, laps and gates (#35)

More of the race (`Own34`, chunk_36's `Own36`), its run (`Run34`) and
the run's bikes (`Bike34`, 0x568 bytes):
- the race's state at the run's 0x1E08 set to 2, chunk_51's
  `func_80078FC4` with the race's value at 0x18, the two objects at 0x43C
  given the positions of the bikes indexed at 0x470, two fields of the
  current step's word set and bit 0 of 0x490 set (`func_800554E0`); the
  state set to 4 or 3 by the race's value at 0x304, then `func_80057B18`
  (`func_80055614`);
- a bike's place handled: 24 at 0x327 from the second place on for the
  bikes of kind 1, `func_8006CA84(70, 127)`, a count per racer in
  `D_800D5FC0` for the winners in some modes, then chunk_37's
  `func_8005BFEC` when two or more bikes are in the race (`func_80055650`);
- the race's steps (`Cur34`, its index in the word's top 5 bits): the next
  one started through `func_80019D0C`, with chunk_24's `func_80042FF0` for
  the steps 2 and 7, recursively until one starts or the index runs out
  (`func_8005663C`); the step checked each frame (`func_800567CC`);
- the race's clock (`D_800D6100` added to the run's 0x1DF4, the start's
  step at -999, the time at 0x1DF0 counted down), and at its end the bikes
  of kind 1 in the race given 3 or 4 by the mode, with the places of the
  two bikes indexed at 0x1E24 and 0x1E25 (`func_80056874`, parked);
- a bike's time and lap time added to (kept under 0x36EE7F), then
  `func_8005108C(b, 3)` past `D_800D5F68` (`func_80056B68`);
- a bike passing the track's next gate (`Track34` at the run's 0x1E40: the
  section and point, 4 bytes per gate at 0xE4): the gate's counter, a time
  added in mode 4, `func_80057814`, the lap done at gate 0
  (`func_80056CD4`);
- a lap done (`func_80056F64`, parked): its time corrected by how far past
  the line the bike is, a text when it beats the earlier laps, the next
  lap's time cleared, a text and `func_8006CA84(56, 127)` at the last lap,
  or the bike's finish and place.

One file, `src/langimg/chunk_34.cpp`, 0x800554E0-0x800574EC.

10 functions: 7 match, 2 are parked, 1 is still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **The step re-read for its store.** `func_8005663C` sets the step's
  index to -1 through `o->m_498` read again, as the original reloads the
  word; through the local copy GCC reused the word it had read for the
  index (15 off, the permuter's find).
- **A bitfield read into a local** (chunk_24's note): `func_800567CC`
  tests a sequence's 2-bit state with `sll 30` through `int st =
  q->m_state;`, with a `goto` past the call; tested in place, GCC used
  `andi`.
- **A count table indexed by bytes** (chunk_37's case): `func_80055650`'s
  `D_800D5FC0` is declared `extern int` and incremented through
  `*(int *)((u8 *)&D_800D5FC0 + (k << 2))`, the shift before the table's
  `lui`.
- **The bikes counted down to the first** (chunk_48's note): `do { ... }
  while (p-- != first);` with `first = r->m_2E8;` taken first, and the
  in-race bit tested as `(p->m_00 >> 6) & 1`.
- **The run read through the race each time.** `func_80056874` reads
  `o->m_378` in each test instead of a local, which put it in `$a2` where
  the original has it, except for the time's test (5 off, parked).
- **Values read before the tests that use them.** `func_80056CD4` reads
  the gate's time (`int v = e[D_800D5F30];`) and its value at 3 into
  locals before testing the mode and its sign; `func_80056F64` reads the
  distance past the line before testing the lap's length, and the bike's
  index before setting 0x490.
- **One result, one exit.** `func_80056CD4` keeps its result in a saved
  register across the calls and returns it at the end; written with
  early returns, GCC kept no saved register for it (a smaller frame).
- **A post-increment's old value, unsigned.** `func_80056F64` tests the
  lap before its increment as a byte: `(u8)b->m_40++ < 7` gave the
  original's `andi 0xFF`.
- **The laps compared unsigned.** The same function tests the run's laps
  against 2 with `sltiu`: `(u32)o->m_378->m_04 >= 2`, the word read again
  for each use; the field is also read as a byte for another compare (a
  union).
- **Parked.**
  - `func_80056874`: the run read for the time at 0x1DF0 in `$a0` where
    the original has `$a2` (and copies it to `$a0` for the loop), 5 off.
  - `func_80056F64`: the bike's index at 0x43 in `$v1` where the original
    has `$a1`, and the -1 it's compared with in another register (5 off);
    the permuter got to 4 only with -1 in a variable.
- **Still asm.** `func_800557C4` (926 instructions), not tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800554E0` | matches | the race's state set to 2, the objects placed |
| `func_80055614` | matches | the state set to 4 or 3 |
| `func_80055650` | matches | a bike's place handled |
| `func_800557C4` | asm | 926 instructions |
| `func_8005663C` | matches | the next step started |
| `func_800567CC` | matches | the step checked |
| `func_80056874` | parked | the race's clock: registers |
| `func_80056B68` | matches | a bike's times added to |
| `func_80056CD4` | matches | a bike passing a gate |
| `func_80056F64` | parked | a lap done: registers |
