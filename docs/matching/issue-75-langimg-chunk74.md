# The game's chunk_74: strings, times, CRC-32, overlays (#75)

The game's small library: case-insensitive compares through a folding
table, `strupr` and `strlwr`, number and time formatting, a small
`vsprintf`, a frame timer object, CRC-32, two relocation passes, an
overlay loader, cheat-code sequences, and hand-written decoders. One
file, `src/langimg/chunk_74.cpp`, 0x800A54F0-0x800A7084.

43 functions: 31 match, 6 are hand-written (they stay asm), 5 are
parked, 1 is still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, and no
small globals.

## Hand-written

`config/langimg/handwritten.txt` (new) lists the game's hand-written
functions, which count as done: `func_800A6A4C` (a table into the scratchpad), `func_800A6A98`,
`func_800A6BD8` and `func_800A6D54` (a bitstream decoder in pieces that
jump into each other), `func_800A6FA0` (a 64-bit multiply and divide),
`func_800A7034` (a call on a stack in the scratchpad). Each has
instructions GCC doesn't emit (`neg`, `add`, `addi`) or handles `$sp` and
`$ra` itself.

## Notes

- **Signed strings.** `char` is unsigned with this compiler; the string
  functions test characters with `lb`, so their strings are `s8 *`.
- **The folding table read again.** `stricmp` (`func_800A60AC`) keeps
  pointers to both folded characters and loads them again for the
  result; `strnicmp` (`func_800A6100`) matched with its character a
  `short` (the permuter).
- **Callees' return types again.** `func_800A6788` matched once
  `func_800A22B0` (which passes on its callee's result) was declared
  `int`; `func_800A6650`'s two virtual calls are declared returning `int`,
  one taking only `this`.
- **Masks that store twice.** The timer object's word at 0x3C is a 30-bit
  time and a 2-bit flag. Its constructor clears the time and sets the
  flag with two masked writes, each stored; as bitfields, GCC made one
  store. The order (`m_38` between the two) came from the permuter.
- **Relocations.** `func_800A54F8` adds a base to the words at a list of
  offsets; `func_800A658C` handles four kinds (a word, a `%hi`, a `%lo`, a
  jump's target), its cases laid out in source order and the next entry
  read through a temporary. The overlay loader `func_800A6650` loads a
  file, relocates its code, flushes the cache and calls it.
- **Divisions by 10 with `div`.** The `itoa`s divide with a `div`
  instruction where GCC would multiply: the divisor was a variable
  (`int base = 10`). The originals also reload it each time round; three
  functions stay parked on that.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800A54F0` | matches | empty |
| `func_800A54F8` | matches | words relocated by a base |
| `func_800A5530` | asm | a file loaded and its tables fixed up (173 instructions) |
| `func_800A57E4`, `func_800A5888` | match | the timer object's constructor and deleting destructor |
| `func_800A58B0` | matches | a counter advanced by `m_150 * 64 / 1000` of the game object, and returned |
| `func_800A5908`, `func_800A594C` | match | the timer's reset and start |
| `func_800A59D4` | matches | the timer each frame |
| `func_800A5BB8`, `func_800A5CBC` | match | the frame's length, a pause flag |
| `func_800A5CD0` | parked | milliseconds as minutes, seconds, hundredths: the divisions' registers |
| `func_800A5D2C`, `func_800A5D68` | match | the global timer's reference count |
| `func_800A5DA4` | matches | an empty function taking `...` |
| `func_800A5DBC`, `func_800A5ED0` | match | times as text |
| `func_800A5F90`, `func_800A6000` | parked | `itoa`, plain and padded: the divisor's reload |
| `func_800A60AC`, `func_800A6100` | match | `stricmp`, `strnicmp` |
| `func_800A6168` | parked | `vsprintf` (`%d`, `%s`, widths): the original hoists six constants out of the loop |
| `func_800A6344`, `func_800A638C` | match | `strupr`, `strlwr` |
| `func_800A63D4`, `func_800A63DC` | match | empty |
| `func_800A63E4` | matches | a halfword's bytes swapped |
| `func_800A63FC` | matches | the CRC table copied to the scratchpad |
| `func_800A6448`, `func_800A645C` | match | the CRC table set, CRC-32 |
| `func_800A658C` | matches | code relocation |
| `func_800A6650` | matches | an overlay run |
| `func_800A6788`, `func_800A67E8`, `func_800A6818` | match | small wrappers around `func_800A22B0`, `func_800A2290` and `func_800151F0` |
| `func_800A6850` | matches | a value scaled one of two ways by a flag |
| `func_800A68BC` | parked | cheat-code sequences: registers |
| `func_800A6A4C`, `func_800A6A98`, `func_800A6BD8`, `func_800A6D54`, `func_800A6FA0`, `func_800A7034` | hand-written | |

## Second pass

- `func_800A63FC` is C after all (it is off `config/langimg/handwritten.txt`):
  the 8-byte frame is a local whose address is the stack's (`if (((int)&here
  >> 16) != 0x1800)`), and the copy a `for (i = 255; i != -1; i--)` loop.

## Inline helpers and small symbols

- `func_800A59D4` (the timer each frame) matches: the four frames' lengths
  summed by index (`o->m_24 += q[i]`) instead of a walking pointer, which
  gave the original's two registers, and the frame's slot stored through
  its byte offset (`*(int *)((u8 *)q + (o->m_38 << 2))`), which adds the
  base first as the original does.
