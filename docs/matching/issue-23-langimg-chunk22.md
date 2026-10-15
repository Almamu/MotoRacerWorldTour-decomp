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

23 functions: 19 match, 2 are parked, 2 are still asm.

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
- **A `do { } while (0)` (the permuter).** `func_8003D9CC` loads its
  index before the table's address; with the index in a local and an
  empty `do { } while (0)` before the store, it matched. A workaround,
  marked at the use.
- **Packed words as bitfields.** A view's pair count (bits 28-29, signed)
  and an entry's number (10 bits) and mask (16 bits, signed, from bit
  12) are bitfields.

## Second pass

- `func_8003E5B0`: chunk_22 built with `-fmove-all-movables`, with no source change (its six constants hoisted).

## Third pass

- `func_8003E3AC` (new): the two sets of the scripts' handlers
  registered through `func_8003EC90`, each set's context (`Arg22` at 0x3C
  and 0x44) stored in its slot; the function addresses stay in saved
  registers across the calls as written.
- `func_8003EC90` (new): a handler stored by its kind into a slot's two
  copies (0x08-0x40 and 0x44-0x94), all of them for kind 0, through a
  `switch`; the slot's words are now named by offset.
- `func_8003F0F8` (new): a slot's handler read by its kind (a `switch`, 9
  and 13 sharing a case).
- `func_8003DF7C` and `func_8003E194` (new, parked): the timed keys'
  handlers, the same code with other callees: a key held (0xFE) steps two
  timers, released (0xFF) starts one. The mode is read again after the
  flag 0x80 is cleared (`mode = g->m_A90;` after the store), the cases
  are in the original's order (0xFF, 0xFE, 0), and the flag `go` is set
  after the mask's test; left: the script context and the view in swapped
  saved registers (12 off each). The body as one inline function taking
  the two callees was further off.

## Inline-helpers pass

- `func_8003DF7C` and `func_8003E194` match with the script context copied
  into a local first (`Arg22 *cc = c;`, the context then read through
  `cc`): the copy and the view then take the original's saved registers
  (`$s3`/`$s4`).
- `func_8003D9EC`: the same copy takes it from 47 to 37 off; left: the
  table's address formed in both of the view's branches, the loop counter
  cleared later and an object's copy in `$a1`.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8003D60C` | matches | the view's callback |
| `func_8003D674` | matches | a named list's entry |
| `func_8003D714` | matches | one of two arguments |
| `func_8003D73C`, `func_8003D7F0` | match | a list's entry started, once |
| `func_8003D8B4`, `func_8003D8FC` | match | the `0x100` flag set |
| `func_8003D924`, `func_8003D970` | match | values through the table |
| `func_8003D9CC` | matches | a slot cleared (a `do { } while (0)`) |
| `func_8003D9EC`, `func_8003DB9C` | parked | written in the second pass |
| `func_8003DD8C`, `func_8003DE84` | match | a key's handlers |
| `func_8003DF7C`, `func_8003E194` | match | the timed keys' handlers (the context copied into a local) |
| `func_8003E3AC` | matches | the handlers registered |
| `func_8003E5B0` | matches | the state from the pairs |
| `func_8003E6FC` | asm | 357 instructions |
| `func_8003EC6C` | matches | a slot's value |
| `func_8003EC90` | matches | a handler stored by kind |
| `func_8003F0F8` | matches | a handler read by kind |
| `func_8003F314` | asm | 233 instructions |
