# The game's chunk_46: the sound entries' classes (#47)

The classes behind chunk_47's five sound entries: a sound (`Snd46`, its
vtable pointer at 0x0C) and two subclasses with four or five voices, the
entry made of one of each, the sound manager (`D_800C7F28`, two channels
of 0x4C0 bytes) and its wrappers, and the voices: started from a bank of
definitions with random spreads, their attributes set, stopped. One
file, `src/langimg/chunk_46.cpp`, 0x8006D388-0x8006F29C.

30 functions: 23 match, 4 are parked, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, four small
globals.

## Notes

- **Subclasses as C++.** The two kinds of sound derive from `Snd46`
  (`struct SndA46 : Snd46`); the virtual calls go through the vtable's
  entries (`VCALL46(p, i)`: the entry's delta added to `this`, one
  argument). The permuter's C has no inheritance: its base gets the
  parent as a first member instead.
- **Voices stopped one by one.** The subclasses' destructors stop each
  voice in turn, unrolled in the original: an inline (`StopVoice46`) per
  field matched.
- **A voice's setup.** `func_8006D4B0` takes the bank's next definition
  and spreads its values with `rand() % spread` (`func_800B6318`); the
  time comes from `D_800D6124`'s 30-bit field (as in chunk_71).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8006D388`, `func_8006D3E0`, `func_8006D420` | match | the manager's loops over its two channels |
| `func_8006D4B0` | parked | a voice set up: the definition and a value swap `$s0` and `$s1` |
| `func_8006D6C8` | parked | a voice's attributes: the original stores the mask three times (1, 9, 0x89) |
| `func_8006D748` | parked | a voice started: the mode without a branch |
| `func_8006D7E4` | matches | a voice stopped |
| `func_8006D844` | asm | 457 instructions |
| `func_8006DF68` to `func_8006E02C` | match | the manager's wrappers |
| `func_8006E054` to `func_8006E0FC` | match | the sound's constructor, resets and voice stop |
| `func_8006E144` | parked | the engine's sound from the bike's gear and speed: registers |
| `func_8006E328` to `func_8006E3C8` | match | the second kind's constructor, reset and destructor |
| `func_8006E474` | asm | 346 instructions |
| `func_8006E9DC` to `func_8006EA88` | match | the first kind's constructor, reset and destructor |
| `func_8006EB54` | asm | 419 instructions |
| `func_8006F1E0`, `func_8006F21C`, `func_8006F270` | match | the entry's constructor, destructor and reset |
