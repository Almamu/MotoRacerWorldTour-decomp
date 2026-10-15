# The game's chunk_60: pools, ids and frame buffers (#61)

Small C++ classes the menus are built on: a buffer of frames (an
ordering table for each of two frames, with vtables `D_800C8C7C` and
`D_800C8CC4`), pools of items of a fixed size, ids handed out with
reference counts and linked items, a holder of four of these, entries
dispatched once for each parity of the frame, and a menu's entries
searched and chosen. One file, `src/langimg/chunk_60.cpp`,
0x80089200-0x8008B208.

51 functions: 42 match, 4 are parked, 5 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, seven
small globals (`langimg.chunk_60_*`), as chunk_71 and chunk_72.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80089200` | parked | an entry that can be chosen, searched down or up: the downward loop isn't rotated in the original (13 off) |
| `func_800892DC` to `func_800893C8` | match | an entry chosen, its menu sound |
| `func_800893E8` | matches | a projection's derived values (third pass) |
| `func_80089508` to `func_800897FC` | match | the frame buffer: constructors, destructor, its frames, its allocation |
| `func_800898C4` | parked | the frame's ordering table cleared: a global read without `$gp` here (2 off) |
| `func_80089930` to `func_80089C7C` | match | the pools and ids: constructors, destructors, allocation, reset |
| `func_80089CF4` | parked | a reference to an id: registers (41 off) |
| `func_80089E24` to `func_8008A220` | match | an id released, the pool of 0x68-byte items, the holder |
| `func_8008A250` | asm | 166 instructions |
| `func_8008A4E4` | matches | a chain of nodes added to a list |
| `func_8008A518`, `func_8008A91C` | asm | 125 and 400 instructions |
| `func_8008A70C` | parked | a sprite's node from the pool: one instruction shifted (121 off) |
| `func_8008AF5C` | matches | the entries of this frame dispatched once |
| `func_8008B000` | asm | 91 instructions |
| `func_8008B168` | asm | a GTE loop (`rtps`), handwritten |

- **An empty constructor's loop.** `func_80089B6C` allocates an array of
  36-byte items and then counts down to -1 doing nothing: the loop GCC
  emits for `new T[n]` when `T` has a constructor that does nothing
  (`T36() {}`).
- **Deleting destructors.** The `(p, flags)` functions call the
  destructor's body and `__builtin_delete` when `flags & 1`; a holder's
  destructor calls its members' with 2.
- **`int`, not pointer arithmetic.** The frame buffer's size is
  `a + n * 2` on `int`s; as `u16 *` arithmetic it was close, and one
  function still matched, but `func_80089630` needed the `int`s, and
  `func_8008964C` the order `a + n * 2`.
- **A virtual call through the vtable's entry.** As chunk_23 and chunk_45:
  `VCALL`, with the vtable at 0x14 here.
- **A global read two ways.** `D_800C8C70` is one of the file's small
  globals (`%gp_rel` everywhere) except in `func_800898C4`, which reads it
  with `lui` and `lw` into one register: a declaration this file
  can't give with one symbol.

## Third pass

- `func_800893E8` matches: it is chunk_65's matched `func_80093C80` (a
  projection's focal length, half-height and angle, through `ratan2` and
  the table `D_800BA884`) on this file's `Proj60`, written the same way.

## Group C: more functions

- `func_8008A70C` (a sprite's node taken from the holder's pool and filled
  from the game's table) is written and parked, 121 off: the code is the
  original's, with the pool's pop as an inline function (`Take60`), but the
  original leaves the second test's delay slot empty and loads -1 after
  the table's pointers where GCC fills the slot with the -1, which shifts
  everything after by one instruction.
