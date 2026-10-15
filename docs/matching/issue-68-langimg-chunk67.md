# The game's chunk_67: matrices and vectors (#68)

The game's maths library.
- **Matrices:** transposed; inverted; built from a direction, from two
  points (look-at) and from a quaternion; turned into angles two ways.
- **Vectors:** normalised to 4096 or to `1 << s`; per-component minima
  and maxima; scaled by a sine from the 4096-entry table.
- **Numbers:** a fixed-point division through a 64-bit long division; a
  square root through the GTE's leading-zero count; a seeded random
  number generator (Park and Miller's minimal standard, ×16807, by
  Schrage's method, per slot).
- **GTE functions:** matrix products, a vector through a matrix, a
  rotation from three angles.

One file, `src/langimg/chunk_67.cpp`, 0x80097128-0x800990E8.

30 functions: 15 match, 5 are parked, 10 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **Vectors read whole before they're written.** `func_80097D08` and
  `func_80098224` copy vectors between locals with all three loads first;
  struct assignment gave a block move. The `VecCopyL67` inline (chunk_47's
  `VecCopyL`) matched. `func_80098224` also keeps a vector's address in a
  pointer variable set before the call that fills it (`pu = &u;`), as
  the original keeps it in `$s0`.
- **A callee returns its output.** `func_80098768` (a vector through a
  matrix) ends with `addu $v0, $a2`, so it returns its output vector.
  Declared that way, `func_80098178` (an inverse) matched; the permuter
  found it.
- **A table indexed twice.** `func_80098968` reads the sine and cosine
  pair with the index expression written out twice. A local index, or a
  pointer to the entry, put the table's address in another register (the
  permuter).
- **`MIN`, `MAX` and `abs` as macros.** The per-component minimum and
  maximum matched as `a->x = MIN67(a->x, b->x)`; the explicit `if` gave
  the third component's registers the other way round.
- **A chained assignment.** The random number generator's seed is
  `s = *p = (i << 16) + i;`; two statements put it in another register.
- **The second argument first.** `func_800984A0` computes each `ratan2`'s
  second argument before its first; it matched with the second in a local
  beforehand.
- **The GTE functions stay asm.** Six functions drive the GTE with
  integer work between the operations and an operation's results read
  while the next one's inputs load: `func_80097E4C`, `func_80097F68`,
  `func_800985A8`, `func_80098674`, `func_80098768`, `func_8009887C`.
  That could be hand-scheduled asm or C with GTE macros that omit the
  nops; I haven't settled which.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80097128` | asm | 537 instructions |
| `func_8009793C` | matches | empty |
| `func_80097944` | asm | a 64-bit by 32-bit division (73 instructions) |
| `func_80097A68` | parked | `(a << s) / b` through it: registers |
| `func_80097AC8` | asm | a square root (the GTE's leading zeros) |
| `func_80097B7C` | asm | 100 instructions |
| `func_80097D08` | matches | a look-at matrix from two points |
| `func_80097E4C`, `func_80097F68` | asm | GTE: a rotation from angles |
| `func_80098090` | matches | a transpose |
| `func_800980F4` | matches | an inverse in place |
| `func_80098178` | matches | an inverse |
| `func_80098224` | matches | a look-at matrix from a direction |
| `func_80098354` | parked | a rotation about y from a direction: registers |
| `func_80098418`, `func_800984A0` | match | angles from a matrix |
| `func_800985A8`, `func_80098674`, `func_80098768`, `func_8009887C` | asm | GTE: matrix products, a vector through a matrix |
| `func_80098968` | matches | a vector scaled by a sine |
| `func_800989DC` | matches | a vector turned by a quaternion |
| `func_80098BD8` | parked | a matrix from a quaternion: registers and the stores' order |
| `func_80098CE4`, `func_80098D04` | match | the time, a seed set |
| `func_80098D1C` | matches | a random number |
| `func_80098DD4`, `func_80098E38` | match | minima and maxima |
| `func_80098E9C` | parked | a normalisation: where a constant is set |
| `func_80098F94` | parked | a scaling to `1 << s`: registers |

## Second pass

- `func_800980F4`: the negated translation is three loads, three
  negations, three stores (`x = v.x; ...; x = -x; ...; m->t.x = x;`);
  negating in the loads' statements interleaved them.

## Group C, continued

`func_800989DC` (a vector turned by a quaternion, in 4.12) matches with
each output's two cross terms grouped as one difference:
`(s * v->x + 2 * (q->x * d) + ((q->w * q->y >> 11) * v->z - ...)) >> 12`;
added one by one, the products came out in other registers.
