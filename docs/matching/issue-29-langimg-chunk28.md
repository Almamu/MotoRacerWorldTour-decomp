# The game's chunk_28: static objects and a save (#29)

What's here:
- **Static objects.** Two singletons and a pair of 0x74-byte objects,
  constructed the first time and destroyed the last time (each with its
  own counter, as GCC's static initialization does).
- **The game object's teardown.** Two arrays of pointers freed, five
  values saved to globals, two others freed through `func_8006B018`.
- **A save.** Its settings copied out to globals, with a 0x28-byte and
  a 0x14-byte block.
- **Small helpers.** A name formatted with `sprintf`, the state set from
  a key (a switch with a jump table), and short call chains.

One file, `src/langimg/chunk_28.cpp`, 0x8004970C-0x8004B4B0.

19 functions: 16 match, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, five
small globals.

## Notes

- **An object's size decides how its address is loaded.** With split
  addresses, the address of a global bigger than 8 bytes is split
  (`lui` into a temporary, `addiu` into the target, the halves free to
  move). A global of 8 bytes or less is a candidate for small data, so
  GCC emits the `la` macro instead (both halves in the target register,
  together, never in a delay slot). The original loads the static pair's
  address (`D_800CAFB8`, two 0x74-byte objects) and the save's
  destinations the `la` way. Declared as `int` and cast where used,
  `func_80049A24`, `func_80049AE8` and `func_8004AB7C` matched. This is
  why the scalar declaration (chunk_47's) works. A `jal` followed by a
  `nop`, with the `lui`/`addiu` pair just before it, is the sign
  (`func_8004AB0C`).
- **The byte-offset form, again.** `func_800499DC` shifts its index
  before loading the table's address:
  `*(char **)((u8 *)&D_800C9E94 + (i << 2))` with the table declared as
  a scalar.
- **Not a mixed chunk.** Before the size rule, these functions looked as
  if built without split addresses. With `-mno-split-addresses`,
  `func_80049AE8` matched but `func_800499DC` didn't. The size rule
  explains both with one setting.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8004970C` | matches | a game object's teardown |
| `func_800497AC` | matches | the game ended: tables freed, globals put back |
| `func_800498E4` | matches | arrays freed, values saved |
| `func_800499B8` | matches | a call |
| `func_800499DC` | matches | a name formatted |
| `func_80049A24`, `func_80049AE8` | match | the static objects destroyed and constructed |
| `func_80049B9C` | matches | a name formatted with a suffix |
| `func_80049C14` | asm | 728 instructions |
| `func_8004A774` | asm | 214 instructions |
| `func_8004AACC` | matches | a buffer freed |
| `func_8004AB0C` | matches | the static pair stopped, a virtual call |
| `func_8004AB7C` | matches | a save's settings copied out |
| `func_8004AC78` | matches | a demo set up: the settings, three items |
| `func_8004ADB0` | asm | 75 instructions |
| `func_8004AEDC`, `func_8004B480` | match | call chains |
| `func_8004AF0C` | matches | the state from a key |
| `func_8004AFBC` | matches | the race's settings by mode |

## Second pass

- `func_8004AB0C` matches: the virtual function it calls returns a value (`int (*m_6C)(void *)`), which put the function and its delta in the original's registers.

## Third pass

- `func_800497AC` matches: the game's end, its three tables freed with
  `delete[]` on byte pointers. Written as `__builtin_vec_delete(p)`, the
  table's pointer after each call came out in `$v1` instead of `$v0` (6
  off).
- `func_8004AC78` matches as written: the settings reset and three of
  chunk_25's `func_80045168` items, its repeated constants in saved
  registers.
- `func_8004ADB0` (the cards' settings copied out) is still asm: through a
  struct for `D_800D4898` GCC keeps one base for every field and the
  calls, where the original loads the fields from one base and each
  table's address afresh (the size rule above suggests declaring its
  parts as separate small objects; not tried).

## Group B near-misses, continued

`func_80049B9C` went from 23 off to 6 with `sprintf`'s arguments read into
locals in order (the format, the name's address, the word, the suffix)
before the call. Left: the name's address in `$t0` where the original
reuses `$v1`, and the word's high half in `$v0` where the original loads it
into `$a3` itself.

## A second linker symbol

`func_80049B9C` reads `D_800C5E2C` with `lui`/`lw` while the chunk's other
functions read it through `$gp` (it's one of the chunk's small globals): two
original files declared it differently. A second name for the address,
`D_800C5E2C_far = 0x800C5E2C;` in `linker/langimg/undefined_syms_manual.txt`,
declared `extern int D_800C5E2C_far;`, gave the original's code (6 off to
0); an `__asm__` alias can't, as maspsx goes by the name.

`func_8004AFBC` (the race's settings by game mode, 316 instructions) matched
with the same symbol for its last store, plus:
- small `__asm__` aliases for `D_800D4898`, `D_800D489C` and `D_800D48B0`,
  whose addresses the original builds with one `la` each;
- the modes' branches each storing their own pair, so GCC merges their
  tails as the original's;
- one `n = 1` after the `if`, which reorg copies into the jump's delay slot;
- `D_800D48B0` indexed by a hand-scaled byte offset;
- the clamp as `if (c > 0) { r = 8; if (c < 9) r = c; } else r = 1;`;
- in the first branch, `D_800D5F34` stored before `D_800D5F50` and
  `D_800D5F4C` (the other orders let the scheduler move the loads);
- the zero word after its jump table spelled out in `.rodata`
  (`D_800B7544`).
