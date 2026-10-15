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

26 functions: 14 match, 5 are parked, 7 are still asm.

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
  (moved out by GCC) gave that.
- **A callee returns its vector.** `func_8007356C` then matched once
  `func_8009964C` (`v * k`) was declared returning its `Vec49 *`, as
  chunk_05 declares it (the permuter found it).
- **A bitfield's store placed early.** The constructor (`func_80074534`)
  sets the direction bitfield right after `m_20`, before the other
  fields; written last with the other bitfields, GCC merged it into one
  store of the word. The permuter found the order.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8007345C` | parked | a free entry at random: the original walks two pointers and resets both |
| `func_8007351C` | matches | how many entries are free |
| `func_8007356C` | matches | the entries ahead passed on, with their heading |
| `func_800736BC` | asm | 249 instructions |
| `func_80073AA0` | parked | a kind's range along the track: registers |
| `func_80073C2C`, `func_80073E54` | asm | 138 and 225 instructions |
| `func_800741D8` | parked | the entry nearest ahead: registers |
| `func_80074270` | asm | 168 instructions |
| `func_80074510` | matches | a base's fields set |
| `func_80074534` | matches | the owner's constructor |
| `func_800745AC` | matches | the owner's destructor |
| `func_80074650`, `func_80074688` | match | timers saved |
| `func_800746A8` | matches | returns 0 |
| `func_800746B0` | matches | a time, a direction and a link set |
| `func_800747A8` | parked | the current link set and stepped by time: registers |
| `func_80074924` | parked | a link `n` steps along: the mode's tests and the loads' order |
| `_._10CobjetLink` | matches | `CobjetLink`'s destructor |
| `func_80074AC8` | asm | 150 instructions |
| `func_80074D20`, `func_80074D28` | match | empty |
| `func_80074D30`, `func_80074D78` | match | a constructor and a destructor |
| `func_80074DA0` | asm | 174 instructions |
| `func_80075058` | asm | 250 instructions |

## Third pass

- `func_800747A8` is written and parked (62 off): the current link set n
  links in, forwards from the start or backwards from the end of the
  first run of links, then stepped while the time covers each link's
  time. The original walks the backward count and the result in one
  register, copies n for the forward walk and lays the time loop's test
  at its top.

## Fourth pass

- `func_80073AA0` (the lowest and highest distance along the sections of
  a kind, from chunk_48's tables) is parked 49 off: its loop over a
  section's points matches in shape with the rows indexed as 2-D arrays
  (`(*(int (*)[][11])&D_800C860C)[s][j]`, the row's byte offset added
  before the table's), the first point by bytes as chunk_48 does; the
  section and the list pointer are in other registers than the original's.
