# The game's chunk_30: the race's cameras (#31)

The race's cameras (`Cam30` at the race's 0x43C, a matrix and a position at
0xF8), each following the bike its racer index at 0x470 picks through the
run's 0x1E24, when that bike is of kind 1 in the race:
- the camera's matrix from the bike's model's angles at 0x70 and the value
  at 0x15A (through chunk_17's `func_80034190`), its translation cleared,
  its position the model's at 0x64 plus a vector (0, 0x1000, 0) turned by
  a second matrix (`func_8004D560`);
- the camera along the race's path at 0x45C: its position the path's at
  0xC, a turn about y by the path's angle at 0x68 and one about z
  interpolated between the path's values at 0x72 and 0x74 by that angle,
  both built inline from the sine table `D_800BF3A0`, then
  `func_8001D23C` twice with the path's value at 0x6E (at least 100)
  (`func_8004EE10`);
- each camera by its mode at 0x430 (`func_8004F0C4`, parked): the
  camera at 0x488 bit 0 live or not by `func_8004C9D0`, the fog from the
  setting's table (in 1/360ths) set before each mode's function, the mode
  5 function tried until it gives a mode, then the camera's speed at 0xEC
  from its move unless it was cut (0x438), its mode changed or it moved
  too far;
- `func_8004E99C` and the large `func_8004D734`, still asm.

One file, `src/langimg/chunk_30.cpp`, 0x8004D560-0x8004F6C8.

5 functions: 2 match, 1 is parked, 2 are still asm.

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
- **Parked at first** (both match now, see the last section).
  - `func_8004D560`: the original needs a saved register less: it keeps
    the angles' and the second matrix's addresses in one register and
    recomputes the last vector's address; GCC keeps each in its own (a
    frame of 0xA0 against 0x98, 119 off).
  - `func_8004EE10`: the original computes the product's translation
    address (`sp+0x5C`) again for each of its two calls; GCC keeps it in
    a saved register (a frame of 0x80 against 0x78, 149 off), the stack
    slots and the two rotations' stores otherwise as the original's.
- **Still asm.** `func_8004D734` (1185 instructions) and `func_8004E99C`
  (285, with `$fp` and a 0x130 frame), not tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8004D560` | matches | a camera from its bike |
| `func_8004D734` | asm | 1185 instructions |
| `func_8004E99C` | asm | 285 instructions |
| `func_8004EE10` | matches | a camera along the path |
| `func_8004F0C4` | parked | each camera by its mode: the speed's vectors |

## Group B large-functions pass

- `func_8004EE10` (parked) went from 149 to 5 off with #289's finding: the
  product's two calls (`func_8009887C`, `func_800997D0`), the turn about y
  (`RotY30`) and the one about z (`RotZ30`) through inline functions, which
  recompute the stack matrices' addresses as the original does, and the
  angle set through an inline function and read back from the stack. Left:
  the fog clamp, which the original loads into `$s0` and then sets to 100
  after a branch; written as a `?:` here, GCC tests a copy.

## Group B large functions, continued

- `func_8004EE10` matches: the fog clamp as an `if` (`f = p->m_6E; if (f <
  100) f = 100;`), and `D_800CA7D8` declared as a small object (`extern
  int`, passed as `&D_800CA7D8`) so that its address is one `la` the
  scheduler leaves out of a branch's delay slot ("One address unsplit" in
  the techniques).
- `func_8004D560` matches with #289's finding, written like chunk_17's
  `func_8003425C`: the transposed matrix is an inline function's own
  local (its address computed straight into `$a0`), the offset vector and
  its result belong to a second inline function, and the second matrix is
  in a block of its own, so only its address is kept in a saved register.
- `func_8004F0C4` (the cameras by mode, 396 instructions) is written and
  parked, 58 off. The live flag at 0x488 is a 1-bit field (`m_on`), which
  gave the original's addressing; the fog's two calls go through an inline
  function; the mode is compared as `mode != o->m_430[i]`. Left: the
  speed's three vectors. The original puts the last one lowest in the
  frame (0x18) and recomputes its address, with far's and fog's registers
  reused for the time and the first vector. Declared last here it is kept
  in a saved register; declared first, the cases' delay slots fill
  differently (300 off).
