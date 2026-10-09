# The game's chunk_00: the sound engine (#1)

The first pass at the game's own code (`LANGIMG.DAT`). Before it, the only
matched game functions were eight small `Cobjet`/`CName` methods in
chunk_02, none of which touches a global; this chunk showed what the
rest of the game's build needs, and that chunk_00 itself was built
apart from the game. It now lives in `lib/sound/` ([libraries.md](../libraries.md)).

## What the build needed

Found in this order; each is a build setting, not source:

1. **Small externs through `$gp`** (`tools/maspsx_plus.py`). The game reads
   and writes small globals with `%gp_rel` from every file. maspsx only
   did that for variables the file defines, so the first eleven
   functions came out with `lui` + `lw` everywhere. GCC does say which
   externs are small (`.extern x, 4`), at the end of the file; the wrapper
   lets maspsx use that.
2. **Unsplit addresses** (`-mno-split-addresses`, the whole game).
   `func_800121C0` got `lui` in a branch delay slot in every source form
   (ternary, `switch`, early returns, re-reading the global); the original
   has a `nop` there because its address is one `la` macro. Nothing
   matched before changes with it; the boot executable stops matching
   with it, so it isn't used there.
3. **GCC 2.91.66 for this chunk.** `func_80013348` matches only with
   2.91.66, and `func_80011898` (found afterwards) too. A loop compiled
   with an up-counting counter and a pointer per field had pointed the
   same way: 2.91.66 compiles loops like that, 2.95.2 doesn't, and no
   2.95.2 flag (`-fno-rerun-loop-opt`, `-fno-strength-reduce`, `-O3`,
   ...) reproduced it.
4. **Divisions without checks** (`--div-no-checks`). `func_800128E8`'s
   division is a bare `div`/`mflo`; the game's own code has ASPSX's
   checks.

## Functions

| Function | State | Notes |
|---|---|---|
| `func_80011820` | matches | `s8` arguments: `(x << 24) >> 16` is a sign-extended byte times 256 |
| `func_8001184C` | matches | `goto` into the loop; 24 bytes of unused locals |
| `func_80011898` | matches | 2.91.66 only; pointer variable, then `t += i` |
| `func_800118C4` | parked | loop pointers |
| `func_80011924` | matches | result assigned last |
| `func_80011DA8` | matches | |
| `func_80011E08` | matches | `$gp` externs |
| `func_80011F84` | matches | |
| `func_800121C0` | matches | `-mno-split-addresses` |
| `func_800128E8` | parked | clamping order |
| `func_80012A88` | matches | |
| `func_80012F40` | matches | takes the handle and passes it on |
| `func_80012F7C` | parked | loop pointers |
| `func_80013098` | matches | takes the handle |
| `func_800130CC` | matches | takes the handle |
| `func_80013348` | matches | 2.91.66 only |
| `func_80013440`, `func_80013448`, `func_80013554` | match | empty |

24 functions of the chunk are still asm.

### func_8001184C

Waits up to 300 frames for the voices to go quiet. The original enters
its loop in the middle: `j` to the body, past the test of `n`. `while (n)`,
`for`, `do` with `&&` and `goto` loops with the test at the top all
compile the test on the way in; only an explicit `goto body;` (or a
`while` loop with a label inside it) skips it. Its frame is 0x30 bytes
with nothing in it but `$s0` and `$ra`: `int unused[6];` reproduces it.
The permuter (4 minutes) found neither.

### func_80011898

A field of a VAB tone: `(base + (prog * 0x200 + 0x820))[tone].field`.
Under 2.95.2 GCC folded `0x820 + 0xC` into the load in every inline form;
assigned to a pointer variable it didn't, and that got within two
instructions (the final `addu` with its operands swapped). Index forms,
byte offsets, a 2D struct, a precomputed offset and the permuter didn't
fix those two. Under 2.91.66, `t += note[2]; return t->unkC;` matches;
2.95.2 is 7 off with that same C.

### func_80011924

`r = 1;` before the two stores made GCC reuse `r`'s register (holding 1)
for `1 << voice`; the original loads 1 again. Moving `r = 1;` after the
stores matches.

### func_80012F40, func_80013098, func_800130CC

They call `func_80013348` with `$a0` untouched: they take a sound handle
and pass it on. Written with no parameters they matched as well (the
register is simply left alone), which was wrong; the callers pass the
handle.

### Parked

- `func_800118C4` (clears the 24 voices) and `func_80012F7C` (frees the 30
  sound slots): under 2.91.66 both loops keep the counter and use a
  pointer per field, like the original, but derive the pointers from one
  `la` where the original loads each with its own. In `func_800118C4` the
  original also shares one pointer between `unk4` and `unkA`; a nested
  struct for `unk4`..`unkB` didn't do that. In `func_80012F7C` the
  original keeps `~1` in a register: through an inline `ClearFlags()`
  (the permuter's idea) the mask stays in a register too (21 off, from
  23), the pointers still don't.
- `func_800128E8` (the volume by distance): the division is right since
  `--div-no-checks`; the clamping (`v < 0`, `v > 127`) comes out in
  another order.

## What went wrong on the way

`tools/try_func.py` at first compiled a function even when its source
still had the `INCLUDE_ASM` (or kept the C under `NON_MATCHING` without
the define), and so compared the original's instructions with
themselves. Several variants "matched" that way, and three functions
were unparked on it before the build said otherwise. It now refuses
both cases (matching_techniques.md, "Pitfalls").
