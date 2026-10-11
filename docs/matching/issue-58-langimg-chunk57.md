# The game's chunk_57: the HUD's messages (#58)

The HUD's per-player state, two of everything (`Hud57`, `Txt57`):
- a message shown to a player for a time, from a table of texts and
  values;
- a player's timers and values cleared;
- how far through the lap the player is, in 4096ths;
- a time written as text (minutes, seconds, hundredths, colour codes);
- a value slid between two others as a countdown runs.

Also a node tree whose missing values come from its parents, and six
globals set or cleared together.

One file, `src/langimg/chunk_57.cpp`, 0x800831BC-0x80085258.

22 functions: 10 match, 3 are parked, 9 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals from `D_800CBD24` on.

## Notes

- **A table's entry through a pointer.** `func_80083D40` computes the
  message's address after storing a flag. With `D_800C73F8[k]` used
  directly (as an array or as a scalar), GCC computed it earlier; with
  the entry in a local (`m = &D_800C73F8[k];`) set after that store, it
  matched.
- **A gp global's neighbours, again.** `func_800846FC` clears
  `D_800CBD30` (a gp global) and the four words after it through its
  address. A second declaration without a size (chunk_58's technique)
  matched there; `func_800846AC`, which also sets them, is parked on the
  gp store's place.
- **A call's arguments read first.** `func_80084D58` matched with the
  window's two fields read into locals before the call (the permuter).
- **A recursive lookup.** `func_800841BC` returns a node's value or, if
  it has none, its parent's; `func_8008422C` fills a node's missing
  values from its parents.
- **A word stored anywhere.** `func_80083380` writes 4-byte colour codes
  into a string at any offset (`swl`/`swr`); a packed one-`int` struct
  gives that. It's parked on its registers.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800831BC` | asm | 113 instructions |
| `func_80083380` | parked | a time written: registers |
| `func_8008350C` | parked | a value slid: an unused 16-byte frame, the countdown read twice |
| `func_80083618` | asm | 149 instructions |
| `func_8008386C` | matches | a text cleared |
| `func_8008388C` | asm | 110 instructions |
| `func_80083A44` | matches | a player's HUD cleared |
| `func_80083AB8` | matches | how far through the lap |
| `func_80083B08` | asm | 141 instructions |
| `func_80083D18` | matches | a timer set |
| `func_80083D40`, `func_80083E14` | match | a message shown |
| `func_80083E78` | asm | 209 instructions |
| `func_800841BC`, `func_8008422C` | match | a node's values |
| `func_800842E8` | asm | 241 instructions |
| `func_800846AC` | parked | six globals set: the gp store's place |
| `func_800846FC` | matches | the globals cleared |
| `func_80084720` | asm | 256 instructions |
| `func_80084B1C` | asm | 143 instructions |
| `func_80084D58` | matches | a text drawn while bit 8 of the clock is set |
| `func_80084E1C` | asm | 271 instructions |
