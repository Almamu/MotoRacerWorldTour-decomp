# The game's chunk_03: object lists, trees, 2D drawing (#4)

More of the code GCC 2.91.66 built between the game's classes: the
`Cobjet` lists, the object tree's editing, three small `Cobjet` subclasses,
a sequence of objects and their linked entries, and the 2D drawing that
`func_80016E34` and the item lists use. One file, `src/langimg/chunk_03.cpp`,
0x800177E8-0x8001983C.

33 functions: 29 match, 3 are parked, 1 is still asm (`func_80018AEC`, the
text drawer).

## The settings

GCC 2.91.66, `-G8`, split addresses (no `-mno-split-addresses`),
`--small-externs=D_800C4988,D_800CA778` (`langimg.chunk_03_*`).

1. **The compiler.** `func_800177E8`, `func_80017948`, `func_80017A0C` and
   `func_80017A30` match with 2.91.66 only (2.95.2 is 3 to 53 off).
2. **First `-G0`, unsplit.** The first functions read globals with `lui`
   and matched with `-G0` and unsplit addresses, as chunk_02's had.
3. **Split addresses.** `func_800188CC`'s jump table address is built in a
   register (`lui`/`addiu`, `addu`, `lw 0(...)`); unsplit, GCC folds it into
   the load (`lw $3,$L146($2)`), and only 2.91.66 with split addresses
   matched it (2.8.0, 2.8.1 and 2.95.2 didn't). But with `-G0` and split
   addresses, five functions with global loads stopped matching.
4. **`-G8` with limited small externs.** `func_80018814` reaches
   `D_800CA778` through `$gp`, and `func_80018AEC` `D_800C4988`, which a
   `-G0` file can't. With `-G8`, GCC emits a global it might reach through
   `$gp` as a single `lw` macro, whatever the address mode, so the loads
   came out as before; and with only those two taken as small, everything
   else stays `lui`. All 29 match this way, `func_800188CC` included.
5. **chunk_02 too.** chunk_02 builds the same way with no small externs,
   every function still matching, and its parked `func_80015E04` now gets
   its table addresses right. chunk_02b doesn't: one of its matched
   functions breaks with split addresses.

So the 2.91.66 code is probably several files with these settings, each
defining a couple of small globals; chunk_02b's divisions without checks
set it apart.

## Not C after all

chunk_02's write-up called this code C. It isn't: `func_800178DC`
allocates with `new[]` and `delete[]`, the subclasses call `Cobjet`'s
constructor and destructor, and `func_80017E64` calls `CName::Equals`
with three arguments. `Equals` matched with one in chunk_02a because it
passes `$a2` and `$a3` on untouched; its callee, `func_800A6100`, is a
case-folded `strncmp` that uses `$a2` as its length. So `Equals` is
`(const char *, int n, int)`, renamed `Equals__5CNamePCcii`.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800177E8` | matches | draws a list's object trees (`func_80016E34`) |
| `func_800178DC`, `func_80017948`, `func_8001798C`, `func_80017A0C` | match | parts (`new short[n]`), the current model, `m_3F` |
| `func_80017A30`, `func_80017A9C` | match | the object's linked entries; virtual calls |
| `func_80017B88` | matches | a linked entry applied: a `switch` for types 3-5, bitfields as shifts, an unused 0x20-byte local for the frame |
| `func_80017CF0`, `func_80017D74`, `func_80017E10` | match | a list's slots; `delete` through the virtual destructor |
| `func_80017E64` | matches | find by name: the copy loop entered in the middle, a second pointer, `p = buf` before `q = name` (the permuter) |
| `func_80017FB4` | matches | the first free slot: a `goto` loop, `do { i = 0; } while (0)` (the permuter) |
| `func_80018008`, `func_80018048` | match | find by child; the constants set before a `goto` loop |
| `func_800180F4`, `func_80018130`, `func_8001816C`, `func_800181CC`, `func_8001885C`, `func_8001887C` | match | three subclasses' constructors and destructors |
| `func_80018224`, `func_800184A4` | match | an object put into the tree and taken out (`Next`, `NextOf`) |
| `func_800185F0` | matches | flags on a range of the list |
| `func_8001865C` | matches | textures resolved; its body inside `do { } while (0)` (the permuter) |
| `func_80018814` | matches | a wait: `i = 10; while (i--);` |
| `func_8001889C`, `func_800188CC` | match | a rotation; the alignment table (split addresses) |
| `func_80018954` | parked | a position on screen; stack addresses (open problem) |
| `func_80018AEC` | asm | the text drawer, 401 instructions; not written yet |
| `func_80019114` | parked | a prim's 2D item: scheduling of two global stores and branch layout |
| `func_800194E4` | matches | a 2D object's draw: the page tested twice, the prim read again |
| `func_80019578` | parked | a sequence started: registers only (15 off) |

- **Subclasses without names.** The three classes after `Cobjet` add only a
  destructor (their vtables, `D_800C4948`, `D_800C4958`, `D_800C4968`,
  have one entry). Their constructors and destructors are plain functions
  here, calling `Cobjet`'s through `asm`-labelled declarations
  (`CobjetCtor`, `CobjetDtor`, since `_._6Cobjet` isn't an identifier) and
  setting the vtable pointer at 0x50 themselves; written as C++ classes
  they'd need names, and the vtables would be emitted here.
- **Virtual calls by hand.** `D_800C886C`'s object has its vtable pointer
  at 0x68; `DRAW_SET` calls entry 14 through a `VtEntry` table, as GCC 2
  does (`lh` the delta, `lw` the function, `jalr`).
- **`goto` loops aren't loops to GCC's loop pass.** `func_80017FB4` and
  `func_80018048` test the count at the top and the result at the bottom
  (the `goto` shape, as `func_80016144`). Constants the original holds
  across such a loop are set in locals before the label: the loop pass
  doesn't see a `goto` loop, so it hoists nothing out of it.
- **Cross-jumping.** `func_80017E64` reads the first character and the
  others with the same statements; GCC merged the two copies until the
  loop used a second pointer (`q`), as the original's `$t0`.
- **Range tests.** `id >= 3 && id <= 5` became one unsigned compare in
  `func_80019578`, as the original has (written `(u32)(id - 3) < 3`); in
  `func_80017B88` the original has two compares, which a `switch` with
  cases 3, 4, 5 gave.
- **A constant compared with a variable stays hoisted.** `func_8001865C`
  holds `2` in a saved register only when the prim's kind is compared with
  a loop-local `two`; through a `switch` the case's `2` is a literal.

## What went wrong on the way

- A helper that swapped a function into a scratch copy matched the first
  occurrence of the name, a call or a declaration, and once replaced a
  declaration block in the real source; it now looks for the definition
  (a line ending in `{`).
- `try_func` can't check a function once its `.s` is gone. When a flag
  changes for the whole chunk, `make` (and `diff_func`) is the check.
