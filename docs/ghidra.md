# Decompiling with Ghidra

The game code (`data\LANGIMG.DAT`, see [executables.md](executables.md)) can
be decompiled with Ghidra's headless analyser. The helper scripts are in
`tools/ghidra/`. The Ghidra project lives in `extracted/ghidra/`, which is
git-ignored.

## One-time setup

```sh
mkdir -p extracted/ghidra

# Import as a raw MIPS little-endian binary at its load address.
ghidra-analyzeHeadless extracted/ghidra mrwt \
  -import extracted/mr3dat/data/LANGIMG.DAT \
  -processor MIPS:LE:32:default -loader BinaryLoader \
  -loader-baseAddr 0x800117f0

# A raw binary has no symbols or entry points, so create a function at
# every jal target (plus the entry point) and re-run the analysis.
ghidra-analyzeHeadless extracted/ghidra mrwt -process LANGIMG.DAT \
  -scriptPath tools/ghidra -preScript SeedFunctions.java 0x800a7084
```

## Decompiling functions

```sh
tools/ghidra/decomp.sh out.c 0x800a5530 0x800a54f8
```

This writes Ghidra's C for each function containing the given addresses.

## Caveats

- Calls into the boot executable (0x8013xxxx–0x801Cxxxx: archive, CD, GPU
  and SPU libraries) leave the imported range and show up as unknown
  functions. See [executables.md](executables.md) for the known ones.
- On this raw import Ghidra sometimes gets function boundaries or
  parameter counts wrong. Check against the disassembly when a call site
  passes more arguments than the decompiled callee takes.
