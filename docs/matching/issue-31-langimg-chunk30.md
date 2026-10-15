# The game's chunk_30: the race's cameras (#31)

The race's cameras (`Cam30` at the race's 0x43C, a matrix and a position at
0xF8), each following the bike its racer index at 0x470 picks through the
run's 0x1E24, when that bike is of kind 1 in the race:
- the camera's matrix from the bike's model's angles at 0x70 and the value
  at 0x15A (through chunk_17's `func_80034190`), its translation cleared,
  its position the model's at 0x64 plus a vector (0, 0x1000, 0) turned by
  a second matrix (`func_8004D560`, parked);
- the camera along the race's path at 0x45C: its position the path's at
  0xC, a turn about y by the path's angle at 0x68 and one about z
  interpolated between the path's values at 0x72 and 0x74 by that angle,
  both built inline from the sine table `D_800BF3A0`, then
  `func_8001D23C` twice with the path's value at 0x6E (at least 100)
  (`func_8004EE10`, parked);
- two larger camera functions, `func_8004E99C` and `func_8004F0C4`, still
  asm.

One file, `src/langimg/chunk_30.cpp`, 0x8004D560-0x8004F6C8.

5 functions: none match, 2 are parked, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **Two locals in one stack slot: a union.** `func_8004EE10` copies the
  path's position into a vector at 0x18, then writes an angle (a short
  vector) over the same slot and reads its y back: declared as a union
  of the two, first, they got the original's slots (the matrices after
  them at 0x28 and 0x48).
- **The index read before the run.** Both functions load the racer's
  index at 0x470 before the run's pointer: `int k = o->m_470[i];` first.
- **Parked.**
  - `func_8004D560`: the original needs a saved register less: it keeps
    the angles' and the second matrix's addresses in one register and
    recomputes the last vector's address; GCC keeps each in its own (a
    frame of 0xA0 against 0x98, 119 off).
  - `func_8004EE10`: the original computes the product's translation
    address (`sp+0x5C`) again for each of its two calls; GCC keeps it in
    a saved register (a frame of 0x80 against 0x78, 149 off), the stack
    slots and the two rotations' stores otherwise as the original's.
- **Still asm.** `func_8004D734` (1185 instructions), `func_8004E99C`
  (285, with `$fp` and a 0x130 frame) and `func_8004F0C4` (396), not
  tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8004D560` | parked | a camera from its bike: a saved register |
| `func_8004D734` | asm | 1185 instructions |
| `func_8004E99C` | asm | 285 instructions |
| `func_8004EE10` | parked | a camera along the path: a saved register |
| `func_8004F0C4` | asm | 396 instructions |
