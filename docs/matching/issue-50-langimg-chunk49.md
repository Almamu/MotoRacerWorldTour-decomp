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

26 functions: 14 match, 8 are parked, 4 are still asm.

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
- **`-fmove-all-movables` (fifth pass).** The chunk is now built with it:
  `func_80074AC8` keeps 2 and 1 in saved registers as the original does
  (139 off to 105), and every matched function still matches.
- **Parked (fifth pass).** `func_80074AC8` (an object stepped along its
  links by the time, two virtual calls): the next link and the direction
  in other registers (105 off). `func_80073C2C` (whether a stretch of track
  is free of the pool's objects and the racers): GCC hoists `lo - m` out of
  the first loop where the original recomputes it (73 off).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8007345C` | parked | a free entry at random: the original walks two pointers and resets both |
| `func_8007351C` | matches | how many entries are free |
| `func_8007356C` | matches | the entries ahead passed on, with their heading |
| `func_800736BC` | asm | 249 instructions |
| `func_80073AA0` | parked | a kind's range along the track: registers |
| `func_80073E54` | asm | 225 instructions |
| `func_80073C2C` | parked | whether a stretch of track is free: an invariant hoisted |
| `func_800741D8` | parked | the entry nearest ahead: registers |
| `func_80074270` | matches | the group's entries close ahead of a racer, sorted by distance |
| `func_80074510` | matches | a base's fields set |
| `func_80074534` | matches | the owner's constructor |
| `func_800745AC` | matches | the owner's destructor |
| `func_80074650`, `func_80074688` | match | timers saved |
| `func_800746A8` | matches | returns 0 |
| `func_800746B0` | matches | a time, a direction and a link set |
| `func_800747A8` | parked | the current link set and stepped by time: registers |
| `func_80074924` | parked | a link `n` steps along: the mode's tests and the loads' order |
| `_._10CobjetLink` | matches | `CobjetLink`'s destructor |
| `func_80074AC8` | parked | an object stepped along its links: registers |
| `func_80074D20`, `func_80074D28` | match | empty |
| `func_80074D30`, `func_80074D78` | match | a constructor and a destructor |
| `func_80074DA0` | parked | an object along keys: registers |
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

## Group B follow-up

- `func_80074DA0` written and parked (45 off): a derived object's update
  (`Obj49k`): a virtual function by its fourth argument, the base update
  `func_800746B0`, then the current key's angles eased into 0x74 (chunk_50's
  `func_80076504`), its flag bits 8-9 and 10-11 set from a distance test
  and an angle comparison, then chunk_50's `func_800758F4` and
  `func_80075A1C`. The vtable call loads its offset and function in each
  branch into two locals and makes one call; the angle comparison is an
  inline function returning a flag through a pointer. Left: the object
  and the second argument in swapped saved registers, and the call's two
  registers.

## $fp pass

- **`func_80074270`** (the group's entries within reach ahead of a racer,
  sorted nearest first, the near ones told to give way) matches. The
  entries are walked with a pointer and the in-use test is a `continue`;
  the sort's inner index reuses the first loop's counter `i`, which puts it
  in the same saved register as the original's; the comparison is written
  `d[a] > d[i]`, and the last loop steps its threshold before its counter
  (`k += 0xA000, i++`).
- `func_80073E54` written and parked (207 off, a first draft): the entry
  nearest ahead, when free and clear of the others, flagged if no other
  row's point ahead is nearer (`Ahead49`). Left: the original keeps nine
  values in saved registers and the track in its argument slot.
