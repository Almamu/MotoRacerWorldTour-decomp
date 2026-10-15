# The game's chunk_61: layers, zones and copies (#62)

What's here:
- **Layers (`Zone61`).** A scroll position and four colours faded from
  one set to another: their settings, a frame's step, and the fade.
- **Zones (`Plane61`).** Each has two planes (a normal and a distance
  each) and a position. A point can be tested against a zone's planes,
  and the nearest zone found that applies to a given player.
- **A rectangle and its flags.** Set, and constructed.
- **Small helpers.** Seven counters stepped; words and 6-in-8-byte pairs
  copied or cleared.

One file, `src/langimg/chunk_61.cpp`, 0x8008B208-0x8008D168.

23 functions: 14 match, 2 are parked, 7 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, 31 small
globals.

## Notes

- **The order of increments shows in the relocations.** `func_8008C78C`
  steps seven gp globals. With two of them the other way round, every
  instruction matched (so `try_func` was happy) but `make` failed. The
  differing bytes were the two globals' `%gp_rel` relocations.
- **A colour as a word or four bytes.** The layer's colours are copied as
  words (`lw`/`sw`) and faded byte by byte (`lbu`/`sb`). A union of an
  `int` and `u8[4]` serves both.
- **Both fields read first.** `func_8008D0CC` copies 6-byte entries,
  loading the word and the halfword before storing either; locals for
  both (the `VecCopyL` pattern) matched.
- **A store's order before a call.** `func_8008D05C` matched once its two
  stores were swapped. The original reads the last stack argument first,
  and that read follows the store order. The permuter found it.
- **A mask in a local.** `func_8008C678` tests a bit `1 << b` in each
  zone. Written in the test, GCC turned it into `(m >> b) & 1`; with
  the mask in a local, it's an `and`, as in the original. It matched
  with that local declared inside the loop's body (GCC still computes it
  once, before the loop); declared before the loop, the registers
  differed. The permuter found where.
- **Two sums the other way round.** `func_8008CE34`'s scroll step adds to
  `m_10` before `m_14`, though it stores `m_14` first; written in the
  store order, the registers differed (the permuter).
- **A clean build that wasn't.** One `make clean && make` here linked the
  sound library's `chunk_00` four bytes off (`func_80011924` at
  0x80011928); the next clean build didn't. The same thing happened once
  in chunk_49.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8008B208`, `func_8008B364`, `func_8008B500`, `func_8008B65C`, `func_8008B7F8` | asm | 88 to 105 instructions |
| `func_8008B998` | parked | a point against a zone's planes: the last tests' branches |
| `func_8008BA50` | asm | 152 instructions |
| `func_8008BCB0` | parked | the camera along its path: a layout shift |
| `func_8008C500` | matches | the texture of a bike's track point by the lap |
| `func_8008C678` | matches | the nearest zone |
| `func_8008C78C` | matches | seven counters stepped |
| `func_8008C7E8`, `func_8008C808`, `func_8008C83C` | match | a layer's settings and colours |
| `func_8008C884` | asm | 364 instructions |
| `func_8008CE34` | matches | a layer's frame |
| `func_8008CF58` | matches | the colours faded |
| `func_8008D05C`, `func_8008D0A4` | match | a rectangle constructed and set |
| `func_8008D0CC`, `func_8008D0FC` | match | pairs copied and cleared |
| `func_8008D120`, `func_8008D148` | match | words copied and cleared |

## Group C large functions, continued

`func_8008BCB0` (532 instructions), a camera following its path: where it
looks from (eased in from a curve over the first frames), the lens eased
towards its limit, then the matrix by the camera's mode (a look-at built
from cross products, or turns about y and z read from the sine table), and
the two lens calls. It is written in the original's shape, frame and
stack slots, and parked (368 off; 119 with stack offsets and branch
targets left out): the lens's two stores and jumps are laid out in another
order, which shifts the middle by one instruction, the struct copies use
`$t5`-`$t7` for `$t4`-`$t6`, and the angle sits in `$a2` for `$a1`.

What got it there:
- **Vectors kept as three small words.** The camera's vectors
  (`D_800CBE48` and the others) are read and written through `$gp` word by
  word, so they're declared as three `int`s each, with `(Vec61 *)&` where
  an address is passed; declared as `Vec61` globals, their fields came out
  as `lui`/`addiu` addresses.
- **An `int *` store makes GCC reload them.** The original reads
  `D_800CBE48` again after copying it into the camera; with the copy's
  destination a `Vec61 *` (a struct field) GCC reused the loaded words,
  through an `int *` it reloads them (451 off to 368).
- **The blocks' order sets the stack slots.** The original's slots show
  case 0 of the mode's switch first (its vectors at 0x48-0x68, case 2's
  matrices reusing them), so it comes first in the source.
- **Inline helpers for the turns** (`RotX61`, `RotY61`, `RotZ61`) and one
  for the product (`Apply61`, its matrix a local): the product's
  translation address is recomputed for each call, as in the original
  (#289's finding), and the frame came down to the original's 0xC0.

## Group C: more functions

- `func_8008C500` (the texture for the point of the track a bike is on, by
  the lap's parity) matches. What mattered:
  - the sections are 0x68 bytes (chunk_48's `Ent48`), their points 20;
  - the point's two 7-bit ids read as shifts of one `u32` word (`(int)(w
    << 10) >> 25`, `(int)(w << 3) >> 25`), the word read into a local in
    each branch; as bitfields GCC merged the two branches' tails;
  - the even lap as the fall-through (`if (!odd)`), the odd lap's id tested
    with a `goto` past the shared test;
  - both "return 0" exits through one `none:` label after the normal
    return, as the original lays them out;
  - `func_8008BA50` takes the texture (`$a0`).
