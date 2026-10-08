#!/usr/bin/env bash
# Decompile functions of data\LANGIMG.DAT with Ghidra headless.
#   tools/ghidra/decomp.sh <out.c> <addr> [<addr> ...]
# Expects the Ghidra project created as described in docs/ghidra.md
# (extracted/ghidra/mrwt with LANGIMG.DAT imported and analysed).
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$here/../.." && pwd)"
out="$(realpath -m "$1")"; shift
ghidra-analyzeHeadless "$root/extracted/ghidra" mrwt -process LANGIMG.DAT -noanalysis -readOnly \
  -scriptPath "$here" -postScript DecompileFunctions.java "$out" "$@" > "$root/extracted/ghidra/decomp.log" 2>&1
