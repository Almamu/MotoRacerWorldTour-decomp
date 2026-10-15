# The game's chunk_71: the memory card menus (#72)

The menus around the memory cards and the sound options: their key
handlers (the volumes up and down), the menu music, the sprites drawn in
pairs of frames, the cards' state reset and updated, a data file's name
(`Data\DB_D_n.sdf` from `Data\DB_X_X.sdf`, built on first use) looked for, the
sound settings applied, groups of named entries, an LZ unpacker and the
open of `\MR3.DAT`. One file, `src/langimg/chunk_71.cpp`,
0x8009F180-0x800A1110.

57 functions: 49 match, 6 are parked, 2 are still asm (`func_8009F180`
matched during chunk_70, #71, once `func_800A41BC` was declared `int`).

## The settings

As chunk_72: GCC 2.91.66, `-G8`, split addresses, divisions without
checks, seven small globals (`langimg.chunk_71_*`).

Here the pointer globals (`D_800C886C`, `D_800BC888`, `D_800BC884`) are
loaded with `lui $a0` and `lw $a0, %lo(...)($a0)`, in one register: the
assembler's expansion of a one-instruction `lw`, so GCC thought them
small and they're declared as scalars. chunk_72's split loads (`lui $v1`,
`lw $v0, %lo(...)($v1)`) came from arrays. The registers tell which.

## The types

- `Menu71`: a menu, with its sound objects (0xA80, 0xA84, whose sprite at
  0x60 is a `Spr71`), its mode (0xA90), flags, the sound options
  (0xA98) and the saved settings (0xA9C).
- `Spr71`: four arrays of 18 frames (0x00, 0x48, 0x90, 0xD8), drawn two
  at a time, and the frame drawn and to draw.
- `Card71`: the cards' state as chunk_72's `Card72`, with a word of flags
  at 0x158 cleared through bitfields.
- `E71`: an entry with a value, a name of 3 characters, two shorts;
  `Group71` five of them and one more.

## Group C, continued

- `func_800A0E58` (a file loaded from the card: its flags, the next
  directory tried, the slot marked) is written and parked, 14 off. The
  current directory read once into a local for its two calls, and
  `D_800D5F10` declared unsized (so its address is built as the
  original's), took it from 169 to 14; left are two saved registers
  swapped and one bit's test (`xori` where the original has `andi` then
  `bnez`). `Card71` now names 0x80, 0x84, 0x150, 0x162C and 0x1630.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8009F180` | matches | a menu's sound started (with `func_800A41BC` returning `int`) |
| `func_8009F1F8` | parked | a menu's sound stopped (24 off) |
| `func_8009F258` to `func_8009F734` | match | the sound options' keys, the menu music, saving the options |
| `func_8009F760` | parked | seven words saved or restored: the copies' registers (49 off) |
| `func_8009F82C` | asm | 161 instructions |
| `func_8009FAB0` to `func_8009FDE8` | match | the sprites' frames |
| `func_8009FE70` | parked | the game set up once: two registers (third pass) |
| `func_8009FFCC` to `func_800A0248` | match | the data file's name, names, entries, groups |
| `func_800A029C` | asm | 97 instructions |
| `func_800A0420` to `func_800A0558` | match | an entry offered a value, the data file looked for, a backward copy |
| `func_800A0584` | parked | the LZ unpacker: the word loop's scheduling (4 off) |
| `func_800A0680` | matches | `\MR3.DAT` read |
| `func_800A06AC` | matches | a file loaded, unpacked if LZSS |
| `func_800A080C` to `func_800A0884` | match | constructors, the sound settings applied |
| `func_800A09C0` | parked | the current cell's name: a register (third pass) |
| `func_800A0AE8` | matches | the settings' defaults |
| `func_800A0C58` to `func_800A0DC4` | match | the cards' state set up, reset, updated, a directory chosen |
| `func_800A0E58` | parked | a file loaded from the card: 14 off |

- **Locals read first.** The four volume handlers matched with the menu
  and the key's code read into locals before anything else.
- **Callees returning `int`.** The sprite draws (`func_80087468`) and the
  key bindings' registers after the calls came right with `int`
  returns, as the techniques say to try first.
- **A stack array's address kept.** `func_800A048C` passes a local table
  of eleven pointers through a saved register, `void **p = t;`: here the
  original does keep it (the open problem's opposite).
- **Four arrays, not two.** The sprite's frame tables were first two
  arrays of 36; indexing the second half with `[18 + i]` added the 18
  before the index, where the original adds 0x48 to the address: they're
  four arrays of 18.
- **Items, not bytes.** `&r->m_28[k - 1]` over 32-byte items matched
  where `r->m_28 + k * 32 - 32` didn't (`func_8009FC00`).
- **A variable reused.** The LZ unpacker keeps its copy's length in the
  same variable as the packed word it came from.

## Third pass

- `func_800A09C0` written and parked (35 off): the card's current cell
  name, from `m_36C[row][col]` or from `m_15C`, through a local `int t[3]
  = {2, 1, 0}` (GCC copies its initializer from `.rodata`, as the
  original's `D_800B7B14`). The tests came out right with a `goto` to a
  shared `return 0`; the card stays in `$a3` where the original has
  `$a2`, so the copy uses `$t0`-`$t2` rather than `$a3`-`$t1`.
- `func_8009FE70` written and parked (21 off): the game's state set up
  once (the cards' counter object built with `__builtin_new` and its
  constructor `func_8006A8FC`, the tracks' laps copied to `D_800C9EF0`,
  `func_80045168` started). The original computes `D_800CBC94`'s address
  again for its second call; GCC keeps it in `$s0`.

## Group C follow-up

- `func_800A06AC`: a file of the pack loaded into the caller's buffer or
  near the end of the largest free block, unpacked in place when it
  starts with `LZSS` (`func_800A0558` moves it up, `func_800A0584`
  unpacks), the block shrunk to fit. The packed offset is computed with a
  temporary (`int k = len - 0x1400; ... (n - k) & ~3`), and the flag for
  the own buffer is declared after the length: with `own` first, the
  name and the pack's address came out in swapped saved registers.
- `func_800A0AE8`: the settings' defaults, words of the block written
  through an `int *` (the block reaches past `Three71`'s fields into the
  card's), the three blocks of five reset between them. The stores are in
  address order except three pairs, and the loop's counter is `unsigned`.
