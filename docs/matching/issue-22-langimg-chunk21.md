# The game's chunk_21: a scene's items and history (#22)

A scene (`Scene21`; chunk_23's `Scene` and `Stage` describe parts of
it) with its items (0x74 bytes each, a name first):
- an item found by name, made current (two names go back instead), kept
  in a history, and gone back to, one or n items;
- a named link found in the list at 0x16C;
- its buffers made and filled, or copied back;
- its colour zone (chunk_61's, at 0xD8) turned off, set from a table of
  values or set to fade;
- its end: a flag set, its table freed, its racer deleted.

One file, `src/langimg/chunk_21.cpp`, 0x8003B600-0x8003D60C.

16 functions: 14 match, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800C4D88`, `D_800C4D98` and `D_800C4D9C`, and
`-fmove-all-movables` (`func_8003B850` keeps `&depth` and `~0x10` in
saved registers over its loop; the other functions don't change).

## Notes

- **Two loads before two stores.** `func_8003BD5C` copies two pairs of
  words from its parameters, loading both words of a pair before storing
  them. With the two values in fresh locals in their own block (`{ int x
  = p->m_08; int y = p->m_0C; k->m_18 = x; k->m_1C = y; }`) it matched;
  a struct for the pair brought the scene's pointer back into a saved
  register, and reusing the same locals gave other registers.
- **A pointer to the part kept across the call.** The same function keeps
  the zone's address (the scene + 0xD8) in a saved register, not the
  scene: `k = &s->m_D8;` before each call.
- **`(i + 2) << 2` on a byte pointer.** `func_8003B600` computes `(m_AB0
  + 2) * 4` and adds it; on an `int *`, GCC distributed it (`m_AB0 * 4 +
  8`). `(int *)((u8 *)p + (n + 2) * 4)` kept it for one; the other, an
  argument, needed `(u8 *)p + ((n + 2) << 2)` (or the sum done on
  `int`s).
- **A value read before the `if`.** The same function reads `m_AB0` and
  computes the count before testing whether it reuses its buffers.
- **An early `return` for a flag test.** `func_8003CD88` tests bit 0
  with `andi` and `bnez`; `if (!(f & 1)) { ... }` gave `xori` and `andi`;
  `if (f & 1) return;` matched.
- **A result set in every branch.** `func_8003CBA0` keeps its 0 result in
  a saved register from the start; with an early `return 0` per case GCC
  folded it, with one `if`/`else if`/`else` chain and one `return r` it
  matched.
- **The history's entry read before the flags.** `func_8003CC9C` and
  `func_8003CD88` load the item from the history before storing the
  flags: `s->m_A80 = s->m_A88[s->m_A8C - 1];` comes first.

- **The scene's draw (`func_8003B850`).** The view set up from the
  place found by name, the stage's objects drawn and culled against the
  fog, the overlay's drawn. Its second argument is the state chunk_27
  passes, handed on to `func_80078FC4`; the objects are chunk_23's
  `Cobjet`/`CobjetList` (`langimg/cobjet.h`). What made it match:
  - the place in two variables, one (`p`) for its fog and matrix tests,
    the other (`q`, a `Cobjet *`) for the `else` branch, so GCC keeps
    the copy in its own saved register;
  - the view's position through a pointer local set in both branches
    (`fp = &v->m_F8;`) and the copy into the matrix written with
    `&v->m_F8` again;
  - the matrix's translation read into three fresh locals through a
    `MATRIX *` local (not an inline taking `&t`, which addressed `t`
    through a register);
  - the stage's draw mode (a signed 2-bit field) read into a local
    before its test, so GCC extracts it with `sll`/`sra`;
  - the model kept in a local (`Model21 *m = e->m_04;`) rather than read
    twice;
  - the depth `func_8001DF10` writes an `int`, declared in the inner
    block.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8003B600` | matches | its buffers made and filled |
| `func_8003B734` | matches | its end |
| `func_8003B7B0` | matches | a buffer copied back |
| `func_8003B7E0` | matches | a named link found |
| `func_8003B850` | matches | the scene's draw |
| `func_8003BD5C` | matches | the colour zone set |
| `func_8003BF0C` | asm | 774 instructions |
| `func_8003CB24` | matches | an item found by name |
| `func_8003CBA0`, `func_8003CC78` | match | an item made current |
| `func_8003CC9C` | matches | back n items |
| `func_8003CD30`, `func_8003CD38` | match | the history cleared, the current item kept |
| `func_8003CD88` | matches | back one item |
| `func_8003CDEC` | matches | a menu entry chosen: its values set, its actions run, its handler called, then by kind a text, a cell, back n items or a flag |
| `func_8003D334` | matches | a menu left: its values set, back one item and the name copied |
- **One pointer for two lookups.** `func_8003CDEC` and `func_8003D334`
  each find two named values (an inline lookup with a result variable
  and a `break`), mark them used and store into them; with one `int *p`
  reused for both they matched, with two pointers the second stayed live
  in another register.
- **A lookup's result through an out-parameter.** The handler found by
  name goes through `FindFn21(t, name, &h)`, so `h` lives on the stack
  as in the original.
- **A text declared `s8`.** The item's text is compared byte by byte as
  signed (`lb`); declaring the field `s8` (and casting to `char *` for
  `strcpy`/`strlen`) kept the loop's counter, where a cast at the use
  turned it into a pointer.
- **The word after the jump table.** `func_8003D334`'s switch has a
  jump table followed by a zero word, the end of this file's `.rodata`;
  without it spelled out (`D_800B73DC`) every later datum moves by 4,
  which only the full build shows.
