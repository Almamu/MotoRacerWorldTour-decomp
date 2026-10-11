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

19 functions: 11 match, 2 are parked, 6 are still asm.

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
| `func_800497AC` | asm | 78 instructions |
| `func_800498E4` | matches | arrays freed, values saved |
| `func_800499B8` | matches | a call |
| `func_800499DC` | matches | a name formatted |
| `func_80049A24`, `func_80049AE8` | match | the static objects destroyed and constructed |
| `func_80049B9C` | parked | a name formatted with a suffix: registers |
| `func_80049C14` | asm | 728 instructions |
| `func_8004A774` | asm | 214 instructions |
| `func_8004AACC` | matches | a buffer freed |
| `func_8004AB0C` | parked | the static pair stopped, a virtual call: the call's registers |
| `func_8004AB7C` | matches | a save's settings copied out |
| `func_8004AC78`, `func_8004ADB0` | asm | 75 and 78 instructions |
| `func_8004AEDC`, `func_8004B480` | match | call chains |
| `func_8004AF0C` | matches | the state from a key |
| `func_8004AFBC` | asm | 316 instructions |
