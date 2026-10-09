# The game's chunk_02: 2D items, names, objects (#3)

The chunk mixes the game's two languages, and it took finding that out
to get anywhere: the C++ classes (`CName`, `Cobjet`) match only with GCC
2.95.2, and the plain functions around them only with GCC 2.91.66. The game's C
and C++ were built with different compilers. The chunk was cut in three:

| Chunk | What | Where | Settings |
|---|---|---|---|
| `src/langimg/chunk_02.cpp` | C: the 2D item lists (quads, sprites) | 0x80015798-0x80015EAC | GCC 2.91.66, `-G0` (`langimg.chunk_02_*`) |
| `src/langimg/chunk_02a.cpp` | C++: `CName`, `CNamed`, `Cobjet`'s constructor, destructor, `Init` | 0x80015EAC-0x80016144 | the game's (2.95.2, `-G8`) |
| `src/langimg/chunk_02b.cpp` | C: the objects' helpers, the scene tree's draw | 0x80016144-0x800177E8 | GCC 2.91.66, `-G8`, divisions without checks, `--small-externs` (`langimg.chunk_02b_*`) |

3 + 9 + 22 functions: 23 match, 11 are parked.

## How the settings were found

1. **Two compilers.** `CName::Equals` matches with 2.95.2 only, and
   `func_80016914`, `func_800169B8`, `func_80016A38` with 2.91.66 only.
   The C++ part lies between 0x80015EAC and 0x80016144, so the chunk was
   cut there (docs/libraries.md, "Moving a chunk into a library", for the
   steps; the chunks stay in `src/`, being the game's own code).
2. **`-G0` before the classes.** `func_80015CF4` reads its globals with
   `lui`; it matches with 2.91.66 and `-G0`.
3. **chunk_02b's assembler.** Its divisions are bare `div`/`mflo`, as in
   the sound engine (`--div-no-checks`, `func_80017574`). It reaches two
   small globals through `$gp` (`D_800C493C`, `D_800C4944`) and the
   others, also in `.sdata`, with `lui`: the assembler only knew the sizes
   of the variables the file defined. `--small-externs=D_800C493C,D_800C4944`
   (tools/maspsx_plus.py) limits the small externs to those two; the
   data isn't split by file yet (#101).

## chunk_02: 2D items

A `UiList` holds `UiItem`s (kind 0 a flat quad, 1 a gouraud quad, 2 a
sprite) and the list's size, for its alignment. A sprite's `id` is the
texture's block until `func_80015CF4` resolves it to the address of its
`UiTexture` (UVs, CLUT, texture page).

| Function | State | Notes |
|---|---|---|
| `func_80015798` | parked | draws a list: GPU packets, linked in by a hand-written `addPrim` |
| `func_80015CF4` | matches | loop-local constants (`two`, `magic`, `one`) |
| `func_80015E04` | parked | the tables' addresses as `la` + `addu`, a copy into `$a2`, registers |

- **`addPrim` in assembly.** The original links each packet into the
  ordering table with `lwl`, `sll`, `swl`, `swl` on the 24-bit links.
  PsyQ's `addPrim` (bitfields of `P_TAG`) compiles to masks with every
  compiler here; four instructions with registers GCC picks are an `asm`
  statement (`ADD_PRIM`).
- **`func_80015798`** is 337 instructions off. The original holds all its
  constants (`1` for the switch, the packets' tags, `0xE1000200`, the
  colour mask, both sprite codes) in saved registers for the whole loop.
  The loop-local constants that matched `func_80015CF4` bring five of
  the eight out; the switch's `1` and the sprite codes stay in the loop.
  An explicit decision tree comparing with `one` got closer (299) and was
  not kept. The item's fields are read into locals before the first store,
  as the original does.

## chunk_02a: names and objects

`CName` (a heap-copied string), `CNamed` (an object with a name) and
`Cobjet`'s constructor and destructor match. `Cobjet::Init` is parked:
the original sets the matrix row by row and stores `m_38` and `m_3C`
twice, and GCC drops the first pair.

## chunk_02b: the objects' helpers

| Function | State | Notes |
|---|---|---|
| `func_80016144` | matches | variadic: PsyQ's `stdarg.h`; the second loop as a `goto` |
| `func_80016234`, `func_80016798` | match | |
| `func_80016268`, `func_80016434`, `func_80016600` | parked | the rotation setters: stack addresses (below) |
| `func_800167B8` | parked | registers: the original moves `o` to `$a2` |
| `func_800167F8` | matches | locals declared `b`, then `a`, for their stack slots |
| `func_8001687C`, `func_80016914` | match | the angle cache |
| `func_800168A8` | parked | the cache's address as `la` + `addu` |
| `func_80016998` ... `func_800169B0` | match | empty |
| `func_800169B8`, `func_80016A38` | match | |
| `func_80016A8C` | parked | draw at a level of detail; registers only (20 off) |
| `func_80016C3C` | parked | a point projected with the GTE; a copy of `prim` in `$a2` |
| `func_80016E34` | parked | the scene tree's draw; stack addresses |
| `func_80017574`, `func_80017730` | match | |

- **Variadic, PsyQ's way.** `func_80016144` takes the part numbers as
  `...`. With GCC's own `stdarg.h` (`__builtin_next_arg`) the named
  arguments weren't kept in their stack slots; `include/stdarg.h` is
  PsyQ's, from the last named argument's address. Its second loop tests
  `j < n` at the top and `m_3D == -1` at the bottom, which only a `goto`
  gave (a `while`, a `for` with both tests and a `do` were each 27 to 48
  off), with `j = 0` and `n`'s load before `m_3D = -1`.
- **`func_80017574`.** `if (o->m_38 && o->m_3C > 0)` before the loop
  over the parts had one test too many: the `for` loop's own entry test is
  the original's only one.
- **`func_80017730`.** Two `do`/`while (--n)` loops over the list, each
  element read into one shared `Cobjet *o`.
- **`func_80016A8C`** (20 off, registers only). The distance is an inline
  (`CameraLod`), and that made the global PRE (egcs's GCSE) move `m_3C`'s
  load the way the original has it: one `lbu` before the branch, reloaded
  in the branch with the call. Then: `m = x; if (m < y) m = y;` for the
  maximum, the result passed through a variable, `d = n >= 2 ? CameraLod(&pos)
  : 0; lod = d;` (the permuter's idea), the scale `(m_14 << 13) + (m_14 <<
  12)` (written `* 0x3000` GCC multiplies by 3 first), and
  `D_800CBCA4 = o->m_54;` before `D_800CBCA0 = -1;`, since the original
  reads `m_54` before either store. Left: the sum and the lens fields in
  other registers.
- **`func_80016C3C`** projects a triangle and a point with the GTE.
  `include/gte.h` has the moves: one instruction per `asm` statement where
  GCC chooses the registers (`GTE_CTC2`, `GTE_MFC2`, ...), sequences where
  the original's registers are fixed (`GTE_SET_ROT` through `$a1`/`$a2`),
  and the constants through `register int r asm("$9")`, set from C.
  `mfc2`/`cfc2` get a load's delay in maspsx_plus (the original has a
  `nop` after `mfc2 $v0, $24` before the `blez` that reads it). The
  transformed vector goes into the matrix's own `t` (`rot.t`), as in the
  rotation setters. Left: the original keeps `prim` in `$a0` and a copy in
  `$a2` for the second call; reading `o->m_prim` twice, a ternary or an
  `if` for the texture page didn't give it.
- **`func_80016E34`** walks the object tree: each matrix composed onto the
  matrix stack (`D_800CA350[depth]`) with its parent's, or the camera's for
  an object attached to the camera (flag 0x20000), the object drawn as its
  flags say (0x40 a projected sprite, 0x20 with 0x200000/0x400/0x8000000
  models in camera space, otherwise a model at a level of detail), then its
  next sibling and its first child (flag 0x1000: the child's matrix
  borrowed for the call and restored). Its blocks' locals share stack
  slots as in the original.

### Stack addresses (open)

The rotation setters (`func_80016268`, `func_80016434`, `func_80016600`)
and `func_80016E34` pass the addresses of their locals to several calls.
The original computes each address anew for each call (`addiu $a0, $sp,
0x20`); GCC keeps them in saved registers, so its frame, its saved
registers and everything after differ. Only one address is kept in the
original (`tmp.t` in `func_80016268`, `&rot` in `func_80016C3C`).

GCC rematerializes a local's address only when the local is the first
one in the frame (its address is the frame pointer itself); every other
local's address it keeps in a register. Tried without change: 2.7.2,
2.8.0, 2.8.1, 2.91.66 and 2.95.2, `cc1` and `cc1plus`, `-O1`,
`-fno-gcse`, the CSE and register options, `-fforce-addr`, the vectors
in separate blocks, one array or struct of matrices. A permuter run kept
the code only by giving two matrices one variable.

## What went wrong on the way

- **`try_func --gcc`** takes the version (`2.91.66`), not the directory
  name (`2.91.66-psx`): with the latter it failed with a Python error
  that read like a missing source file.
- **`cc1` doesn't preprocess.** Testing a macro with `cc1` alone compiled
  it as a call; pipe through the compiler's `cpp`.
