# The game's chunk_29: a race's players and its menus (#30)

What a race's game object (`Game29`) does for its two players:
- each player's state (`m_430`), picked from their bike's flags;
- a choice stepped back on a press;
- the players set up from tables;
- a scale's length and a value placed on it.

Around them:
- the menus' items set up through chunk_25's varargs item function;
- a file's path built (`"Data\Final\"`, a name from a table, `".bs"`);
- a global object constructed once;
- the destructors of classes on `Cobjet` and `CName`;
- functions that return 1.

One file, `src/langimg/chunk_29.cpp`, 0x8004B4B0-0x8004D560.

31 functions: 20 match, 2 are parked, 9 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, eleven
small globals.

## Notes

- **The scalar declaration, again.** It fixed four things here (chunk_47
  has the technique):
  - two vtables (`extern int D_800C6508;`, used as `&D_800C6508`): the
    destructors loaded them into the right register;
  - the global object's two vtables;
  - the menus' item table (`&D_800CABC0`), whose address the original
    computes anew for each call instead of keeping it;
  - the path's buffer and its table of names.
- **A string copied from the data.** `func_8004B96C` copies `"Data\Final\"`
  with a 12-byte `memcpy` from the string's symbol (a block move through
  address registers). It matched with the buffer declared a scalar and
  its address taken into a local first (`char *b = &D_800D4798;`), the
  `memcpy` naming the symbol itself.
- **A callee's result returned.** `func_8004B900` stores 1 through `$v1`
  because `$v0` holds `func_8004B480`'s result, which it returns.
- **Destructors by hand.** The classes' destructors set their vtable and
  call the base's through `asm`-labelled declarations (`_._6Cobjet`,
  `_._5CName`), as chunk_03 does.
- **One exit, and a `do { } while (0)`.** `func_8004C9D0` decides a
  player's state in three ways. Written as one `if`/`else if` chain with
  a single `return r`, its blocks came out in the original's order. Its
  registers then matched with the last test inside a `do { } while (0)`
  (the permuter; a workaround, marked at the use).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8004B4B0` | asm | 240 instructions |
| `func_8004B844`, `func_8004B900` | match | the menus' items set up |
| `func_8004B96C` | matches | a file's path |
| `func_8004BA04` | asm | 311 instructions |
| `func_8004BEE0` | matches | a global object constructed once |
| `func_8004BF30` | parked | a value placed on the scale: as `func_8004C02C` |
| `func_8004C02C` | parked | the scale's length: the original copies the column's pointer through several registers |
| `func_8004C0E4` to `func_8004C0FC` | match | return 1 |
| `func_8004C104` to `func_8004C184` | match | destructors |
| `func_8004C1BC` | asm | 116 instructions |
| `func_8004C38C` | matches | both players set up |
| `func_8004C3FC`, `func_8004C420` | match | a player's values set |
| `func_8004C430` | matches | a player's choice stepped back, unless their bike is busy |
| `func_8004C4E4` | asm | 160 instructions |
| `func_8004C764` | matches | a player set up from tables |
| `func_8004C7EC` | matches | a flag cleared on both players |
| `func_8004C870` | matches | a player's state from their bike |
| `func_8004C9D0` | matches | a player's state on a press (a `do { } while (0)`) |
| `func_8004CB5C` | asm | 128 instructions |
| `func_8004CD5C` | asm | 104 instructions |
| `func_8004CEFC` | asm | 91 instructions |
| `func_8004D068` | asm | 166 instructions |
| `func_8004D300` | asm | 152 instructions |
