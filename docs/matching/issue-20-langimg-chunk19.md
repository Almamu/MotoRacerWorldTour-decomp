# The game's chunk_19: menus (#20)

A menu (`Menu19`) and its list of entries (`Item19`, a linked list of
kind, owner, name and values):
- an entry of kind 3 found by owner, its value read or set (the second
  value when its flag is set), or a named list's 32-byte entry from it;
- an entry's value refreshed from `func_80097128`;
- a choice moved up or down and shown, or cleared (`func_800383D8`:
  the slot's letter set from the choice through chunk_55's
  `func_800804B8`);
- a slot's letter stepped through `'A'`-`'g'`;
- a table of menus walked for those of a kind.

One file, `src/langimg/chunk_19.cpp`, 0x8003762C-0x800394D8.

23 functions: 19 match, 1 is parked, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **A result variable and `break`.** The lookups keep their result in
  `$a0`, set to 0 before the loop, and return it after: `int r = 0; for
  (...) { if (...) { r = ...; break; } } return r;`. With `return`
  inside the loop, GCC folded the variable away.
- **A choice clamped in a local.** `func_80038300` passes the choice or
  -1; a local set and then reset (`i = m->m_50; if (i >= m->m_4C) i =
  -1;`) matched where a conditional expression didn't.
- **The next and previous handlers.** `func_80038BBC` and
  `func_80038CE4` keep three constants in saved registers and read the
  slot's flags twice; written plainly GCC reads them once and doesn't
  hoist. Matched in the second pass (below).

## Second pass

- `func_80037D58`: the list's pointer declared (and read) before the result.
- `func_80038BBC`: chunk_19 built with `-fmove-all-movables` (5, 0x400000 and -1 hoisted into saved registers), and the second flag test through `e->m_28` again.
- `func_80038CE4`: as func_80038BBC.
- `func_80038E0C`: new: the letter entries stepped up, as func_80038BBC.
- `func_80038F44`: new: the same, stepped down.
- `func_800386B4`: new: a slider stepped up, wrapped, stopped or held by a mode, then its handler found by name in the scene's list.
- `func_80038828`: new: the same, stepped down.
- `func_8003899C`: new: the active entries counted.
- `func_80038504`: new: a slider's value written into its text and its sequence started at the value's place; the divisor written `(hi + 1 - lo)`, the suffix's first byte signed.

## Third pass

- `func_8003762C` (new, parked): a menu's items by kind (a colour, a
  text, a cursor through chunk_18's `func_80037318`, a sub-menu
  recursively), the cases in the original's order (1, 2, 3, 5). The
  original keeps 1 in a saved register for the kind's compare too (with
  3, 5 and 0xFF0000), so its third argument goes on the stack; GCC
  compares with 1 in `$t0` and keeps the argument in `$s5` (34 off). An
  `if` chain instead of the `switch` was further off.

## Fourth pass

- `func_8003781C` (new, matches): `func_8003762C`'s twin for the menu's
  own items (owner 0), or, with its last argument, only whether it has
  any. Three things made it match: the two 2-bit modes read into locals
  before their tests (`int nm = ((Flags19 *)n)->m_mode;`), so GCC
  extracts them with `sll`/`sra` instead of a mask; the colour page's
  bitfield store written in both branches, which GCC then cross-jumps
  into the original's shared tail; and the wrap mode as a `switch` (0,
  then 1 and 2), as a range test GCC folded it into `sltiu`. The
  recursive call passes the sub-menu's group as its reference. Its jump
  table is the chunk's only `.rodata`, so the word after it is a padding
  `D_800B7304` at the end of the file.
- `func_80037E70` (new, matches): `func_8003781C`'s drawing half for
  the items owned by the menu (owner 1), after the first item of kind 3
  with no owner is found; its sequence entry looked up by the page's row
  (the list page and its entry through chunk_19's `Res19` and `Elem19`).
  The item's cursor is signed (`lb`), so `Item19::m_30` is `s8`.
- `func_8003907C` (new, matches): the group's cursor stepped on until a
  menu that can be chosen, with the group's wrap mode at the end; the old
  menu's handler called with 1 and the menu drawn unchosen
  (`func_80037E70`, the cursor put back for it), the new one's with 0 and
  drawn chosen (`func_8003781C`), and a slider then chosen stepped up.
  Four things made it match: the cursor read and written as the field
  (`t->m_0A++`, not a local), so GCC keeps the stored value and
  sign-extends it at each use as the original does; the loop as
  `for (;;)` with the step first and `if (stop) break;`, which GCC lays out
  with the menu's test first and a jump into the step; the table read into
  a local before the second lookup (the permuter's finding); and case 1 of
  the wrap `switch` with its own copy of case 2's statement instead of
  falling through, which GCC cross-jumps into one block and allocates as
  the original (20 off from the registers otherwise).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8003762C` | parked | a menu's items by kind: a constant |
| `func_8003781C` | matches | a menu's own items by kind, or a search |
| `func_80037C80`, `func_80037CF8` | match | an entry's value |
| `func_80037D58` | matches | an entry's value set |
| `func_80037DC8` | matches | a named list's entry |
| `func_80037E70` | matches | a menu's items drawn, as `func_8003781C`, by kind |
| `func_80038168` | matches | an entry's value refreshed |
| `func_80038218`, `func_8003828C` | match | a letter stepped |
| `func_80038300`, `func_80038370` | match | the choice moved |
| `func_800383D8` | matches | a choice shown or cleared |
| `func_80038504` | matches | a slider's text and its sequence |
| `func_800386B4`, `func_80038828` | match | a slider stepped up, down |
| `func_8003899C` | matches | the active entries counted |
| `func_80038B24` | matches | a table's menus of kind 4 |
| `func_80038BBC`, `func_80038CE4` | match | the next and previous handlers |
| `func_80038E0C`, `func_80038F44` | match | the letters stepped up, down |
| `func_8003907C` | matches | the group's cursor moved to the next menu that can be chosen |
