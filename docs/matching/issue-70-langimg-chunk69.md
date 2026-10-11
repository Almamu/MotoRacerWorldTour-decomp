# The game's chunk_69: a game object's screens (#70)

Functions on a large game object (`Game69`; chunk_70 works on the same
one). Through its two views (`m_A80`, `m_A84`, chosen by the mode at
`m_A90`) it reaches a screen (`Scr69`). The small functions here:
- a screen's three request flags set when a state is 2, and those
  requests handled (one copies a name back);
- a name copied between the screen's drawing and a record (`m_A9C`);
- a 0x7000-byte buffer passed to `func_80087468` through chunk_58's
  buffer class;
- timers and a flag set or cleared;
- a part of the screen moved by a fraction of the time;
- three slots reset;
- a 0x15AC-byte block passed to `func_8009E01C`, and one copied back
  into `D_800BC884`, with two of the display's values set from it.

One file, `src/langimg/chunk_69.cpp`, 0x8009B17C-0x8009D0E4.

23 functions: 13 match, 3 are parked, 7 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, one small
global.

## Notes

- **An 11-byte name copied as a block.** The names are `char c[11]`
  structs at odd offsets (0x17C, 0x187); struct assignment gave the
  original's two `lwl`/`lwr` words and three byte moves.
- **chunk_58's buffer on the stack.** `func_8009CC38` builds a buffer
  object on the stack around a `new char[0x7000]`, calling its
  constructor and destructor (`func_80086E68`, `func_80086E7C` with 2)
  by hand. The array is freed with an explicit `if (p) delete[] p;`.
- **`memcpy` called, not inlined.** With `D_800BC884` declared as a
  `u8 *`, GCC expanded the 0x15AC-byte `memcpy` inline. Declared as a
  `void *` (as chunk_70 does), it's a call, as in the original.
- **A record's address kept.** `func_8009CB04` and `func_8009C9A4` keep
  `&o->m_A9C->m_08` in one saved register and store its first field
  through it. GCC folds that first store into `m_A9C + 8` and keeps both
  addresses. Both are parked.
- **`try_func` doesn't see relocations, again.** `func_8009C9A4` was 4
  instructions off but left unparked by mistake; `make` failed and the
  differing bytes, mapped to an address (`0x80011800 + offset - 0x10`),
  pointed at it.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8009B17C` | asm | 283 instructions |
| `func_8009B5E8` | asm | 148 instructions |
| `func_8009B838` | matches | the name copied to the drawing |
| `func_8009B8BC` | matches | a call when there's a screen |
| `func_8009B8F8` | matches | a part moved by a fraction |
| `func_8009B9B4` | asm | 257 instructions |
| `func_8009BDB8` | asm | 385 instructions |
| `func_8009C3BC` | asm | 94 instructions |
| `func_8009C534` | matches | the screen's requests handled |
| `func_8009C694` | asm | 110 instructions |
| `func_8009C84C` | matches | the name kept from the drawing |
| `func_8009C944`, `func_8009C964`, `func_8009C984` | match | a request flag set when the state is 2 |
| `func_8009C9A4` | parked | the record set up, with a label: the record's address |
| `func_8009CB04` | parked | the record set up: the record's address |
| `func_8009CC18` | matches | a timer set, a flag cleared |
| `func_8009CC38` | matches | a buffer passed to `func_80087468` |
| `func_8009CCEC` | matches | a timer reset |
| `func_8009CD24` | matches | the 0x15AC-byte block passed on |
| `func_8009CD78` | parked | the block copied back: two registers swap at the end |
| `func_8009CEAC` | matches | three slots reset |
| `func_8009CF14` | asm | 122 instructions |
