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
| `func_80011C5C` | matches | (second pass) |
| `func_80011D10` | parked | the slot loop, as `func_80012F7C` |
| `func_80012080` | matches | a struct array and a plain `for` |
| `func_80012120` | matches | an `int` parameter; the key loaded before the loop |
| `func_80012FEC` | matches | an unsigned division; the `mflo` delay |
| `func_800133A0` | parked | store order |
| `func_80011FCC` | parked | (third pass) |
| `func_80013108` | parked | the slot loop |
| `func_80012E58` | matches | (fourth pass) `u8 end = 0xFF` in the loop |
| `func_80013450` | matches | (fourth pass) `CopyVector`; `x` divided first |
| `func_80011BA4` | matches | (fourth pass) `s8` status; zeroed after the call |
| `func_8001280C` | matches | (fourth pass) `-(angle + 0x400) + ratan2(...)` |
| `func_8001355C` | matches | (fourth pass) the facing vector's address taken early |
| `func_8001363C` | matches | (fourth pass) `CopyVector`; `func_80099DCC` declared `void` |
| `func_80011960` | matches | (fourth pass) `VOICE(i)`; `-1` set in the loop |
| `func_80011A68` | matches | (fourth pass) `VOICE(i)`; `-1` and `1` set in the loop |
| `func_8001295C` | matches | (fourth pass) |
| `func_80012C18` | matches | (fourth pass) the voice pointer once; the counter first |
| `func_80012D38` | matches | (fourth pass) as `func_80012C18`, with `u8 end` |
| `func_80011E44` | matches | (fourth pass) one `|=` of a conditional; the last stores' order |
| `func_80012AF0` | parked | (fourth pass) scheduling |
| `func_800131D0` | parked | (fourth pass) one `la` per field, as the slot loops |
| `func_800121F4` | parked | (fourth pass) the loop's pointers; registers |
| `func_80012504` | parked | (fourth pass) needs split addresses; the volumes' order |

None is asm only any more: 32 match, 11 are parked.

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

## Second pass

Six more functions: four match, two are parked, and `func_800128E8` came
closer.

