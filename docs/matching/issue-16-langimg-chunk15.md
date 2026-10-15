# The game's chunk_15: more of the bike (#16)

More methods of the bike (`Bike`, `include/langimg/bike.h`, chunk_09
on):
- a state at 0x48C (its last value at 0x48D, the frames spent in it at
  0x48E) stepped by the time at 0x490, the angle at 0x39C and the speed,
  easing the channel at 0x49C to set targets (`func_8002FBA4`);
- the angle at 0x394 brought back within ±0x3243F, the value at 0x400
  integrated from the x of the vectors at 0x30C and 0x318 and clamped,
  the one at 0x3B0 limited by the motor's kind (flags at 0x52C and 0x52D
  set when it hits the limit) (`func_8002FF3C`);
- the motion's newest position kept within a distance of the previous
  one (`func_8003031C`);
- the kind of ground (`func_80063A30`, `func_80063A04`) turned into the
  flags at 0x14F, 0x528-0x52A and 0x40F and the drive at 0x2C4
  (`func_80030458`);
- the bike placed at a position: its motion, its position and its
  model's translation, the change of speed written to 0x5D (0 to 255)
  (`func_80030AB0`);
- the speed's fractions at 0x290 and 0x294 from the value at 0x298;
  the vector at 0x45C and the values from 0x468 to 0x488 reset;
- the channel at 0x378 set or eased to a value, and the value at 0x46C
  from it (`func_80031078`); the value at 0x46C eased by the motion's
  flags 4 and 8 (`func_80031138`); a value from the channel at 0x4E0,
  by the motor's kind and state (`func_80030D70`).

One file, `src/langimg/chunk_15.cpp`, 0x8002F4E4-0x80031500. The
fields it reads are now named in `bike.h` and `motor.h` (by offset;
`AnimChan` got its four values).

14 functions: 9 match, 4 are parked, 1 is still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **`MULSHIFT`'s `mult` after a `mfhi`.** `func_80031138` divides by 6
  (a multiply, `mfhi`) and passes the result to `MULSHIFT`, whose `mult`
  follows the `mfhi` one instruction later: the original has a `nop`
  there (the HI/LO hazard). maspsx inserts it only before a `mult` it
  recognises, `mult` followed by a tab; the macro had a space. With
  `"mult\t%2, %3"` in `include/mulshift.h` it matched, and every other
  function using the macro still does (and none of the 50 parked ones in
  those files matches now either).
- **Read the stored field back.** `func_80030C98` stores a short, then
  computes from it: `b->m_298 = v; b->m_290 = (b->m_298 << 12) / 1000;`
  gave the original's copy of the value; computing from `v` didn't.
- **An empty case shapes the switch.** `func_80030458` tests a kind for 4
  (`beq`), then below 5, then 5: a balanced tree. With `case 4:` and
  `case 5:` alone GCC compared twice; an empty `case 3: break;` gave the
  tree.
- **The default before the switch.** The same function sets its factor
  to 0x1000 after the call and before the `switch` (in the range test's
  delay slot), the default case leaving it: `int g = 0x1000; switch (r)
  {...}`, with `r` read into a local first.
- **A field read again inside its test.** `func_80030D70` tests the
  value at 0x510, then works on a copy: `if (b->m_510) { int t =
  b->m_510; ...}`; with the local read before the test, GCC kept one
  register.
- **The result set late.** The same function's result is 0 unless set,
  and the original zeroes it after the first call: `int r; ...; r = 0;`
  (chunk_32's case).
- **A clamped value through its own variable.** `func_80031138` clamps
  a rate and the value at 0x46C with a separate local (`k = d; if (v <
  k) k = v;`), not by assigning to the bound.
- **`abs`.** GCC's `abs` (`bgez`, `negu`) gave `func_80030AB0`'s speed
  difference.
- **Parked.**
  - `func_8003031C`: the bound's sum in `$v0` where the original has
    `$v1` (3 off).
  - `func_8002FF3C`: the test for a sign change (`(o < 0 && n > 0) ||
    (n < 0 && o > 0)`): the original branches on the new value's sign
    first and tests the old one's last (5 off). Its angle's wrap matched
    with `pi` in a local (`negu` for `-pi`, the `2 * pi` folded), and the
    clamps as `?:`s stored once.
  - `func_8002FBA4`: the bike and the state in swapped registers
    throughout, and the time reloaded for the division (172 off). The
    state is tested through its copy at 0x48D (`b->m_48D = b->m_48C;`
    then `b->m_48D` in the tests), which gave the `lbu` and the later
    sign extension.
- **Still asm.** `func_8002F4E4` (474 instructions, with `MULSHIFT`s).
- **Fifth pass.** `func_80030644` is written and parked, far off (231 of
  283, mostly shifted): three of the motion's and the bike's values clamped by the motor's and
  converted from radians to the game's angles (`(x << 12) / 0x6488`),
  written into the rider's model at the second argument's 0x330 (the
  body's offset at 0xB28 and four parts' angles at 0x94, 0xA94, 0xB94 and
  0xC14) when the third argument is set, and two rates at 0xD8 and 0xE0
  integrated into 0xD4 and 0xDC. The clamps keep their bounds and results
  in other registers, and the original copies the motor pointer between
  two of them. Its fields are now named in `bike.h` (0xD4-0xE0) and
  `motor.h` (0x64, 0x68, 0xAC, 0xB4, 0xB8, 0xD4-0xDC, 0x100).
- **Saved register order.** `func_80030AB0` matched with the speed at
  0x29C read through an inline accessor (`Speed15(b)`, for the starting
  value and the one subtracted after the calls): the accessor's result is
  a fresh value, which changed the order the values are born in, and the
  argument (the new position) and the second vector's address got the
  original's `$s1` and `$s0` (the permuter's find; docs/
  matching_techniques.md, "Saved register order").

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8002F4E4` | asm | 474 instructions |
| `func_8002FBA4` | parked | a state stepped: registers |
| `func_8002FF34` | matches | empty |
| `func_8002FF3C` | parked | the angle and its rate integrated: a test's layout |
| `func_8003031C` | parked | the motion pulled back: registers |
| `func_80030458` | matches | the flags from the kind of ground |
| `func_80030644` | parked | the rider's model posed: far off (registers) |
| `func_80030AB0` | matches | the bike placed |
| `func_80030C98` | matches | the speed's fractions |
| `func_80030CF0` | matches | whether the flag at 0x14F is set |
| `func_80030CFC` | matches | the vector at 0x45C and the values after it reset |
| `func_80030D70` | matches | a value from the channel at 0x4E0 |
| `func_80031078` | matches | the channel at 0x378 set or eased |
| `func_80031138` | matches | the value at 0x46C eased |
