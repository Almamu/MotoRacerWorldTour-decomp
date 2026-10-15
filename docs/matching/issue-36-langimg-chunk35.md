# The game's chunk_35: the race's restart, collisions and camera (#36)

More of the race (`Own35`, chunk_34's `Own34`), its run and bikes:
- a call passed through to `func_8006F7A0` (`func_80057CF4`);
- two bikes' models passed to chunk_12's `func_800297B4` when they're
  within 0x31000, the one whose model has its value at 0x59 set first
  (`func_80058364`);
- the camera's bike (`Cam35` at the race's 0x3EC, its bike at 0x74) of
  kind 2: its model passed to a run of functions (`func_80068900`,
  `func_800681A4`, `func_800653F4` by the bike's state, then
  `func_80065954`, `func_80068B60`, `func_800663AC`, `func_800692EC`,
  `func_800678C8`), and the bikes of kind 2 in the race to the group at
  0x3F4 (`func_80058FCC`);
- parked: the bikes' states and times reset for a start
  (`func_80057B18`), the clamped squared distance of two positions
  (`func_80057FC4`), the bikes' collisions pair by pair (`func_80058070`),
  the places after a step and the text when one changes
  (`func_800591D4`), the race restarted with the second bike placed on the
  first (`func_800574EC`).

One file, `src/langimg/chunk_35.cpp`, 0x800574EC-0x800593CC.

12 functions: 4 match, 5 are parked, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800C68BC` and `D_800CB3C4`.

## Notes

- **A case with its own call.** `func_80058FCC` calls `func_800653F4`
  with 0 for the state 1 and with a value for 2 to 4; the original's
  compare tree tests 2 first, then below 3. `case 2:` with its own call
  (the same as `case 3: case 4:`'s) gave it; with the three cases
  together GCC tested 1 first. The value is set in an `if`/`else` (`v =
  0xFF; ... else v = 0;`), not before.
- **Variables reused across loops.** `func_80058070`'s inner loop over
  the bike pairs uses the first loop's counter and pointer (the same saved
  registers), the outer loop new ones.
- **Parked.**
  - `func_80058070`: the constant 3 for the kinds' tests. The original
    loads it in `$t0` in the outer loop and hoists it to `$fp` for the
    inner loop only; GCC hoists it out of the outer loop, which shifts the
    rest by one instruction (119 off, the registers otherwise right).
    Written with `continue` or a `do` loop it didn't change.
  - `func_800591D4`: the race and a flag in swapped saved registers (27
    off).
  - `func_80057FC4`: registers and scheduling (39 off).
  - `func_80057B18`: the original keeps -1 in a saved register for the
    laps; GCC loads it in the loop (116 off).
  - `func_800574EC`: the track pointer and the second argument in
    swapped saved registers, and the scheduling around three calls (155
    off, most of it shifted).
- **Still asm.** `func_80057814` (193 instructions), `func_80057D14` (172,
  with `$fp` and spills), `func_800583BC` (398) and `func_800589B0`
  (391), not tried.
- **`func_80057814` (fifth pass), parked.** Written with pointers to the two
  gate entries and no early returns; the racer at the other end of the gap
  is in `$t1` where the original has `$a3` (where it also compares with
  -1), and the lap in `$a3` where it has `$t2` (63 off).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800574EC` | parked | the race restarted: registers |
| `func_80057814` | parked | a gate passed, the gap shown: registers |
| `func_80057B18` | parked | the bikes reset: a constant |
| `func_80057CF4` | matches | a call passed through |
| `func_80057D14` | asm | 172 instructions |
| `func_80057FC4` | parked | a squared distance: registers |
| `func_80058070` | parked | the collisions: a constant |
| `func_80058364` | matches | two bikes' models, in order |
| `func_800583BC` | asm | 398 instructions |
| `func_800589B0` | asm | 391 instructions |
| `func_80058FCC` | matches | the camera's bike's model |
| `func_800591D4` | parked | the places: registers |

## Second pass

- `func_800591D4` matches: its parameter copied into a local first (`Own35 *o = race;`), which swapped the two saved registers back.
- Built with `-fmove-all-movables` (the Makefile's CFLAGS for the chunk, group A's finding in the techniques): every matched function still matches, and the parked ones it touches come closer. `func_80057B18` went from 120 to 40 off and `func_80058070` from 119 to 34.