- **`func_80012080`** (a bank entry's value by name): with byte offsets
  and a `do` loop the counter's increment and the offset's add landed
  elsewhere; a `Dir`/`DirEntry` struct and `for (i = 0; i < dir->count;
  i++)`, re-reading the global, match.
- **`func_80012120`** (a byte of every record whose 4-letter name
  matches): the value parameter is an `int` (as `s8` it got a sign
  extension the original doesn't have), and the key word is read into a
  variable before the loop.
- **`func_80012FEC`** (the longest note of a chain of 44-byte records):
  the parameter is an `int`, the division unsigned
  (`(u32)(x * 28000) / rate`), and the original has a `nop` after the
  division's `mflo`, before the instruction that reads it. `func_800128E8`
  has the same `nop`, across a label; `--div-no-checks` now adds it.
- **`func_800128E8`**: two `if`s for the clamp (not `else if`) and
  `v = 127 - v;` before the table read bring it to the table's address
  only: the original forms it with `la` and `addu`, which GCC does with
  split addresses. With split addresses it matches, but `func_800121C0`
  doesn't.
- **`func_80012F7C`**: matches with `ClearFlags` and
  `-fno-rerun-cse-after-loop`, which breaks `func_80012080`.
- **`func_80011D10`** (frees every slot and voice) has the same loop as
  `func_80012F7C`, writing the flags field twice through two pointers
  (`unk6 = 0`, later `unk6 &= ~1`).
- **`func_800133A0`** (starts a sound in a free slot): close in shape; the
  order of the slot's stores and of the serial number's load differs in
  every order tried.
- Also tried for the library as a whole: `-fno-delayed-branch` (matches
  `func_800121C0` with split addresses, and breaks nearly everything
  else).

## Third pass

Four more functions written, all parked, and some negative results worth
keeping:

- **`func_80011FCC`** (compares a name with a directory entry's, ignoring
  case): the original range-checks the unsigned byte (`(u32)(c - 'A') <
  26`) and compares sign-extended ones, reading the entry's byte signed
  for the zero test and unsigned for the value: a `tolower()`-style
  macro. Closest: 37 of 45 off.
- **`func_80013108`** (frees the slots whose voices all stopped, returns
  a free one): the same freeing sequence as `func_80012F7C` and
  `func_80011D10` (`unk4 = 0; unk0 = -1; unk6 &= ~1;`), so likely a
  shared macro or inline. An inline `FreeSlot()` alone didn't help.
- **`func_80012E58`** (keys off a sound's voices along its chain of
  notes): the original keeps `0xFF` in a saved register and jumps back to
  the top of the outer loop; `while (1)`, `goto` and `do` forms all miss.
  (Matched in the fourth pass: the `0xFF` as a `u8` set in the loop.)
- **`func_80013450`** (places the listener): struct copies of four
  vectors, then an angle with `ratan2`; libgte's `copyVector` macro shape
  was further off than a plain struct assignment (56 of 65). (Matched in
  the fourth pass: an inline that copies a word at a time.)
- The slot loops are no better as C (`cc1`) than as C++, nor with GCC
  2.7.2, 2.8.0 or 2.8.1 (fetched for the test): 2.91.66 is closest
  throughout. `-fsigned-char` changes nothing that matters.
- The 3D functions' divisions have no checks: they're library code.

## Fourth pass

Twelve more match (two of them were parked), and the last five
functions are written and parked: 32 of the 43 match, the other 11 are
parked. What did it:

- **Why the voice loops wouldn't strength-reduce.** `func_80011A68`'s
  loop came out indexing `i * 16 + D_800C9F70` on every access, the
  original walking the fields with pointers. GCC's loop dump
  (`tools/try_func.py ... --cflags=-dL`) said why: the array's address
  was "not desirable" to hoist (computed once, the loop too long for it
  to pay), and the one address "not worth" reducing. Written
  `(&D_800C9F70[i])->field` each access computes it again, so it's
  hoisted and every field gets its pointer: `VOICE(i)`. The constants
  the original keeps across the loop (`-1`, `1`) had to be locals set in
  the loop, so they're hoisted first, in the original's order.
  `func_80011960` was found with the permuter (a `Voice *` taken after
  the first store), then reduced to the same two changes.
- **The note chains.** `func_80012C18`, `func_80012D38` and
  `func_80012E58` follow a sound's notes (`note += note[3] * 44` until
  `0xFF`); `u8 end = 0xFF;` set in the loop puts `0xFF` in a saved
  register as the original has it. The voice entry's address is taken
  once and passed on, and the result counter is zeroed before the
  slot lookup.
- **The 3D functions.** The vector copies are three loads then three
  stores (`CopyVector`), not a struct assignment. `ratan2`'s second
  argument is divided first, through a variable. `func_8001363C` needs
  the shift function `func_80099DCC` declared `void` (it returns its
  destination; with that declared, the registers after the call differ).
- **The voice's owner.** A voice's 0xC field is the `SlotVoice` of the
  sound that has it (set to -1 when the voice is taken away):
  `Voice.owner`. The bank's directory starts the bank file; its pointers
  are offsets until `func_80011E44` relocates them, `records` is the VAB
  (header and programs) and 0x1C its samples, sent to SPU memory and
  then freed.

- **`func_80011E44`** (loads the bank), from 54 off: the permuter found
  the chained `p = *(u16 **)(vab + 0x1C) = ...` and the samples'
  relocation before `D_800C4734 = ...` (to 10); `D_800C46FC |= (flags &
  0x80) ? 4 : 2;` rather than an `if` with a `|=` in each branch (to 3:
  GCC merges the two identical stores only after scheduling, so the
  loop's constants couldn't move above them); and the four stores at
  the end in one of the 24 orders, found by trying them all (to 0).

Parked:
- **`func_80012AF0`** (a note placed in 3D): 23 off, the order of the
  parameter copies in the prologue and of the volume multiplications.
- **`func_800131D0`** (frees stopped voices): the same `la`-per-field
  problem as `func_800118C4` and `func_80012F7C` (matching_techniques.md,
  "Open problems"), and `~1` in a register.
- **`func_80012504`** (starts a voice: fills libspu's `SpuVoiceAttr` from
  the note and its VAB tone): the original takes `&D_800C9F70[v].owner`
  as `la D_800C9F7C` + an index, which GCC only does with split
  addresses; with them the frame, the saved registers and most of the
  code line up, once the result is returned through one exit (`r` in
  `$fp`), `|x|` is the branchless `ABS()` and the tone's fine tune is
  read before the pitch. Left: the two volumes are multiplied in the
  other order.
- **`func_800121F4`** (finds a voice, stealing the lowest-priority one):
  the original walks the voices of a pair with three pointers that serve
  both, and reads the priority (`Voice.unk8`) as a `u16`.

### The flags, function by function

Every function compiled with each of the two flags in question (the
library's `-mno-split-addresses` dropped; `-fno-rerun-cse-after-loop`
added), matched or parked:

| Functions | Unsplit addresses | Second CSE pass |
|---|---|---|
| `func_80011960`, `func_80011A68`, `func_80011BA4`, `func_800121C0` | needed | needed (`func_80012080` too) |
| `func_800128E8` | breaks it (it matches only without) | either |
| `func_80012504` (parked) | the original's shape only without | either |
| `func_80012F7C` | needed | breaks it (it matches only without, with `ClearFlags`) |
| `func_80013348` | needed | either |
| `func_8001355C` | either | needed |
| every other matched function | either | either |

So no one set of flags builds the whole chunk, but the conflicts fall in
address ranges: the voice code up to `func_800121C0` needs both; the
note code from `func_800121F4` (`func_80012504`, `func_800128E8`) wants
split addresses; the slot code around `func_80012F7C` and `func_80013348`
unsplit addresses without the second pass; the 3D code at the end the
second pass. That's the shape of several source files built with
different options (libraries.md). Testing it means cutting chunk_00
into one chunk per supposed file, each with its flags; not done yet.

Tried for those loops, without effect: `(&a[i])->`, constants in the
loop, `short` for the flags, the array defined in the file or of unknown
size, split addresses. `-fno-rerun-cse-after-loop` still fixes
`func_80012F7C`, and now breaks three more matched functions.

## What went wrong on the way

`tools/try_func.py` at first compiled a function even when its source
still had the `INCLUDE_ASM` (or kept the C under `NON_MATCHING` without
the define), and so compared the original's instructions with
themselves. Several variants "matched" that way, and three functions
were unparked on it before the build said otherwise. It now refuses
both cases (matching_techniques.md, "Pitfalls").
