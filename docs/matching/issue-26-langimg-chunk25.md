# The game's chunk_25: a list of six, a class keeping five globals (#26)

A list of six 20-byte entries, each with a flags word of bitfields (a
20-bit key at bit 12 and six 2-bit fields), added to and searched; a
class that saves five globals in its fields and sets them back before
its calls; an object holding eight 0x50-byte items, claimed and set up
from varargs by kind; and their constructors and destructor. One file,
`src/langimg/chunk_25.cpp`, 0x8004316C-0x800452BC.

25 functions: 16 match, 8 are parked, 1 is still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **Bitfields cleared in three stores.** `func_800449A8` resets each
  entry's flags with three stores: two fields at a time, one, then two;
  the statements in that grouping (with the entry's other fields set
  between them) matched.
- **Loops that aren't rotated.** `func_80045168` searches its eight items
  with the bound tested at the top and the result at the bottom: `while
  (!t) { if (i >= 8) break; ... }` (the result known 0 on entry, so GCC
  drops the first test). Its varargs list is read with a `goto` loop
  after the array's address taken into a local (the original hoists it).
- **An empty `case 0`** makes the item's kinds a jump table from 0.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8004316C` | asm | 1551 instructions |
| `func_800449A8` | matches | the list reset |
| `func_80044A14` | parked | an entry added: its flags' stores (the permuter's best is 170) |
| `func_80044AFC`, `func_80044BF8`, `func_80044C80` | parked | entries searched: loop shapes and registers |
| `func_80044B88`, `func_80044C54` | match | the next entry, the current one |
| `func_80044CBC`, `func_80044F34` | match | return 1 |
| `func_80044CC4` | parked | the class's constructor: `this` returned from its register early (a C++ constructor, likely) |
| `func_80044D0C` | parked | the object and its argument swap `$s0` and `$s1` |
| `func_80044D70` to `func_80044ED8` | match | the five globals cleared or set back, around the base's calls |
| `func_80044F3C`, `func_80044F9C`, `func_80044FC8` | match | a message formatted through a `va_list` |
| `func_80044FE8`, `func_8004506C`, `func_80045154` | match | the items' constructor and destructor, an item's |
| `func_800450C0` | parked | the timer's tick and the frame's time: registers |
| `func_80045168` | parked | an item claimed and set up from varargs: one `addu`'s operands |
