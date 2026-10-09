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
| `LANGIMG.DAT` (`chunk_*`)     | GCC 2.95.2, PlayStation build      | C++      |
| `SCES_030.37` (`chunk_*`)     | GCC 2.91.66 (egcs 1.1.2), PlayStation build | C++      |
| Libraries in both (`lib_*`)   | not identified yet (see "Libraries") | C      |

Both compilers are the `-psx` builds from
[decompals/old-gcc](https://github.com/decompals/old-gcc), run at `-O2`
with `-G8`, and PsyQ's assembler behaviour is emulated by
[maspsx](https://github.com/mkst/maspsx). The game uses `-G8`; the boot
executable `-G0`: it never addresses anything through `$gp`, and with
`-G8` its global loads come out as single assembler macros instead of the
split `%hi`/`%lo` pairs it has.

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

Both executables link Sony's PsyQ libraries after their own code, starting
with PsyQ's startup code (`__SN_ENTRY_POINT`: 0x800A7084 in the game,
0x80136B4C in the boot executable). They aren't to be decompiled by hand
(issue #97): where Sony's own object is what's linked, `make sdk` links it.

**Names.** `config/<target>/symbol_addrs.txt` has a generated block of
library names. Lines marked `exact` are functions of an SDK object found
whole in the executable (`tools/psyq_match.py`); "referred to by an SDK
object" ones (functions and data) are what Sony's objects call the
symbols they use, at the addresses their relocations have in the
original; the rest come from the
[psx_psyq_signatures](https://github.com/lab313ru/psx_psyq_signatures)
database (`tools/psyq_sigs.py`), which matches function by function and
places each object where most of it matches over every SDK version:

```sh
make sdk                                             # writes build/sdk/match.json
tools/psyq_sigs.py ../psx_psyq_signatures symbols build/sdk   # the block to paste in
```

**Sony's objects.** `tools/fetch_psyq.sh` downloads the runtime libraries
4.3, 4.4 (with Sony's `patches/`) and 4.7 from archive.org's `ps1_sdks`
collection, and decomp.me's `psyq-obj-parser`, into `tools/psyq/` (ignored;
nothing of it is committed), checking everything against
`tools/psyq.sha256`. Then `make sdk`:

1. `tools/psyq_match.py` converts every object to ELF and looks for its
   whole `.text` in the library code, every byte equal except what its
   relocations fill in, and where its calls and address loads of a known
   symbol land on that symbol. libds, libgs, libhmd, libmcx and libcomb
   are skipped: they carry copies of other libraries' code, and the
   executables use libcd (its strings are there).
2. `tools/psyq_link.py` rewrites the linker script: each library chunk
   becomes one object per function, and the functions that a matched
   object without data of its own covers are replaced by that object's
   `.text`. Symbols the objects need that this build doesn't define get
   their addresses from the original executable's relocated instructions.
3. `tools/sdk_build.sh` assembles, links and compares the result
   (`build/sdk/*.bin`), and records the replaced functions, which
   `tools/chunks.py` then counts as done.

The normal build stays on the tracked asm, so it needs none of this.

| | Game | Boot executable |
|---|---|---|
| Library functions named | 194 of 325 | 213 of 339 |
| SDK objects found whole | 103 (23 KB of 66 KB) | 122 (44 KB of 88 KB) |
| Linked by `make sdk` | 76 objects, 8.2 KB, 80 functions | 88 objects, 21.9 KB, 97 functions |
| SDK release | 4.3 (several objects are only in 4.3); one libpad object only in 4.7 | 4.4 (several only in 4.4); a libpad and a libsnd object only in 4.7 |

The other found objects have data of their own, which is still in the data
disassembly; they can be linked once the data is split by chunk (#101).
The rest of the library code matches no release: libcd's `BIOS.OBJ`, for
one, is 4.3/4.4's for its first 0x1100 bytes, but the game's `CD_init` has
debug `printf` calls that no released version has, so the game linked a
library build Sony shipped some other way. That code stays asm (and could
be decompiled, with the SDK's objects as a reference).

Splat finds the library functions' boundaries itself; `symbol_addrs.txt`
gives sizes only for one-function objects (the BIOS call stubs, which
splat can mistake for data).

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

## Decompiling a function

1. Read `asm/<target>/nonmatchings/<chunk>/<function>.s`. `m2c` gives a
   C draft: `m2c asm/langimg/nonmatchings/chunk_05/func_8001B778.s`.
2. In `src/<target>/<chunk>.cpp` (or `.c`), replace the function's
   `INCLUDE_ASM(...)` line with the code, where the line was. The order of
   the functions in the file is their order in the executable.
3. Delete the function's `.s` file.
4. `make`. Both lines must say `OK`. `tools/diff_func.py <function>` shows
   the instructions that differ.
5. If a name became known, `tools/rename.py TARGET OLD NEW` renames the
   symbol everywhere (`symbol_addrs.txt`, sources, the `.s` file); C++
   functions take their GCC mangled name (see below). `make` then
   re-splits.

A function that's understood but doesn't match after a real effort is
**parked**: its C goes under `#ifdef NON_MATCHING` with a comment saying
what differs, and its `INCLUDE_ASM` stays under `#else`
Keep its `.s` file.
`make NON_MATCHING=1` builds the C instead; the result differs from the
original only in those functions.

Data stays in splat's disassembly for now. A decompiled function refers to
a global by the symbol splat gave it (`extern u32 D_800C4A10;`, or a name
from `symbol_addrs.txt`), declared in a header.

### Matching notes

What it took to match the boot executable so far (likely to apply to the
game too; check before assuming):

- **Declarations matter, not only code.** The original was built against
  declarations where `free()`, `DecDCToutCallback()` and the heap
  allocator return `int`. With `void` (or pointer) returns, the
  registers right after the call come out differently, even when the
  result isn't used. When a register differs right after a call, try an
  `int` return on the callee first.
- **Signed `char`.** The boot executable's compiler had signed plain
  `char`; decompals' builds default to unsigned (`sces_CFLAGS` in the
  Makefile adds `-fsigned-char`).
- **`-G0`** for the boot executable, `-G8` for the game.
- **Statement order** decides the scheduling when nothing else does;
  reorder before rewriting.
- **Orphan literals.** Identical string literals are merged within a
  source file, so an unreferenced copy of a string belongs to the next
  file. Until the chunks follow the original files such data is spelled
  out (`D_8014C38C` after `Startup`).
- **Static object init/fini** (GCC's `_GLOBAL_.I`/`.D` functions) come at
  the end of the file that defines the object; inside a chunk they're
  written as plain functions that construct or destroy it.
- **Hand-written assembly** stays assembly: a run of it at the end of a
  chunk becomes its own `asm` segment (`asm/sces/vlc.s`); a single
  function inside a chunk is listed in `config/<target>/handwritten.txt`
  (it keeps its `INCLUDE_ASM` and counts as done).
- **[decomp-permuter](https://github.com/simonlindholm/decomp-permuter)**
  helps with what's left after that (register choices). It parses C, not
  C++: give it the function as plain C, compiled through `cc1plus`
  inside `extern "C" { }`.

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
| `config/<target>/symbol_addrs.txt` | known symbols                                     |
| `config/checksums.sha1`        | SHA-1 of the originals, checked against `build/*.bin` |
| `src/<target>/`                | one source file per chunk                             |
| `asm/<target>/data/`, `assets/` | splat's disassembly of the data, and the headers     |
| `asm/<target>/nonmatchings/`   | the functions not decompiled yet, one `.s` each       |
| `include/`                     | headers; `include_asm.h` and the `.inc` files came from splat (`include_asm.h` is ours now) |
| `tools/chunks.py`              | progress and the chunk issues                         |
| `tools/diff_func.py`           | one function of the build against the original (needs `extracted/`) |
| `tools/format.py`              | clang-format over `src/` and `include/` (`--check` in CI) |
| `tools/get_compiler.sh`        | downloads a compiler, checked against `tools/compilers.sha256` |
| `tools/maspsx`                 | git submodule                                         |

The C++ pipeline is GCC's own `cpp` (`-lang-c++ -D__cplusplus`), then
`cc1plus -O2 -G8 -fno-exceptions -fno-rtti`, then maspsx, then GNU `as`;
C is the same with `cc1`.

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
