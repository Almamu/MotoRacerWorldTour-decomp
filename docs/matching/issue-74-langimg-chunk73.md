# The game's chunk_73: the memory card slots (#74)

The memory card code's slots (`Card73`, 0x46CC bytes each, through the
pointer `D_800D6098`; the loop that sets them up runs over one). A slot's
first word is its state, 0x12 when it's idle. The small functions:
- the slots made idle, then two of the card functions called;
- a request put on an idle slot (states 0, 9, 10 and 13, with up to four
  values);
- a slot's state read (8 and 9 read as 9, 10 and 12 as 10) and its last
  result;
- a slot made idle again;
- three settings and one more global stored.

Two of the larger functions, still asm (`func_800A3A44`, `func_800A4614`),
use the device name format `"bu%02x:"`.

One file, `src/langimg/chunk_73.cpp`, 0x800A32A0-0x800A54F0.

17 functions: 14 match, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **A pointer reloaded for every store.** Each field written through
  `D_800D6098[0][n]` reloads the pointer (a store through an `int *` may
  change it), and the slot's offset (`n * 0x46CC`, by shifts) is kept.
  The pointer is read split, so it's declared as an array of unknown size
  and used as `[0]` (the techniques doc's rule).
- **Which way the test goes.** Three of the requests branch to their work
  when the slot is idle and return 0 inline: `if (state == 0x12) { ...;
  return 1; } return 0;`. Written the other way round (`if (state !=
  0x12) return 0;`), their blocks came out swapped. `func_800A4384`
  (whose fifth argument comes from the stack) matched the same way.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800A32A0` | match | a save file's header written: its title in Shift-JIS, its icon, then the file created |
| `func_800A3614` | asm | 147 instructions |
| `func_800A3848` | matches | a file erased |
| `func_800A3A44` | asm | 483 instructions |
| `func_800A41BC` | matches | the slots made idle |
| `func_800A4244` | matches | a call, then 1 |
| `func_800A4264` | matches | three settings stored |
| `func_800A4284`, `func_800A42EC`, `func_800A4384`, `func_800A444C` | match | requests on an idle slot |
| `func_800A442C` | matches | a call |
| `func_800A44B4` | matches | a slot's last result |
| `func_800A44F8` | matches | a slot's state |
| `func_800A45B4` | matches | a slot made idle |
| `func_800A4608` | matches | a global stored |
| `func_800A4614` | asm | 995 instructions |

## Group C, continued

`func_800A3848` (a file erased from card n and taken out of its
directory, its space given back) matches, with `func_800A442C` passing its
two arguments through. The directory loop steps `p++, i++` in that order;
the result is set after the free space's update. `"%s%s%s"` is
`D_800B7BD4`, defined in `.rodata` after the function (a literal that
short would go to `.sdata` under `-G8`), then the unused `"bu%02x:%s"`.

## Group C, more functions

- `func_800A32A0` (a save's header: `SC`, the icon's frame count, the
  blocks, the title converted to Shift-JIS by `func_800A2380`, the clut
  and frames copied, the file created unless flag 0x20) matches. The
  header is reached a second time through a `Head73 *` (for the clut's
  copy), which gives the original's extra saved register; the block count
  is computed before the header's stores, and rounded in two steps
  (`blocks *= 0x2000; hdr[3] = blocks / 0x2000;`); the title is read as
  `s8` for the `lb`. Its three strings (`"%s :%s"`, `"%s"` and the
  printf's) are defined after it in `.rodata`, as `D_800B7BD4`.
