# The game's chunk_51: buffered objects and their parts (#52)

C++ classes of the race's objects: one with a buffer at 0x28 and a part
at 0x30 (its vtable at 0x68, `D_800C8884`), a subclass of it
(`D_800B77E0`) made for mode 6, another with a vtable at 0x34
(`D_800C8824`), an object's motion and matrices, a one-slot table with
its users, and stubs. One file, `src/langimg/chunk_51.cpp`,
0x800773E8-0x800792DC.

51 functions: 40 match, 4 are parked, 7 are still asm.

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

## Second pass

- `func_80078458` (an object's matrix turned to face a point) matches.
- `func_80078280` (an object's defaults, through chunk_48's matrix and vector inline functions) is parked at 6 off (two constant stores swapped by the scheduler), `func_80077844` (a mesh's points placed) at 5 (the field pointers the loop walks).

## Third pass

- `func_80079124` (the settings' defaults) matches: its constants go through
  one variable reused for each (`v = 6; o->m_08 = v; v = 14; ...`). With
  separate constants the scheduler loaded the second before the first's
  store; one variable's reassignments keep each load just before its
  store, in the same register, as the original's.
- `func_80079174` (the display set up for w by h: two drawing and two
  display buffers, interlaced above 256 lines) matches as written, the
  object's 0x6C to 0x14C now `DRAWENV m_draw[2]` and `DISPENV m_disp[2]`.
  It calls chunk_52's `func_800793C0` with the object, which that function
  doesn't use.
- `func_8007759C` (still asm) contains the same loop as the parked
  `func_80077844` (the mesh's points), with the same pointers walked.

## Group B, more functions

- **`func_80077EE0`** (a sprite drawn in the text's mode, placed by its
  alignment) is written and parked, 58 off. The branches, the colour words
  (`K | (g << 8) | (b << 16) | r`) and the packet are the original's, with
  the texture page cleared and set in two statements. Left: the two colour
  shifts come in the other order, the fourth UV pair is read later, and
  the ordering table's index is tested as `len < 2` where the original has
  `1 < len`. This texture's fourth UV pair is at 0xA, not `UiTexture`'s 0xC.

## $fp pass

- **`func_8007792C`** (a mesh's points set from its source, rotated and
  normalised when it has an angle) is parked, 4 off. It has one exit
  through a result variable; both sources are read before they're tested;
  the copies go through short locals; the model's point table is read
  before the indices. `func_80099718` returns `void`, which the permuter
  found (18 to 8 off), and the second loop's last call passes `off` and
  steps it afterwards. Left: the first loop's copy loads x and y into
  `$v0`/`$v1` the other way round, and no declaration or store order fixes
  it.
