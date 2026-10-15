# The game's chunk_63: an animation's bounds (#64)

Bounding boxes of chunk_62's animations (`Anim63`, chunk_62's `Anim62`:
its model at 4, its channels of 0x80 bytes at 8, which are also the nodes
of a tree, a child at 0 and a sibling at 8):
- the channels' values at 0x10 saved in a `new[]` array and pointed at
  32-byte buffers of a second one, then chunk_64's `func_800913C0`
  (`func_80090AB8`); put back, `func_800913C0` again, and both arrays and
  the record deleted (`func_80090B80`);
- a channel's box: its part's points (a count at 0x16, the first at 0x1C,
  in the model's table at 0x14) shifted by 12 minus the model's value at
  0x1C, through `func_80098DD4` and `func_80098E38` (the lowest and the
  highest), or zero when the part has none (`func_80090C2C`);
- a node's box moved by its vector at 0x1C, added into a box, then its
  child's and its sibling's (`func_80090D74`, recursive);
- the box of a channel's subtree (`func_80090E58`) or of the channel alone
  moved by its vector (`func_80090F94`), each optionally after the
  channels are set up with chunk_64's `func_800910EC` and an identity
  matrix, then chunk_62's `func_8008D168` (between the save and the
  restore). chunk_33 calls both with 1.

One file, `src/langimg/chunk_63.cpp`, 0x8008F368-0x800910EC.

8 functions: 6 match, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **`new[]` of a class with an empty constructor.** `func_80090AB8`'s
  first `__builtin_vec_new` is followed by an empty loop counting down
  from the count minus one to -1: GCC's loop over the elements for a
  constructor that does nothing. `struct Buf63 { int m_00[8]; Buf63() {}
  };` gave it; the second array (of pointers) has none.
- **`delete` tested.** `func_80090B80` tests the record for 0 before
  `__builtin_delete`; for a struct without a destructor GCC doesn't, so the
  source does: `if (s) { delete s; }`. `delete[]` of a type without a
  destructor is `__builtin_vec_delete` with the pointer alone.
- **The box through a pointer.** `func_80090D74`, `func_80090E58` and
  `func_80090F94` keep the local box's address in a saved register:
  `Box63 *pb = &b;` used for the calls. For the last copy out, where the
  original addresses the highest corner from the stack, it's `&b.m_max`,
  not `&pb->m_max`.
- **A shift read first, subtracted later.** `func_80090C2C` reads the
  model's value at 0x1C before the part's fields and computes `12 - sh`
  after them: `int sh = m->m_1C; ...; sh = 12 - sh;` (computed at once,
  33 off).
- **Stack slots shared.** `func_80090F94`'s vector for the move shares
  the matrix's slot (0x28): the matrix is declared in the `if`'s block, the
  vector in a block of its own ("Locals in separate blocks share slots" in
  the techniques).
- **Chained assignments** (chunk_48's note) gave the boxes' corners set
  to `0x7FFFFFFF` and `0x80000000` and the identity's rows, through inline
  functions; the corners zeroed one statement at a time.
- **Still asm.** `func_8008F368` (644 instructions) and `func_8008FD74`
  (850), marked hand-written by splat, are GTE code; not tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8008F368` | asm | 644 instructions (GTE) |
| `func_8008FD74` | asm | 850 instructions (GTE) |
| `func_80090AB8` | matches | the channels' values saved |
| `func_80090B80` | matches | the channels' values put back |
| `func_80090C2C` | matches | a channel's box |
| `func_80090D74` | matches | a subtree's boxes added |
| `func_80090E58` | matches | a subtree's box |
| `func_80090F94` | matches | a channel's box, moved |
