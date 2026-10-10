# The game's chunk_08: rider poses, fixed-point vectors (#9)

A rider's pose (reset, held while the input stays small, blended towards
the side it leans to) and vector helpers in fixed point with a variable
number of fraction bits: plane solves, a cross product, scaling to a
length, clamped turns. One file, `src/langimg/chunk_08.cpp`,
0x80021154-0x800236F0.

17 functions: 12 match, 2 are parked, 3 are still asm (two more matched
during chunk_09, #10).

## The settings

As chunk_07: GCC 2.91.66, `-G8`, unsplit addresses, divisions without
checks, and no small globals (`langimg.chunk_08_*`).

## The fixed-point multiply

splat marks six of these functions "handwritten": they hold a sequence
GCC doesn't emit, `(a * b) >> s` on the 64-bit product:

```
mult  a, b
ori   t, $0, 32
sub   t, t, s       # sub, not subu
mfhi  r
sllv  r, r, t
mflo  t
srlv  t, t, s
or    r, r, t
```

It's the game's own `asm` macro, `MULSHIFT(a, b, s)` in
`include/mulshift.h`: an `asm` with the result and the temporary as
early-clobber outputs and the three operands as plain `"r"` inputs. The
`nop` before each `mult` (a load's delay) comes from the assembler.
`func_80022FA4` matched with it as first written; copying the operands
into locals inside the macro made others worse. The macro is `volatile`
(found in chunk_09), and with that `func_8002309C` matches too.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80021154`, `func_80022454` | asm | the rider's animation (1216 and 389 instructions) |
| `func_80022A68` | parked | the pose held or blended: the layout matches, registers and the absolute values' scheduling don't (52 off) |
| `func_80022BA8` | matches | the pose's reset |
| `func_80022CCC`, `func_80022CD4`, `func_80022D04` | match | empty; an `SVECTOR`'s values passed to a matrix function; a vector to an `SVECTOR` |
| `func_80022D20`, `func_80022D44`, `func_80022DE4` | match | a vector turned a quarter about y; turns about y and about the side |
| `func_80022FA4` | matches | the cross product's y |
| `func_80023004` | matches | a point's y on a plane through 0 (the normal passed by value) |
| `func_8002309C` | matches | as `func_80023004` with 26 bits (once `MULSHIFT` was volatile) |
| `func_80023140` | matches | a vector scaled to a length |
| `func_8002320C` | asm | 221 instructions |
| `func_8002357C` | matches | a motor's curve: nested `MULSHIFT`s, and two `nop`s after the division (chunk_09) |
| `func_800235F8` | parked | a motor's curve: the original holds the shift in one register for three multiplies |

- **A sum into one variable.** `func_80023004` matched only with the sum
  built in the result: `y = a + MULSHIFT(...); y = -((y << 12) / n.vy);`.
  Two products in two locals, or one expression, put the results in
  other registers.
- **Field-by-field vector inlines.** `func_80022BA8` zeroes a local
  vector and copies it into the pose, twice; the original's stores (the
  first field off the struct's base, the others off a pointer to the
  vector) came from `VecZero` and `VecCopy` inlines that assign field by
  field. A chained `vx = vy = vz = 0` stores the last field first, and a
  struct copy loads all three fields.
- **A parameter kept as a copy.** `func_80022DE4` clamps its 5th argument
  into a local and then tests a copy of it in the argument's own register
  (`addu $t1, $s1` in a delay slot): `b = cb; if (b)`, with `cb` used in
  the shift.
- **Which way the clamp's branches go.** `if (x < lo) r = lo; else if (x
  <= hi) r = x; else r = hi;` branches on `hi < x` to the last case, as
  the original does; `else if (hi < x) r = hi; else r = x;` branches the
  other way.
- **A flag's sense.** The turn's flag starts at 1 and is cleared by each
  turn; the original renormalizes when it's 0 (`bnez` past the call). The
  first draft had the sense backwards, which only the last branch showed.
- **A conditional that GCC threads.** `func_80022A68` reads `m_0C` once,
  but its layout (the holding case first, the blend last) came from
  `if (p->m_0C || (...)) { if (!p->m_0C) ... }`, the second test
  removed by jump threading.
