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

23 functions: 13 match, 1 is parked, 9 are still asm.

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
| `func_8008BCB0` | asm | 532 instructions |
| `func_8008C500` | asm | 94 instructions |
| `func_8008C678` | matches | the nearest zone |
| `func_8008C78C` | matches | seven counters stepped |
| `func_8008C7E8`, `func_8008C808`, `func_8008C83C` | match | a layer's settings and colours |
| `func_8008C884` | asm | 364 instructions |
| `func_8008CE34` | matches | a layer's frame |
| `func_8008CF58` | matches | the colours faded |
| `func_8008D05C`, `func_8008D0A4` | match | a rectangle constructed and set |
| `func_8008D0CC`, `func_8008D0FC` | match | pairs copied and cleared |
| `func_8008D120`, `func_8008D148` | match | words copied and cleared |
