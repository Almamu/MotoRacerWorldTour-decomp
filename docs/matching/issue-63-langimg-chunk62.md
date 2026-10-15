# The game's chunk_62: a tree of nodes, animation channels and a solver (#63)

Code around chunk_64's animations (`Anim62`, its channels of 0x80 bytes)
and a tree of nodes (`Node62`, a child at 0 and a sibling at 8):
- a node's position through its owner's matrix (or its own matrix's
  translation), then its child's and its sibling's (`func_8008D168`,
  recursive);
- a node's position moved towards a point through its velocity at 0x48,
  which takes half of what's left each call (`func_8008E054`);
- an animation given a model: each channel its part, and a value at 0x10
  (the part's, when it's in the scratchpad's range 0x1F80xxxx, or the next
  of the animation's slots of 0x20 bytes), then chunk_64's
  `func_800913C0` and a pair from `D_800C8D34` by the model's value at
  0x0A (`func_8008E658`);
- the channels' angles (and, with flag 0x40, positions) set from chunk_64's
  tables (`func_8008E0C4`, `func_8008E354`, and `func_8008E1F8` and
  `func_8008E46C`, still asm);
- through the GTE: the sum of a vector's squares (`func_8008D27C`, `sqr`),
  a vector's length (`func_8008D2B0`, through `func_8009923C`), an
  integer square root (`func_8008DFA0`, from the GTE's leading-zero
  count).

One file, `src/langimg/chunk_62.cpp`, 0x8008D168-0x8008F368.

13 functions: 7 match, 2 are parked, 4 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **GTE functions with macros.** splat marks `func_8008D27C` and
  `func_8008DFA0` hand-written (they hold `mtc2`, `mfc2` and a `sqr`), but
  `func_8008D27C` is C: three `GTE_MTC2`s, `GTE_SQR0()` (the `sqr` and its
  two `nop`s), and the three `GTE_MFC2`s with the first sum between the
  second and the third (`a += b;`), as the original's `addu`. `GTE_SQR0`
  and `GTE_LZC` (the leading-zero count's `mtc2`, two `nop`s, `mfc2`) are
  new in `include/gte.h`.
- **Add into the locals, then store.** `func_8008D168` adds the node's
  offset to a vector into a local: `x += b->vx; ...; t.vx = x; ...`
  matched, with the three loads first (`int x = v->vx; ...`); `t.vx = x +
  b->vx` kept other registers.
- **A vector set through an inline function.** `func_8008D2B0` stores its
  arguments to a local vector, the first two at the stack's offsets and the
  last through the vector's address: `SetVec62(&v, x, y, z)`.
- **An unsigned word for a high half's test.** `func_8008E658` tests a
  part's word for `0x1F80` in its high half with `srl`: the field is a
  `u32`.
- **The vector copies of chunk_31 and chunk_41** (all three loads first,
  the first store at the field's offset, the others through its address)
  gave `func_8008D168`'s other branch (`VecCopyL62`).
- **Parked.**
  - `func_8008E0C4` (the channels' angles and positions from a table): the
    original loads the two counts with `lbu` and takes their minimum on
    the values shifted left by 24 (a byte minimum); GCC loads them with
    `lb`. It also extracts the three packed coordinates before storing
    them (54 off; 41 after the follow-up below).
  - `func_8008E354` (the angles of the channels listed, positions
    cleared): the entry's pointer in `$a0` where the original has `$v0`,
    which also changes the order the three coordinates are extracted in
    (14 off). The default entry cleared first and the count read last (a
    permuter's find) took it from 69. Matched in the follow-up below.
  - `func_8008DFA0` (the square root): the original keeps its argument in
    `$a0` (returned as is below 2); GCC moves it to `$t0` first (one
    instruction more, 45 off).
- **Still asm.** `func_8008D880` (457 instructions) and `func_8008E70C`
  (792) are GTE code with `$t9`, marked hand-written; `func_8008D2DC`
  (361) spills to the stack and uses `$fp`; `func_8008E46C` (123) is more
  of the table loops, not tried (`func_8008E1F8` matched in the follow-up
  below).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8008D168` | matches | a node's position, then its child's and its sibling's |
| `func_8008D27C` | matches | a vector's squares summed (GTE `sqr`) |
| `func_8008D2B0` | matches | a vector's length |
| `func_8008D2DC` | asm | 361 instructions |
| `func_8008D880` | asm | 457 instructions (GTE) |
| `func_8008DFA0` | parked | a square root: registers |
| `func_8008E054` | matches | a node eased towards a point |
| `func_8008E0C4` | parked | the channels from a table: the counts' loads |
| `func_8008E1F8` | matches | the channels listed, angles and positions |
| `func_8008E354` | matches | the channels listed, positions cleared |
| `func_8008E46C` | asm | 123 instructions |
| `func_8008E658` | matches | an animation given a model |
| `func_8008E70C` | asm | 792 instructions (GTE) |

## Group C follow-up

- `func_8008E1F8` (new) and `func_8008E354` (parked before): the channels
  listed in `ids` get their angles from the table's 4-byte entries (and,
  with flag 0x40, their positions from its 8-byte entries; `func_8008E354`
  clears them). Two things matched them: the packed coordinates read into
  locals in the order y, z, x before the three stores (`y = q.m_y; z =
  q.m_z; x = q.m_x;`), which gave the original's extraction order, and
  the entry's selection as an `if` / `else if` / `else` chain (`direct`,
  then the id test, then the default), which put the entry's pointer in
  `$v0` as the original's. In `func_8008E1F8` the next id is read after
  the table's pointers (`next = *ids++;` last), the default entries are
  cleared first, and the 8-byte entry's three values go through locals.
- `func_8008E0C4` (still parked) came from 54 to 41 off: the counts'
  minimum is taken on the values shifted left by 24 (`int a = o->m_00 <<
  24; ... (a < b ? a : b) >> 24`), and the coordinates are read y, z, x.
