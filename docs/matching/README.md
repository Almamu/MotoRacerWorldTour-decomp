# docs/matching/

Write-ups of matching passes: one file per chunk issue (or retry of parked
functions), written while the work is done. Each says, function by
function, what made it match or what's left, and what was tried that
didn't work, so the next attempt doesn't repeat it.

The techniques they found are collected, by topic, in
[matching_techniques.md](../matching_techniques.md); a write-up is the
evidence behind them. Name a new file `issue-<N>-<slug>.md` after the
issue it worked on, and add it below.

| Write-up | Pass |
|---|---|
| [issue-85-sces-chunk01.md](issue-85-sces-chunk01.md) | Boot executable, chunk_01's parked functions (and chunk_00's movie loop, #84) |
| [issue-1-langimg-sound.md](issue-1-langimg-sound.md) | The game's chunk_00: its sound engine, and the game's build settings |
| [issue-2-langimg-chunk01.md](issue-2-langimg-chunk01.md) | The game's chunk_01: 3D sounds and CD audio, two more library files |
| [issue-3-langimg-chunk02.md](issue-3-langimg-chunk02.md) | The game's chunk_02: its C and C++ from two compilers, 2D items, the object tree, the GTE |
| [issue-4-langimg-chunk03.md](issue-4-langimg-chunk03.md) | The game's chunk_03: object lists and trees, 2D drawing; the 2.91.66 code is `-G8` with split addresses |
| [issue-5-langimg-chunk04.md](issue-5-langimg-chunk04.md) | The game's chunk_04: sequences, ranges, grids; bitfields read into locals, loops calling in their condition |
| [issue-6-langimg-chunk05.md](issue-6-langimg-chunk05.md) | The game's chunk_05: race positions, the ring of entries by distance |
| [issue-7-langimg-chunk06.md](issue-7-langimg-chunk06.md) | The game's chunk_06: racers' planes, visibility, particles; unsplit again |
| [issue-8-langimg-chunk07.md](issue-8-langimg-chunk07.md) | The game's chunk_07: a pool of linked nodes; a copy through an inline |
| [issue-9-langimg-chunk08.md](issue-9-langimg-chunk08.md) | The game's chunk_08: rider poses, fixed-point vectors; the game's `MULSHIFT` asm macro |
| [issue-10-langimg-chunk09.md](issue-10-langimg-chunk09.md) | The game's chunk_09: the motor's gearing, the bike; `MULSHIFT` is volatile, two nops after a division |
| [issue-11-langimg-chunk10.md](issue-11-langimg-chunk10.md) | The game's chunk_10: the bike's gearbox; `Bike` moves to a header |
| [issue-12-langimg-chunk11.md](issue-12-langimg-chunk11.md) | The game's chunk_11: the bike's frame flags, drag and drive |
| [issue-13-langimg-chunk12.md](issue-13-langimg-chunk12.md) | The game's chunk_12: more of the bike |
| [issue-24-langimg-chunk23.md](issue-24-langimg-chunk23.md) | The game's chunk_23: a named object and its stage; 2.91.66 past chunk_12, old-style varargs |
| [issue-46-langimg-chunk45.md](issue-46-langimg-chunk45.md) | The game's chunk_45: sound banks, slots, a settings stream; bitfields, `la` vs split, a void virtual call |
| [issue-67-langimg-chunk66.md](issue-67-langimg-chunk66.md) | The game's chunk_66: a bit stream, CD reads, planes; PsyQ's `va_arg`, products in locals |
| [issue-73-langimg-chunk72.md](issue-73-langimg-chunk72.md) | The game's chunk_72: memory cards and the CD loader; globals as arrays, volatile event counters |
| [issue-72-langimg-chunk71.md](issue-72-langimg-chunk71.md) | The game's chunk_71: the memory card menus; scalar or array globals by their registers |
| [issue-61-langimg-chunk60.md](issue-61-langimg-chunk60.md) | The game's chunk_60: pools, ids and frame buffers; an empty constructor's loop |
| [issue-52-langimg-chunk51.md](issue-52-langimg-chunk51.md) | The game's chunk_51: buffered objects and their parts |
| [issue-26-langimg-chunk25.md](issue-26-langimg-chunk25.md) | The game's chunk_25: a list of six with bitfield flags, a class keeping five globals; unrotated loops |
| [issue-45-langimg-chunk44.md](issue-45-langimg-chunk44.md) | The game's chunk_44: sound objects and their lists; new T[n]'s loop |
| [issue-47-langimg-chunk46.md](issue-47-langimg-chunk46.md) | The game's chunk_46: the sound entries' classes, voices and their manager |
| [issue-48-langimg-chunk47.md](issue-48-langimg-chunk47.md) | The game's chunk_47: a replay recorder, sounds, static objects; tables as scalars, goto loops |
| [issue-57-langimg-chunk56.md](issue-57-langimg-chunk56.md) | The game's chunk_56: a height map, a camera, the race's panel; nested tests, empty trailing cases, `operator new` |
| [issue-69-langimg-chunk68.md](issue-69-langimg-chunk68.md) | The game's chunk_68: the vectors' operators, a menu's slots; a 64-bit square as an asm macro |
| [issue-71-langimg-chunk70.md](issue-71-langimg-chunk70.md) | The game's chunk_70: a demo menu page; callees' return types, bitfields, a table of entries |
| [issue-75-langimg-chunk74.md](issue-75-langimg-chunk74.md) | The game's chunk_74: strings, times as text, CRC-32, relocations, overlays; seven handwritten |
| [issue-32-langimg-chunk31.md](issue-32-langimg-chunk31.md) | The game's chunk_31: the race's bikes and their objects; tables named for their last entry, struct copies open |
| [issue-40-langimg-chunk39.md](issue-40-langimg-chunk39.md) | The game's chunk_39: a player's controls, a ring of key records, the pause button; one family of setters |
| [issue-30-langimg-chunk29.md](issue-30-langimg-chunk29.md) | The game's chunk_29: a race's players and its menus; scalar declarations, a string copied from the data |
| [issue-53-langimg-chunk52.md](issue-53-langimg-chunk52.md) | The game's chunk_52: the display, the vsync and drawsync callbacks; globals read split, a result variable |
| [issue-42-langimg-chunk41.md](issue-42-langimg-chunk41.md) | The game's chunk_41: a bike's model object; vectors copied through pointers, a constructor returning this |
