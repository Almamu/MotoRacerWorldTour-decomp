# The game's chunk_51: buffered objects and their parts (#52)

C++ classes of the race's objects: one with a buffer at 0x28 and a part
at 0x30 (its vtable at 0x68, `D_800C8884`), a subclass of it
(`D_800B77E0`) made for mode 6, another with a vtable at 0x34
(`D_800C8824`), an object's motion and matrices, a one-slot table with
its users, and stubs. One file, `src/langimg/chunk_51.cpp`,
0x800773E8-0x800792DC.

51 functions: 37 match, 2 are parked, 12 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, eight
small globals (`langimg.chunk_51_*`), as the chunks around it.

## Notes

- **A result set after a call** again (chunk_23): `func_80078B10`'s
  result is 0 only after the first call, `int ok = f(); int r = 0; if
  (ok) r = ...;`.
- **A field's object read once for two stores.** `func_80078E00` stores
  two fields through one load of `g->m_04`, then reloads it for the
  virtual call: a local for the stores, `g->m_04` for the call.
- **`short` locals for a narrowing copy.** `func_80077BC8` copies a
  vector's `long`s into an `SVECTOR` with `lh` loads, all three first:
  `short x = s->vx;` and so on.
- **A matrix transposed in place** (`func_800788D8`): three swaps through
  a `short` temporary match the original's six loads and six stores.
- **The one-slot table.** `func_80078F10`, `func_80078F5C` and
  `func_80078F90` loop over an array of one: GCC still emits the loops,
  counting down in the first.
- `func_80079078`, the subclass's constructor, holds an unreachable
  exception-cleanup block (`func_800A63D4`, `func_800A63DC`) that
  `-fno-exceptions` doesn't emit; it stays asm.

The functions still asm are 46 to 160 instructions:
`func_8007759C`, `func_800776F0`, `func_80077844`, `func_8007792C`,
`func_80077BE4`, `func_80077EE0`, `func_80078280`, `func_80078458`,
`func_8007857C`, `func_80078CEC` (the GTE's offsets), `func_80079078`,
`func_80079174`. Parked: `func_80079124` (a reset: the constants'
registers, 6 off) and `func_800783A8` (a motion set from a table: the
stack argument's load scheduled earlier, 26 off).
