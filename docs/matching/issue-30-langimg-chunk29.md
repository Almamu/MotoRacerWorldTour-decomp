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

31 functions: 23 match, 5 are parked, 3 are still asm.

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
- **`func_8004C4E4` (fifth pass).** The view mode's clamp is written with
  its default first, `if (c >= 0) { m = 5; if (c < 6) m = c; } else m = 0;`
  (as an `if`/`else if` chain the compares came out in another order), the
  player, the index and the run read in that order, and the modes as a
  `switch` whose mode 1 falls into mode 0 and mode 0 into the default.

## Group B, more functions

- **`func_8004D300`** (a camera behind its bike, turned half a turn) is
  written and parked, 33 off. Its frame (0x90, an unused 0x20 at 0x10 the
  original reserves too), its slots and its calls are the original's: the
  half turn and the product in an inline function (their addresses
  recomputed, #289's finding), `&w`, the view's translation and the
  position kept in saved registers, the sine and cosine read before the
  view, the offset set through `SetVec29`. Left: the product's matrix and
  `w` share the slot at 0x30, and GCC merges the two addresses, building
  it in `$s1` early (and addressing the angle through it).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8004B4B0` | parked | the race's seats: a constant's register |
| `func_8004B844`, `func_8004B900` | match | the menus' items set up |
| `func_8004B96C` | matches | a file's path |
| `func_8004BA04` | asm | 311 instructions |
| `func_8004BEE0` | matches | a global object constructed once |
| `func_8004BF30` | parked | a value placed on the scale: as `func_8004C02C` |
| `func_8004C02C` | parked | the scale's length: the original copies the column's pointer through several registers |
| `func_8004C0E4` to `func_8004C0FC` | match | return 1 |
| `func_8004C104` to `func_8004C184` | match | destructors |
| `func_8004C1BC` | parked | a player given a bike: an address's order |
| `func_8004C38C` | matches | both players set up |
| `func_8004C3FC`, `func_8004C420` | match | a player's values set |
| `func_8004C430` | matches | a player's choice stepped back, unless their bike is busy |
| `func_8004C4E4` | matches | a player's view mode set |
| `func_8004C764` | matches | a player set up from tables |
| `func_8004C7EC` | matches | a flag cleared on both players |
| `func_8004C870` | matches | a player's state from their bike |
| `func_8004C9D0` | matches | a player's state on a press (a `do { } while (0)`) |
| `func_8004CB5C` | matches | a player's camera target, or the identity |
| `func_8004CD5C` | matches | a player's view from their current object |
| `func_8004CEFC` | asm | 91 instructions |
| `func_8004D068` | asm | 166 instructions |
| `func_8004D300` | parked | a camera behind a bike: an address merged |

## Fourth pass

- `func_8004CD5C` (a player's view: from its current object's matrix, or
  through the object it targets) matched with its translation copied
  field by field (all three loads, then the stores) into a local, and the
  scene's objects table read into a local before the index's test.
- `func_8004CB5C` (the camera's target found through chunk_61's
  `func_8008C500` or `func_8008C678`, else the view reset to the identity)
  matched with the result set after the call (`func(...); r = 1;`, chunk_36's
  case): set before it, GCC put the `1` before the arguments.
- `func_8004C1BC` (a player given a bike: the bike's player and its time
  set, a text with its number) is parked 2 off: the original adds the
  player's index to `g + 0x470`, GCC adds `0x470` to the index first; with
  the base read into a local first the order comes right but -1 and the
  pointer swap registers (8 off).
- The chunk now includes `psyq.h` (`MATRIX`) and has its own `Vec29`; the
  bike, the run and the game got the fields these use.

## Group B follow-up, continued

- `func_8004B4B0` written and parked (150 off, most of it a shift): the
  race's five seats (`D_800D5E48`, 8 bytes each: a colour byte and a kind,
  1 a player, 3 the computer's, 2 a ghost) filled by the mode `D_800D5F40`
  (a jump table) and the player count `D_800D5F3C` (a `switch`), the
  colours from `D_800D5F50` plus 1 or 8 times `D_800D5F34`, then three
  `func_80045168` calls. The counters are initialised after the calls.
  Left: the original keeps the constant 1 in a saved register across
  `func_80050E88` for the player count's compare, which shifts everything
  after it by one instruction. A permuter run found only changes to the
  meaning.
