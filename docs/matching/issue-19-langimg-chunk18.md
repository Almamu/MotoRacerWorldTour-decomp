# The game's chunk_18: shapes, a bike's sound and a menu cursor (#19)

- a shape's points placed through its matrix at 0x60: each point's
  position at 4 transformed (`func_80098768`) and moved by the matrix's
  translation into 0x10, then the shape's own at 0x18 into 0x44
  (`func_8003674C`);
- a race object's bike (at 0x154): bit 12 of a channel's flags cleared,
  the channel's value at 0xC set from its reference, a byte at 0x34
  cleared, then, with a sound at 0x158, chunk_04's `func_8001B350` and
  `func_8001AFF4` with the bike's model's position, the result written
  to the position's y; five bytes from 0x16F cleared (`func_80036850`);
- `func_80097E4C` called with a short vector's three values
  (`func_800372E8`);
- a menu cursor moved by a direction: its entry and a second counter
  stepped, wrapped or stopped by the mode at 0x2F, then the new entry's
  sequence started through `func_80019578` (`func_80037318`, parked).

One file, `src/langimg/chunk_18.cpp`, 0x80035518-0x8003762C.

7 functions: 3 match, 1 is parked, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **A callee's result, unused.** `func_80036850` calls chunk_04's
  `func_8001B350` without using its result, but the callee returns one
  (`$s2` into `$v0` before its `jr`); declared `void`, the vector's copy
  before the call came out in other temporaries (8 off). Declared `int`,
  it matched (the permuter's find, checked against the callee).
- **A pointer from an inline function.** The same function reaches the
  channel at 0x100 of an object through an inline function returning its
  address, called twice; written as a field path GCC folded 0x100 into the
  loads.
- **A switch's range check.** `func_80037318` tests the mode for 0, then
  below 0 and below 3: a `switch` with `case 0:` and `case 1: case 2:`;
  `>= 0 && < 3` became one unsigned compare. Its last two tests (the mode
  after moving) are an `if` on the mode with a two-case `switch` inside
  for 1 and 2.
- **Parked.** `func_80037318`: moving back, the original lays mode 0's
  body before modes 1 and 2 (a switch's bodies after its compares); here
  mode 0 is an `else` after them (15 off). As a full `switch`, GCC compared
  1 first.
- **Still asm.** `func_80035518` (251 instructions, with `$fp` and
  spills), `func_80035904` (914) and `func_80036964` (609), not tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80035518` | asm | 251 instructions |
| `func_80035904` | asm | 914 instructions |
| `func_8003674C` | matches | a shape's points placed |
| `func_80036850` | matches | a bike's channel and sound |
| `func_80036964` | asm | 609 instructions |
| `func_800372E8` | matches | a short vector passed on |
| `func_80037318` | parked | a menu cursor: the bodies' order |
