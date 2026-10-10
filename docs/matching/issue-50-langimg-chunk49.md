# The game's chunk_49: a pool of entries and its owner (#50)

A pool of 0xCC-byte entries (`Pool49`, `Ent49`):
- how many are free;
- a free one picked at random, with the C library's `rand`
  (`seed * 214013 + 2531011`);
- the one in use nearest ahead along the track;
- those ahead passed on with their heading.

Their owner (`Obj49`): its constructor and destructors, a time and a
direction set, and a walk along a ring of links. Also `CobjetLink`'s
destructor, and globals saved from the game's timers.

One file, `src/langimg/chunk_49.cpp`, 0x8007345C-0x80075440.

26 functions: 12 match, 5 are parked, 9 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, six small
globals.

## Notes

- **A C++ destructor by its own name.** `_._10CobjetLink` is defined in C
  through a declaration with an `asm` label (`void CobjetLinkDtor49(...)
  asm("_._10CobjetLink");`), so the emitted symbol is the mangled one.
  Its list walk does nothing (the elements' destructors are empty): `if
  (p) do { p = p->m_00; } while (p);`.
- **`delete` tested by hand.** The owner's destructor frees a ring of
  nodes with an explicit `if (n) delete n;` (GCC doesn't test for this
  type), and sets the ring's first node before testing it.
- **A chained assignment's order.** `D_800CB874 = D_800CB870 = x;` stores
  `D_800CB870` first. Written the other way round, the two stores
  swapped and the image differed by two bytes, which `try_func` doesn't
  see: it compares instructions, not their relocations.
- **A loop's body moved out.** `func_80074924` steps `n` times from the
  same link (`r = l->m_00` each time round), so GCC moves the load out
  and leaves an empty count-down. The game's own code, kept as it is.
- **Bitfields in the flags word.** The word at 0xC holds a signed 4-bit
  direction (bits 0-3), a signed 4-bit index (bits 4-7) and two more
  4-bit fields; `func_800746B0` matched with bitfields for them and the
  direction's sign read from the whole word (`((u32)o->m_0C >> 3) & 1`).
- **A constant in a local.** `func_8007356C`'s original keeps 0x14000 in
  a saved register set before its loop; a local set inside the loop
  (moved out by GCC) gave that. It stays parked on the vector's setup.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8007345C` | parked | a free entry at random: the original walks two pointers and resets both |
| `func_8007351C` | matches | how many entries are free |
| `func_8007356C` | parked | the entries ahead passed on: the vector's setup |
| `func_800736BC` | asm | 249 instructions |
| `func_80073AA0` | asm | 99 instructions |
| `func_80073C2C`, `func_80073E54` | asm | 138 and 225 instructions |
| `func_800741D8` | parked | the entry nearest ahead: registers |
| `func_80074270` | asm | 168 instructions |
| `func_80074510` | matches | a base's fields set |
| `func_80074534` | parked | the owner's constructor: the flags word stored once, not twice |
| `func_800745AC` | matches | the owner's destructor |
| `func_80074650`, `func_80074688` | match | timers saved |
| `func_800746A8` | matches | returns 0 |
| `func_800746B0` | matches | a time, a direction and a link set |
| `func_800747A8` | asm | 95 instructions |
| `func_80074924` | parked | a link `n` steps along: the mode's tests and the loads' order |
| `_._10CobjetLink` | matches | `CobjetLink`'s destructor |
| `func_80074AC8` | asm | 150 instructions |
| `func_80074D20`, `func_80074D28` | match | empty |
| `func_80074D30`, `func_80074D78` | match | a constructor and a destructor |
| `func_80074DA0` | asm | 174 instructions |
| `func_80075058` | asm | 250 instructions |
