# The game's chunk_24: chunk_23's named objects filling in screens (#25)

More of chunk_23's named objects (`Named24`, chunk_23's `Named`, its
vtable at 0x68):
- a definition looked up by name in the object's scene and set up
  (`func_80042CF4`): two entries' flag 2 set or cleared by the game mode
  `D_800D5F40`, two objects' fields by the value `D_800D5F60`, the
  object's call with an index (`func_800402D0`), the scene's state at
  0xA90-0xA94 cleared, `D_800D11B0` cleared, then three of the object's
  virtual functions (the vtable's entries 24, 22 and 23) called with 1;
  `func_80042FC0` does that, then sets 0x13C to 1;
- the same lookup from outside (`func_80042FF0`): unless the object's
  bit 1 is set, it's busy (0x13C), or (unless forced) it was used less
  than 2000 ticks ago, with its own arguments stored at 0x148-0x158;
- the scene's current definition (0xA80, or 0xA84 in the modes 1 and 4)
  compared by name with four and passed to the screen it fills
  (`func_80041E10`);
- screens filled per racer (`sprintf`'s names `D_800C501C`, `D_800C5010`,
  `D_800C5034`, `D_800C5138`, and `func_80017E10` for the entries):
  three-letter names from the run's slots at 0x1E3C (`func_80042944`),
  the lines for the run's bikes by place (`func_80042A30`,
  `func_800424E0`: their names, place, time from `func_800A5CD0` or a
  state's text, and colour by kind);
- `func_80043150`, a comparison of two words without their low three bits
  (passed as a function by chunk_25), and two functions returning 1.

One file, `src/langimg/chunk_24.cpp`, 0x8004184C-0x8004316C.

12 functions: 7 match, 3 are parked, 2 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, no small
globals.

## Notes

- **Arguments passed through.** `func_80042FC0` calls `func_80042CF4`
  with its own second and third arguments untouched: declared with them
  (`func_80042FC0(o, name, idx)` passing them on), it matched as before.
- **A pointer to the field, tested.** `func_80042944` tests a slot's id
  through a pointer to it (`int *id = &base->m_04; if (id && *id != -1)`),
  stepped by 12 bytes like the name's pointer; the two pointers declared
  name first.
- **A 1-bit field read into a local.** `func_80042FF0` tests bit 1 of the
  object's flags with `sll 30; bltz`: read into an `int` first (`b =
  o->m_b1; if (b)`), with the field signed; tested in place, GCC used
  `andi` ("Bitfields as the original reads them" in the techniques).
- **Flags cleared one `and` at a time.** The scene's flags at 0xA94 are
  cleared bit by bit through an `int` local (`f &= ~1; f &= ~2; ...`),
  as in chunk_15.
- **An 11-bit field's bit.** The entries' flags are an 11-bit field at 4
  (chunk_23's `NamedEntry`): `|= 2` and `&= ~2` on it gave the
  original's `and` with `0xFFFFF800`, `andi 0x7FF`, `ori` and `or`.
- **Parked.**
  - `func_80042FF0`: the original loads its fifth argument before
    storing the third, and branches on the fourth with a jump to its
    `else`; GCC loads it after and lays the `else` first (4 off).
  - `func_80042A30`: the original keeps -1 and the table's address as
    loop constants rematerialised through `$t1`, and computes a bike's
    kind before a call without passing it; GCC does neither (142 off).
  - `func_800424E0`: the original hoists 0xFFFFFF and the run's address
    plus 0x194 out of the loop and spills them (a frame of 0x70); GCC
    computes them in place (0x68), which shifts everything after.
- **Still asm.** `func_8004185C` (392 instructions) and `func_80041F24`
  (391), more screens of the same kind, not tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8004184C` | matches | returns 1 |
| `func_80041854` | matches | returns 1 |
| `func_8004185C` | asm | 392 instructions |
| `func_80041E10` | matches | the screen for the scene's definition |
| `func_80041F24` | asm | 391 instructions |
| `func_800424E0` | parked | the bikes' lines: the loop's constants |
| `func_80042944` | matches | the slots' names |
| `func_80042A30` | parked | the bikes' lines by place: the loop's constants |
| `func_80042CF4` | matches | a definition set up |
| `func_80042FC0` | matches | the same, then busy |
| `func_80042FF0` | parked | the same from outside: a load's place |
| `func_80043150` | matches | two words compared |
