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
   per library; unsplit addresses; small globals; divisions; signed char
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
| `src/langimg` chunk_60, chunk_71, chunk_72 (2.91.66 code) | GCC 2.91.66 | 8 | (split addresses) | `--expand-div --div-no-checks --small-externs=...` |
| `src/langimg` chunk_06 to chunk_12 (2.91.66 code) | GCC 2.91.66 | 8 | `-mno-split-addresses` | `--expand-div --div-no-checks --small-externs=...` |
| `src/langimg` chunk_02b (2.91.66 code) | GCC 2.91.66 | 8 | `-mno-split-addresses` | `--expand-div --div-no-checks --small-externs=...` |
| `SCES_030.37` (`src/sces`) | GCC 2.91.66 | 0 | `-fsigned-char` | `--expand-div` |

All at `-O2`, C++ with `-fno-exceptions -fno-rtti`, through maspsx
(`--aspsx-version=2.79`) and `tools/maspsx_plus.py`.

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
chunk_45 has both (`func_8006BA80`, `func_8006C77C`). chunk_72 reads most
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
- **Read the fields first.** For the same reason, a function that loads
  all of a struct's fields before its first store through another pointer
  had them in locals: the 2D items' `x0`, `y0`, `x1`, `y1` before the
  packet's stores (`func_80015798`).

- **A chained assignment.** chunk_23's constructor stores three zeros
  before two -1s; written apart, GCC loaded -1 first. The permuter found
  `o->m_04 = o->m_10 = *(int *)o = 0;` (`func_8003FC94`).

### Result variables

- **Assign the result last.** `r = 1` before the stores made GCC reuse
  `r`'s register for the `1` of `1 << voice`; the original loads `1`
  twice. With `r = 1;` after the stores it matches (`func_80011924`).
- **`r = 0; if (p) { ...; r = 1; } return r;`** keeps the result in a
  saved register across the call, where an early `return` doesn't
  (`func_80012F40`, `func_800130CC`; `func_80012504`, where `r` is in
  `$fp` and the failure path jumps to the common exit).

### Branches

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

### Loops

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
  field only matched as `u8 end` (`func_80012E58`).
- **An element's address once.** Where the original computes
  `&slot->voices[n]` once, uses it twice and passes it on, write it so:
  `sv = &slot->voices[n]; sv[0].unk1 = x; sv[1].unk1 = x; f(..., sv);`
  (`func_80012C18`, `func_80012D38`).

### Temporaries and folding

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
- **`do { } while (0)` around statements.** Twice the permuter's whole
  fix: around `i = 0` before a loop (`func_80017FB4`, its order against
  the loads) and around a loop's body (`func_8001865C`, its registers: the
  statements inside count as one loop deeper). A workaround; say so at the
  use.
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

- **Take a pointer before the null check.** `OpenArchive`'s
  `e = arc->entries;` before `if (arc)`: GCC computes it in the delay
  slot of the check, as the original does.
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
- **Unused locals.** A frame bigger than its variables need means the
  original had locals the optimiser dropped: `int unused[6];` gives
  `func_8001184C`'s 0x30-byte frame.
- **A literal address** for something at a fixed address: the boot
  executable jumps to the game's entry point through
  `(*(void (**)(void))0x800117F0)` (`GAME_ENTRY`); through a declared
  symbol GCC loads it into another register (`main`). The bytes are the
  same either way.

### Struct copies

A struct whose members are all shorts and bytes is 2-aligned, and GCC
copies it with `lwl`/`lwr` pairs; the original's `lw`/`sw` copy means an
`int` member that aligns it (`RangeDef`, `func_80019F0C`).

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

An `int` field stored into a `short` can be loaded with `lhu`: GCC
narrows the load (chunk_66's `func_8009574C`). An `lhu` doesn't by itself
mean a `short` field.

### Types

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
- **Calling a C++ symbol by hand.** A constructor or destructor whose
  class has no name yet is called through an `asm`-labelled declaration,
  `extern void CobjetDtor(Cobjet *, int) asm("_._6Cobjet");` (chunk_03's
  subclasses), and a virtual call through the vtable entry
  (`{ short delta; short index; void (*func)(); }`, `DRAW_SET`).
- **`new T[n]` with an empty constructor.** After `__builtin_vec_new`,
  a loop that counts down to -1 and does nothing is GCC's construction
  of the elements when `T` has a constructor with an empty body
  (chunk_60's `func_80089B6C`, `T36() {}`).
- **A virtual call through a `void` function.** When the result isn't
  used, a cast to a function returning `void` gives other registers than
  one returning `int` (chunk_45's `VCALLV`).
- **The callee's result returned.** A function whose own arithmetic
  avoids `$v0` after a call returns that call's result
  (`func_8006C110`).
- **C linkage for placeholder names.** A function in a `.cpp` chunk whose
  real name isn't known is declared `extern "C"` (`lib/sound/include/sound.h`),
  so its symbol is the plain `func_XXXXXXXX` the asm calls.

## Register allocation

What's left once the instructions are right is usually register choice.

- Declaration order of locals made no difference to registers in the
  cases tried (`FindEntry`); it does decide their stack slots (above).
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
- **Fixed sequences** where the original's registers never change:
  `GTE_SET_ROT` loads the matrix through `$a1` and `$a2` in pairs;
  `GTE_SET_TRANS` and `GTE_SET_ZSF` move several values in one statement.
- **Constants through one register**: the original loads every vertex
  constant into `$t1` (`lui`/`ori`, `addu $t1, $zero, $zero` for 0, and
  reuses a 0 still there). That's a `register int r asm("$9")` set from C
  before each `GTE_MTC2(r, n)`; GCC picks the instructions.
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
registers (`func_80015798`).

### Hand-written assembly

Stays assembly: a run of it at the end of a chunk becomes its own `asm`
segment (`asm/sces/vlc.s`); a single function inside a chunk is listed in
`config/<target>/handwritten.txt` (it keeps its `INCLUDE_ASM` and counts
as done).

## Data

- **Orphan literals.** Identical string literals are merged within a
  source file, so an unreferenced copy of a string belongs to the next
  file. Until the chunks follow the original files such data is spelled
  out (`D_8014C38C` after `Startup`). The same for strings nothing uses at
  all (`lib/cdaudio`'s "Pause Play", ...): an `extern "C" const char`
  array after the function whose strings they follow; while that function
  is parked, inside its `NON_MATCHING` block, because its `.s` carries
  them (splat migrates unreferenced `.rodata` to the function before it).
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
- **Stack addresses kept in registers** (chunk_02b: `func_80016268`,
  `func_80016434`, `func_80016600`, `func_80016E34`; chunk_03:
  `func_80018954`, though `func_80016C3C`'s original keeps `&rot`): the original
  computes a local's address anew (`addiu $a0, $sp, 0x20`) for each call
  it's passed to; GCC keeps every local's address but the first one's in
  a saved register, so the frame and registers differ. Not the compiler
  (2.7.2 to 2.95.2), the front end, GCSE, CSE options or `-O1`
  ([issue-3-langimg-chunk02.md](matching/issue-3-langimg-chunk02.md)).
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
