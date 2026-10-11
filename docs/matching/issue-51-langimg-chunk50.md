# The game's chunk_50: chunk_49's object's subclasses (#51)

Subclasses of chunk_49's `Obj49`:
- their constructors (`func_80074534` and the like called first, then
  the vtable and their own fields) and destructors (an array freed);
- a source's position and angles copied in, then a virtual call through
  the vtable's entry at 0x28 (GCC 2's `{delta, index, function}`
  layout: the function called with `this` plus the delta);
- the current position kept as the last one;
- an angle brought within half a turn of another.

One that follows the track (`Trk50`):
- a look-at matrix from one point to another, or along its last
  direction (chunk_67's `func_80097D08`);
- its two directions along the track from four nodes, normalized.

One file, `src/langimg/chunk_50.cpp`, 0x80075440-0x800773E8.

20 functions: 11 match, 1 is parked, 8 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **Two vtable stores.** A constructor two classes down stores the
  middle class's vtable, then its own. Written one after the other, GCC
  dropped the first; with the middle class's field (`m_94 = 0`) between
  them, as an inlined middle constructor would have it, both stay.
- **Stack vectors through pointers, again.** `func_80075468` keeps its
  two vectors' addresses in saved registers; with pointer locals
  (chunk_40's technique) for the calls, and the vector itself (not the
  pointer) for the two copies, it matched.
- **An angle in a register.** `func_80076504` keeps the angle in a
  register through its loop; with `*a` in the loop GCC reloads it, and
  with a local, the loop's shape changed. Parked.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80075440` | matches | an object allocated and constructed |
| `func_80075468` | matches | a look-at matrix |
| `func_80075588` | asm | 220 instructions |
| `func_800758F4` | matches | two directions along the track |
| `func_80075A1C` | asm | 116 instructions |
| `func_80075BEC` | asm | 490 instructions |
| `func_80076390` | matches | a source copied in, a virtual call |
| `func_80076420` | matches | the last position kept |
| `func_80076468`, `func_80076588`, `func_800765B4` | match | constructors |
| `func_800764BC` | matches | a value passed to a global, then a call |
| `func_80076504` | parked | an angle within half a turn: the angle's register |
| `func_80076568`, `func_80076600` | match | destructors |
| `func_80076658`, `func_80076948`, `func_80076BD8`, `func_80076E20`, `func_8007702C` | asm | 131 to 239 instructions |
