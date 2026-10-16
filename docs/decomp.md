# Matching decompilation

Goal: source that compiles to the exact bytes of the game code
(`data\LANGIMG.DAT`) and the boot executable (`SCES_030.37`). Both rebuild
byte for byte today; each function starts as disassembly and moves to C++
or C as it is decompiled.

What git holds and what it doesn't:

- **Tracked:** everything the build needs. The source (`src/`); the
  disassembly of every function not decompiled yet
  (`asm/<target>/nonmatchings/<chunk>/<function>.s`), so what's left is
  visible in the tree (a function is done when its `.s` file is gone and
  its chunk's source has C for it); splat's disassembly of the data
  (`asm/*/data/`, `asm/sces/header.s`, `assets/`); and splat's linker
  script and symbol lists (`linker/`). `make` builds both executables
  from the repository alone and checks them against
  `config/checksums.sha1`.
- **Not tracked:** the disc (`iso/`) and the files extracted from it
  (`extracted/`), the compilers (`tools/gcc-*/`), Sony's libraries
  (`tools/psyq/`) and the build.
- **Re-splitting** (after changing `config/<target>.yaml` or
  `config/<target>/symbol_addrs.txt`) needs your copy of the game in
  `extracted/`: `make split` (or `make`) runs splat then, rewrites `asm/`
  and `linker/` and stamps `linker/<target>.stamp`; commit what changed.
  Without the originals the tracked outputs are used as they are, and
  `tools/chunks.py check` fails until someone re-splits.

## Compilers

| Code                          | Compiler                           | Language |
|-------------------------------|------------------------------------|----------|
| `LANGIMG.DAT` (`src/langimg`) | GCC 2.95.2, PlayStation build      | C++      |
| `LANGIMG.DAT`'s functions between the classes (`src/langimg` chunk_02 to chunk_12, chunk_13, chunk_14, chunk_15, chunk_16, chunk_17, chunk_18, chunk_19, chunk_20, chunk_21, chunk_22, chunk_23, chunk_24, chunk_25, chunk_26, chunk_27, chunk_28, chunk_29, chunk_30, chunk_31, chunk_32, chunk_33, chunk_34, chunk_35, chunk_36, chunk_37, chunk_38, chunk_39, chunk_40, chunk_41, chunk_42, chunk_43, chunk_44, chunk_45, chunk_46, chunk_47, chunk_48, chunk_49, chunk_50, chunk_51, chunk_52, chunk_53, chunk_54, chunk_55, chunk_56, chunk_57, chunk_58, chunk_59, chunk_60, chunk_61, chunk_62, chunk_63, chunk_64, chunk_65, chunk_66, chunk_67, chunk_68, chunk_69, chunk_70, chunk_71, chunk_72, chunk_73, chunk_74) | GCC 2.91.66, PlayStation build | C++ |
| `LANGIMG.DAT`'s sound engine (`lib/sound`) | GCC 2.91.66, PlayStation build | C++ (or C) |
| `SCES_030.37` (`src/sces`)    | GCC 2.91.66 (egcs 1.1.2), PlayStation build | C++      |
| Sony's libraries in both (`lib/psyq`) | not identified yet ([libraries.md](libraries.md)) | C |

Both compilers are the `-psx` builds from
[decompals/old-gcc](https://github.com/decompals/old-gcc), run at `-O2`,
and PsyQ's assembler behaviour is emulated by
[maspsx](https://github.com/mkst/maspsx) (through `tools/maspsx_plus.py`).
The game uses `-G8` and `-mno-split-addresses`; the boot executable `-G0`
and GCC's default split addresses: it never addresses anything through
`$gp`, and with `-G8` its global loads come out as single assembler
macros instead of the split `%hi`/`%lo` pairs it has. The full table of
settings, and the evidence for each, is in
[matching_techniques.md](matching_techniques.md), "Compilers and flags";
the libraries' own settings in [libraries.md](libraries.md).

### The game: GCC 2.95.2

- **GCC 2.x C++.** Vtables use GCC 2.x's layout without thunks: 8-byte
  entries `{s16 delta, s16 index, void *pfn}`, with a null first entry
  because there is no RTTI. The vtable pointer is the last field of the
  class (`Cobjet` + 0x50). A destructor takes GCC 2.x's hidden "in charge"
  argument and calls `__builtin_delete` when bit 0 is set.
- **No exceptions, no RTTI.** Constructors have no exception-region cleanup
  code and vtables have no type_info entry.
- **2.95.2, not older.** The same C++ source for `Cobjet`'s constructor and
  destructor and its base-class constructor was compiled with every PS1
  candidate (2.7.2, 2.8.0, 2.8.1, 2.91.66, 2.95.2):
  - 2.7.2 and 2.8.x restore `$ra` after the body's last instructions; the
    game, 2.91.66 and 2.95.2 schedule the `lw $ra` first.
  - 2.91.66 differs from the game in register choice and order; 2.95.2
    matches the game exactly (vtable address in `$v1`, `Init()` call order).
  - Plain (non-PSX) 2.95.2 targets MIPS Linux and emits PIC code, so only
    the `-psx` build fits.
- **Small data.** Small globals are `$gp`-relative (`$gp` = 0x800C46F0, set
  by the entry point), so the default `-G8` is used.

`src/langimg/chunk_02.cpp` has the proof: eight functions of `CName`,
`CNamed` and `Cobjet` give the original bytes, `CName::Set` included. That
one only matched once the library names were known: the call it makes is to
`strncpy`, not `memcpy`, and the `char *` return type changes the register
allocation.

### The boot executable: GCC 2.91.66

`Crc32` (`src/sces/chunk_01.c`) compiles to the original instructions,
registers included, only with 2.91.66. With the same source, 2.95.2 adds
two instructions and picks other registers, and 2.7.2 and 2.8.x differ
throughout. (`StrUpper`, tried first, compiles the same way
under every candidate, so it couldn't tell them apart.) The game's copy
of the same routine (`func_800A645C`) is slightly different code, so the
boot executable wasn't simply linked from the game's objects.

It's C++ too: a global object (`D_8014D3F8`, placeholder class `CPair`)
is built and destroyed by the initialiser and finaliser GCC writes for
static objects, and its destructor takes the in-charge flag. The free
functions are declared `extern "C"` in `include/sces/*.h` only to keep
their placeholder names plain.

The VLC decoder at 0x801365F8-0x80136B4C is hand-written assembly (it
counts leading zeros with the GTE), so it stays assembly, in its own
segment (`asm/sces/vlc.s`), and isn't counted as code to decompile.

The movie player is Sony's `cd/MOVIE` sample (in the runtime library
releases, `psx/sample/cd/MOVIE/TUTO*.C`) adapted, and its functions keep
the sample's names (`strSync`, `strNextVlc`, `strKickCD`, ...).

### Libraries

Code built apart from the executable it's in (Sony's PsyQ libraries, the
game's sound engine) lives in `lib/`, with its own build settings: see
[libraries.md](libraries.md), which also covers PsyQ's names and
`make sdk`.

## Setup

Tools come from the Nix devshell (`direnv exec .`): mipsel binutils, splat,
spimdisasm, rabbitizer, m2c and objdiff. Then:

```sh
make setup   # tools/gcc-2.95.2-psx and tools/gcc-2.91.66-psx (checksummed downloads), the maspsx submodule
make         # split with splat, build, compare with config/checksums.sha1
make NON_MATCHING=1 build   # use the C of parked functions instead of their asm
tools/fetch_psyq.sh && make sdk   # optional: Sony's own library objects, see "Libraries"
```

`make objects` only compiles `src/`. Without the Nix devshell,
`pip install -r requirements.txt` gives the Python tools (and
clang-format), and the Makefile also finds Debian/Ubuntu's
`binutils-mipsel-linux-gnu` (or set `CROSS`). CI runs the same build on
every PR (CONTRIBUTING.md, "Continuous integration").

With the game in `extracted/`, `make` reruns splat when `config/*.yaml` or
`config/*/symbol_addrs.txt` change. Objects are rebuilt when their source,
a header, an included `.s` file or the compile flags change.

## Chunks

Each executable's code is split into chunks of about 8 KB, cut at
function boundaries, so several people (or agents) can work at once
without touching the same file. The chunks are not the original source
files: those boundaries only matter for the cleanup phase, once the code
is decompiled.

- `chunk_NN` is the executable's own code: `src/langimg/chunk_00.cpp` to
  `chunk_74.cpp`, `src/sces/chunk_00.cpp` and `chunk_01.cpp` (all C++).
- `lib_NN` is the library code after it: `src/langimg/lib_00.c` to
  `lib_07.c`, `src/sces/lib_00.c` to `lib_10.c`.
- The chunk list is the subsegment list in `config/<target>.yaml`. Each
  chunk also owns the `.rodata` its functions use (strings, jump tables),
  so a function's strings and jump tables move with it when it is
  decompiled. They are in the function's `.s` file, or in an
  `INCLUDE_RODATA` when several functions share them.

Each chunk has a GitHub issue (label `decomp-chunk`) listing its
functions; see [CONTRIBUTING.md](../CONTRIBUTING.md). `tools/chunks.py`
reports progress and maintains those issues:

```sh
tools/chunks.py status            # functions and bytes done, per chunk with any done
tools/chunks.py status --all      # every chunk
tools/chunks.py issues /tmp/i     # each chunk's issue title and body, as files
tools/chunks.py sync              # tick the functions done since, in the open issues
tools/chunks.py cleanup-issues /tmp/c --naming 98 --headers 99   # the per-chunk cleanup follow-ups
```

### Progress

The README's two badges count bytes of code, over both executables:

- **matching**: functions that rebuild byte for byte from C, plus the
  library functions matched by Sony's own objects (`make sdk`) and the
  hand-written asm (`config/sces/handwritten.txt`, `config/langimg/handwritten.txt`);
- **non-matching**: those plus the parked functions, whose C builds with
  `NON_MATCHING=1` but doesn't match yet.

`tools/chunks.py badges DIR` draws them (after `make sdk`, or the Sony
functions count as not done). CI draws them on every run and, on `main`
once every check passed, replaces the single commit of the `badges`
branch with them.

The matching count also goes out as a progress report in
[objdiff](https://github.com/encounter/objdiff)'s `report.json` format,
which progress sites read. `tools/chunks.py report FILE` writes it
(after `make sdk`, as for the badges). It has one unit per chunk, with
its functions (matched, or not) and its source file, and the categories
`langimg` and `sces`, each split into `_game` and `_lib`. A chunk is
complete when all its functions match.

The parked functions go in the fuzzy match, at how close their C comes.
Each chunk with any is compiled with `-DNON_MATCHING` (the Makefile's own
command, as `tools/try_func.py` does). Each parked function is compared
with its `.s` file, the two aligned first so that one extra or missing
instruction costs one, not everything after it. Relocated operands are
ignored, as in `tools/try_func.py`. A function scores the instructions
in common over the longer side, and the report's fuzzy match weighs those
scores by size. It sits between the matching badge and the non-matching
one, which counts the parked functions whole.

CI writes the report on every run and uploads it as the `eu_report`
artifact (objdiff's `<version>_report`, for the European version). The
sites read it from the successful runs on `main`:
[decompilati.onl](https://decompilati.onl) through its GitHub App
(https://github.com/apps/decompilati-onl), and any other site that reads
decomp.dev-style `<version>_report` artifacts the same way. No secret is
needed.

## Decompiling a function

The loop for one function (read, write, compare with
`tools/try_func.py`, shape, permute, match or park, write up) is
[workflow.md](workflow.md); what makes code match, technique by
technique, is [matching_techniques.md](matching_techniques.md), with the
passes behind them in [docs/matching/](matching/README.md).

In short: replace the function's `INCLUDE_ASM(...)` in its chunk with the
code, where the line was (functions stay in address order), compare
until it matches, delete its `.s` file, and `make` (both lines `OK`). A
function that's understood but doesn't match after a real effort is
**parked**: its C goes under `#ifdef NON_MATCHING` with a comment saying
what differs, its `INCLUDE_ASM` under `#else`, and its `.s` file stays.
`make NON_MATCHING=1` builds the C instead; the result differs from the
original only in those functions. `tools/rename.py TARGET OLD NEW`
renames a symbol everywhere once its name is known.

Data stays in splat's disassembly for now. A decompiled function refers to
a global by the symbol splat gave it (`extern u32 D_800C4A10;`, or a name
from `symbol_addrs.txt`), declared in a header with its real type (a small
one is then reached through `$gp`).

A chunk is an 8 KB split, so one chunk can hold the code of several
original files, which didn't always declare a global the same way: one
read it through `$gp`, another as a plain global. When one chunk needs the
same global both ways (it's one of the chunk's `--small-externs` for most
functions, but one reads it with `lui`/`lw`), the second form goes through
a second name for the same address, defined in
`linker/<target>/undefined_syms_manual.txt` (tracked, hand-written; the
link reads it after splat's `undefined_syms_auto.txt`): for example
`D_800C5E2C_far = 0x800C5E2C;`, declared `extern int D_800C5E2C_far;` in
chunk_28 for the functions that need it. splat's files under `linker/` are
regenerated; this one isn't.

### C++ names

The game's functions have GCC 2.95 mangled names in `symbol_addrs.txt`:
`__6Cobjet` (constructor), `_._6Cobjet` (destructor), `Set__5CNamePCc`
(`CName::Set(const char *)`), `_vt.6Cobjet` (vtable). Once a function's
class and signature are known, name it that way, so the C++ that replaces
it gets the same symbol. `INCLUDE_ASM` takes any of these names, dots
included. Class names are only known where the game shows them (`Cobjet`
is from its class table); otherwise keep a placeholder.

Headers with classes use `#pragma interface`, so GCC doesn't emit the
vtables, which are still in the data disassembly.

## Layout

| Path                           | What                                                  |
|--------------------------------|-------------------------------------------------------|
| `config/<target>.yaml`         | splat config: the chunks, the `.rodata` split, the data |
| `linker/`                      | splat's linker script, symbol lists and the stamp of the config they came from |
| `linker/<target>/undefined_syms_manual.txt` | second names for addresses a chunk needs both as a small global and not (hand-written) |
| `config/<target>/symbol_addrs.txt` | known symbols                                     |
| `config/checksums.sha1`        | SHA-1 of the originals, checked against `build/*.bin` |
| `src/<target>/`                | one source file per chunk of the executable's own code |
| `lib/<library>/`               | libraries built apart: their chunks (`<target>/`) and headers (`include/`); [libraries.md](libraries.md) |
| `asm/<target>/data/`, `assets/` | splat's disassembly of the data, and the headers     |
| `asm/<target>/nonmatchings/`   | the functions not decompiled yet, one `.s` each       |
| `include/`                     | headers; `include_asm.h` and the `.inc` files came from splat (`include_asm.h` is ours now); `match.h`, the named workarounds |
| `tools/chunks.py`              | progress and the chunk issues                         |
| `tools/diff_func.py`           | one function of the build against the original (needs `extracted/`) |
| `tools/format.py`              | clang-format over `src/`, `include/` and `lib/` (`--check` in CI) |
| `tools/try_func.py`            | compiles one source and compares one function with its `.s` (no linking) |
| `tools/permuter_setup.py`      | a decomp-permuter directory for one function          |
| `tools/maspsx_plus.py`         | maspsx, plus `$gp` for small externs and `--div-no-checks` |
| `tools/paths.py`               | where a chunk's source and object are (`src/` or `lib/`) |
| `tools/get_compiler.sh`        | downloads a compiler, checked against `tools/compilers.sha256` |
| `tools/maspsx`                 | git submodule                                         |

The C++ pipeline is GCC's own `cpp` (`-lang-c++ -D__cplusplus`), then
`cc1plus -O2 -G<n> -fno-exceptions -fno-rtti` plus the target's or
library's flags, then `tools/maspsx_plus.py`, then GNU `as`; C is the
same with `cc1`. Each object's compiler and flags can differ
(`OBJ_GCC`, `OBJ_CFLAGS`, `OBJ_MASPSXFLAGS` in the Makefile).

## LANGIMG.DAT memory map

| Address               | File offset | Contents                                              |
|-----------------------|-------------|-------------------------------------------------------|
| –                     | 0x0         | 16-byte header (`assets/langimg/header.bin`)          |
| 0x80011800–0x80011820 | 0x10        | 8 words of data at the start of `.text`               |
| 0x80011820–0x800A7084 | 0x30        | game code (`chunk_00`–`chunk_74`)                     |
| 0x800A7084–0x800B716C | 0x95894     | PsyQ startup code and libraries (`lib_00`–`lib_07`)   |
| 0x800B716C–0x800B71D8 | 0xA597C     | constructor list (20 static initialisers) and destructor list (8) |
| 0x800B71D8–0x800B8734 | 0xA59E8     | `.rodata`: strings and jump tables, split by chunk    |
| 0x800B8734–0x800C46F0 | 0xA6F44     | data                                                  |
| 0x800C46F0–0x800C9F48 | 0xB2F00     | small data (`$gp` = 0x800C46F0)                       |
| 0x800C9F48–0x800DE7B0 | –           | bss (cleared by the entry point)                      |
| –                     | 0xB8758     | zeros to the end of the 2 KB sector (added by the Makefile) |

Each constructor-list entry is a `_GLOBAL_.I.*` static initialiser. GCC
emits it at the end of its source file, so each one marks the end of an
original translation unit.

## SCES_030.37 memory map

| Address               | File offset | Contents                                    |
|-----------------------|-------------|---------------------------------------------|
| –                     | 0x0         | PS-X EXE header                             |
| 0x80133334–0x80136B4C | 0x800       | boot code (`chunk_00`, `chunk_01`)          |
| 0x80136B4C–0x8014C22C | 0x4018      | startup code and libraries (`lib_00`–`lib_10`) |
| 0x8014C22C–0x8014D0C0 | 0x196F8     | `.rodata`, split by chunk                   |
| 0x8014D0C0–           | 0x1A58C     | data                                        |

## Open questions

- **Data sections.** The `.rodata` end and the start of small data are
  known; the `.data`/`.sdata` contents (vtables included, e.g. `Cobjet`'s at
  0x800C4978) are still one block each. Decompiled data will need them
  split by chunk like `.rodata`.
- **Library compiler.** See "Libraries".
- **maspsx options.** `--aspsx-version=2.79 --expand-div` haven't been
  checked against code that divides.
- **Translation-unit boundaries.** Only the static initialisers and
  splat's jump-table alignment hints are known so far.
- **Class names.** `Cobjet` comes from the game's class table. `CName`,
  `CNamed` and `CobjetLink` are placeholders.
