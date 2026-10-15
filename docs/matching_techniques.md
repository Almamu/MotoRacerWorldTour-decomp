# Matching techniques

The reference for what it takes to make C and C++ compile to the
executables' exact bytes: the build settings each piece of code needs,
and the source shapes and workarounds that steer GCC 2.9x. Each technique
names the function it came from; the write-ups of the passes that found
them are in [docs/matching/](matching/README.md). The per-function loop
(which tools to run when) is [workflow.md](workflow.md).

The right fix is always the plainest C that gives the same bytes. A
workaround (an `asm`, a dummy variable, a `goto` nobody would write) stays
only while the plainer code doesn't match; say at the use what it fixes.
Workarounds that fit in a macro have a named form in
[include/match.h](../include/match.h).

**An isolated compile is not proof.** `tools/try_func.py` compiles one
source file and compares one function; only a clean `make` with both
executables `OK` counts.

## Contents

1. [Tools](#tools)
2. [Compilers and flags](#compilers-and-flags): find the compiler first,
   per library; unsplit addresses; loop constants (`-fmove-all-movables`); small globals; divisions; signed char
3. [Source shape](#source-shape): statement order, result variables,
   branches, loops, temporaries, pointers, struct copies, types
4. [Calls and declarations](#calls-and-declarations)
5. [Register allocation](#register-allocation)
6. [Assembler-level fixes](#assembler-level-fixes): the match.h macros
7. [Data](#data): literals, static objects, hand-written asm
8. [NON_MATCHING](#non_matching)
9. [Pitfalls](#pitfalls)
10. [Open problems](#open-problems)

## Tools

| Tool | What for |
|---|---|
| `tools/try_func.py NAME [FILE] [-D NON_MATCHING] [-v] [--gcc V] [--cflags F]` | Compiles one source with the Makefile's own command for its chunk and compares one function with its `.s`, word by word (relocated fields masked). `--cflags` go last, so `-O1` wins over the Makefile's `-O2`. No linking, so it works while the chunk doesn't match. Its last line counts the differing instructions and the "opcode runs out of place": 0 runs out of place means only registers or immediates differ. |
| `tools/diff_func.py NAME` | The same comparison on the linked build against the original. Only meaningful once everything before the function has its original size. |
| `tools/permuter_setup.py NAME BASE.c DIR` | A [decomp-permuter](https://github.com/simonlindholm/decomp-permuter) directory with the chunk's compile command. |
| `m2c` | A first draft from the `.s` file. |
| `tools/try_func.py NAME --cflags=-dL` | GCC's own account of its loop pass, in `gccdump.loop` in the current directory (`-dL`; other letters dump other passes). Says which invariants it hoisted (`moved to`) or didn't (`not desirable`), and which addresses it strength-reduced (`giv ... reduced`) or not (`not worth while`). Run it from a scratch directory. |

Keep a scratch copy of the chunk and try several versions of a function
in a row (`tools/try_func.py NAME /tmp/x/chunk_00.cpp`): the file must
have the chunk's name, so the right compile command is picked.

## Compilers and flags

### Find the compiler first

Code that was built apart can have another compiler than the executable
it's linked into, and no amount of source reshaping fixes the wrong one.
When a function resists in ways that look structural (a loop compiled
differently, registers wrong everywhere), compile it with the other
candidates before going on:

```sh
tools/try_func.py NAME --gcc 2.91.66
tools/try_func.py NAME --gcc 2.95.2
```

A function that matches with only one compiler decides it; the rest of
the file must still match with it. **Case:** the game's sound engine is
GCC 2.91.66's (`func_80013348` and `func_80011898` only match with it),
the boot executable's compiler, not the game's 2.95.2. Before that was
found, `func_80011898` took a long search of source shapes under 2.95.2
that got within two instructions and no further; under 2.91.66 it
matched with the second form tried
([issue-1-langimg-sound.md](matching/issue-1-langimg-sound.md)). Such code
goes in `lib/` with its own settings ([libraries.md](libraries.md)).

The game itself comes from two compilers: its classes are 2.95.2's, and
the plain functions between them 2.91.66's (C++ too: they use `new[]`
and call methods). **Case:** in chunk_02,
`CName::Equals` only matches with 2.95.2, and the functions after the
classes (`func_80016914`, `func_800169B8`) only with 2.91.66. A run of
plain functions next to class methods is a reason to try the other
compiler; the chunk is cut where the compiler changes and gets per-chunk
settings
([issue-3-langimg-chunk02.md](matching/issue-3-langimg-chunk02.md)).

| Code | Compiler | `-G` | Flags | maspsx |
|---|---|---|---|---|
| `LANGIMG.DAT` (`src/langimg`) | GCC 2.95.2 | 8 | `-mno-split-addresses` | `--expand-div` |
| `lib/sound` chunk_00 (in `LANGIMG.DAT`) | GCC 2.91.66 | 8 | `-mno-split-addresses` | `--expand-div --div-no-checks` |
| `lib/sound` chunk_01 | GCC 2.91.66 | 0 | `-mno-split-addresses` | `--expand-div --div-no-checks` |
| `lib/cdaudio` chunk_01b | GCC 2.91.66 | 0 | (split addresses) | `--expand-div` |
| `src/langimg` chunk_02, chunk_03 (2.91.66 code) | GCC 2.91.66 | 8 | (split addresses) | `--expand-div --small-externs=...` |
| `src/langimg` chunk_04, chunk_05 (2.91.66 code) | GCC 2.91.66 | 8 | (split addresses) | `--expand-div --div-no-checks --small-externs=` |
| `src/langimg` chunk_23 (2.91.66 code) | GCC 2.91.66 | 8 | (split addresses) | `--expand-div --div-no-checks --small-externs=D_800CABB7` |
| `src/langimg` chunk_45 (2.91.66 code) | GCC 2.91.66 | 8 | (split addresses) | `--expand-div --div-no-checks --small-externs=...` (eleven) |
| `src/langimg` chunk_66 (2.91.66 code) | GCC 2.91.66 | 8 | (split addresses) | `--expand-div --div-no-checks --small-externs=...` (five) |
| `src/langimg` chunk_13, chunk_14, chunk_15, chunk_16, chunk_17, chunk_18, chunk_19, chunk_20, chunk_21, chunk_22, chunk_24, chunk_25, chunk_26, chunk_27, chunk_28, chunk_29, chunk_30, chunk_31, chunk_32, chunk_33, chunk_34, chunk_35, chunk_36, chunk_37, chunk_38, chunk_39, chunk_40, chunk_41, chunk_42, chunk_43, chunk_44, chunk_46, chunk_47, chunk_48, chunk_49, chunk_50, chunk_51, chunk_52, chunk_53, chunk_54, chunk_55, chunk_56, chunk_57, chunk_58, chunk_59, chunk_60, chunk_61, chunk_62, chunk_63, chunk_64, chunk_65, chunk_67, chunk_68, chunk_69, chunk_70, chunk_71, chunk_72, chunk_73, chunk_74 (2.91.66 code) | GCC 2.91.66 | 8 | (split addresses) | `--expand-div --div-no-checks --small-externs=...` |
| `src/langimg` chunk_06 to chunk_12 (2.91.66 code) | GCC 2.91.66 | 8 | `-mno-split-addresses` | `--expand-div --div-no-checks --small-externs=...` |
| `src/langimg` chunk_02b (2.91.66 code) | GCC 2.91.66 | 8 | `-mno-split-addresses` | `--expand-div --div-no-checks --small-externs=...` |
| `SCES_030.37` (`src/sces`) | GCC 2.91.66 | 0 | `-fsigned-char` | `--expand-div` |

All at `-O2`, C++ with `-fno-exceptions -fno-rtti`, through maspsx
(`--aspsx-version=2.79`) and `tools/maspsx_plus.py`.

### Loop constants in saved registers (`-fmove-all-movables`)

When the original keeps constants (5, -1, 0x400000, /1000's multiplier)
in saved registers through a loop with calls, and GCC loads them where
they're used, the chunk was built with `-fmove-all-movables`: loop.c then
hoists every invariant, not only the ones it judges worth a register. It
is per chunk (the Makefile's `<chunk>_CFLAGS`), and with it chunk_03,
chunk_04, chunk_05, chunk_09, chunk_19, chunk_20 and chunk_22 matched
functions that had been parked for this (chunk_22's `func_8003E5B0` with no
change to its C), every function already matched in those chunks still
matching. Locals written to hold such constants as a workaround (`int one
= 1;`) go back to literals. A sweep of a chunk's parked functions with and
without the flag (`tools/try_func.py NAME -D NON_MATCHING
--cflags=-fmove-all-movables`) shows which chunks want it. chunk_02,
chunk_06 and chunk_24 have it too (their parked functions got closer,
nothing matched yet), and so do chunk_59, chunk_68, chunk_72 and chunk_74
(chunk_72's `func_800A1CF8` from 92 off to 2, chunk_59's `func_80088FD4`
from 104 to 16), chunk_37 (its new `func_8005CDA4` keeps a loop's 4 in
`$s7` with it, from 214 off to 134) and chunk_55 (its string-width loop
`func_8007F33C` keeps -1, -4, 0xFFFF and a base in saved registers: 169
off to 92).

### Unsplit addresses (`-mno-split-addresses`)

GCC 2.95 splits an address into `lui %hi` and `addiu %lo`, separate
instructions the scheduler can move, for example the `lui` into a branch
delay slot. The game's code has the address as one `la` macro, expanded by
the assembler, which never goes in a delay slot. **Case:** `func_800121C0`
(`if (mode == 0) p = A; else p = B;`) had `lui` in the `bnez` delay slot;
with `-mno-split-addresses` the slot is a `nop` as in the original. The
flag changes no matched function of the game. The boot executable stops
matching with it, so it keeps GCC's default.

### Small globals (`$gp`)

Whether a piece of code uses `$gp` at all tells its `-G`: the game's sound
engine reads its small globals with `%gp_rel`, the next file (chunk_01)
reads the same globals with `lui` + `lw`, so it was built with `-G0`
(`func_80014C24` matched with `--cflags=-G0`).

The game reaches every variable of 8 bytes or less through `$gp`
(`%gp_rel`), from every file. maspsx alone only does that for the
variables the file defines, so an `extern int x;` came out as `lui` + `lw`.
`tools/maspsx_plus.py` (the Makefile's maspsx) also treats a declared
variable as small when GCC's `.extern x, SIZE` says so. For that GCC must
know the size: declare a small global with its type (`extern int x;`),
not as an array of unknown size. Arrays and structs over 8 bytes are
reached with `lui`/`addiu` as before. **Case:** `func_80011924`,
`func_80011E08`.

Not every file was assembled that way. The 2.91.66 helpers in chunk_02b
reach most of the game's small globals with `lui` + `lw`, although they
are in `.sdata` and the file is `-G8`, and only two (`D_800C493C`,
`D_800C4944`) with `%gp_rel`: their assembler knew only the sizes of what
the file defined. chunk_03 is the same with `D_800C4988` and `D_800CA778`.
`-G8` matters even where nothing is small: GCC then emits a global it
might reach through `$gp` as one `lw` macro, so the loads look unsplit
whatever the address mode, and only `-G8` with split addresses matched
all of chunk_03 (`func_800188CC`'s jump table needs split addresses;
`-G0` with split addresses broke the global loads). `--small-externs=D_800C493C,D_800C4944` (a per-chunk
maspsx flag) makes only those small. Both GCC versions emit `.extern`
with sizes, so this isn't the compiler's doing.

Under split addresses a global declared with a size of 8 bytes or less
(`extern int D_800CB480;`) is still one `la`, which stays out of delay
slots; declared as an array of unknown size it's split and scheduled.
chunk_45 has both (`func_8006BA80`, `func_8006C77C`). chunk_33 passes
chunk_06's racer (`D_800CA7D8`) as one `la`: declared `extern int` and
passed as `(Racer *)&D_800CA7D8`, as a `Racer` it was split
(`func_80053E44`, `func_80053D4C`). chunk_72 reads most
of its globals split, a few through `$gp`: the split ones are declared as
arrays of unknown size and used as `x[0]`. The registers tell which: a
global loaded with `lui $v1` and `lw $v0, %lo(x)($v1)` is GCC's split (an
array); with one register, `lui $a0` and `lw $a0, %lo(x)($a0)`, it's the
assembler's expansion of an `lw x` GCC emitted for a global it thought
small (a scalar; chunk_71).

### Divisions

GCC 2.9x leaves a division to the assembler (`div $2,$3,$4`), which
expands it. ASPSX 2.79 adds divide-by-zero and overflow checks (`bnez`,
`break 7`, ..., `break 6`); `maspsx --expand-div` emulates that, and the
game's own code has them. The sound engine's division has none: a bare
`div $0,...` and `mflo`. `tools/maspsx_plus.py --div-no-checks` produces
that, for `lib/sound` (`func_800128E8`) and the game's C helpers in
chunk_02b (`func_80017574`). That assembler also treated
`mflo` like a load: the next instruction that reads its register gets a
`nop` in front of it, even past a label (in `func_800128E8` a branch lands
on that `nop`); `--div-no-checks` adds it too (`func_80012FEC`).

A division is unsigned (`divu`) only if an operand is: a `u16` times a
constant is an `int`, so `(u32)(x * 28000) / rate` (`func_80012FEC`).

### Signed `char`

The boot executable's compiler had signed plain `char` (the MIPS
default); decompals' builds default to unsigned (`sces_CFLAGS` adds
`-fsigned-char`). The game uses `s8`/`u8` explicitly where it matters.

## Source shape

### Statement order

Decides the scheduling when nothing else does; reorder before rewriting.
**Cases:** `LoadFile` (the copy's count and source before the unpacked
size's load), the movie loop's CD position copy (`minute`, `second`,
`sector`). With a few independent statements left (stores to different
globals), a script that tries every order is quicker than guessing:
`func_80011E44`'s four last stores matched in 4 of their 24 orders.

- **One store, not one per branch.** `if (c) x |= 4; else x |= 2;` gives
  two identical stores that GCC merges into one only after scheduling,
  so nothing that follows can be scheduled above it; `x |= c ? 4 : 2;`
  has the store after the branches from the start, and the next
  statement's constants moved above it as in the original
  (`func_80011E44`).
- **A load before a store tells the source's order.** GCC never moves a
  load from a pointer above a store to a global (they may alias), so a
  field the original reads before a store was read first in the source:
  `D_800CBCA4 = o->m_54;` before `D_800CBCA0 = -1;`, the two stores then
  scheduled in either order (`func_80016A8C`).
- **A global's store that stays after the fields'.** GCC 2 assumes a
  scalar global and a field reached through a pointer don't overlap, and
  schedules their stores in either order; an array element may overlap.
  chunk_27's `func_800481E0` stores to `D_800D5FCC` after five stores
  through the object: declared `int`, GCC moved it above them; declared
  `int D_800D5FCC[2]` (with its neighbour `D_800D5FD0`), it stayed.
- **Read the fields first.** For the same reason, a function that loads
  all of a struct's fields before its first store through another pointer
  had them in locals: the 2D items' `x0`, `y0`, `x1`, `y1` before the
  packet's stores (`func_80015798`).

- **Copies through pointers: an inline function.** When the original
  computes both structs' addresses into registers and copies through them
  (`addiu $v1, $s0, 0x98; lw $a0, 0x98($s0); lw $a1, 4($v1)`), the copy
  was an inline function taking pointers; chunk_64's `func_800925A8` and
  `func_80092824` matched so, the copy loading into locals before
  storing.
- **Two loads, then two stores.** chunk_21's `func_8003BD5C` copies
  pairs of words loading both before storing either; field by field, GCC
  interleaved them. Fresh locals in their own block, `{ int x = p->m_08;
  int y = p->m_0C; k->m_18 = x; k->m_1C = y; }`, matched; a two-word
  struct copy changed which pointer stayed in a saved register.
- **A chained assignment.** chunk_23's constructor stores three zeros
  before two -1s; written apart, GCC loaded -1 first. The permuter found
  `o->m_04 = o->m_10 = *(int *)o = 0;` (`func_8003FC94`).
  A chained assignment stores right to left: chunk_59's `func_80088BBC`
  stores 0x2AA at 0x34 and then at 0x10, `m_10 = m_34 = 0x2AA;`.

- **A counter set after the first call.** chunk_68's `func_80099F2C`
  sets its loop counter in the delay slot of its second call: `i = 0;`
  written after the first call, not at its declaration.
- **A load repeated in each branch.** chunk_33's `func_800537FC` picks
  x from one of two fields and loads y (the same field either way) right
  after: `y = scr->m_20;` written in both branches matched; once after
  the `if`, GCC scheduled the load later.
- **A field read before a copy.** chunk_33's `func_80053D4C` loads a
  found object's pointer before copying a vector to the stack: `Ent33x *y
  = x->m_04;` first, then the copy.
- **The stores in a load's delay.** chunk_37's `func_8005B8D0` stores
  three of a bike's fields after loading a byte of the run's: the byte's
  store written before them (`b->m_42 = o->m_378->m_1F44;`) put them in
  the load's delay, as above; written after, they came before the load.

### Result variables

- **The found path through the common return.** chunk_38's
  `func_8005E1D0` returns its result from `$s2`, -1 until found: with
  `r = v; func(); return r;` in the loop GCC returned a constant -1 at
  the end; with the found and not-found paths both ending in `break` and
  one `return r;` after the loop, `r` stayed in the register.
- **A return per test.** chunk_38's `func_8005E0D8` returns 0 from a
  block of its own after two tests: `if (!a) return 0; if (!b) return 0;`
  gave it, `if (!a || !b) return 0;` didn't.
- **Arguments passed through.** A function that calls another with its
  own `$a1` and `$a2` untouched takes them as parameters and passes them
  on (chunk_24's `func_80042FC0`): declared with fewer, the call doesn't
  compile against the callee's real prototype.
- **A stored field read back.** chunk_15's `func_80030C98` stores a
  `short` parameter and computes from the field: `b->m_298 = v; b->m_290
  = (b->m_298 << 12) / 1000;` gave the copy of the value the original
  makes; computing from `v` didn't.
- **The result set after the early return.** chunk_32's `func_80051618`
  returns 0 at once without a path and otherwise keeps its result in a
  saved register, zeroed in the delay slot of the branch into the body:
  `int r; if (!p) return 0; r = 0;` gave it. With `int r = 0;` GCC knew
  `r` was 0 on the later early exits and returned the constant.
- **Nested `if`s, not an early return.** chunk_20's `func_8003B038`
  returns its result's register on both early exits (`addu $v0, $s3`):
  `if (a) { if (b) { ... } } return r;` gave it; `if (!a) return r;`
  returned a constant 0.
- **Assign the result last.** `r = 1` before the stores made GCC reuse
  `r`'s register for the `1` of `1 << voice`; the original loads `1`
  twice. With `r = 1;` after the stores it matches (`func_80011924`).
- **`r = 0; if (p) { ...; r = 1; } return r;`** keeps the result in a
  saved register across the call, where an early `return` doesn't
  (`func_80012F40`, `func_800130CC`; `func_80012504`, where `r` is in
  `$fp` and the failure path jumps to the common exit).

### Branches

- **A nested `?:` for a range.** A value kept outside a range and 0
  inside, tested with two compares and the value or 0 in their delay slots,
  is `x < lo ? x : x < hi ? 0 : x` (chunk_14's `func_8002E548`). Written as
  a range test GCC folds it into one unsigned compare; as `if`s it keeps
  the result in another register.
- **A case with its own call shapes the compare tree.** chunk_35's
  `func_80058FCC` tests a state for 2 first, then below 3: `case 2:` with
  its own copy of the call that `case 3: case 4:` make gave it; with the
  three cases sharing one call GCC tested 1 first.
- **What the join computes first fills the delay slots.** `reorg` copies
  the first instructions of a join into the delay slots of the branches
  that jump to it. chunk_43's `func_80068038` computes `len / 2` there
  before loading a field: `if (len / 2 > m->m_278)` gave it; with the
  field on the left, the delay slots stayed `nop`s.
- **A branch with the `else`'s store in its delay slot.** A test whose
  branch jumps to the join with a constant stored in its delay slot, and
  whose fall-through stores another, is an `if`/`else` with the jumping
  side's store as the `else` (reorg moves that one store into the
  branch): chunk_13's `func_8002CED4`, `if (a >= 200) { if (b >= 0xFC1) k =
  0x200; else k = 0x1000; } else k = 0x200;`. Written as one `&&`, the
  tests came out inverted.
- **The `else` placed last.** chunk_20's `func_8003B248` lays the call
  for kind 5 out after both searches: `if (kind != 5) { ... } else { r =
  func_8003B3C4(s, name); }` gave it; `if (kind == 5)` first put the call
  first.
- **`andi`/`bnez` or `xori`/`andi`.** `if (!(f & 1)) { ... }` can come
  out as `xori f, 1; andi 1; beqz`; chunk_21's `func_8003CD88` tests
  `andi f, 1; bnez`, which `if (f & 1) return;` gave.
- **Two identical returns kept apart.** GCC merges two `return &X;`;
  chunk_64's `func_80091414` has the default's address built twice, which
  `return found ? &t[i] : &X;` at the end gave.
- **The block laid out first is the `if`'s.** chunk_26's `func_80046B78`
  sets a flag to 0 or 1 after a chain of tests; the original has the 0
  block first, so its source is one condition for 0: `if (a || (b &&
  ...)) x = 0; else x = 1;`. Written as nested `if`/`else`s, each
  assignment came out right after its own test.
- **Two addresses, two calls.** `f(c ? a : b)` with two big objects
  loads the first before the test; chunk_26's `func_80046870` builds each
  in its branch (the `lui` in a delay slot): `if (c) f(a); else f(b);`.
- **Tests GCC would merge.** `(f & 0x400004) == 0x400004 && !(f & 2)`
  becomes one test of `f & 0x400006`; the original tests them apart, with
  a load between: nested `if`s (`func_80013764`).
- **One condition, not two returns.** `FindEntry` checks the hash range
  with one `if (hash >= first && last >= hash) { ... }`; two early
  `return`s gave the second exit its own copy of the return value.
- **Skip rather than return.** The delay slot filler copies a shared
  `return r`'s move into a branch to it: the original's `bltz` with
  `addu $v0, $v1` in its slot is `if (r >= 0) r += c; return r;`, not an
  early `return r` (`func_8001A6AC`).
- **Read the field again rather than keep it.** `FindEntry`'s binary
  search compares `p->hash` directly; a `h = p->hash` temporary changed
  where the comparison is scheduled.

- **A switch's decision tree.** GCC's tree depends on the case values:
  `func_8006B570`'s original tests 1 first, then below 2, which a switch
  on 1 to 3 doesn't give; adding an empty `case 0: break;` does.

- **An empty `case 0` in a switch.** chunk_70's `func_8009D830` tests its
  state with `== 1`, `< 2`, `== 2`: a switch with `case 0: break;`
  besides `case 1` and `case 2`. Without it, GCC tests `== 1`, `== 2`.
- **One return at the end.** The same function sets its result 0 after
  restoring the saved registers: `if (o->m_54) { ... } return 0;`. An
  early `return 0;` set it before.
- **A value chosen in branches, stored once.** `func_8009E954` loads the
  label's pointer and a value in each branch and stores once after them:
  `l = p->m_74; v = p->m_00;` in each branch and `l->m_08 = v;` after.
  The store written in each branch stayed in each branch.

- **The order of a switch's cases is the order of their code.**
  chunk_74's `func_800A658C` tests its cases as 1, 0, 2, 3 whatever the
  source order, but lays the bodies out in source order: `case 0` first
  there.
- **A loop's next value through a temporary.** The same function loads
  the next entry, tests it and copies it: `t = *r; e = t; } while (t !=
  -1);`. Loading into `e` itself tested `e`.

- **Two cases with the same body.** chunk_47's `func_8006F9BC` tests
  `== 1`, `< 2`, `== 0`, `== 2`: cases 1 and 2 written apart, with the same
  code, merged by cross-jumping after the tests. `case 1: case 2:` became a
  range test (`bltz`, `slti 3`).
- **Two tests GCC would fold, nested.** `v != -1 && v != 0` becomes one
  unsigned test (`addiu`, `sltiu 2`). chunk_56's `func_80082BEC` tests
  them apart: `if (v != -1) { if (v != 0) { ... } else { c[0] = 0; } }
  else { c[0] = 0; }`, the two `else`s merged by cross-jumping.
- **An empty case shapes the compare tree.** chunk_15's `func_80030458`
  switches over 4 and 5 with a balanced tree (`== 4`, `< 5`, `== 5`);
  with only those two cases GCC compared twice, and an empty `case 3:
  break;` gave the tree.
- **Empty cases at the end of a switch.** chunk_56's `func_800816F8`
  has a jump table for 1 to 8 whose last two entries go to the end, and
  each case loads the same pointer itself. Without `case 7: break; case 8:
  break;` the table stopped at 6 and GCC hoisted the shared load above
  the jump. chunk_38's `func_8005DE2C` switches on a bike's state
  through a table for 0 to 4: with only `case 1` and `case 3: case 4:`
  GCC compared instead; `case 0: case 2: break;` gave the table.
- **Which block comes first.** GCC lays out an `if`'s block before its
  `else`. chunk_39's `func_80060668` has the restart menu's call first,
  so its condition is the negated one: `if (a != b || (c != 8 && c != 4))
  restart; else retire;`. chunk_32's `func_80053250` clears flags before it
  sets them: `if (a != 7 || !b) clear; else set;`.
- **A case falling into the next.** chunk_32's `func_80051AE0` sets its
  result for kinds 1 and 8 to 10 and falls into kind 0's test; with a
  `break` the cases were laid out differently.
- **Sometimes two returns.** Unlike `FindEntry`, chunk_56's
  `func_80081330` returns 3 from two `if`s in a row (`if (x > 224) return
  3; if (y > 224) return 3;`); `||` put the return's block elsewhere.

### Loops

- **A loop entered at its body: `do`/`while`.** chunk_38's loops over
  the five bikes jump into the body and test the count at the top of the
  next pass: `i = 0; b = r->m_2E8; do { ...; b++; } while (++i < 5);`
  gave that layout, a `for` didn't. A `continue` in it skips the `b++`,
  as in the original's `func_8005E2A8`, whose "no time" path counts on
  without moving to the next bike.
- **The element and the next one's address.** chunk_64's `func_800913C0`
  keeps the element and its successor (computed early, in a delay slot):
  `Chan64 *c = p++;` at the top of the loop. Stepping `c++` at the bottom
  gave pointers to the fields instead.

- **A found case's return out of line.** chunk_31's `func_8005102C`
  returns the index from the end of the function, the loop's pointer
  decrement in the test's delay slot: `if (*p-- == k) goto found; ...
  return -1; found: return i;`. `return i;` in the loop placed the return
  inline, and `break` merged the two returns.
- **The order of the increments.** chunk_31's `func_80050CA4` increments
  its counter before the bike pointer and the pointers GCC derives from
  it; `i++; b++;` at the end of a `while` matched, where `for (...; i++)`
  put the counter last.

- **A `goto` into the branch after the loop.** chunk_48's `func_80071994`
  leaves its loop for the branch below when a value is negative, without
  the test after the loop: `if (r < 0) goto back; ... } while (t >= 0 &&
  ...); if (t < 0) { back: ...`. A `break` needed a copy into `t`.
- **A loop GCC won't rotate: `goto`.** chunk_47's list search tests the
  node at the top and loops back on "not found":
  `next: if (n) { found = ...; n = n->next; if (!found) goto next; }`.
  chunk_65's `func_80094F30` draws a polygon's edges, then the closing
  one, with a count from `n - 1` that isn't tested on entry: `n--; do {
  ...; p++; } while (--n);`.
  chunk_32's `func_80051AE0` jumps to its test first and steps the index
  just before it: `goto test; next: i++; test: if (i < n) { ...; if (!r)
  goto next; }`; `for`, `while` and `while (!r && i < n)` copied the
  test before the loop.
  `while`, `do`/`while` with a `break`, and self tail recursion all came
  out rotated.
- **A search with its bound at the top and its result at the bottom.**
  chunk_25's `func_80045168` tests `i < 8` at the top of each pass and
  loops back while nothing's found: `while (!t) { if (i >= 8) break; ...
  }` (with `t` 0 on entry GCC drops the first test of `!t`). A `goto`
  loop gave the layout but no hoisting of the loop's constants; `for
  (;;)` and `do`/`while` came out rotated.
  The same layout comes from `while (!found && n)`: chunk_26's
  `func_80046194` and `func_80045F78` test the node at the top and the
  flag at the bottom, and matched so; `while (n && !found)` put both
  tests at the bottom.
- **Empty constructors' loops.** A static object whose arrays' elements
  have empty constructors leaves count-down loops with nothing in them
  (chunk_47's `func_8006FB74`). Written `i = 63; do {} while (--i !=
  -1);`, GCC folds the first decrement into the constant; with the
  array's (dead) pointer stepped inside, `do { q += 4; } while (--i !=
  -1);`, it doesn't.
- **Load before the loop what the original loads before it.** A value
  read inside the loop's condition (`*(int *)key == names->name`) was
  loaded after the loop's first test; `k = *(int *)key;` before the loop
  matches (`func_80012120`).
- **Scan a table as a struct array** with a plain `for` and the global
  re-read each time, when the original reloads it after every call:
  `for (i = 0; i < dir->count; i++) if (!f(name, &dir->entries[i])) return
  dir->entries[i].value;` (`func_80012080`). Byte offsets and a `do` loop
  had the increment and the offset add in other places.

- **Jumping into a loop.** The original can enter a loop in the middle,
  skipping its first test. GCC only does that itself when it can prove
  the test; when it doesn't, write the jump: `goto body; test: if (n ==
  0) goto done; body: ...; if (more) goto test;` (`func_8001184C`).
- **Two tests, at the top and at the bottom.** A loop that tests its
  count on entry and its exit condition at the end, `top: if (j < n) {
  ...; j++; if (o->m_3D == -1) goto top; }`, is a `goto`: a `while` with a
  `break`, a `for` with both tests and a `do` were 27 to 48 instructions
  off (`func_80016144`).
- **A `goto` loop isn't a loop to the loop pass.** It hoists nothing out
  of one. Constants the original keeps in registers across such a loop are
  locals set before the label (`func_80017FB4`, `func_80018048`).
- **A constant compared with a variable.** A `switch`'s case values are
  literals and stay in the loop; compared with a loop-local constant
  (`kind == two`) the `2` is hoisted with the others (`func_8001865C`).
- **Hoisted in order of first use.** The loop pass hoists a loop's
  constants in the order its statements first use them; a loop-local
  constant declared in the innermost block, where it's used, lands in
  the original's place (`int v = (dir & 0xF) << 8;` after the id test,
  `func_80019BC4`).
- **A call in the loop's condition.** GCC copies a `while` loop's exit
  test before the loop, unless it contains a call: `while (n && (r =
  f(g, v), g++, !r))` keeps the original's test-at-the-top layout, the
  comma placing `g++` after the call (`func_8001A7F4`).
- **Empty loops count from one more.** `i = 10; while (i--);` compiles to a
  count from 9 with the decrement first: the original's constant is one
  less than the source's (`func_80018814`).
- **Loop shape under 2.91.66.** 2.91.66 keeps an up-counting `i` and walks
  the fields with separate pointers where 2.95.2 makes one count-down
  pointer. A loop compiled the "wrong" way is a hint to check the
  compiler before reshaping it (see above).
- **`(&a[i])->field`, not `a[i].field`, when the original walks the
  fields with pointers.** GCC's loop pass hoists an invariant (here the
  array's address) only when it saves enough: roughly, the number of
  times it's computed times its lifetime against the loop's size. Written
  `a[i].field`, the address is computed once into a register that's then
  reused, which isn't worth hoisting in a long loop, so no field gets its
  own pointer and the loop indexes `i * 16 + a` every time. Each
  `(&a[i])->` computes the address anew: hoisted, and every field becomes
  a pointer stepped by the element size, as in the original
  (`func_80011A68`, `func_80011960`; `VOICE(i)` in
  `lib/sound/include/sound.h`). Outside loops too, it changes the order
  of the address's terms: `(&w->emitters[i])->flags = 1` (`func_800140CC`). `--cflags=-dL` shows which case you're in
  (`not desirable` / `not worth while`).
- **Constants set inside the loop.** A constant the original holds in a
  saved register across the loop (`-1`, `1`, `0xFF`) is one GCC hoisted
  out of it. Written as a literal it may stay in the loop, or be hoisted
  later than the original's; as a local set at the top of the body
  (`s8 none = -1;`, `int bit = 1;`, `u8 end = 0xFF;`) it's hoisted
  first, before the addresses, in the original's order
  (`func_80011960`, `func_80011A68`, `func_80012D38`, `func_80012E58`).
  Its type matters: the chain's terminator compared with a `u8` note
  field only matched as `u8 end` (`func_80012E58`). chunk_20's
  `func_8003AC94` passes 1 and -1 to a call in a loop from saved
  registers: `int one = 1; int none = -1;` at the top of the body.
- **An element's address once.** Where the original computes
  `&slot->voices[n]` once, uses it twice and passes it on, write it so:
  `sv = &slot->voices[n]; sv[0].unk1 = x; sv[1].unk1 = x; f(..., sv);`
  (`func_80012C18`, `func_80012D38`).
- **The step's order.** A loop over the bikes with a pointer and a count
  increments the pointers first: `for (i = 0; i < 5; b++, i++)`;
  `i++, b++` put the count's `addiu` first (chunk_33's `func_80055410`).
- **A count and an end per loop.** chunk_33's `func_800550C0` counts
  over the same five bikes twice; with one count and one end pointer for
  both loops, the first loop's two registers swapped; with a second
  count and a second end they took the original's (the function matched
  with the constant below).
- **Two counts through an inline function.** chunk_37's
  `func_8005B788` counts the same bikes twice, by kind, and copies each
  count out of one register: an inline function taking the run and the
  kind, called with `o->m_378` each time, matched.
- **Count-down copies behind a test.** The same function copies with a
  count going down to 0 behind a `blez`: `if (n > 0) do { ... } while
  (--n);`. `for (k = 0; k < n; k++)` kept the count going up (`slt`). Its
  last loop, a `blez` on `4 - n` and a `bgez` at the bottom, is `k = 4 -
  n; if (k > 0) do { ... } while (--k >= 0);`.
- **A loop counter of its own.** A counter later reused for something
  else (a call's result) swapped a loop's two registers; a separate
  variable matched (chunk_37's `func_8005B8D0`).

### Temporaries and folding

- **A constant multiply spelled so GCC expands it the original's way.**
  `(x << 13) + (x << 12)` in the original is `x * 0x3000`, but GCC
  expands `x * 0x3000` as `(x * 3) << 12` and the two written shifts pick
  other registers. `(x << 12) * 3` gives the original's code (chunk_02b's
  `func_80016A8C`, 20 off to 0): the `* 3` expanded as a shift and an add
  of the shifted value.
- **A constant loaded twice: the store last.** When the original loads the
  same constant twice, once for a field and once for the result
  (`addiu $v1, 1` for `t->m_08 = 1`, then `addiu $v0, 1` to return 1), the
  field's store is the function's last statement: stored earlier, GCC
  shares one register between them. chunk_45's `func_8006C094` (22 off to
  0, with the other stores in the original's order too).
- **One variable for two values in turn.** When the original keeps a
  call's result where it was computed and puts the next sum in another
  temporary, the source may reuse one variable for two values one after the
  other (chunk_15's `func_8003031C`: `l = f() >> 3; if (l + 0x80 < a) { l =
  g(); ...`); with two variables the sum reused the first value's register.
- **A flag as a conditional expression.** chunk_13's `func_8002CED4`
  matched with `big = l ? (f || l > len + 0x2000) : 0;` where `l && (...)`
  and `if`s gave the length and the flag each other's temporaries.
- **Packed fields read in the original's order.** When the original
  extracts bitfields of one word in an order other than the one it stores
  them in (chunk_62's coordinates: y, z, then x, stored x, y, z), read them
  into locals in that order first (`y = q.m_y; z = q.m_z; x = q.m_x;`),
  then store; written as three `d->vx = q.m_x << 2` statements GCC
  extracts them in store order.
- **Which factor carries the shift.** chunk_65's `func_80093C80`
  multiplies `t` by `a` doubled, the shift on `a` (`sll $a1, $a1, 1;
  mult $a2, $a1`): `t * (a << 1)` gave it; GCC moved the `* 2` of `t *
  (a * 2)` onto `t`.

- **A vector operator: read, then operate in place.** chunk_68's
  `v += a` and `d = a - b` load the first operand's three fields, then
  the second's, before any arithmetic. That's `x = a->vx; y = a->vy; z =
  a->vz; x -= b->vx; ...` and then the stores; `d->vx = a->vx - b->vx`
  interleaves the loads, and six locals take other registers. On
  `SVECTOR`s the locals are `int`, not `short` (`func_80099EBC`).
- **A pointer variable stops constant folding.** `base + (a * 0x200 +
  0x820)` assigned to a pointer variable keeps `0x820` added to the
  index; inline, GCC folds it into the load's offset (`0x82C(...)`). Then
  `t += i; return t->field;` (rather than `t[i].field`) adds the index
  into the pointer's register (`func_80011898`).
- **A block-local temporary keeps a subexpression apart.** `LoadFile`'s
  `{ u32 margin = size - 0x1400; d = dest + ((unpacked - margin) & ~3); }`:
  written inline, GCC reassociates it to `unpacked + 0x1400 - size`; the
  same temporary as a function-wide variable changed the frame.
- **Which quotient first.** For `ratan2((z << 12) / len, (x << 12) / len)`
  GCC divides `z` first; the original divides `x` first. Assigning that
  one to a variable before the call orders them: `x = (x << 12) / len;
  angle = ratan2((z << 12) / len, x) - 0x400;` (`func_80013450`,
  `func_8001280C`).
- **Keeping a sum apart from a call's result.** `f() - (angle + 0x400)`
  is reassociated to `f() - 0x400 - angle`; the original adds first and
  subtracts after the call, which `-(angle + 0x400) + f()` gives
  (`func_8001280C`).
- **An inline that takes the struct.** `w->emitters[i].flags &= ~1` folds
  the field's offset into the emitter's (`0x21C`); the original computes
  the emitter's address (`0x20C`) and reads the field through it, which an
  inline taking the emitter gives (`ClearEmitterFlags`, `func_80014130`).
- **Read the field into a local first.** A flag word updated by a
  condition, `f = e->flags; if (c) f |= X; else f &= ~X; e->flags = f;`,
  loads once before the test where the inline form loads in each branch
  (`Changed()` in `lib/sound` chunk_01; `func_80014188` with
  `old = e->flags`).
- **An inline function and egcs's global CSE.** 2.91.66 runs a global
  CSE with partial redundancy elimination (`-fgcse`): a field read before
  a branch and again after it can be loaded once before the branch and
  reloaded only in the branch that makes a call. `func_80016A8C` reads
  `m_3C` that way when the distance is an inline function (`CameraLod`)
  and the caller tests `o->m_3C` before and after; written in place, the
  load wasn't shared. The inline's result went through one more register
  in the original: `d = n >= 2 ? CameraLod(&pos) : 0; lod = d;` (found by
  the permuter).
- **A multiplication written as shifts.** `x * 0x3000` is `(x * 3) << 12`
  to GCC; the original's `(x << 12) + (x << 13)` (and `<< 14`, `<< 15`
  for `0xC000`) is written so (`func_80016A8C`, `func_80016C3C`).
- **A `mult` by a constant: the constant in a local.** chunk_33's
  `func_800547FC` multiplies by 0xB33 with `li` and `mult`; `x * 0xB33`
  became shifts and adds, `sc = 0xB33; ... x * sc` a `mult` (the function
  is parked for its registers).
- **A constant compared in a loop.** chunk_33's `func_800550C0` loads the
  1 its loop compares with before zeroing the count; `one = 1;` written
  there and compared with (`== one`) matched, a literal 1 was loaded after
  (the permuter).
- **`do { } while (0)` around statements.** Twice the permuter's whole
  fix: around `i = 0` before a loop (`func_80017FB4`, its order against
  the loads) and around a loop's body (`func_8001865C`, its registers: the
  statements inside count as one loop deeper). chunk_39 has two more:
  around a search loop written with `goto`s (`func_8005F4A4`), where it
  keeps the counter live on the found path (GCC then undoes the `i--` it
  took into a delay slot, as the original does), and around a whole
  function's body (`func_80060668`, its registers). chunk_29's
  `func_8004C9D0` has one around its last `if`/`else`. chunk_33's
  `func_800542A4` has one around a loop body's first three statements (a
  vector copied to the stack, a store, a call taking the copy): without
  it, the copy's address was hoisted out of the loop and kept on the
  stack; an inline function in their place didn't help. A workaround; say
  so at the use.
- **A second pointer against cross-jumping.** Two identical statement
  runs that end at the same label are merged into one; the original's
  separate copies came from a second pointer for the loop
  (`func_80017E64`).
- **A value tested twice, a field read again.** `func_800194E4` keeps the
  prim in `$a0` and a copy in `$a2` for its second call: `page = prim[1];
  if (o->m_page) page = o->m_page ? o->m_page : prim[1];` and the calls
  taking `o->m_prim` again, not `prim` (found by the permuter; each half
  alone doesn't). The same brought `func_80016C3C` from 94 to 42.
- **An inline is inlined only after its definition.** Used before it's
  defined, GCC calls it (`VecZero`, `func_8001B84C`): define inlines at
  the top of the file.
- **Chained assignments store the innermost first.** `a = b = -1` stores
  `b`, then `a` (`func_8001D108`).
- **Through an inline function.** A value returned by an inline function
  can survive where the same constant written inline is folded: in
  `func_80012F7C`, `ClearFlags(&f, 1)` keeps `~1` in a register as the
  original does, where `f &= ~1` becomes `andi 0xFFFE` (found by the
  permuter; that function still doesn't match otherwise).

- **How a subtraction is associated.** `x - 10 - y` folds to
  `x - (y + 10)`; `x - (10 + y)` gives the original's `addiu -10`, `subu`
  (`func_8006B3B0`).
- **A parameter reused.** `n = 32 - n; return (int)(v << n) >> n;` puts
  the shift in the parameter's register, as chunk_66's bit stream does
  (`func_80096B74`).
- **An offset folded into the load.** `(&a[i])[1]` loads at `a + 4*i + 4`
  with the 4 in the offset; `a[i + 1]` computes `i + 1` first
  (`func_8006C4A0`).

### Pointers and locals

- **A global read once for two tests.** chunk_32's `func_80053250`
  compares `D_800D49A4` with 1, then the player with the same value
  after a call: `(m = D_800D49A4) == 1` and `i == m`, `m` a local of its
  own (reusing another local changed the registers throughout).
- **Elements through the array, not a local pointer.** The same
  function's loop over three cameras reads each as `o->m_3B8[k].f`
  (`addu $a1, $s0, $v0`, offset first); a local `Cam32 *c =
  &o->m_3B8[k];` swapped the `addu`'s operands.

- **A pointer to a field's array walks the loop.** `int *sel =
  m->m_A9C->m_08.m_18;` before a loop and `sel[i]` inside it gives the
  original's pointer to `+0x20`, kept in a register and stepped by 4;
  the struct pointer kept instead (`src->m_08.m_18[i]`) was spilled and
  indexed each time (chunk_68's `func_8009A0B0`).
- **Through the struct, not a pointer to its array.** `func_8009A524`
  computes `d + 0x114` in both branches and indexes it; a local `int *p =
  d->m_114` gave the same address with the operands of one `addu`
  swapped, and writing `d->m_114[i]` everywhere matched (found by the
  permuter).
  chunk_20's `func_8003B248` too: a local `e = &s->m_40[i]` swapped the
  operands of the element's `addu`; `s->m_40[i].m_04[0]` and the others
  written out matched.
- **Take a pointer before the null check.** `OpenArchive`'s
  `e = arc->entries;` before `if (arc)`: GCC computes it in the delay
  slot of the check, as the original does.
- **A string's address before a call.** chunk_70's `func_8009D1F8` keeps
  a string's address in `$s0` across the call that makes the first
  argument of the next call: `char *s = D_800C94DC; int h = f(...);` then
  `g(h, s, ...)`. Nested (`g(f(...), D_800C94DC, ...)`), GCC computes the
  address after the call.
- **A local cleared, filled, and copied.** chunk_70's `func_8009D410`
  fills a table of 15 name and value pairs, each through one local:
  `memset(&e, 0, sizeof(e)); e.m_00 = name; e.m_04 = v; table[i] = e;`
  (the copy through the stack). A constructor taking the two values
  loaded them before the `memset`.
- **Pointers into a table, read again on return.** chunk_74's `stricmp`
  folds both characters through a table and, when they differ, loads both
  again for the result: `x = &T[c]; y = &T[*b++]; if (*x != *y) return *x
  - *y;`. Its `strnicmp` matched only with the character a `short` (the
  permuter).
- **A table's address after its index.** chunk_47's tables are read with
  the index's shift before the address's `lui`. That's GCC with the
  address as one `la` (`-mno-split-addresses` code), which this chunk
  isn't; here it came from declaring the table a scalar (`extern short
  D_800C7F18;`) and indexing by bytes (`*(short *)((u8 *)&D_800C7F18 +
  (i << 1))`). The same scalar declarations put two vtables' and an
  array's addresses in the registers the original loads them into
  (`func_8006F7D4`, `func_8006FB74`). chunk_37's tables too:
  `(&D_800D5F70)[n++]` (`func_8005B788`), and, in a product, only by
  bytes after the other factor: `o->m_3C4.pad * *(int *)((u8
  *)&D_800CB400 + (i << 2))` (`func_8005C128`).
- **Why the scalar declaration works: the object's size.** With split
  addresses, GCC splits the address of a global bigger than 8 bytes
  (`lui` into a temporary, `addiu` into the target, each free to move).
  For a global of 8 bytes or less, a small-data candidate under `-G8`,
  it emits the `la` macro: both halves in the target register, together,
  and never in a delay slot (a `jal` then a `nop`, with the pair just
  before it, is the sign). A big object loaded that way is declared as
  an `int` and cast where used (chunk_28's static objects and save
  blocks).
- **Tables named for their last entry.** chunk_31 walks the five bikes
  from the last, and the tables beside them too, so splat named those
  tables for the fifth entry (three fields of one 8-byte table:
  `D_800D5E68`, `D_800D5E69`, `D_800D5E6C`). Declared scalars and indexed
  from there, `(&D_800D5E69)[i - 4]`, they give the original's pointers,
  starting at the symbol and stepped down (`func_800507B0`).
- **Addresses of locals in pointer variables.** chunk_31's
  `func_8004F83C` passes four local vectors' addresses to calls. The
  original keeps them in saved registers, set before the calls that need
  them; `Vec31 *pn = &n;` (and `pa`, `pb` set together before the dot
  product's call) matched. The permuter found it.
- **A table read through an inline.** `func_80070C10` reads the sine and
  cosine of one angle and computes the entry's address twice (`t + i`, `i
  + t`); the permuter found an inline (`Sin47(a)`, `Cos47(a)`) gives that.
  Read straight into two locals, `int s = T[i].m_02; int c = T[i].m_00;`,
  matched `func_80070CCC`, where both use one address.
- **Block-local structs share a stack slot.** `func_80070140` zeroes a
  vector and an `SVECTOR` in the same 8 bytes of stack: two blocks, each
  with its own local.
- **An object's member each time, not a local.** The same function passes
  `o->m_08` (the bit stream) to every call; a local copy put one call's
  argument in another register (found by the permuter).
- **A pointer to a local.** `CdlFILE *fp = &file;` passed to
  `CdSearchFile` keeps `&file` in a saved register (`OpenArchive`). The
  same for an address the original computes once, early, and keeps:
  `facing = &l->unk14;` before the call that comes between
  (`func_8001355C`), `pv = &v;` before the first call (`func_8001363C`,
  found by the permuter), `p = &d` for a vector filled and then passed
  (`func_8001280C`).
- **Initialise after the call.** Locals the original sets to 0 only
  after a call (in caller-saved registers) are assigned there, not in
  their declaration, which would keep them in saved registers across it
  (`func_80011BA4`). And the other way round: a result counter the
  original zeroes before a call is declared before it, `int n = 0;
  SoundSlot *slot = f(handle);` (`func_80012C18`), and a result set to 0
  at its declaration stays in a saved register across a call where `r = 0`
  after it doesn't (`func_80014724`).
- **Declaration order sets stack slots.** GCC 2.91.66 gives locals stack
  slots in their declaration order, so two locals swapped in the frame are
  declared the other way round: `func_800167F8`'s `b`, then `a`.
- **Locals in separate blocks share slots.** Variables declared in two
  sibling blocks can get the same stack slot; the original's frame shows
  where: `func_80016E34`'s matrix and its two vectors, both at `0x10`.
  Declared at function level they need a bigger frame.
- **`new[]` and `delete` in C++ chunks.** An empty loop counting down to
  -1 after `__builtin_vec_new` is GCC's loop over the elements for an
  empty constructor: give the class one (`Buf63() {}`, chunk_63's
  `func_80090AB8`). A test for 0 before `__builtin_delete` is in the
  source for a struct without a destructor: `if (s) { delete s; }`
  (`func_80090B80`).
- **A post-increment tested as a byte.** An `lbu`, the `+ 1` stored, and
  the old value masked with `andi 0xFF` before its compare is a
  post-increment tested unsigned: `(u8)b->m_40++ < 7` (chunk_34's
  `func_80056F64`); with the old value in a `u8` local the mask goes.
- **One result, one exit.** When the original keeps a function's result
  in a saved register across calls and returns it from one place, write
  it with one `int r` and nested `if`s, not early returns (chunk_34's
  `func_80056CD4`).
- **Declare what a callee returns.** A call whose result is unused still
  changes the code around it with the callee's declared return type:
  chunk_18's `func_80036850` matched only with `func_8001B350` declared
  `int` (it returns `$s2` in `$v0`), and chunk_42's `func_80067230` only
  with `func_80099898` declared `void`, as `include/langimg/cobjet.h` has
  it, not returning a pointer (the permuter's find). Check the callee's
  last instructions before trusting either. The original's callers didn't
  always see the definition's type: chunk_12's `func_8002A3F0` matched only
  calling `func_800998D0` (which returns its first argument) as `void`.
  When the shared header or the definition can't change, declare a `void`
  alias of the same symbol for that file, `void func_800998D0_void(...)
  __asm__("func_800998D0");`, and call that.
  An `int` return also moves the registers right after the call even
  when unused: chunk_70's `func_8009EAEC` takes `$v1` (not `$v0`) for the
  values loaded after its `printf` (`func_800A5DA4`) and chunk_73's
  `func_800A4384`, `func_800A442C` and `func_800A444C`, all `int`; declared
  `void` it was 16 off. The C-defined vector helpers count too:
  chunk_68's `func_800997D0` (`v += a`) returns `v` and chunk_67's
  `func_80098768` returns its output (`addu $v0, $a2, $zero`); chunk_41
  had both `void`, and declared as they are `func_800643E4` and
  `func_800650F8` matched (a constant the original keeps in `$v1` was in
  `$v0`). A sweep of a chunk's `void` prototypes against the C
  definitions' return types finds these.
- **Declare what a callee takes.** As with return types, a prototype
  with the wrong number of arguments changes the caller: chunk_25 passed
  `k` to `func_8001687C`, which takes nothing (chunk_02b's definition),
  and kept `k` in another register for it; declared as defined,
  `func_80044D0C` matched. And when a library function's real prototype
  returns something the original's didn't (`memcpy`), a second declaration
  returning `void` with an asm label (`void memcpy20(...)
  asm("memcpy");`) calls the same symbol (chunk_20's `func_8003B51C`).
- **An index as a byte offset.** An `addu` whose operands come out the
  other way round (the array's address second) is an index scaled by hand:
  `*(int *)((char *)q + (n << 2))` (chunk_25's `func_80045168`, chunk_04's
  `func_8001983C`).
- **Two locals in one stack slot: a union.** When the original writes a
  value of one type over a slot it just used for another (a vector, then
  a short vector read back), declare the two as a union, before the
  locals that come after them in the frame (chunk_30's `func_8004EE10`).
- **Arguments passed through.** A function that keeps a register it never
  sets (the original uses `$a3` for its object where yours uses `$a2`) may
  take an argument it only passes on: chunk_44's `func_8006A1B4(o, a)` hands
  `a` to its virtual call, and `func_8006A848` passes its own on to it.
- **Copy a parameter into a local.** Two saved registers swapped between an
  argument and a local can come back with `T *o = o_p;` at the top
  (chunk_35's `func_800591D4`, chunk_45's `func_8006B9F8`).
- **A constant argument through an inline function.** When the original
  loads a comparison's constant before the loop's other values, the loop
  may be an inline function taking it as an argument (chunk_31's
  `Count31(r, 1)`).
- **An index's byte offset added to the base.** `(T *)((i * 5 << 4) + (u8
  *)base)` (chunk_44) or `((j << 5) + (u8 *)row)` (chunk_41) where `base[i]`
  adds the other way round.
- **Unsized symbols for block copies.** A short string or struct copied
  from the data through a register (`lui`/`addiu` into `$t3`, then
  `lwl`/`lh`/`lb` from it) is a symbol declared without a size: with one
  (`extern short D[2];`), GCC loads straight from the symbol instead.
  chunk_56's `func_80082904`, `func_80082A8C` and `func_80082DE4` matched
  with `extern short D_800C8AC0[];`.
- **A chunk without split addresses.** When a function's addresses are
  `la`s the scheduler never moves (`lui` and `addiu` together, never in a
  delay slot), try `--cflags=-mno-split-addresses` in `tools/try_func.py`;
  if every matched function of the chunk survives it, set it in the
  chunk's `_CFLAGS` (chunk_54). Where one function needs split addresses
  (a `lui` in a delay slot), the chunk can't take it (chunk_58, 71, 72).
- **One variable for a run of constant stores.** When the original loads
  each constant into the same register just before its store (`li $v0, 6;
  sw; li $v0, 14; sw; ...`), and GCC loads the next one early into another,
  store them through one variable reassigned each time (`v = 6; o->a = v;
  v = 14; o->b = v;`): its reassignments keep the scheduler from hoisting
  the next load (chunk_51's `func_80079124`).
- **`delete[]`, not `__builtin_vec_delete`.** Freeing arrays one after
  another, chunk_28's `func_800497AC` matched with `delete[] (u8 *)p`;
  calling `__builtin_vec_delete(p)` directly put the reloaded pointer
  after each call in `$v1` instead of `$v0`.
- **A retry as a `goto`, with the label's first statement in the jump's
  delay slot.** When the original jumps back to the top of a block with a
  `j` whose delay slot repeats the block's first instruction (and the
  same instruction also comes just before the block), the source is a
  label and a `goto`, with that instruction as the label's first
  statement: `reorg` copies it into the backward jump's delay slot and
  retargets the jump after it. As a `for (;;)` GCC hoisted addresses out
  of the loop instead (chunk_38's `func_8005EE48`, `top: pa = &a;`).
- **A store that makes GCC read a global again.** GCC 2.91.66 doesn't
  think a store to a struct field can change a plain scalar global, so it
  reuses a global's loaded value across such stores; after stores through
  a plain `int *` it reads the global again. When the original reloads a global
  right after copying it somewhere, write the copy's destination as an
  `int *`: chunk_61's `func_8008BCB0` copies the camera's position
  (three small words) into the camera through `int *` and then reloads
  them as the original does.
- **Loads into locals, then the sums, for a call's arguments.** When the
  original loads all of a call's operands (three angles and a pointer)
  before adding them, write the loads as locals and the sums as `+=`
  statements before the call; summed inside the argument list, GCC loaded
  the pointer first and the angles into other registers (chunk_64's
  `func_800910EC`, from 6 off to 0).
- **Unused locals.** A frame bigger than its variables need means the
  original had locals the optimiser dropped: `int unused[6];` gives
  `func_8001184C`'s 0x30-byte frame.
- **The base re-read inside the loop.** When a loop's test uses a field
  of the object it walks (`r->m_1E38`) and the original keeps a second
  copy of the base in another register, read it again through its owner
  in the loop (`o->m_378->m_1E38`): GCC copies the base once before the
  loop for it. With the local, the loop came out 4 off (chunk_36's
  `func_80059BE8`, the permuter's find).
- **A literal address** for something at a fixed address: the boot
  executable jumps to the game's entry point through
  `(*(void (**)(void))0x800117F0)` (`GAME_ENTRY`); through a declared
  symbol GCC loads it into another register (`main`). The bytes are the
  same either way.

### Struct copies

A struct whose members are all shorts and bytes is 2-aligned, and GCC
copies it with `lwl`/`lwr` pairs; the original's `lw`/`sw` copy means an
`int` member that aligns it (`RangeDef`, `func_80019F0C`).

A block copy into a global whose destination address the original takes
first (its `lui` in the test's delay slot, the destination in the lower
register of the copy loop) goes through a pointer to the destination taken
before the copy: `Set38 *d = &D_800C71C4; *d = pick->m_08;` (chunk_38's
`func_8005F0D4`). Assigned directly, GCC took the source's address first and
the loop's two pointers came out swapped.

A struct assignment (`*d = *s`) copies a 12-byte vector with GCC's block
move: the source's address in a register, the words through other
registers than the original's. The sound engine's copies load the three
words into locals and store them, which an inline function gives:
`CopyVector(dst, src)` in `lib/sound/include/sound.h` (`func_80013450`,
`func_8001363C`). libgte's `copyVector` macro shape and field-by-field
assignments were further off.

A 2-aligned struct copied with `lw`/`sw` can also be copied through a
cast to a struct of three `int`s, when nothing else about the struct
says it held one (`Words3`, chunk_45's `func_8006C330`).

A 12-byte string copied from the data matched as a `memcpy` from the
string's symbol (chunk_29's `func_8004B96C`, `"Data\Final\"`): GCC's
block move keeps both addresses in registers when they're symbols. The
buffer had to be a scalar (`extern char D_800D4798;`) with its address
taken into a local before the copy, the `memcpy` naming the symbol.

A vector copied with its first load folded and the next two through an
address register (`lw 0x64($v1)`, then `addiu $v0, $v1, 0x64; lw
0x4($v0)`) is an inline that reads all three fields before storing them,
called with the fields' addresses: `VecCopyL(&d->v, &s->v)` (chunk_41's
`func_80063848`, chunk_31's `func_8005148C` and `func_800508B4`; chunk_32's
`func_80051618` stores each field as it reads it). Struct
assignment, `memcpy` and pointer locals fold every offset. When the
stores go through a matrix's address with the translation's offset
(`sw 0x14($a1)`), the inline takes the matrix (`SetTrans(&m, &p->v)`,
chunk_31's `func_8004F6C8`).

Short string copies whose source is a string in the data (`" Laps"`,
`" Lap"`, chunk_56's `func_80082904`) are likely `strcpy`s of literals,
turned into block moves: the address goes through `$v0` into a saved
register. A `memcpy` from the data's symbol (declared `short`, for the
alignment) gets the right loads and stores, but its address loaded
whole; the literals themselves would be the chunk's own data, which the
build doesn't place yet. Two functions stay parked on it.

An `int` field stored into a `short` can be loaded with `lhu`: GCC
narrows the load (chunk_66's `func_8009574C`). An `lhu` doesn't by itself
mean a `short` field.

### Types

- **`char` is unsigned here; a `lb` means `s8`.** chunk_74's `strupr`,
  `strlwr` and `sprintf` test each character with `lb`: the strings are
  `s8 *`. Declared `char *`, GCC loads with `lbu`.
- **Masks that store twice.** chunk_74's `func_800A57E4` clears a word's
  low 30 bits and then sets bit 30, storing after each: `w &= 0xC0000000;
  ...; w |= 0x40000000;` (GCC 2.x keeps the dead first store). The same
  two writes as bitfields became one constant store.
- **`xori` and `bnez`: a comparison as a value.** `if (x == 8)` gives
  `li` and `bne`; the original's `xori $v0, $v0, 8; bnez` is the
  comparison computed as a value first, in a local or returned by an
  inline function (chunk_27's `func_80048CFC`).
- **A bitfield word stored twice.** chunk_59's `func_8008784C` stores
  its bitfield word after setting a 12-bit field and again after clearing
  the next two. Written together, GCC merged them into one store; with
  the 12-bit field set first and three other fields stored between, the
  two stores stayed apart.
- **Two masks applied one after the other: bitfields.** chunk_70's
  `func_8009D0E4` sets a word with `and 0xFFF0FFFF; and 0xFFCFFFFF; or
  0x100000`. Written with masks, GCC folds the two `and`s; as bitfields
  (`m_state : 4` at bit 16, `m_mode : 2` at bit 20), each assignment keeps
  its own. An anonymous union with the word keeps the other functions'
  `int` uses as they were.
- **Flags cleared one `and` at a time.** chunk_32's `func_80053250`
  clears a short's flags with an `and` per bit (`-2` then `-3`) and sets
  them with one `ori`: read into an `int` (`lh`), `f &= ~1; f &= ~2;`
  kept the two `and`s. As bitfields GCC merged the clears into one
  `andi`; in a `short` local the last clear went through `sll`/`sra`.
- **Narrow parameters are extended by the callee.** A `char` or `short`
  parameter gets an `sll`/`sra` (or `andi`) at the start of the function;
  if the original has none, the parameter is an `int`, even when only its
  low byte is used (`func_80012120`, `func_800133A0`, `func_80012FEC`).

- **`s8` where the original loads with `lb`.** Plain `char` is unsigned
  in these builds (see above), so a status array read with `lb` is
  `s8 status[24]` (`func_80011BA4`; the libspu call takes `char *`).
- **A branchless `abs`.** `abs()` compiles to `bgez`/`negu`; the sound
  engine's `|x|` is `sra`, `xor`, `subu`: `ABS(x)` in
  `lib/sound/include/sound.h`, `((x) ^ ((x) >> 31)) - ((x) >> 31)`
  (`func_80012504`).
- **Bitfields as the original reads them.** A signed bitfield compared
  with -1 is a mask test (`(x & 0xFFF000) == 0xFFF000`), and one read as a
  value is `sll`/`sra` (`SeqEntry`, `func_80019578`). Tested in place
  (`if (s->m_state)`) GCC makes it an `andi`; read into a local first
  (`int st = s->m_state; if (st)`) it extracts with shifts and tests that,
  as the original does (`func_80019E30`, `func_8001983C`;
  `func_80017B88` still has the shifts written by hand).
- **Signed compares need signed types.** `slti` vs `sltiu`: the movie
  loop's frame counter is compared as `(int)D_8014D0D4 > 60`.
- **A struct for data read from a file.** The movie loop reads the DPS
  header through a `DPSHEADER *` (`hdr->width`), which the original keeps
  in a register; as an array of halfwords it didn't.

- **Two bitfield tests merged.** chunk_33's `func_800550C0` counts the
  bikes with bit 6 set and a signed 5-bit field (bits 1-5) equal to 1.
  As bitfields, GCC merged the two tests into one masked compare (`andi
  0x7E`, `== 0x42`) and, tested apart, compared the field as `andi 0x3E`;
  the original extracts each (`srl`/`andi`, `sll`/`sra`). Written as
  shifts, `(x >> 6) & 1` and `(int)(x << 26) >> 27 == 1`, it matched.
- **`&= 1` on an `int` flag.** chunk_33's `func_80053BF8` masks a 0-or-1
  flag with `andi 1` before clearing it: `int test; ... test &= 1;`
  matched, a `bool` didn't.
- **Bitfields for a global's bits.** `x &= ~2` and a bitfield store
  `x.m_b1 = 0` give the same instructions scheduled differently
  (`func_8006BF4C`); packing values with bitfield stores (`func_8006BD78`)
  likewise.

## Calls and declarations

- **Declarations matter, not only code.** The boot executable was built
  against declarations where `free()`, `DecDCToutCallback()` and the heap
  allocator return `int`. With `void` (or pointer) returns, the registers
  right after the call come out differently, even when the result isn't
  used. When a register differs right after a call, try an `int` return
  on the callee first.
  chunk_38's `func_8005E2A8` matched once `func_8006C694` was declared
  with chunk_45's `int` return, not `void`. The callee's own definition
  also gives its parameters: `func_8006C094` and `func_8006976C` take a
  third argument, which explained registers the original kept free
  (`func_8005DF6C` passes its own `$a1` and `$a2` on). chunk_32's
  `func_80053198` keeps its second argument in `$a3` from the start: it
  is the fourth argument of chunk_56's `func_8008280C`.
- **No return statement.** A function called for its result whose
  original leaves in `$v0` what its own callee returned, with no copy:
  its source had no `return` (GCC 2.9x accepts that in a non-void
  function). `func_800147C8` (`short`, ends with the store of its
  callee's result) and the sound engine's `func_8001355C`, whose caller
  `func_80013764` reads the volume it computed. Written with `return n;`
  GCC copies the value to another register first.
- **`volatile` for state an interrupt changes.** Read again for every
  test, and its stores kept out of delay slots: the CD player's state
  (`func_800154D4`, whose first read and loop reads are separate) and
  `D_800B8778` (`func_80015200`, the store before `jr` with a `nop` in
  the slot).
- **Another file's prototype.** A caller can extend arguments a way the
  callee's own declaration doesn't explain: `func_800153FC` passes `short`s
  (`sll`/`sra` by 16) to `func_80011820`, which takes `s8`s. That file
  had another declaration; call through a cast to that type
  (`SET_CD_VOLUME` in `lib/cdaudio`).
- **A callee declared `void` that returns something.** `func_8001363C`
  only matches with `func_80099DCC` (a vector shift) declared `void`,
  although it returns its destination: with a pointer return the copy
  after the call gets other registers. The original's header declared it
  so; keep such a declaration where the caller needs it, with a comment.
- **Arguments passed through.** A function that seems to take nothing may
  pass its own argument on: `func_80012F40` calls `func_80013348` with
  `$a0` untouched, so it takes the handle and passes it. Written without
  parameters it can even match, and is wrong.
- **A varargs argument copied.** chunk_66's `func_80096D84` keeps its
  last named argument in its slot and a copy in a register: `int w = n;`
  then `w = va_arg(ap, int);`.
- **Variadic functions, PsyQ's way.** `include/stdarg.h` is PsyQ's:
  `va_start` takes the address of the last named argument, which keeps
  the named arguments in their stack slots as the original does. GCC's own
  (`__builtin_next_arg`) didn't (`func_80016144`).
- **A function may take more than its body uses.** `CName::Equals`
  matched with one parameter, but it passes `$a2` and `$a3` on to its
  callee untouched, and a caller sets both: its real signature has them
  (`Equals(const char *, int, int)`). Look at callers before settling a
  signature.
- **Defining a C++ symbol by hand.** A destructor whose class isn't
  written as a class is defined under its mangled name with an `asm`
  label on its declaration: `void CobjetLinkDtor49(Node49 *l, int f)
  asm("_._10CobjetLink");` (chunk_49).
- **Calling a C++ symbol by hand.** A constructor or destructor whose
  class has no name yet is called through an `asm`-labelled declaration,
  `extern void CobjetDtor(Cobjet *, int) asm("_._6Cobjet");` (chunk_03's
  subclasses), and a virtual call through the vtable entry
  (`{ short delta; short index; void (*func)(); }`, `DRAW_SET`).
- **`new T[n]` with an empty constructor.** After `__builtin_vec_new`,
  a loop that counts down to -1 and does nothing is GCC's construction
  of the elements when `T` has a constructor with an empty body
  (chunk_60's `func_80089B6C`, `T36() {}`). With a constructor that does
  something, the loop calls it on each element: `i = n - 1; if (i >= 0)
  do { ctor(p++); } while (--i != -1);` (chunk_44's `func_8006A534`).
- **Inline constructors and destructors for calls by placeholder
  name.** chunk_59 calls `func_800893C8` before each `__builtin_delete`
  of a tile, and runs a loop from the end of an array of tiles (the count
  from the cookie at -8) before `__builtin_vec_delete`. A `Tile59` with
  `~Tile59() { func_800893C8(this); }` and a constructor calling
  `func_80095684(this)`, both inline, gives plain `delete`, `delete[]`
  and `new Tile59` exactly; a member with an inline constructor of its
  own runs first, as the original's field stores do (`func_80088AA8`,
  `func_80088BBC`).
- **`operator new` for a `new` without a constructor call.** chunk_56's
  `func_800816F8` calls `__builtin_new` and passes the result to the
  constructor (`func_8008142C`, a `memset`): `func_8008142C(operator
  new(0x30))`. `new u8[0x30]` calls `__builtin_vec_new` instead, which
  `tools/try_func.py` doesn't see (below).
- **A virtual call through a `void` function.** When the result isn't
  used, a cast to a function returning `void` gives other registers than
  one returning `int` (chunk_45's `VCALLV`).
- **`$v1` where you have `$v0`, before any call: the callee returns
  something.** chunk_70's `func_8009DDA8`, `func_8009E0E8` and
  `func_8009DF90` (and chunk_71's `func_8009F180`) loaded a pointer into
  `$v1` and matched once a callee declared `void` was declared `int`:
  `func_800A41BC` and `func_800A4284` end with a value in `$v0`,
  `func_8009D830` returns 0, and `func_8003CC78` returns its second
  argument. Read the callee's last instructions; the permuter finds it too
  (it varies declarations' return types).
- **A library call's result returned.** `func_8009E01C` keeps `$v0` free
  after its `memcpy` and matches returning the copy's result: `r =
  memcpy(...); ...; return r;`.
- **And the other way: `void` where the callee returns something.**
  chunk_68's vector functions return their destination, but chunk_47's
  callers matched with them declared `void`.
- **A virtual call's arguments and result.** chunk_74's `func_800A6650`
  makes two calls through the vtable: one passes only `this` (cast to a
  one-argument function) and both are declared returning `int`; with
  `void`, `$v0` and `$v1` swap.
- **The callee's result returned.** A function whose own arithmetic
  avoids `$v0` after a call returns that call's result
  (`func_8006C110`).
- **C linkage for placeholder names.** A function in a `.cpp` chunk whose
  real name isn't known is declared `extern "C"` (`lib/sound/include/sound.h`),
  so its symbol is the plain `func_XXXXXXXX` the asm calls.

## Register allocation

What's left once the instructions are right is usually register choice.

### Saved register order

Which value lives across calls in `$s0`, `$s1`, ... is global-alloc's
priority order (gcc 2.x `global.c`): the values are sorted by
`floor_log2(refs) * refs / live_length` and the highest gets the lowest
free register (`$s0` first, `$fp` last). Measured on small test functions
compiled with the chunks' own cc1plus flags:

- **More references win.** A reference is every read and write of the
  value (its definition counts), weighted by loop depth: one read inside a
  loop counts about as much as two outside. One extra use flips a pair
  with equal live ranges (`f(x); f(x);` puts `x` in `$s0` over `y`).
- **A shorter live range wins.** Of two call results used the same number
  of times, the one defined later gets `$s0`, whatever the order they're
  used in; of two parameters (both live from the entry), the one whose
  last use comes first gets `$s0`. Defining a value later (reading a field
  into its local just before it's needed rather than at the top) moves it
  up.
- **Ties go to the value born later.** Two parameters used together in
  one expression: the second parameter gets `$s0`.
- **No effect:** declaration order alone, `register`, an inner block
  around the declaration, or a copy into a local that GCC coalesces away
  (`int c = a;` with `a` dead after it).
- **One variable doing two jobs is one long, low-priority value.** chunk_20's
  `func_8003A9F4` used `v` both for the value passed to a call (0 or -1)
  and for the result (0, then 1): one value live through the whole
  function, which lost `$s0` to the object pointer. With the passed value
  in its own block-local variable and the result in another, the two are
  short-lived and don't overlap: GCC gives both the same `$s0` and the
  pointer `$s1`, as in the original. When the original reuses one saved
  register for two values whose lives don't overlap, look for two
  variables in the source, not one.

- **A value through an inline accessor is born again.** chunk_15's
  `func_80030AB0` kept its argument and a stack vector's address in
  swapped saved registers until the bike's speed was read through an
  inline function (`int old = Speed15(b);`): the inline's result is a new
  value copied into `old`, which changes the order the values are born
  in and so the ties, without changing a single instruction otherwise.
  Worth trying when the counts look equal and nothing else moves them.

When two saved registers are swapped, count each value's references and
compare their live ranges: the fix is a change that moves one of them, an
extra or a missing use (a field read again through its owner instead of a
local, or the opposite), a definition moved later, or a variable split in
two (or two merged into one).

- Declaration order of locals made no difference to registers in the
  cases tried (`FindEntry`); it does decide their stack slots (above).
- **`MIN` and `MAX` as macros.** chunk_67's per-component minimum
  matched as `a->x = MIN67(a->x, b->x)` with `#define MIN67(a, b) ((a) <
  (b) ? (a) : (b))`; the same written as an `if` swapped the third
  component's registers.
- **Zeroing a vector last field first.** Some constructors clear a
  vector's third field first and its first last, the second and third
  through an address register. An inline that zeroes `z`, `y`, then `x`
  through a pointer matched (chunk_40's `VecZero40`).
- **A table of pairs addressed through two symbols.** When the original
  reads a pair's second field through its own symbol (four bytes after
  the table's), declare both as scalars and index each by the pair:
  `(&D_800C75D4)[i * 2]`, `(&D_800C75D8)[i * 2]` (chunk_40).
- **A gp global's neighbours through its address.** When the original
  stores to a small (gp) global directly but to the words after it
  through its address built with `lui`/`addiu`, take the address into a
  pointer local (`int *w = &X; w[2] = -1;`). The global being small, GCC
  loads its address with an `la` (which maspsx leaves alone) and stores
  through it (chunk_58, chunk_57).
- **`memcpy` inlined or called.** GCC 2.91.66 expands a constant-size
  `memcpy` inline when it knows the destination's type (a `u8 *` here);
  the original's call came with the destination declared `void *`
  (chunk_69, as chunk_70).
- **A bit mask in a local.** `x & (1 << b)` in a test can come out as
  `(x >> b) & 1`; with the mask computed into a local first, it's an
  `and` with the mask. In chunk_61's loop the local had to be declared
  inside the loop's body (GCC still computes it once, before the loop).
- **A constant stored twice from one register.** chunk_17's
  `func_8003491C` stores 0x1000 at the start and again in a branch from
  the same register; `one = 0x1000;` used for both matched, with the
  branch's test also in a local (`z = !b->m_149;`). The scratchpad's
  address works the same way: `u8 *cells = (u8 *)0x1F800004;` kept in a
  saved register, `cells[-4]` for the byte before (`func_80034A38`).
- **The order of statements shows in relocations.** Two increments of gp
  globals the other way round give the same instructions with swapped
  `%gp_rel` relocations: `try_func` passes, `make` fails. Map the
  differing bytes to an address (`0x80011800 + offset - 0x10` for
  `LANGIMG.DAT`) to find the function (chunk_61, chunk_69).
- **A redundant test as its own statement.** GCC simplified `x == 8 ||
  x != 0` to `x != 0`. When the original tests both,
  write them as two `if` statements (chunk_22).
- **A middle class's vtable store kept.** Two stores of the vtable one
  after the other lose the first; put the middle class's own field
  stores between them, as its inlined constructor would (chunk_50).
- **A chained assignment stores the inner one first.** `a = b = x;`
  stores `b`, then `a`. chunk_49's two globals were the other way round
  and the image differed in two bytes `try_func` doesn't compare (they're
  relocations).
- **A chained assignment.** `s = *p = (i << 16) + i;` keeps the value in
  the register the original uses; `s = ...; *p = s;` didn't (chunk_67's
  `func_80098D1C`).
- **A constructor returns `this`.** chunk_41's constructor calls its base
  class's; it matched once the base's was declared returning the object
  (`Obj41 *func_80062E40(Obj41 *o);`), as C++ constructors do (the
  permuter).
- **One address unsplit: declare the symbol small.** When one address is
  an `la` the scheduler leaves alone (its `lui` not moved into a branch's
  delay slot) while the chunk's other addresses are split, declare that
  symbol as an object of 8 bytes or less (`extern int D_800C9364;`, passed
  as `(char *)&D_800C9364`): GCC accesses it `$gp`-relative, and maspsx,
  the symbol not being one of the chunk's small globals, expands that
  into one `la` (chunk_69's `func_8009CF14`, from 86 off to 0 with two
  other changes).
  The same declaration is the fix when a global's address (or a pointer
  global's `lui`) is kept in a saved register across calls or hoisted out
  of a loop where the original builds it again at each use: each use is
  then its own `la` (or `lui`/`lw` for a read), which CSE and loop
  optimisation leave alone. chunk_58's `func_80085258` (2 off to 0),
  chunk_72's `func_800A1B54` (32 to 0: the sounds' data pointer read with
  its own `lui` in the loop), chunk_71's `func_8009FE70` (21 to 12) and
  chunk_57's `func_80084B1C` (142 to 99, the frame back to 0x28). Moving the
  calls into inline helpers doesn't help for a global's address: it is a
  constant to CSE, whatever the call's origin (#289's finding is about
  stack addresses).
- **The other way round: declare it unsized.** A global of 8 bytes or less
  that isn't one of the chunk's small globals is read `$gp`-relative by
  GCC, and maspsx expands that into a `lui` and a `lw` through the same
  register. When the original builds the high half in another register
  (`lui $v1, %hi(D)` then `lw $v0, %lo(D)($v1)`), it saw the global as a
  large object: declare it unsized (`extern Hook72 *D_800D6000[];`, read as
  `D_800D6000[0]`) and GCC splits the address itself (chunk_72's
  `func_800A1CF8`, from 2 off to 0).
- **A packed word read as shifts, not bitfields.** When two branches each
  read a different field of the same packed word and the original keeps
  their code apart, read the word into a `u32` local in each branch and
  extract with shifts (`(int)(w << 10) >> 25`); as bitfields of one struct
  GCC merged the two branches' identical tails (chunk_61's `func_8008C500`,
  from 44 off to 0 with a shared `none:` exit for its two `return 0`s).
- **Per-function aliases of a global.** When only one function wants a
  global accessed the other way, alias the symbol for that function with
  `__asm__` instead of changing the chunk's declaration:
  `extern int D_800CB498_la __asm__("D_800CB498");` (used as `(Unit4C
  *)&D_800CB498_la`) makes it small for that use, one `la` each time;
  `extern int D_800D13D8_a[] __asm__("D_800D13D8");` makes a 4-byte global
  that isn't one of the chunk's small globals a split `lui`/`sw %lo`, not
  maspsx's `$at` form. chunk_45's `func_8006BABC`, `func_8006C7CC`,
  `func_8006C85C` and `func_8006C8EC` matched with them.
- **The base of an indexed address through an accessor.** When the
  original adds the index to the array's address (`addiu $v1, $s2, 0x470;
  addu $a2, $v1, $s4`) and GCC adds the field's offset to the index first,
  return the array from an inline accessor: `Picks29(g) + i` (chunk_29's
  `func_8004C1BC`).
- **A call's arguments read into locals in order.** `func_80079848`
  (chunk_52) matched once the four fields passed to a call were read into
  locals first; read in the call's argument list, GCC loaded the stack
  argument first, and hoisted a global's `%hi` out of the loop into a saved
  register.
- **A bit test as an empty `if`.** When the original tests a flag with
  `andi`, then `bnez` past the work, and GCC gives `xori`/`andi`/`beqz`
  for `if (!((f >> 1) & 1)) {...}`, write the test the other way with an
  empty body: `if ((f >> 1) & 1) {} else if (k < 2) {...}`. In chunk_71's
  `func_800A0E58` that also gave the original's two saved registers (14
  off to 0, with the flags word a `u32` for the `srl`).
- **Case labels inside a fall-through chain.** When a jump table sends
  cases to different points of one run of tests (`if (r == 7) ...; if (r
  == 8) ...`), each case has its own label before its test and falls
  through: `case 7: if (r == 7) ...; case 8: if (r == 8) ...`. With the
  cases on one label the code is the same, but the table in `.rodata`
  sends them all to the first test; `tools/try_func.py` compares only the
  text, so only the full build shows it (chunk_70's `func_8009EAEC`).
- **A jump table from 0.** A switch whose table's first entry is the
  default's target and whose range test is `sltiu 7` (not `addiu -1`,
  `sltiu 6`) has a `case 0:`: spell it out on the default's body (chunk_57's
  `func_80083B08`).
- **A narrowed load and an inline.** A short set from an int field
  (`b.x = -o->m_298`) loads it with `lhu`; passed through an inline
  taking `int`s, it's the original's `lw` (chunk_41's `func_800643E4`).
- **A result variable set at the top.** chunk_52's `func_800794E8` ends
  with `return 1`; it matched as `int ok = 1;` at the top and `return
  ok;` (the permuter). The constant is then set before the calls and kept
  in a saved register, as in the original.
- **One counter per loop.** chunk_39's `func_8005FAB8` has a loop with
  no call and one with calls. One `i` for both put the first loop's
  counter in the second's saved register; a counter of its own left it
  in `$v1`.
- **One variable per path.** chunk_56's `func_800816F8` allocates in one
  branch (the pointer kept across calls) and frees in the other (the
  pointer only read before them). One variable for both put it in a saved
  register on both paths; one declared in each branch left the freeing
  path's in `$a1`.
- **Stack addresses kept or recomputed: inline functions.** GCC 2.91.66
  expands a call's arguments into pseudos, and CSE merges a local's
  address (`sp+0x58`) used by two calls into one pseudo, kept in a saved
  register across the calls between. Only the frame's first local escapes
  (its address is the frame register itself). Code inlined from an
  `inline` function is copied with each argument computed straight into
  its `$aN`, so CSE has nothing to merge: the address is computed anew at
  every call (`addiu $a0, $sp, 0x58`), as in many of the game's
  functions. A value passed into an inline function's parameter goes the
  other way: the parameter is a pseudo, so that address is kept. So when
  the original recomputes some stack addresses and keeps others, the
  recomputed ones are an inline function's locals or uses, and the kept
  ones its caller's or its parameters'. chunk_17's `func_8003425C` matched
  with two inline helpers (a turn with its own matrices, the camera's
  offset with its own vectors), a caller-level matrix in a block passed
  into the first, and the translation passed through an inline accessor,
  `MatTrans17(&out)` (`return (Vec17 *)m->t;`), which kept `out.t` in
  `$s3` as the original does (found by the permuter, with the base built by
  the header-aware `mkbase_pp.py`). chunk_02b's three rotation functions
  came from 131 to 22 off with the whole body as an inline function
  called from the real one, the rotations through small inline helpers
  taking an `int` angle (the `lh` the original has) and the vector by
  pointer, and one translation through an accessor. No compiler or
  option changes this (2.7.2 to 2.95.2, GCSE, CSE options, `-O1`,
  `-fno-omit-frame-pointer`).
- **Only the part with the calls in the inline function.** With the whole
  body inline, the code after the calls (a copy of the real function's
  local, `cur`) read it at fixed stack offsets; the original reads it
  through a pointer (`lw 0x10($sp)`, `lw 4($v1)`, `lw 8($v1)`, an inline
  helper's parameter). chunk_02b's rotation setters matched with only the
  rotation inline and the rest in the real one, and the matrix the original
  keeps in a saved register (`mx`, the frame's first local) declared in the
  real function and passed in. chunk_09's `func_8002434C` (151 to 2 off)
  the same way, plus an inline taking `&w` to keep that address from the
  first call, as the original does.
- **A parameter copied into a local.** When two saved registers are swapped
  between a parameter and a value computed from it, copy the parameter into
  a local first and use the copy (`Arg22 *cc = c; g = cc->m_04;`): chunk_22's
  `func_8003DF7C` and `func_8003E194` matched (12 off each before). A sweep
  over a chunk's parked functions trying each parameter copied is cheap and
  found that one; on others it only came closer.
- The permuter (`tools/permuter_setup.py`) is the tool for this. Most of
  its suggestions are noise (dummy variables, `x++; x--;`); keep the idea
  behind a good one, written plainly (the `ClearFlags` case above).

## Assembler-level fixes

### The match.h macros

| Macro | What | Case |
|---|---|---|
| `STORE_UNALIGNED(p, v)` | A store to an unaligned address through the assembler's `usw` macro: GCC sees one opaque instruction and can't schedule anything between or across it. | `LzssDecompress`: in C (a packed struct), GCC moves the loop counter's decrement before the store. |

### The GTE and other inline assembly

`include/gte.h` has the GTE (coprocessor 2) as the game's code drives it
(`func_80016C3C`):

- **Single moves** (`GTE_CTC2`, `GTE_MTC2`, `GTE_MFC2`, `GTE_CFC2`): one
  instruction per `asm` statement, with registers GCC chooses, as the
  original's are.
- **Outputs listed in reverse for the saved registers.** chunk_53's
  `func_8007C428` saves the Z scale factors (`cfc2` from 29 and 30) in
  `$s2` and `$s3` across a call; two `GTE_CFC2`s, or one statement with
  its outputs in order, swapped them. `GTE_GET_ZSF(a, b)` reads both in
  one statement with `b`'s output listed first, which gave the original's.
- **GTE loads and stores from memory.** `lwc2` and `swc2` with an offset
  from a pointer are `GTE_LWC2(r, off, p)` and `GTE_SWC2(r, off, p)` (the
  store clobbers memory), and depth cueing is `GTE_DPCL()` with its two
  `nop`s; chunk_54's `func_8007F21C`, marked hand-written by splat, comes
  out as the original's loop with them (parked on registers only).
- **Fixed sequences** where the original's registers never change:
  `GTE_SET_ROT` loads the matrix through `$a1` and `$a2` in pairs;
  `GTE_SET_TRANS` and `GTE_SET_ZSF` move several values in one statement.
  chunk_56's `func_80082468` loads the matrix the same way through `$v0`
  and `$v1` (`GTE_SET_ROT_V`), then the translation shifted right by 4,
  alternating `$v0`, `$v1`, `$v0` with `$a0` free, which GCC doesn't do:
  `GTE_SET_TRANS_V` is that sequence as one `asm` (an assumption: a
  macro of the game's, like libgte's `gte_SetTransMatrix` with the
  shifts).
- **Constants through one register**: the original loads every vertex
  constant into `$t1` (`lui`/`ori`, `addu $t1, $zero, $zero` for 0, and
  reuses a 0 still there). That's a `register int r asm("$9")` set from C
  before each `GTE_MTC2(r, n)`; GCC picks the instructions.
- **Short GTE functions are often C.** splat marks any function with a
  `mtc2`/`mfc2` hand-written. chunk_62's `func_8008D27C` (three `mtc2`s,
  `sqr`, three `mfc2`s and two adds) matched with `GTE_MTC2`,
  `GTE_SQR0()` and `GTE_MFC2`, the first add written between the second
  and third `mfc2` (`a += b;`) where the original has it. One that ends
  with a `nop` in the `jr`'s delay slot GCC could have filled (chunk_65's
  `func_80094670`) isn't.
- **A register the caller sets: a local register variable.** chunk_65's
  subdivision functions read the renderer's state through `$t9`, which
  their caller set, also after their own calls. `register Rnd65 *g
  asm("$25");` declared in each function, never assigned, reads it, and
  GCC doesn't save it around calls. cc1plus refuses a global register
  variable in a `.cpp` ("global register variable follows a function
  definition", even as the file's first line). For the permuter, the
  base declares a plain `Rnd65 *g;` and `compile.sh` adds the `register
  ... asm("$25")` back with `sed` (pycparser doesn't read it).
- **A `mult` inside an `asm` and the HI/LO hazard.** maspsx puts the
  `nop`s ASPSX needs between a `mfhi`/`mflo` and a `mult` only before a
  `mult` it recognises: `mult` and a tab. `MULSHIFT` wrote `mult %2, %3`
  with a space, so after a division by a constant (`mfhi`, one
  instruction, then the macro's `mult`) the original's `nop` was missing
  (chunk_15's `func_80031138`); the macro now writes `mult\t`.
- **Handwritten functions with an `asm` macro.** splat marks functions
  "handwritten" when they hold instructions GCC doesn't emit (here `sub`
  in a fixed-point multiply). They can still be C: the game used an `asm`
  macro, `MULSHIFT` (`include/mulshift.h`), and GCC built the rest around
  it (chunk_08).
- **A volatile `asm` makes GCC load constants again.** CSE forgets its
  values at a volatile `asm`, so a constant operand used by two of them is
  loaded twice; with a plain `asm` it's loaded once. `MULSHIFT` is
  volatile (`func_800236F0`).
- **The shape around `MULSHIFT`s shows in the shift's loads.** Three
  products in one expression load the constant shift once
  (`func_8009707C`); three products in three locals, then summed, load it
  for the first two and again for the third (`func_80096EC8`); a sum built
  with `d = ...; d += ...;` keeps it in the result's register
  (`func_80096F8C`, chunk_66).
- **A 64-bit square as an `asm` macro, its sum in C.** chunk_68's
  squared lengths do `mult x, x; nop; nop; mflo; mfhi` (the two `nop`s
  before `mflo`, not after: not GCC's `long long` multiply), then add the
  halves with GCC's registers: `lo = a + b; hi = c + d; hi += lo < a;`.
  `SQR64(lo, hi, x)` in `src/langimg/chunk_68.cpp` gives that shape with
  the halves as `u32`s; adding `long long`s orders the carry
  differently. Still about 18 instructions off in registers (four parked).
  To permute such a function, prepend the macro in `compile.sh` and leave
  the call in `base.c`: pycparser sees a call to an undeclared function.
- **`abs` as a macro.** `sra`, `xor`, `subu` is `((x ^ (x >> 31)) - (x
  >> 31))`; GCC's `abs()` branches (chunk_68's `ABS`).
- **A real `div` by a constant: the divisor is a variable.** GCC divides
  by a constant with a multiply, but with both `/` and `%` of a variable
  it uses `div` and takes both results. chunk_74's `itoa`s divide by 10
  with `div`: `int base = 10;` gives the instruction. The originals also
  reload 10 into `$t0`, `$t2` or `$s0` each time round, which we haven't
  reproduced (three parked).
- **Two nops between `mflo` and a multiply.** The R3000 needs two
  instructions between a move from HI/LO and the next `mult`/`div`;
  ASPSX fills them with `nop`s, and so does `--div-no-checks`
  (`func_80023788`).
- **Old-style varargs.** A list started from the last named argument's
  address, `(char *)&c + sizeof(c)`, stores that argument to its home
  slot a second time; `__builtin_next_arg(c)` doesn't (`func_800401FC`).
- **Two styles of vector copy.** A copy written field by field (`d->vx =
  s->vx; ...`) interleaves loads and stores and lets GCC reuse values it
  knows; one read into locals first loads all three, then stores. Both
  occur, sometimes in one function; with many copies, try each site both
  ways (a small script, flipping one at a time and keeping what helps,
  took `func_80024584` from 161 to 71 off).
- **Several flags variables.** Reusing one local for three reads of the
  same flags word ties them to one register; the original read each into
  its own (`func_80025174`).
- **A callee's return type.** A call to a function declared `void` and
  one declared to return something compile differently around the call,
  even when the result is unused: `$v0` is live afterwards in the second.
  `func_80099D48` (a vector shifted right) and `func_8006BB70` (a
  constructor) return their first argument, and `func_80026648` and
  `func_80024064` match only with that; `func_80099898` must stay `void`
  for `func_80026648`. The permuter finds these by changing declarations.
- **Divisors from the magic number.** A division by a constant is a
  multiply by `2^(32+s) / d`; compute `d` from the multiplier and the
  shift rather than guessing a round value nearby (`func_80027EE0`: 820,
  not 819).
- **Operands load in the order they're written.** `a > b` and `b < a`
  are the same test, but GCC loads `a` first in the one and `b` in the
  other (`func_800264B0`).
  The same holds for a branch's registers: chunk_20's `func_8003AB24`
  compares with `bne $s4, $v0` (the found item first), which `p ==
  &s->m_4C[g].m_08[j]` gave; the other order swapped them.
- **Add into the locals, then store.** chunk_62's `func_8008D168` adds
  an offset to a vector into a local: with the three loads first, `x +=
  b->vx; y += b->vy; z += b->vz; t.vx = x; ...` matched, `t.vx = x +
  b->vx` took other registers.
- **Chained assignments for a reset.** chunk_48's `func_80071E1C` zeroes
  a vector and an identity matrix's off-diagonal terms last field first:
  `v->vx = v->vy = v->vz = 0;` and `m->m[0][1] = m->m[0][2] = m->t[0] =
  0;` per row, in inline functions taking pointers (the first store at
  the field's offset, the rest through the pointer).
- **Field-by-field inlines for vectors.** `v->vx = 0; v->vy = 0; v->vz =
  0;` stores in that order, where a chained assignment stores the last
  field first; and a field-by-field copy lets GCC reuse values it knows,
  where a struct copy loads every field (`func_80022BA8`).
- **An address computed through an inline.** A struct member's address
  inside an array element can come out as `p + (i * size + offset)` or as
  `(p + i * size) + offset`; the second came from an inline taking the
  member's address, where the same statements written in place gave the
  first (`func_80020868`'s `VecCopy`).
- **An undeclared clobber.** A macro that uses a register without
  declaring it changes GCC's choices around it; `GTE_SET_LIGHT_M` uses
  `$v0` and `$v1` but declares only `$v1`, as the original's must have
  (`func_8001DFD8`).
- **Operands of `short` type** are loaded with `lhu` for an `asm`; cast to
  `int` where the original has `lh` (`func_8001ACE4`).
- **`mfc2` and `cfc2` have a load's delay.** The original has a `nop`
  between `mfc2 $v0, $24` and the `blez` reading `$v0`, and none where
  the next instruction doesn't read it: the assembler's load-delay rule.
  `tools/maspsx_plus.py` adds both to maspsx's loads.

`ADD_PRIM` (chunk_02) links a GPU packet into the ordering table with
`lwl`, `sll`, `swl`, `swl` on the 24-bit links. PsyQ's `addPrim`
(`P_TAG` bitfields) compiles to masks and merges with every compiler
here, so the original's was hand-written: one `asm` statement with GCC's
registers (`func_80015798`). The `P_TAG` forms tried again (24-bit
bitfields, packed bitfields, a 3-byte struct copied) give `lw`/`and`/`or`
or byte loads and stores, never the `lwl`/`swl` pair, so the `asm`
statement stays.

**GPU packets: a draw mode just past a primitive.** Many HUD functions
(chunk_57, chunk_70 and others) add a primitive, then a draw mode packet
right after it. The original's draw mode block, for a primitive of N
words, is

```
addu   $v0, $t2, $zero        # the packet pointer, read again for the link
sw     $t4, 4*N($v0)          # the draw mode's tag, through the old pointer
addiu  $v0, $v0, 4*N          # the pointer stepped in place
sw     $t0, 0x4($v0)          # the mode word
lw     $v1, D_800CBDC0        # the ordering table
sw     $v0, D_800C8C70        # the pointer stored before the link
...ADD_PRIM(ot, $v0)...
addiu  $v0, $v0, 8
sw     $v0, D_800C8C70
```

and it comes from setting the draw mode through a helper on `p + N`,
then stepping `p`, the link reading the global:

```c
p = (u_long *)D_800C8C70;
SetDM(p + N, mode);          /* p[N] = 0x01000000; p[N + 1] = mode; */
p += N;
ot = D_800CBDC0 + 1;
D_800C8C70 = (u8 *)p;
ADD_PRIM(ot, D_800C8C70);
p += 2;
D_800C8C70 = (u8 *)p;
```

Linking `p` instead of the global drops the store before the link (GCC
sees nothing read it); `p = (u_long *)(D_800C8C70 + 4 * N)`, or
`D_800C8C70 += 8` after the store, gives the stepped pointer its own
register and computes the last store as the old pointer plus `4 * N + 8`. Checked in a test file, and in
chunk_57's `func_80083618`, whose packets come out as the original's
(the function is parked for its text measuring). When another primitive
follows the draw mode (chunk_70's `func_8009E3C0`), GCC still gives the
stepped pointer its own register; that part isn't solved.

### Hand-written assembly

Stays assembly: a run of it at the end of a chunk becomes its own `asm`
segment (`asm/sces/vlc.s`); a single function inside a chunk is listed in
`config/<target>/handwritten.txt` (it keeps its `INCLUDE_ASM` and counts
as done).

## Data

- **A short literal kept in `.rodata`.** With `-G8` a string literal of
  8 bytes or less goes to `.sdata`, where the original may have it in
  `.rodata` (chunk_66's `D_800B7940`, the `"\\"` of an inlined
  `strcpy`). A `const char D[4] __attribute__((section(".rodata"))) =
  "\\";` gives the place, but where its initializer is visible GCC reads
  the contents, not the array, and makes a fresh literal (in `.sdata`
  again): declare it `extern` before the function that reads it and
  define it after (chunk_66's `func_800963E8`).
- **A local array's initializer is `.rodata`.** `int t[3] = {2, 1, 0};`
  is copied from an anonymous word triple in `.rodata` (three loads, three
  stores), which is what an unnamed `D_800B7B14` before a function is
  (chunk_71's `func_800A09C0`).
- **Orphan literals.** Identical string literals are merged within a
  source file, so an unreferenced copy of a string belongs to the next
  file. Until the chunks follow the original files such data is spelled
  out (`D_8014C38C` after `Startup`). The same for strings nothing uses at
  all (`lib/cdaudio`'s "Pause Play", ...): an `extern "C" const char`
  array after the function whose strings they follow; while that function
  is parked, inside its `NON_MATCHING` block, because its `.s` carries
  them (splat migrates unreferenced `.rodata` to the function before it).
- **A symbol inside another.** splat names an address it sees loaded, even
  inside another object: chunk_14's `D_800D4799` is `D_800D4798`'s buffer
  plus 1 (a sign, then the text). Written as `&D_800D4798 + 1`, the
  original's scheduling came out; through the separate symbol it didn't.
- **Static object init/fini** (GCC's `_GLOBAL_.I`/`.D` functions) come at
  the end of the file that defines the object; inside a chunk they're
  written as plain functions that construct or destroy it.

## NON_MATCHING

A function that's understood but doesn't match after a real effort is
parked: its C goes under `#ifdef NON_MATCHING`, with a comment saying
what still differs, and its `INCLUDE_ASM` under `#else`. Its `.s` stays.
`make NON_MATCHING=1 build` must keep building and linking it.

## Pitfalls

- **A chunk that doesn't compile.** `tools/try_func.py` once reported
  matches for a file with errors: the compile pipeline's status was the
  assembler's, and cc1 had left out the broken functions. It runs the
  pipeline with `pipefail` now.
- **Comparing the asm with itself.** A function that's still an
  `INCLUDE_ASM` in the file compiled (or parked, compiled without
  `-D NON_MATCHING`) assembles the original's instructions, so a
  comparison always "matches". `tools/try_func.py` refuses that case; it
  didn't at first, and three functions were unparked on false matches.
- **A size change moves everything after it.** While a chunk doesn't
  link to the original size, `tools/diff_func.py` shows differences in
  every later function (their relocated addresses moved). Compare with
  `tools/try_func.py` until the chunk is back to size.
- **A struct's padding moves a stride.** A struct of 0x35 bytes holding
  a pointer pads to 0x38. Nested in chunk_39's bike, it made the bike
  0x56C bytes: its index's multiply was wrong while everything else
  matched. Compare the stride's shifts with the asm's.
- **The original's own bugs.** chunk_39's `func_8005FCE8` fills a local
  copy of the pad with a bit masked out, then passes the pad itself on.
  The dead stores stay in the original, so the C keeps them too.
- **Call targets aren't compared.** `tools/try_func.py` compares
  instructions, not relocations: a `jal` to `__builtin_vec_new` where the
  original calls `__builtin_new` reports 0 differences, and `make` fails
  on one byte. `cmp -l` of the two images gives the offset.
- **`make` stays the judge.** An object compiled by hand, or by a
  permuter script, can differ from the build's in flags; `make` with both
  `OK` lines is the only proof.

## When a flag fixes one function and breaks another

A library is built with one set of flags, so a flag is only right if
every matched function still matches with it. Two have each matched one
parked function of `lib/sound` and broken a matched one:

| Flag | Matches | Breaks |
|---|---|---|
| GCC's default split addresses (no `-mno-split-addresses`) | `func_800128E8` (the table address as `la` + `addu`) | `func_800121C0` (a `lui` stolen into a branch delay slot) |
| `-fno-rerun-cse-after-loop` | `func_80012F7C` (with `ClearFlags`; each field's pointer from its own `la`) | `func_80012080` (4 bytes longer), `func_80011960`, `func_80011A68`, `func_8001355C` |

Either the functions come from source files built with different flags,
or there is a source shape that matches both ways; until one is shown,
the library keeps the flags under which everything matched so far. Test a
flag on the whole library (`make`), never on the one function.

To see where the conflicts lie, compile every function with and without
the flag (`tools/try_func.py NAME -D NON_MATCHING --cflags=...`, a
matched function's `.s` restored from git for the test) and look at the
addresses: in `lib/sound` they fall in ranges, the shape of several
files (issue-1-langimg-sound.md, "The flags, function by function").

## Open problems

- `func_800128E8`, `func_80012F7C` (`lib/sound`): the conflicting flags
  above.
- **Loops from 0 over a global array** (`lib/sound`: `func_800118C4`,
  `func_80012F7C`, `func_80013108`, `func_800131D0`, `func_80011D10`):
  the original loads each field's pointer with its own `la` (`la
  D_800CA0FE` for `&D_800CA0F8[0].unk6`); GCC derives them from one
  (`addiu $a3, $v0, 0xC`), the second CSE pass merging them, which is
  why `-fno-rerun-cse-after-loop` fixes `func_80012F7C`. Not fixed by
  `(&a[i])->`, constants in the loop, a signed `unk6`, the array defined
  in the file or of unknown size, split addresses, older compilers or C.
  chunk_45's `func_8006C85C` and `func_8006C8EC` have it too, and the
  flag doesn't fix them. The loops starting at a variable index (`func_80011960`,
  `func_80011A68`) don't have the problem. The slot loops also keep `~1`
  in a register (`ClearFlags`, above).
- **Stack addresses kept in registers**: largely solved, see "Stack
  addresses kept or recomputed: inline functions" under Register
  allocation. Still parked: chunk_02b's `func_80016268` and `func_80016434`
  (22 off), `func_80016600` (101: the first local's address is the frame
  register itself here), `func_80016E34` (423); chunk_03's `func_80018954`
  (111); chunk_41's `func_800643E4`.
- **Constants through `$t2`** (chunk_31's `func_800505BC`): every
  constant is loaded into `$t2` just before its use, loop invariants
  included, and a bit is set from a test without a branch (`sltu`, `sll
  6`). A macro or a register variable, possibly; not tried.
- **A constant argument after an address** (chunk_45: `func_8006C7CC`,
  `func_8006C8EC`): the original sets a call's third argument (a table's
  address) before its second (the table's count); GCC sets them in
  order. Not the parameters' types, a variadic declaration, or the
  tables' types and sizes.
- **All constants hoisted** (`func_80015798`): the original keeps 8
  constants in saved registers through its loop; as loop-local variables
  five are hoisted, but not the switch's `1` or the two sprite codes a
  ternary chooses between.
- `FindEntry`, the movie loop (`func_80133334`), `func_80134948` (boot
  executable): registers only, or registers and the order of stack
  arguments ([issue-85-sces-chunk01.md](matching/issue-85-sces-chunk01.md)).
