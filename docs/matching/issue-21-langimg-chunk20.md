# The game's chunk_20: a scene's groups of items and their objects (#21)

The scene of chunk_21 and chunk_23 (`Scene20`), its racer at 0x38
(chunk_05's) and its groups at 0x4C: `((bits 28-29 of 0x2C, signed) + 1) * 3`
groups of 12 bytes, each with its current item, a count and its items
(0x24 bytes: an index in another group, a count of objects and their
pointers, flags at 0x20). The functions:
- the scene set up (its fields, chunk_21's `func_8003B600`, a racer of
  0x184 bytes made and set up);
- an object found by name in the groups' items, an element of the array
  at 0x40 by name or by kind, a link of the list at 0x48 by name (or
  chunk_21's scene at 0x44);
- an entry found by name (`func_80017E10`) and its pointer at 0x10 or
  0x58, the value at 8 of that set from a block (`0x534B4C42`);
- the item of a group to use, by the other groups' current items;
- every item's objects passed to `func_80037E70` (the item's index set to
  each in turn), the flagged items' indices set, each group's item
  updated through `func_8003AB24`, the flags 0x800 cleared;
- a value read from a link (a number or text, `atoi`) or a definition,
  turned into 4096ths of a turn (`(v << 12) / 360`) and passed to one of
  three calls by kind;
- an object of kind 5 updated through `func_800383D8`, a saved list
  copied back by a test (`func_80097128`).

One file, `src/langimg/chunk_20.cpp`, 0x800394D8-0x8003B600.

19 functions: 14 match, 4 are parked, 1 is still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **The groups' count as shifts.** The count is `(((int)(s->m_2C << 2)
  >> 30) + 1) * 3`, written out in each loop's condition; the byte at
  0x2D, loaded with `lb`, is a union member beside the word.
- **Nested `if`s, not an early return.** `func_8003B038` returns its
  result's register on both early exits: `if (s->m_4C[g].m_08) { if
  (s->m_4C[g].m_00 >= 0) { ... } } return r;`. Its loop's bound is the
  expression, not a local.
- **The `else` placed last.** `func_8003B248` lays the call for kind 5 out
  after the searches: `if (kind != 5) { ... } else { ... }`. Its elements
  are read through the array each time (`s->m_40[i].m_04[0]`); a local
  pointer to the element swapped an `addu`'s operands.
- **Which side of `==`.** `func_8003AB24` compares the found item first:
  `p == &s->m_4C[g].m_08[j]`.
- **Constants hoisted as locals.** `func_8003AC94`'s second loop passes 1
  and -1 from saved registers: `int one = 1; int none = -1;` in the
  loop's body.
- **A found pointer through an inline function.** `func_800394D8` and
  `func_8003991C` look a function up by name with its result on the stack
  (`sw $v0, 0($s7)`, `$s7` the local's address): an inline function
  storing through a pointer, `func_800394D8_find(t, name, &f)`, gave
  that part.
- **Parked.**
  - `func_800394D8` (an item stepped back to its previous usable object,
    by its mode, then the calls for the old and new ones): the original
    keeps the item's index in a register as it stores it (`p->m_0A`
    read each time), hoists its constants (-1, 1, 2) and loads the
    object again after the flag's test; ours computes the constants in
    the loop and tests the flag with an `xori`.
  - `func_8003991C` (an item's objects updated): registers (the item and
    the index's offset swapped) and the saved index, which the original
    loads twice (`lh`, `lhu`).
  - `func_8003A9F4` (an object of kind 5 updated): the result and the
    object in swapped saved registers. The permuter's match was a `do {
    } while (0)` around the call and the stores.
  - `func_8003B51C` (a saved list copied back): the last store's
    registers. It matches with `memcpy` declared returning `void` (GCC
    then doesn't treat it as its builtin), not with `common.h`'s.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800394D8` | parked | an item stepped back: the loop's constants |
| `func_8003991C` | parked | an item's objects updated: registers |
| `func_80039BD8` | matches | every group's items passed to `func_80038B24` |
| `func_80039CE4` | matches | an entry's pointer by name |
| `func_80039D4C` | matches | a value turned into 4096ths of a turn |
| `func_80039E74` | asm | 620 instructions |
| `func_8003A760` | matches | an entry's value set from a block |
| `func_8003A80C` | matches | the same, the entry by name |
| `func_8003A86C` | matches | an object by name |
| `func_8003A9F4` | parked | an object of kind 5 updated: registers |
| `func_8003AA90` | matches | a link by name |
| `func_8003AB24` | matches | a group's item updated |
| `func_8003AC94` | matches | every item's objects, then the groups, updated |
| `func_8003B038` | matches | the item of a group to use |
| `func_8003B248` | matches | an element by kind or name |
| `func_8003B3C4` | matches | an element by name |
| `func_8003B47C` | matches | empty |
| `func_8003B484` | matches | the scene set up |
| `func_8003B51C` | parked | a saved list copied back: registers |
