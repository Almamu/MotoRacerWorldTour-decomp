# The game's chunk_39: a player's controls (#40)

A player's controls, one entry (`Ent39`, 0x330 bytes) per pad:
- **The flags.** Two words of flags set from each control's state (0xFF
  pressed, 0 released), with the analogue values scaled to a byte
  (`x * 127 / 98`) and turned into directions past a threshold.
- **The bits set this frame.** `func_8005F480` sets them; the frame's
  reset copies them to the last frame's.
- **A ring of 32 key records.** Each has a key, the time pressed, and the
  time released (-1 while held). It is searched from the newest, pushed
  to, and its records closed.
- **The frame's input.** It turns the analogue values past ±85 into
  directions and feeds the pad's buttons to the ring.
- **The pause button.** Its menus are `"PauseTwoPlayers"`,
  `"PauseWithRestart"` and `"PauseRetire"`.
- **Around them.** A bike's reset, and a sprite's frame set on its
  primitives.

One file, `src/langimg/chunk_39.cpp`, 0x8005F464-0x80061484.

32 functions: 28 match, 2 are parked, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, three
small globals (`D_800C75F6`, `D_800C75F7`, `D_800CB410`).

## Notes

- **One family of setters.** Seventeen functions take `(int *state,
  Own39 *o, int *index)`. A dozen of them find the entry, set or clear a
  flag on 0xFF or 0 (sometimes a byte too), and pass a bit on to
  `func_8005F480`.
  Written the same way, they matched at once. The ones that clear a
  direction fall back to the opposite one's value with `else if`.
- **A division by 98.** `x * 127 / 98` is a multiply by `0x5397829D` and
  a shift of 37.
- **A padded struct moved a stride.** A bike's stride came out 0x56C, not
  0x568, because a 0x35-byte struct with a pointer in it pads to 0x38.
  Check the strides in the asm when a struct holds a smaller one.
- **A local read before the test.** `func_80060340` reads the race
  pointer before testing the index (`Run39 *r = o->m_378; if (k >= 0) b =
  &r->m_2E8[k];`).
- **One counter per loop.** `func_8005FAB8`'s first loop has no call, so
  its counter belongs in `$v1`. One `i` for both loops put it in the
  second loop's saved register.
- **The original's own bug.** `func_8005FCE8` builds a copy of the pad
  with bit 8 masked, storing the masked fields twice. It then passes the
  pad itself on; the copy is never used.
- **`do { } while (0)`, twice (the permuter).** The ring's search
  (`func_8005F4A4`) has its loop inside one. GCC then keeps the counter
  live when the key is found, so it undoes the `i--` it took into the
  comparison's delay slot (`i++`), as the original does. The pause
  button (`func_80060668`) has its whole body inside one, for its
  registers. Workarounds, marked at the use.
- **The pause menus' order.** In `func_80060668` the restart menu's block
  comes first, so its condition is the `if`'s (`D_800D5FC8 != none ||
  (D_800D5F40 != 8 && D_800D5F40 != 4)`).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8005F464`, `func_8005F480` | match | the frame's bits reset and set |
| `func_8005F4A4` | matches | the ring searched from the newest (a `do { } while (0)`) |
| `func_8005F514` | matches | a key's record pushed on the ring, or closed |
| `func_8005F638` | asm | 288 instructions |
| `func_8005FAB8` | matches | the ring's held records closed, or the changed buttons passed on |
| `func_8005FB98`, `func_8005FC40` | match | left and right |
| `func_8005FCE8` | matches | the frame's input |
| `func_8005FEB0` to `func_80060298` | match | the flags' setters |
| `func_80060340` | matches | a bike flagged on a press |
| `func_80060410`, `func_800604D0`, `func_800605A4` | match | the analogue values scaled and turned into directions |
| `func_80060650`, `func_80060658`, `func_80060660` | match | empty |
| `func_80060668` | matches | the pause button (a `do { } while (0)`) |
| `func_800608A8` | matches | a pad's state reset and passed on |
| `func_8006095C` | matches | a comparator |
| `func_80060980` | asm | 564 instructions |
| `func_80061250` | matches | a bike's reset, then three of its fields |
| `func_80061284` | parked | a bike's reset: the vector's stack address kept in a register |
| `func_8006139C` | parked | a sprite's frame on its primitives: registers |
