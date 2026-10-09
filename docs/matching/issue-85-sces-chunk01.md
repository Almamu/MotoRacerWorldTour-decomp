# Boot executable: chunk_01's parked functions (#85, #84)

A retry of the boot executable's parked functions, all of which had
equivalent C under `#ifdef NON_MATCHING`, plus a first decompilation of
the movie loop (chunk_00, #84). Compiler: GCC 2.91.66, `-G0`,
`-fsigned-char`.

| Function | Chunk | Was | Now | What did it |
|---|---|---|---|---|
| `LzssDecompress` | 01 | parked, 3 off | matches | `STORE_UNALIGNED` (`usw`) |
| `OpenArchive` | 01 | parked, ~70 off | matches | a `CdlFILE *` local; the entry pointer before the null check |
| `main` | 01 | parked, 2 off | matches | the entry point through a literal pointer |
| `LoadFile` | 01 | parked, 21 off | matches | statement order; a block-local margin; `allocated` cleared late |
| `FindEntry` | 01 | parked, ~65 off | parked, registers only | one range condition; reading `p->hash` |
| `func_80133334` | 00 | asm | parked, 77 off | (new) |

## LzssDecompress

The word-copy loop stores through an unaligned pointer (`swl`/`swr`). As
a store through a packed struct, GCC 2.91.66 emits the `usw` macro but
schedules the counter's decrement before it; the original has it after.
Every loop form tried (`for`, `while`, `do`, a temporary, a pointer
increment, `--len` in the condition) gave the same order. An `asm
volatile("usw ...")` after the load and the source increment matches:
GCC can't move anything across it. It's `STORE_UNALIGNED` in
`include/match.h`.

## OpenArchive

Two differences, each fixed by one change:

- The original keeps `&file` in a saved register for the search loop:
  `CdlFILE *fp = &file;` and `CdSearchFile(fp, path)`.
- It computes `arc + 16` in the delay slot of `if (arc)`, and the entry
  pointer from that: `e = arc->entries;` before the check, then the loop
  advances `e` by the entry size. (Assigning `loc` in the `for` header,
  or before the check, didn't.)

## main

Only the last call differed: the original loads the game's entry point
(`LANGIMG.DAT`'s first word, at 0x800117F0) into `$v1`; through a
declared symbol GCC uses `$a0` (`void` return) or `$v0` (`int`). No
return type or cast gave `$v1`. A literal pointer,
`(*(void (**)(void))0x800117F0)()` (`GAME_ENTRY`), does; the bytes are
the same as with the symbol (`lui $v1, 0x8001; lw $v1, 0x17F0($v1)`).

## LoadFile

- The packed-data copy sets its count and source (`n = size; s = dest +
  size;`) before loading the unpacked size.
- The original computes `size - 0x1400` and subtracts it; GCC reassociates
  `unpacked - (size - 0x1400)` to `unpacked + 0x1400 - size` in every
  inline form (casts, signed types, reordering). A block-local
  `u32 margin = size - 0x1400;` keeps it; a function-wide variable adds a
  saved register.
- decomp-permuter found the last one: `allocated = 0;` after the
  `FindEntry` call rather than as the declaration's initialiser.

## FindEntry (parked)

Two shape changes brought it to registers only:

- The sorted case checks the range with one condition, `if (hash >=
  e->hash && p->hash >= hash) { ... }`; with two early returns GCC folded
  the result to 0 on one path.
- The binary search compares `p->hash` directly; with an `h = p->hash`
  copy, the comparison was scheduled into a delay slot.

Left: the original swaps the saved registers of `arc` and `found`, and of
`e` and `count`. Declaration order makes no difference; 30,000 permuter
iterations found nothing plausible.

## func_80133334: the movie loop (parked)

Sony's `cd/MOVIE` play loop with a retry: 492 instructions, the control
flow matching. A `DPSHEADER` struct (`"DP"`, `"S"`, width, height, frame
count) for the file's first sector, read through a pointer, and a signed
compare of the frame counter (`(int)D_8014D0D4 > 60`) brought it from
339 differences to 77. The retry path is a `goto` back to the start, as
the original's layout shows (the retry code is placed before the start).

Left: the saved registers of `skipped`, the volume's address and the
decoder's address are rotated, and `strSetDefDecEnv`'s stack arguments
are computed in another order. A local `DECENV *dec` made it much worse;
`/ 2` vs `>> 1` and reordering the arguments' terms didn't help.
