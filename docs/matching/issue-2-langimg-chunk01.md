# The game's chunk_01: 3D sounds and CD audio (#2)

The chunk after the sound engine. It isn't the game's code either: every
function compiles only with GCC 2.91.66, and none of them reaches a small
global through `$gp`. It's two files of library code, and was cut in two
at 0x80014CB8 (docs/libraries.md):

| Chunk | What | Where | Settings |
|---|---|---|---|
| `lib/sound/langimg/chunk_01.cpp` | 3D sounds: a world of 64 emitters and 2 listeners, a note map, the emitters' frame | 0x80013764-0x80014CB8 | `lib/sound`'s, with `-G0` (`langimg.chunk_01_G`) |
| `lib/cdaudio/langimg/chunk_01b.cpp` | CD audio: music tracks played from the disc, fades, the drive's callback | 0x80014CB8-0x80015798 | GCC 2.91.66, `-G0`, split addresses, checked divisions (`LIB_cdaudio_*`) |

36 + 17 functions: 46 match, 7 are parked.

## How the settings were found

1. **The compiler.** `func_80013CFC` (sets a world up) matches with
   2.91.66 and is 30 instructions off with 2.95.2.
2. **No `$gp`.** The functions read the sound engine's small globals
   (`D_800C4744`, `D_800C473D`) with `lui` + `lw`, where the engine itself
   uses `%gp_rel`: this file was built with `-G0`. `func_80014C24`
   matched once compiled with `--cflags=-G0`.
3. **Two files.** From `func_80014CB8` on, the code has `lui` in branch
   delay slots (`func_80015438`) and divisions with ASPSX's checks
   (`func_80014CB8`): split addresses and the default assembler, unlike
   the first part. `func_800151F0`, `func_800153FC`, `func_80015438` and
   `func_80015678` match only with split addresses; `func_80014C24` only
   without. `func_80014C70` (the last of the first part) reads the same
   note map as `func_80014C24`, so the cut is at 0x80014CB8, where the
   chunk's `.rodata` (the CD strings) starts being used.

The build then needed `-G` per library (`LIB_<name>_G`) and settings per
chunk (`<target>.<chunk>_GCC`, `_CFLAGS`, `_G`, `_MASPSXFLAGS`), see
libraries.md.

## lib/sound: chunk_01

`SndWorld` (0x1D00 bytes) starts with the note map (`notes`, 256 note
numbers at 0x6), then 64 `SndEmitter`s at 0x20C, 2 `SndListener`s at
0x1C0C, a stack of free emitters and the defaults new emitters get. An
emitter's handle is its index (6 bits), its note map slot (8) and a serial
number (18).

| Function | State | Notes |
|---|---|---|
| `func_80013764` | parked | the emitter's frame; registers only (3 off) |
| `func_80013BA0`, `func_80013BD4`, `func_80013CFC` | match | |
| `func_80013DB8`, `func_80013DE0` | match | |
| `func_80013E64` | matches | one counter for both loops, the first compared unsigned |
| `func_80013F38` | parked | the world's frame; registers (44 off) |
| `func_800140CC` | matches | `(&w->emitters[i])->flags` |
| `func_80014130` | matches | an inline taking the emitter (`ClearEmitterFlags`) |
| `func_80014188` | parked | registers only (18 off) |
| `func_8001427C` | parked | the id's mask and a load delay (20 off) |
| `func_800142E0` ... `func_800144B8` | match | `Changed()`: the flags read into a local first |
| `func_80014530` ... `func_80014B74` | match | |
| `func_800147C8` | matches | no return statement |
| `func_80014724` | matches | `int r = 0` at its declaration |
| `func_800148D8` | matches | |
| `func_80014A98` | matches | one condition, `i != -1 && notes[i] != -1` |
| `func_80014BB0`, `func_80014C24`, `func_80014C70` | match | |

- **Functions without a return statement.** `func_800147C8` (puts a note
  in the map) is called for its result, and the original leaves in `$v0`
  what its callee returned: written with `return n;` GCC copies the value
  to another register first. Declared `short` with no `return`, it
  matches. `func_80013764` uses the result of the sound engine's
  `func_8001355C` the same way, which was declared `void` there (it
  matched either way); both are now declared to return their value.
- **The emitters.** `(&w->emitters[i])->flags = 1` (`func_800140CC`)
  rather than `w->emitters[i].flags`, as in the engine's voice loops; and
  `func_80014130` clears the flag through an inline that takes the
  emitter, so the emitter's address is computed before its field's.
- **`Changed()`.** Five functions end with the same step (flag 0x100000 set
  or cleared by the world's `unk3`, then 0x100 or 0x140): an inline, which
  matched once it reads the flags into a local before testing.
- **`func_80013764`** (an emitter's frame) is 3 instructions off, from 184:
  `(flags & 0x400004) == 0x400004` and `flags & 2` tested apart (GCC merges
  them into one mask otherwise), the flags `u32` (`srl`), the pan read once,
  the note's flags read into a local before `D_800C4724 = -1`, and the
  values of the 0x8000 case read before storing.

## lib/cdaudio: chunk_01b

A small CD player: a state (`D_800B8744`: 9 start, 11 playing, 10/13 fade,
7 stop, 12/15 go on) run once a frame by `func_80014CB8`, a ready callback
(`func_800150E4`) that moves to the next track, and start/stop functions.

| Function | State | Notes |
|---|---|---|
| `func_80014CB8` | parked | the player's tick; saved registers for the `%hi` parts (69 off) |
| `func_800150E4` | matches | the drive's callback |
| `func_800151F0`, `func_80015438`, `func_80015650`, `func_80015678` | match | split addresses |
| `func_80015200` | matches | `D_800B8778` volatile |
| `func_80015210` | parked | scheduling of the first stores |
| `func_800152E4` | parked | scheduling around the wait |
| `func_800153FC` | matches | `func_80011820` called with `short`s |
| `func_80015458`, `func_80015684`, `func_800156DC` | match | |
| `func_800154D4` | matches | `D_800B8744` volatile |
| `func_800155CC` | matches | |
| `func_80015730`, `func_80015764` | match | `CdMix` |

- **Volatile state.** The drive's callback changes the player's state, and
  the code reloads it for every test. `D_800B8744` declared `volatile`
  made `func_800154D4` match (its first read and the loop's are separate);
  `D_800B8778` too, which keeps `func_80015200`'s store out of the return's
  delay slot.
- **Another file's prototype.** `func_800153FC` and `func_80014CB8` call
  the sound engine's `func_80011820` with `short` arguments (the caller
  extends them to 16 bits), where the engine declares them `s8`: this file
  had another declaration. Called through a cast (`SET_CD_VOLUME`).
- **Orphan strings.** The chunk's `.rodata` has strings no function uses
  ("Pause Play", "CdlSetmode Error", ...). They're spelled out as
  `extern "C" const char` arrays after the function whose strings they
  follow; while that function is parked, inside its `NON_MATCHING` block,
  since its `.s` file carries them.

## What went wrong on the way

`tools/try_func.py` reported matches for a chunk that didn't compile:
the compile pipeline had the assembler's exit status, and cc1's errors
left an object without the broken functions. It now runs the pipeline
with `pipefail`.
