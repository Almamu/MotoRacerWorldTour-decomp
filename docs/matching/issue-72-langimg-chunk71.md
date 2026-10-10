# The game's chunk_71: the memory card menus (#72)

The menus around the memory cards and the sound options: their key
handlers (the volumes up and down), the menu music, the sprites drawn in
pairs of frames, the cards' state reset and updated, a data file's name
(`Data\DB_D_n.sdf` from `Data\DB_X_X.sdf`, built on first use) looked for, the
sound settings applied, groups of named entries, an LZ unpacker and the
open of `\MR3.DAT`. One file, `src/langimg/chunk_71.cpp`,
0x8009F180-0x800A1110.

57 functions: 46 match, 4 are parked, 7 are still asm.

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

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8009F180`, `func_8009F1F8` | parked | a menu's sound started (2 off), stopped (24 off) |
| `func_8009F258` to `func_8009F734` | match | the sound options' keys, the menu music, saving the options |
| `func_8009F760` | parked | seven words saved or restored: the copies' registers (49 off) |
| `func_8009F82C` | asm | 161 instructions |
| `func_8009FAB0` to `func_8009FDE8` | match | the sprites' frames |
| `func_8009FE70` | asm | 87 instructions |
| `func_8009FFCC` to `func_800A0248` | match | the data file's name, names, entries, groups |
| `func_800A029C` | asm | 97 instructions |
| `func_800A0420` to `func_800A0558` | match | an entry offered a value, the data file looked for, a backward copy |
| `func_800A0584` | parked | the LZ unpacker: the word loop's scheduling (4 off) |
| `func_800A0680` | matches | `\MR3.DAT` read |
| `func_800A06AC` | asm | 88 instructions |
| `func_800A080C` to `func_800A0884` | match | constructors, the sound settings applied |
| `func_800A09C0`, `func_800A0AE8` | asm | 78 and 92 instructions |
| `func_800A0C58` to `func_800A0DC4` | match | the cards' state set up, reset, updated, a directory chosen |
| `func_800A0E58` | asm | 174 instructions |

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
