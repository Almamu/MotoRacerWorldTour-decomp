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
   branches, loops, temporaries, pointers, types
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
| `tools/try_func.py NAME [FILE] [-D NON_MATCHING] [-v] [--gcc V] [--cflags F]` | Compiles one source with the Makefile's own command for its chunk and compares one function with its `.s`, word by word (relocated fields masked). No linking, so it works while the chunk doesn't match. Its last line counts the differing instructions and the "opcode runs out of place": 0 runs out of place means only registers or immediates differ. |
| `tools/diff_func.py NAME` | The same comparison on the linked build against the original. Only meaningful once everything before the function has its original size. |
| `tools/permuter_setup.py NAME BASE.c DIR` | A [decomp-permuter](https://github.com/simonlindholm/decomp-permuter) directory with the chunk's compile command. |
| `m2c` | A first draft from the `.s` file. |

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

| Code | Compiler | `-G` | Flags | maspsx |
|---|---|---|---|---|
| `LANGIMG.DAT` (`src/langimg`) | GCC 2.95.2 | 8 | `-mno-split-addresses` | `--expand-div` |
| `lib/sound` (in `LANGIMG.DAT`) | GCC 2.91.66 | 8 | `-mno-split-addresses` | `--expand-div --div-no-checks` |
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

The game reaches every variable of 8 bytes or less through `$gp`
(`%gp_rel`), from every file. maspsx alone only does that for the
variables the file defines, so an `extern int x;` came out as `lui` + `lw`.
`tools/maspsx_plus.py` (the Makefile's maspsx) also treats a declared
variable as small when GCC's `.extern x, SIZE` says so. For that GCC must
know the size: declare a small global with its type (`extern int x;`),
not as an array of unknown size. Arrays and structs over 8 bytes are
reached with `lui`/`addiu` as before. **Case:** `func_80011924`,
`func_80011E08`.

### Divisions

GCC 2.9x leaves a division to the assembler (`div $2,$3,$4`), which
expands it. ASPSX 2.79 adds divide-by-zero and overflow checks (`bnez`,
`break 7`, ..., `break 6`); `maspsx --expand-div` emulates that, and the
game's own code has them. The sound engine's division has none: a bare
`div $0,...` and `mflo`. `tools/maspsx_plus.py --div-no-checks` produces
that, for `lib/sound` (`func_800128E8`). That assembler also treated
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
`sector`).

### Result variables

- **Assign the result last.** `r = 1` before the stores made GCC reuse
  `r`'s register for the `1` of `1 << voice`; the original loads `1`
  twice. With `r = 1;` after the stores it matches (`func_80011924`).
- **`r = 0; if (p) { ...; r = 1; } return r;`** keeps the result in a
  saved register across the call, where an early `return` doesn't
  (`func_80012F40`, `func_800130CC`).

### Branches

- **One condition, not two returns.** `FindEntry` checks the hash range
  with one `if (hash >= first && last >= hash) { ... }`; two early
  `return`s gave the second exit its own copy of the return value.
- **Read the field again rather than keep it.** `FindEntry`'s binary
  search compares `p->hash` directly; a `h = p->hash` temporary changed
  where the comparison is scheduled.

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
- **Loop shape under 2.91.66.** 2.91.66 keeps an up-counting `i` and walks
  the fields with separate pointers where 2.95.2 makes one count-down
  pointer. A loop compiled the "wrong" way is a hint to check the
  compiler before reshaping it (see above).

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
- **Through an inline function.** A value returned by an inline function
  can survive where the same constant written inline is folded: in
  `func_80012F7C`, `ClearFlags(&f, 1)` keeps `~1` in a register as the
  original does, where `f &= ~1` becomes `andi 0xFFFE` (found by the
  permuter; that function still doesn't match otherwise).

### Pointers and locals

- **Take a pointer before the null check.** `OpenArchive`'s
  `e = arc->entries;` before `if (arc)`: GCC computes it in the delay
  slot of the check, as the original does.
- **A pointer to a local.** `CdlFILE *fp = &file;` passed to
  `CdSearchFile` keeps `&file` in a saved register (`OpenArchive`).
- **Unused locals.** A frame bigger than its variables need means the
  original had locals the optimiser dropped: `int unused[6];` gives
  `func_8001184C`'s 0x30-byte frame.
- **A literal address** for something at a fixed address: the boot
  executable jumps to the game's entry point through
  `(*(void (**)(void))0x800117F0)` (`GAME_ENTRY`); through a declared
  symbol GCC loads it into another register (`main`). The bytes are the
  same either way.

### Types

- **Narrow parameters are extended by the callee.** A `char` or `short`
  parameter gets an `sll`/`sra` (or `andi`) at the start of the function;
  if the original has none, the parameter is an `int`, even when only its
  low byte is used (`func_80012120`, `func_800133A0`, `func_80012FEC`).

- **Signed compares need signed types.** `slti` vs `sltiu`: the movie
  loop's frame counter is compared as `(int)D_8014D0D4 > 60`.
- **A struct for data read from a file.** The movie loop reads the DPS
  header through a `DPSHEADER *` (`hdr->width`), which the original keeps
  in a register; as an array of halfwords it didn't.

## Calls and declarations

- **Declarations matter, not only code.** The boot executable was built
  against declarations where `free()`, `DecDCToutCallback()` and the heap
  allocator return `int`. With `void` (or pointer) returns, the registers
  right after the call come out differently, even when the result isn't
  used. When a register differs right after a call, try an `int` return
  on the callee first.
- **Arguments passed through.** A function that seems to take nothing may
  pass its own argument on: `func_80012F40` calls `func_80013348` with
  `$a0` untouched, so it takes the handle and passes it. Written without
  parameters it can even match, and is wrong.
- **C linkage for placeholder names.** A function in a `.cpp` chunk whose
  real name isn't known is declared `extern "C"` (`lib/sound/include/sound.h`),
  so its symbol is the plain `func_XXXXXXXX` the asm calls.

## Register allocation

What's left once the instructions are right is usually register choice.

- Declaration order of locals made no difference in the cases tried
  (`FindEntry`).
- The permuter (`tools/permuter_setup.py`) is the tool for this. Most of
  its suggestions are noise (dummy variables, `x++; x--;`); keep the idea
  behind a good one, written plainly (the `ClearFlags` case above).

## Assembler-level fixes

### The match.h macros

| Macro | What | Case |
|---|---|---|
| `STORE_UNALIGNED(p, v)` | A store to an unaligned address through the assembler's `usw` macro: GCC sees one opaque instruction and can't schedule anything between or across it. | `LzssDecompress`: in C (a packed struct), GCC moves the loop counter's decrement before the store. |

### Hand-written assembly

Stays assembly: a run of it at the end of a chunk becomes its own `asm`
segment (`asm/sces/vlc.s`); a single function inside a chunk is listed in
`config/<target>/handwritten.txt` (it keeps its `INCLUDE_ASM` and counts
as done).

## Data

- **Orphan literals.** Identical string literals are merged within a
  source file, so an unreferenced copy of a string belongs to the next
  file. Until the chunks follow the original files such data is spelled
  out (`D_8014C38C` after `Startup`).
- **Static object init/fini** (GCC's `_GLOBAL_.I`/`.D` functions) come at
  the end of the file that defines the object; inside a chunk they're
  written as plain functions that construct or destroy it.

## NON_MATCHING

A function that's understood but doesn't match after a real effort is
parked: its C goes under `#ifdef NON_MATCHING`, with a comment saying
what still differs, and its `INCLUDE_ASM` under `#else`. Its `.s` stays.
`make NON_MATCHING=1 build` must keep building and linking it.

## Pitfalls

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
| `-fno-rerun-cse-after-loop` | `func_80012F7C` (with `ClearFlags`; each field's pointer from its own `la`) | `func_80012080` (4 bytes longer) |

Either the functions come from source files built with different flags,
or there is a source shape that matches both ways; until one is shown,
the library keeps the flags under which everything matched so far. Test a
flag on the whole library (`make`), never on the one function.

## Open problems

- `func_800128E8`, `func_80012F7C` (`lib/sound`): the conflicting flags
  above.
- `func_800118C4`, `func_80011D10` (`lib/sound`): under 2.91.66 the loops
  keep their counter and walk the fields with separate pointers as the
  original does, but the pointers are derived from one address where the
  original loads each with its own `la`, and in `func_800118C4` the
  original shares one pointer between `unk4` and `unkA` (a nested struct
  didn't give that).
- `FindEntry`, the movie loop (`func_80133334`), `func_80134948` (boot
  executable): registers only, or registers and the order of stack
  arguments ([issue-85-sces-chunk01.md](matching/issue-85-sces-chunk01.md)).
