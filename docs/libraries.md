# Libraries (`lib/`)

Code that was built separately from the executable it's linked into (a
library, with its own compiler or flags) lives under `lib/`, one directory
per library, so it can have its own build settings. The executables' own
code stays in `src/`.

| Library | What | Where | Compiler and flags |
|---|---|---|---|
| [`lib/sound/`](../lib/sound) | The game's sound engine: SPU voices, VAB banks, reverb, sound slots | `LANGIMG.DAT` 0x80011820-0x80013764 (chunk_00; it may go on into chunk_01, see below) | GCC 2.91.66, `-mno-split-addresses`, divisions without checks |
| [`lib/psyq/`](../lib/psyq) | Sony's PsyQ runtime libraries, from the startup code on | `LANGIMG.DAT` 0x800A7084-0x800B71D8 (lib_00-lib_07), `SCES_030.37` 0x80136B4C-0x8014C22C (lib_00-lib_10) | the executable's own (not identified; mostly matched by Sony's objects, `make sdk`) |

## Layout

```
lib/<name>/include/          the library's headers, on every file's include path
lib/<name>/<target>/<chunk>  its chunks, as src/<target>/ has the executable's
```

A library's code is still split into chunks like the rest (docs/decomp.md,
"Chunks"): a chunk of `lib/sound/langimg/` is the same splat segment it
was in `src/langimg/`, with the same issue, asm folder
(`asm/langimg/nonmatchings/chunk_00/`) and `INCLUDE_ASM` paths. Only its
source moved. Every tool finds it there (`tools/paths.py`).

splat still names every chunk's object after `src/` in the linker script.
`tools/chunks.py relink <target>` points those of the chunks in `lib/` at
their real objects (`build/langimg/lib/sound/langimg/chunk_00.o`); `make`
runs it after every split, and `tools/chunks.py check` fails if the
linker script doesn't link what's in `lib/`. splat never writes C files
(`create_c_files: False`), so a re-split doesn't bring a moved chunk back
as a stub in `src/`.

## Build settings

The Makefile gives a library its own settings with three variables, each
optional (the executable's apply otherwise):

```make
LIB_sound_GCC         := 2.91.66-psx                           # tools/gcc-<this>
LIB_sound_CFLAGS      := -mno-split-addresses                  # cc1/cc1plus flags
LIB_sound_MASPSXFLAGS  = $(MASPSXFLAGS) --div-no-checks        # maspsx's
```

A setting that's set, even to nothing (`LIB_x_CFLAGS :=`), replaces the
target's; one that isn't set leaves the target's.

`-G` stays the executable's: the library addresses the same small data
through the same `$gp`. Every setting needs evidence, written here: code
of the library that only matches with it, and no matched function that
stops matching.

## Moving a chunk into a library

```sh
mkdir -p lib/<name>/<target>
git mv src/<target>/<chunk>.cpp lib/<name>/<target>/
tools/chunks.py relink <target>     # the linker script links the new object
make                                # still OK
tools/chunks.py check
```

Its headers go to `lib/<name>/include/` (`#include "<header>.h"`; the
directory is on the include path). If the library starts or ends inside
a chunk, that chunk has to be re-cut first (`config/<target>.yaml`, which
needs the game to re-split; docs/decomp.md, "What git holds").

## sound: the game's sound engine

The first chunk of the game, 43 functions: voices (24), sound slots (30,
20 bytes each, handles of slot number and serial), the VAB tone table,
reverb, CD audio volume and the volume curve by distance. 20 match, 5
are parked (docs/matching/issue-1-langimg-sound.md).

**Compiler: GCC 2.91.66**, the boot executable's, not the game's 2.95.2:

- `func_80013348` (a handle to its slot) compiles to the original only
  with 2.91.66; with 2.95.2 the registers come out differently throughout.
  `func_80011898` (a VAB tone's field) too: 2.95.2 gets within two
  instructions in every form tried.
- Every other function of the chunk matched so far matches with either.
- Loops in it (`func_800118C4`, `func_80012F7C`) keep their counter and
  walk the fields with separate pointers, the way 2.91.66 compiles them;
  2.95.2 reduces them to one count-down pointer.

**Divisions without checks.** The game's own code divides with ASPSX
2.79's divide-by-zero and overflow checks (`--expand-div`); the sound
engine's divisions (`func_800128E8`, `func_80012FEC`) are a bare `div`
and `mflo`, with a `nop` before the next instruction that reads the
result. `tools/maspsx_plus.py --div-no-checks` assembles them that way.
So its assembler was another one, or ASPSX with other options.

**Addresses unsplit** (`-mno-split-addresses`), as in the rest of the game
(docs/matching_techniques.md, "Unsplit addresses"): with split ones,
`func_800121C0` gets a `lui` in a branch delay slot the original doesn't
have. But `func_800128E8` only matches with split addresses, and
`func_80012F7C` only with `-fno-rerun-cse-after-loop`, which breaks
`func_80012080`: the library may be several files built with different
flags (matching_techniques.md, "When a flag fixes one function and breaks
another").

That it was built apart, with the compiler the boot executable uses,
suggests a library Delphine kept and reused rather than code written for
this game.

**Open:** where it ends. `func_80013764`, the first function of chunk_01,
uses the sound globals throughout; it may belong to the library (if it
only matches with 2.91.66), in which case chunk_01 has to be re-cut.

## psyq: Sony's libraries

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
splat can mistake for data). `lib/psyq/include/psyq.h` declares what the
executables' own code calls.
