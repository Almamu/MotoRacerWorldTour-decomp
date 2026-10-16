# The game's chunk_36: the race's checks between frames (#37)

More of the race (`Own36`, chunk_38's `Own38`: a named object of
chunk_23's kind, its vtable at 0x68) and its run's bikes:
- the race's slots at 0xC74 (0x4C bytes each, objects with their own
  vtable at 0xC): one set from the race's values at 0x3B0 and 0x3B4,
  0xFFFFFF at 0x38, 16 at 0x3C, its fourth argument at 4 and a value from
  `D_800C8A70` at 0x48, then passed to chunk_44's `func_8006A994`
  (`func_80059B54`);
- a bike's slot started when its bit 7 is set and the dot product of its
  body's vector with its section's direction is negative, or else its
  slot's virtual function called (`func_80059960`);
- the race's checks: whether some bike is racing (state 1 or 2, kind 1
  or 3, or the run's flag at 0x1E38), else chunk_34's `func_800557C4`
  (`func_80059BE8`); the bikes of kind 1 given 25 at 0x327 when the run's
  value at 0x1DF4 is under -4000 (`func_80059ECC`); the state of the
  object at 0xB8, the run's list entries copied into `D_800C9EE0`'s
  table and the current step's checks (`func_80059CD4`); a definition
  started by name by the game mode (chunk_24's `func_80042FC0`), then two
  of its virtual functions (`func_80059FAC`).

One file, `src/langimg/chunk_36.cpp`, 0x800593CC-0x8005B788.

10 functions: 6 match, 2 are parked, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800CB3A0`, `D_800CB3BC` and `D_800CB3C4`.

## Notes

- **One store order of 720.** `func_80059B54` stores six of a slot's
  fields; a script trying every order found the one (the table's value
  third) that gives the original's registers.
- **The result set after the first call.** `func_80059FAC` returns 1
  through a saved register set between two virtual calls: `r = 1;` after
  the first call (GCC moves it before the `jalr`); before the call, the
  call's argument came out second.
- **A negated test for the else first.** The same function tests the
  game mode for 2 and jumps to its call, then tests for 4 inline: `else
  if (D_800D5F40 != 2) { if (D_800D5F40 == 4) ... } else ...`.
- **Nested `if`s for the result** (chunk_20's note): its two early exits
  return the result's register, not a constant.
- **The run re-read in the loop.** `func_80059BE8` reads `o->m_378` again
  for the flag at 0x1E38 inside its loop; GCC keeps it in a copy of the
  run's register (`$t0`), as the original. The loop is a `do`/`while
  (!found && ++i < 5)`, entered at its body.
- **The bikes through a pointer, stepped first** (chunk_33's note):
  `func_80059ECC` walks the bikes with `b` from the run read once,
  `for (...; b++, i++)`.
- **A dot product through an inline function.** `func_80059960` sets a
  vector with `SetVec36` and takes its dot product with `Dot36(&d, &v)`,
  both through pointers, as the original's loads.
- **Parked.**
  - `func_80059CD4`: the search of the run's list. The original tests
    the first entry, then counts the other four down from 4 (with a
    fix-up of the count when found); GCC keeps the loop as written.
  - `func_80059960`: the slot's address for the virtual call: the
    original adds the race to the index's offset and loads the global
    before the slot's field; GCC adds them the other way round (7 off).
    Indexing the slot through the array each time and the comparison
    written `D_800C8A74 == ...` took it from 15.
- **Still asm.** `func_8005A59C` (1154 instructions), not tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800593CC` | matches | a bike's progress on the track |
| `func_80059960` | parked | a bike's slot started or called: an address |
| `func_80059B54` | matches | a slot set and passed on |
| `func_80059BE8` | matches | whether a bike is racing |
| `func_80059CD4` | parked | the checks between frames: a search |
| `func_80059ECC` | matches | the bikes of kind 1 given 25 |
| `func_80059FAC` | matches | a definition started by the game mode |
| `func_8005A148` | parked | the race's message by mode: an address's order (49 off) |
| `func_8005A594` | matches | returns 1 |
| `func_8005A59C` | asm | 1154 instructions |

## Large functions

- `func_800593CC` (357 instructions) matches: a bike in the race found on
  the track again (chunk_48's `func_8007142C` and `func_80071994` from its
  model's position), its wrong-way bit set from the points it moved
  through (`func_80070E20`, a fifth and four fifths of the sections), its
  slot handled (`func_80059960`), and its distance from the start line at
  0x3C and 0x3E counted along the sections. Three things mattered:
  - the model's position copied field by field from the pose's
    translation, its three loads first and the stores after the bike's
    two copies at 0x24 and 0x26 (`pt = b->m_22` between them);
  - after the search, the section written back first (`b->m_20 =
    sec->m_00; b->m_22 = pt; b->m_45 = k;`), which puts its load ahead of
    the point's and the flag's, as the original's;
  - the wrong-way bit set as a bitfield and read back as `(b->m_00 >> 7) &
    1`; the in-race test the same way, `(b->m_00 >> 6) & 1`.

## Group B large functions, third pass

`func_8005A148` is written and parked at 49 off. It's the message shown
between races, chosen by the game mode (`D_800D5F40`): in mode 8 by the
place and the record, in mode 4 by the bike's state and the laps left,
otherwise by the bikes' kind at 0x00 (0xA8: both bikes' names put in a
text with `sprintf`; 0x54; the rest). Then the object's vtable entries 22
and 24 are called. The branches and calls are the original's. What's left:
in the 0xA8 branch's last call, GCC computes the name's address before it
loads `o->m_B8`. Because of that, the branch doesn't join the other two at
the shared `2` argument. Folding the three calls into one after the
branches (the original's shape at the source level) made it worse
(80 off).
