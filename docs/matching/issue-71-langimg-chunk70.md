# The game's chunk_70: a demo menu page (#71)

A menu page that plays a recorded demo: its object (`Obj70`), the
buttons' states, the demo's playback each frame, a save's data copied in
and restored, a gauge drawn with hand-linked primitives, the table of
settings' names and values, and the page's digits. One file,
`src/langimg/chunk_70.cpp`, 0x8009D0E4-0x8009F180. It's a sibling of
chunk_71 (the same callees and menu fields).

39 functions: 33 match, 4 are parked, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, four small
globals (`D_800C935C`, `D_800C9360`, `D_800C9C04`, `D_800CBE98`).

## Notes

- **Callees' return types.** Three functions loaded a pointer into `$v1`
  where ours used `$v0`, before any call. They matched once the callees
  were declared as returning what their asm returns: `func_800A41BC`
  (1), `func_800A4284` (0 or 1), `func_8009D830` (0), and
  `func_8003CC78` (its second argument). The first was found by the
  permuter. chunk_71's parked `func_8009F180` matches with the same
  declaration.
- **A copy's result returned.** `func_8009E01C` returns `memcpy`'s
  result.
- **A string kept across a call.** `func_8009D1F8` takes the string's
  address into a local before the call whose result is the next call's
  first argument.
- **Bitfields.** A button's word holds a 4-bit state at bit 16 and a 2-bit
  mode at bit 20; `func_8009D0E4` sets both, and only bitfields keep the
  two masks apart. Other functions use the word whole (an anonymous
  union).
- **The demo's playback.** `func_8009D830` switches on the state with an
  empty `case 0` (the original's `< 2` test), then on the input with a
  jump table, and returns 0 once at the end.
- **The save restored.** `func_8009DE0C` matched with the page's object
  read before the flag's `and` (the constant then fills both branches'
  delay slots).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8009D0E4` | matches | a button's state and mode (bitfields) |
| `func_8009D1F8` | matches | two calls made when a flag is set (a string and 0x100, 0x100) |
| `func_8009D25C` to `func_8009D3E4` | match | a callback set, a sound chosen, two modes set, two tables made and freed |
| `func_8009D410` | parked | the settings' 15 names and values: each `memset`'s size in the call's delay slot (19 off) |
| `func_8009D7A0` to `func_8009D804` | match | a label, the demo started and stopped |
| `func_8009D830` | matches | the demo's playback |
| `func_8009D9CC` | asm | the page's state machine (284 instructions, two jump tables) |
| `func_8009DDA8` to `func_8009DF90` | match | a save's data in and out, the page's frame |
| `func_8009E01C` to `func_8009E360` | match | the buffer, buttons' states and flags, the gauge's call |
| `func_8009E3C0` | parked | the gauge: a frame, a tick and the fill, with hand-linked packets (188 off) |
| `func_8009E724` | matches | empty |
| `func_8009E72C` | parked | the selected entry's four digits (registers) |
| `func_8009E930` | matches | the digits' caller |
| `func_8009E954` | parked | the page's setup: rectangles and two rows of cells (registers) |
| `func_8009EAD0` | matches | a flag set when a choice is 0 |
| `func_8009EAEC` | asm | 459 instructions |
