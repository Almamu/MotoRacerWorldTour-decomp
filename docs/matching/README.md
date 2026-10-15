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
| [issue-68-langimg-chunk67.md](issue-68-langimg-chunk67.md) | The game's chunk_67: matrices and vectors; VecCopyL, MIN and MAX macros, a chained assignment |
| [issue-50-langimg-chunk49.md](issue-50-langimg-chunk49.md) | The game's chunk_49: a pool of entries and its owner; a C++ destructor by its mangled name, a chained assignment's order |
| [issue-41-langimg-chunk40.md](issue-41-langimg-chunk40.md) | The game's chunk_40: a bike's object's base class; zeroing last field first, a table of pairs through two symbols |
| [issue-74-langimg-chunk73.md](issue-74-langimg-chunk73.md) | The game's chunk_73: the memory card slots; a pointer reloaded for every store, which way an idle test goes |
| [issue-59-langimg-chunk58.md](issue-59-langimg-chunk58.md) | The game's chunk_58: a camera's moves and a buffer; four shorts copied with `lwl`/`lwr`, a gp global's neighbours through its address |
| [issue-70-langimg-chunk69.md](issue-70-langimg-chunk69.md) | The game's chunk_69: a game object's screens; 11-byte names copied as blocks, `memcpy` called rather than inlined |
| [issue-62-langimg-chunk61.md](issue-62-langimg-chunk61.md) | The game's chunk_61: layers, zones and copies; relocations that `try_func` can't see, a mask in a local |
| [issue-56-langimg-chunk55.md](issue-56-langimg-chunk55.md) | The game's chunk_55: text, a map and a pulse; a table in a local, a loop GCC doesn't see |
| [issue-23-langimg-chunk22.md](issue-23-langimg-chunk22.md) | The game's chunk_22: script commands; a redundant test kept as its own statement, a callback given the object |
| [issue-58-langimg-chunk57.md](issue-58-langimg-chunk57.md) | The game's chunk_57: the HUD's messages; a table's entry through a pointer, a word stored anywhere |
| [issue-51-langimg-chunk50.md](issue-51-langimg-chunk50.md) | The game's chunk_50: chunk_49's object's subclasses; two vtable stores kept, a virtual call by hand |
| [issue-29-langimg-chunk28.md](issue-29-langimg-chunk28.md) | The game's chunk_28: static objects and a save; an object's size decides how its address is loaded |
| [issue-20-langimg-chunk19.md](issue-20-langimg-chunk19.md) | The game's chunk_19: menus; a result variable with `break`, a choice clamped in a local |
| [issue-60-langimg-chunk59.md](issue-60-langimg-chunk59.md) | The game's chunk_59: a sound's state and a grid of tiles; an inline constructor and destructor for `new` and `delete[]`, a bitfield set first |
| [issue-28-langimg-chunk27.md](issue-28-langimg-chunk27.md) | The game's chunk_27: a race on chunk_23's named objects; a comparison as a value, a global that keeps its place |
| [issue-27-langimg-chunk26.md](issue-27-langimg-chunk26.md) | The game's chunk_26: a list of named objects; which test of a loop stays at the top, two addresses with two calls, the zero case first |
| [issue-22-langimg-chunk21.md](issue-22-langimg-chunk21.md) | The game's chunk_21: a scene's items and history; two loads before two stores, an early `return` for a flag test |
| [issue-18-langimg-chunk17.md](issue-18-langimg-chunk17.md) | The game's chunk_17: a rider's view and the maps; the scratchpad's address in a local, a constant and a test in locals |
| [issue-65-langimg-chunk64.md](issue-65-langimg-chunk64.md) | The game's chunk_64: animation tables and tracks; two default returns kept apart, inline functions with pointer parameters, an index in a variable |
| [issue-34-langimg-chunk33.md](issue-34-langimg-chunk33.md) | The game's chunk_33: the race and its bikes; the racer declared small, a bike's flags as shifts, a count and an end per loop |
| [issue-38-langimg-chunk37.md](issue-38-langimg-chunk37.md) | The game's chunk_37: a race's bikes and cameras; the tables declared small, the counts through an inline function, a loop counter of its own |
| [issue-21-langimg-chunk20.md](issue-21-langimg-chunk20.md) | The game's chunk_20: a scene's groups of items and their objects; nested `if`s for the result, the `else` placed last, constants hoisted as locals |
| [issue-39-langimg-chunk38.md](issue-39-langimg-chunk38.md) | The game's chunk_38: a race's bikes and their controls; the callees' real prototypes, loops entered at their body, the found path through the common return |
| [issue-33-langimg-chunk32.md](issue-33-langimg-chunk32.md) | The game's chunk_32: a race's sequence of steps, its bikes' paths and its display; the result set after the early return, a loop entered at its test, flags cleared one by one |
| [issue-66-langimg-chunk65.md](issue-66-langimg-chunk65.md) | The game's chunk_65: a renderer's subdivision, clipping and projection; `$t9` as a register variable, which factor carries the shift, an edge loop counted down |
| [issue-16-langimg-chunk15.md](issue-16-langimg-chunk15.md) | The game's chunk_15: more of the bike; `MULSHIFT`'s `mult` after a `mfhi`, a stored field read back, an empty case that shapes the switch |
