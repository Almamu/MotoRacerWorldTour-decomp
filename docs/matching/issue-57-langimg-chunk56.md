# The game's chunk_56: a height map, a camera, the race's panel (#57)

A list of pointers and its searches; a map of columns (`Map56`), each a
sorted run of spans searched for a height, and its parts allocated and
freed by kind; an object holding the map and its constructor and
destructors; a camera set from a position, and the GTE moving a set of
vertices onto the ground beneath them; and the race's panel (`Grid56`):
its strings emptied, the riders' count, the laps, each row's number,
times and markers. One file, `src/langimg/chunk_56.cpp`,
0x80081270-0x800831BC.

34 functions: 24 match, 8 are parked, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, seven
small globals.

## Notes

- **Searches that aren't rotated.** The list's lookups test the bound at
  the top: `while (r == -1) { if (i >= l->m_08) break; ... i++; }`, the
  array indexed (`l->m_00[i]`) so that strength reduction makes the
  pointer.
- **A table as a scalar.** `func_80082B64` reads `D_800C8AC4` with the
  index's shift before the address; it's declared `extern int` and read
  through `&D_800C8AC4` and a byte offset, as in chunk_47.
- **A binary search with two returns.** `func_80081330` returns 3 from
  two `if`s in a row and its result once at the end.
- **Allocated or freed by kind.** `func_800816F8` has a jump table per
  path: the allocations' table runs to 8 (two empty cases at the end),
  the elements with empty constructors leave count-down loops (`new
  Ctor12[n]`), the map itself comes from `operator new` (`__builtin_new`)
  and its constructor. Each path has its own pointer variable.
- **The GTE through `$v0` and `$v1`.** `func_80082468` loads the camera's
  matrix like `GTE_SET_ROT` through `$v0` and `$v1`, then its translation
  shifted right by 4; both are `asm` macros (`GTE_SET_ROT_V`,
  `GTE_SET_TRANS_V`). The translation's is an assumption: its registers
  alternate in a way GCC's don't.
- **Tests apart.** `func_80082BEC` tests a time against -1 and 0 in
  nested `if`s, where `&&` became one unsigned test. It stays parked on
  its registers.
- **`count - 1` once.** `func_80083078` computes the riders' count less
  one into a local and uses it for the clamp and the call.
- **Strings copied from the data.** `func_80082904` copies `" Laps"` or
  `" Lap"`, `func_80082A8C` a two-character string: probably `strcpy`s of
  literals, turned into block moves. A `memcpy` from the data's symbols
  gets the loads and stores but not the address's registers; both stay
  parked.
- **`try_func` doesn't compare calls.** `new u8[0x30]` matched in
  `tools/try_func.py` but called `__builtin_vec_new`; `make` failed on
  one byte.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_80081270`, `func_800812C4`, `func_80081318` | match | the list: a key's index, the first empty place, an entry |
| `func_80081330` | matches | the map's height at (x, y): a binary search of the column's spans |
| `func_8008142C`, `func_8008145C` | match | the map's constructor (a `memset`) and destructor (ten arrays freed) |
| `func_800815B0` to `func_800816B4` | match | the object's constructor, reset, release and destructor |
| `func_800816F8` | matches | the map's parts allocated or freed by kind |
| `func_80081A78` | asm | 276 instructions |
| `func_80081EC8` | matches | two arrays freed |
| `func_80081F28` | matches | the camera at a position, unturned |
| `func_80081FE0` | asm | 291 instructions |
| `func_80082468` | matches | the vertices moved by the camera, each set on the ground |
| `func_8008259C` | matches | two virtual calls on `D_800CBDC4` around a draw call |
| `func_8008264C` | matches | four values from a table |
| `func_8008267C` | parked | an index kept and two fields set from a table: the table's address and the index swap |
| `func_800826BC` | parked | a rectangle from the boxes: registers (24 off) |
| `func_800827DC`, `func_8008280C` | match | a table's index from a value's size in bits (the GTE's leading zeros) |
| `func_80082840` | matches | the panel's strings emptied |
| `func_80082904` | parked | the panel set up: the strings' copies (12 off) |
| `func_80082A8C` | parked | how many riders are in, and a marker: the string's copy (9 off) |
| `func_80082B14`, `func_80082B64` | match | a time as text, a rider's value tested against a table by mode |
| `func_80082BEC` | parked | a row's three times around the rider's: registers |
| `func_80082DA4` | matches | a cell's digit, or `-` |
| `func_80082DE4` | parked | a 4-byte string: its address's register |
| `func_80082E74` | matches | a pointer chosen by an item's kind |
| `func_80082F1C` | matches | a row's number as text |
| `func_80082FA8` | parked | the lap's time, coloured by how fast: `$s0` and `$s1` swap |
| `func_80083078` | matches | a row of the panel, for the rider shown |
