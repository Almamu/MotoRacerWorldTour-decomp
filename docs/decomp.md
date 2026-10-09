# Matching decompilation

Goal: C++ source that compiles to the exact bytes of the game code
(`data\LANGIMG.DAT`) and the boot executable (`SCES_030.37`). Both currently
rebuild byte for byte from disassembly; functions move to `src/` as they are
decompiled.

Nothing extracted from the game goes into git. The originals are read from
`extracted/`, and splat's disassembly (`asm/`), binary pieces (`assets/`) and
the build (`build/`) are all ignored.

## Compiler

The game code is C++ built with **GCC 2.95.2** for the PlayStation (the
`gcc-2.95.2-psx` build from [decompals/old-gcc](https://github.com/decompals/old-gcc)),
`-O2`, with PsyQ's assembler behaviour emulated by
[maspsx](https://github.com/mkst/maspsx).

How it was identified:

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
- **Libraries.** Both executables link the same PsyQ libraries: libcd
  `bios.c` 1997-03-28, `intr.c` 1997-02-07 and libgpu `sys.c` 1998-01-12.

`src/langimg/cobjet.cpp` is the proof: seven functions compiled from C++
(`CName`'s constructor, destructor, `Get` and `Equals`, `CNamed`'s
constructor, `Cobjet`'s constructor and destructor) give the original
bytes. The eighth, `CName::Set`, differs by one register; its C++ is kept
under `NON_MATCHING` and the build uses the original asm.

The boot executable is C; its compiler hasn't been pinned down yet (its
`StrUpper` compiles the same way under every candidate).

## Setup

Tools come from the Nix devshell (`direnv exec .`): mipsel binutils, splat,
spimdisasm, m2c and objdiff. Then:

```sh
make setup   # tools/gcc-2.95.2-psx (checksummed download) and the maspsx submodule
make         # split with splat, build, compare with config/checksums.sha1
make NON_MATCHING=1 build   # use the C++ of functions that don't match yet
```

`make` regenerates the linker scripts and disassembly from `config/*.yaml`
and `config/*/symbol_addrs.txt` whenever those change.

## Layout

| Path                           | What                                                  |
|--------------------------------|-------------------------------------------------------|
| `config/langimg.yaml`          | splat config for `LANGIMG.DAT`                        |
| `config/sces.yaml`             | splat config for `SCES_030.37`                        |
| `config/<target>/symbol_addrs.txt` | known symbols; C++ functions use GCC 2.95 mangled names (`__6Cobjet`, `_._6Cobjet`, `Set__5CNamePCc`, `_vt.6Cobjet`) |
| `config/checksums.sha1`        | SHA-1 of the originals, checked against `build/*.bin` |
| `src/langimg/*.cpp`            | decompiled game code; `INCLUDE_ASM` for functions not done yet |
| `include/`                     | headers; `include_asm.h`, `macro.inc` and the other `.inc` files come from splat |
| `tools/get_compiler.sh`        | downloads the compiler, checked against `tools/compilers.sha256` |
| `tools/maspsx`                 | git submodule                                         |

The C++ pipeline is GCC's own `cpp` (`-lang-c++ -D__cplusplus`), then
`cc1plus -O2 -G8 -fno-exceptions -fno-rtti`, then maspsx, then GNU `as`.
`INCLUDE_ASM` takes the function's mangled name. When the name contains a
`.` (destructors), the C++ for that function has to match before the file
can be used, because the macro can't build its wrapper name from it.

## LANGIMG.DAT memory map

| Address               | File offset | Contents                                              |
|-----------------------|-------------|-------------------------------------------------------|
| –                     | 0x0         | 16-byte header (`assets/langimg/header.bin`)          |
| 0x80011800–0x80011820 | 0x10        | 8 words of data at the start of `.text`               |
| 0x80011820–0x800B716C | 0x30        | code                                                  |
| 0x800B716C–0x800B71D8 | 0xA597C     | constructor list (20 static initialisers) and destructor list (8) |
| 0x800B71D8–0x800C9F48 | 0xA59E8     | read-only data, data and small data (see below)        |
| 0x800C9F48–0x800DE7B0 | –           | bss (cleared by the entry point)                       |
| –                     | 0xB8758     | zeros to the end of the 2 KB sector (added by the Makefile) |

Each constructor-list entry is a `_GLOBAL_.I.*` static initialiser. GCC
emits it at the end of its source file, so each one marks the end of an
original translation unit.

## Open questions

- **Data sections.** Writes reach most of 0x800B71D8–0x800C9F48, including
  next to the vtables (e.g. `Cobjet`'s at 0x800C4978). The original
  `.rdata`/`.data`/`.sdata` boundaries aren't known yet, so splat treats the
  area as three generic pieces. Until they are, vtables stay in the
  disassembled data: the headers use `#pragma interface` so GCC doesn't
  emit them.
- **maspsx options.** `--aspsx-version=2.79 --expand-div` haven't been
  checked against code that divides.
- **Translation-unit boundaries.** Only the static initialisers and splat's
  jump-table alignment hints are known so far.
- **Class names.** `Cobjet` comes from the game's class table. `CName`,
  `CNamed` and `CobjetLink` are placeholders.
