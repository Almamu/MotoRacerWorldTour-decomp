# The game's chunk_22: script commands (#23)

Commands of the game's scripts, run on the game object (`Game22`, chunk_69's
`Game69`). Each takes the object and a pointer just past its arguments
(`sp[-1]` is the last argument):
- a choice between two arguments by a third;
- an entry of a named list, by number (the name built with `sprintf`);
- a list's entry started, once (the `0x100` flag), or a flag set when
  the number is -1;
- values passed to `func_8003FC28` through the object's table at
  `m_15C`;
- the view's callback run.

Two handlers check a key against an entry's mask and number and act
when the game's mode is 0, and one sets a state from a view's pairs of
entries.

One file, `src/langimg/chunk_22.cpp`, 0x8003D60C-0x8003F6B8.

23 functions: 12 match, 2 are parked, 9 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **A redundant test kept.** `func_8003DD8C` and `func_8003DE84` return
  when the mode is 8 and then when it isn't 0. Written as one condition
  (`== 8 || != 0`), GCC folds it to `!= 0`; as two `if` statements,
  both tests stay, as in the original.
- **A callback given the object.** `func_8003D60C` calls the view's
  callback with `$a0` untouched, so the callback takes the game object;
  declared without arguments, GCC put the view in `$a0`.
- **An argument read early.** `func_8003D7F0` reads `sp[-3]` before
  testing the flags; read where it's used, the loads moved.
- **Both branches call.** `func_8003D970` calls `func_8003FC28` with one
  of two arguments; written with the call in both branches of an `if`,
  as the original's duplicated setup shows, it matched.
- **Packed words as bitfields.** A view's pair count (bits 28-29, signed)
  and an entry's number (10 bits) and mask (16 bits, signed, from bit
  12) are bitfields.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8003D60C` | matches | the view's callback |
| `func_8003D674` | matches | a named list's entry |
| `func_8003D714` | matches | one of two arguments |
| `func_8003D73C`, `func_8003D7F0` | match | a list's entry started, once |
| `func_8003D8B4`, `func_8003D8FC` | match | the `0x100` flag set |
| `func_8003D924`, `func_8003D970` | match | values through the table |
| `func_8003D9CC` | parked | a slot cleared: the table's address comes first |
| `func_8003D9EC`, `func_8003DB9C` | asm | 108 and 124 instructions |
| `func_8003DD8C`, `func_8003DE84` | match | a key's handlers |
| `func_8003DF7C`, `func_8003E194`, `func_8003E3AC` | asm | 129 to 134 instructions |
| `func_8003E5B0` | parked | the state from the pairs: the stored constants in saved registers |
| `func_8003E6FC` | asm | 357 instructions |
| `func_8003EC6C` | matches | a slot's value |
| `func_8003EC90`, `func_8003F0F8`, `func_8003F314` | asm | 149 to 305 instructions |
