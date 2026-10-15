# The game's chunk_40: a bike's object's base class (#41)

The base class of a bike's model object (`Obj40`; chunk_41's `Obj41`
derives from it, and calls its constructor). Its functions:
- its constructor and destructor (the five states freed);
- everything that moves reset, and the current values kept as the
  last ones;
- a band found in one of three tables (by its kind) and a value
  interpolated from it;
- a vector from two of its vectors, scaled.

Around it, on the bike (`Ply40`, 0x568 bytes; chunk_31's bike):
- whether another bike is within reach on the same segment;
- the parts of an object set from a list, and two animations' frames;
- a reset, and a word of waiting bits (set, tested, the first taken).

Also the four lists sorted with `qsort`, the first time only.

One file, `src/langimg/chunk_40.cpp`, 0x80061484-0x80063428.

23 functions: 16 match, 4 are parked, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, two small
globals.

## Notes

- **A table of pairs as two symbols.** The four lists to sort are pairs
  (words, count), and the original addresses the counts through their
  own symbol, `D_800C75D8`, four bytes after `D_800C75D4`. As a struct
  array the counts were addressed from the first symbol; declared as two
  scalars indexed `(&D_800C75D4)[i * 2]` and `(&D_800C75D8)[i * 2]`,
  `func_80062DB4` matched.
- **Zeroing through a pointer, last field first.** The constructor and
  the resets clear vectors with the third field's store first and the
  first's last, the second and third through an address register. An
  inline `VecZero40(Vec40 *v) { v->z = 0; v->y = 0; v->x = 0; }` (and
  the same for three shorts) matched; a setter storing x first gave
  another order.
- **The tables chosen by an `if`/`else` chain.** `func_80063250` picks one
  of three tables by the object's kind (`m_58`). `t = A; if (k) { t = C; if (k ==
  1) t = B; }` put the first table's address in a delay slot the
  original leaves empty; an `if`/`else if`/`else` chain, with the counter
  set before it, matched.
- **A result variable, again.** `func_80062CF4` keeps its result in the
  register that held a pointer before the calls; `int r = 0;` at the
  top did it (chunk_52's `func_800794E8`). The bike's object is also read
  into a local before the first call, as the original does.
- **Stack vectors through pointers.** `func_80063398` keeps two stack
  vectors' addresses in saved registers; with pointer locals (`Vector3
  *pa = &a;`) it's right but for the last copy's two registers. Parked.
- **A bug kept.** `func_800627E4` looks for the first waiting bit but
  tests bit 0 each time round, so it returns 0 or -1 (and GCC moves the
  test out of the loop). The game's own code.
- **`func_800615C4` (fifth pass)** matched as written: each flag's three
  vectors copied with `VecCopyL40` at byte offsets of the model (re-read
  for each copy), then the two node functions per flag.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80061484` | matches | two animations' frames |
| `func_800614C0`, `func_80061510`, `func_80061540` | match | a bike's object's parts set from a list |
| `func_800615C4` | matches | the parts' positions kept, their nodes updated |
| `func_800618BC` | asm | 503 instructions |
| `func_80062098` | parked | a bike's crash steps: registers |
| `func_800623DC` | matches | a bike reset |
| `func_80062440` | asm | 222 instructions |
| `func_800627B8`, `func_800627C0`, `func_800627D8`, `func_800627E4` | match | the waiting bits |
| `func_80062828` | asm | 308 instructions |
| `func_80062CF4` | matches | another bike within reach |
| `func_80062DB4` | matches | the lists sorted, once |
| `func_80062E40` | matches | the constructor |
| `func_80062EEC` | matches | the destructor |
| `func_80062FB4` | parked | everything moving reset: the first stores' registers |
| `func_800630D8` | parked | a reset: the stores' order around the constants |
| `func_800631A4` | matches | the last values kept |
| `func_80063250` | matches | a band from three tables, a value interpolated |
| `func_80063398` | parked | a vector from two others: the last copy's registers |

## Group B follow-up

- `func_80062098` written and parked (109 off): a bike's crash steps
  (`Bike40`): its animation stepped (chunk_17's `func_80034D14`,
  `func_800354D0`), the model's position kept, then the next step from the
  list at 0x2F8 started (`func_8009243C`), and at the first one the bike's
  matrix and position set from the key's angles. The crash state is read
  again through its byte field (the original's sign extension), and the
  shape's position is copied field by field (not `VecCopyL40`, whose
  pointer form loads through the address). Left: the bike and the step's
  index in other saved registers, and the matrix at 0x2A4's address not
  kept in `$s0`.
