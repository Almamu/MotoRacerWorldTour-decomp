# The game's chunk_47: a replay recorder, sounds, static objects (#48)

A replay's recorder: an object with a bit stream at 0x08 and two
histories of five vectors (positions at 0x34, angles at 0x70), frames
written to the stream and read back. Around it: five sound entries
(`D_800CB5E0`, 124 bytes each) and their volumes, the static objects'
construction, sines and cosines from the 4096-entry table, and small list
helpers. One file, `src/langimg/chunk_47.cpp`, 0x8006F29C-0x8007142C.

39 functions: 35 match, 1 is parked, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, six small
globals.

## Notes

- **Tables as scalars.** Several tables are read with the index's shift
  before the address's `lui`, and some addresses land in the registers an
  unsplit `la` would give. Declaring the tables scalars (`extern short
  D_800C7F18;`, used through `&D_800C7F18` and byte offsets) matched
  `func_8006F7D4`, `func_8006F88C`, `func_8006FA30` and `func_8006FB74`
  (whose two vtables are scalars too). `func_8006FADC` matched with the
  shift written out.
- **Sines and cosines.** `func_80070C10` reads both through inlines
  (`Sin47`, `Cos47`, found by the permuter): two address computations of
  one entry. `func_80070CCC` reads them straight into two locals.
- **A loop that isn't rotated.** The list search (`func_80070DF4`)
  matched only as a `goto` loop.
- **Static construction.** `func_8006FB74` builds `D_800D11D0` (two
  arrays of elements with empty constructors leave empty count-down
  loops, matched with a dead pointer stepped inside) and the five
  entries (two base constructors, two vtables, an init).
- **Vectors read first.** The recorder's reset and its histories copy
  vectors with all three loads before the stores (`VecCopyL`); a local
  zero vector copied in leaves dead stores on the stack
  (`func_8006FE64`).
- **The bit stream.** Frames are written with a presence bit per part and
  values through a varargs writer that takes the bit widths to try
  (`func_80096CA8(s, v, 4, 7, 10, 0x20, -1)`); reading back matched with
  `o->m_08` named at every call.
- **`void` callees.** chunk_68's vector functions return their
  destination, but the history functions matched with them declared
  `void`.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8006F29C` | matches | a bike's sounds each frame |
| `func_8006F7A0` to `func_8006F968` | match | the entries' init and calls, an entry started near or far, a camera set |
| `func_8006F9BC` | matches | a mode's two setups |
| `func_8006FA30`, `func_8006FADC`, `func_8006FAF8` | match | the volumes (0 to 63) |
| `func_8006FB3C`, `func_8006FB74` | match | the static objects' construction and destruction counts |
| `func_8006FC70` to `func_8006FF44` | match | the recorder's constructor, destructor, sound calls, copy and reset |
| `func_8006FF78`, `func_80070140` | match | a replay frame written and read back |
| `func_80070314` | parked | the recorder each tick: the original saves `$s5`, unused |
| `func_8007057C` | asm | 306 instructions |
| `func_80070A40`, `func_80070B2C` | match | a history pushed, by sums or by differences |
| `func_80070C10`, `func_80070CCC`, `func_80070D54` | match | points along an angle, a distance along it, its sine and cosine |
| `func_80070D98` to `func_80070E20` | match | a list's elements, a key searched for |
| `func_80070E40` | asm | 379 instructions |

## Group B large functions, third pass

`func_8006F29C` matches. Each frame it sets a bike's sounds:

- the listener (the camera or the bike's model);
- the engine (`func_8006E474` or `func_8006EB54` by the game mode);
- a landing scaled by the fall's speed;
- the one-shot sounds (`Play47`);
- the bumps, skids and wind (the wind is a looping voice kept at the
  entry's 0x78).

The new structs are `Bk47`, `Mdl47` and `Mode47`, and `World47` and
`Ent47` gained the fields used here. Everything matched quickly except the
bump's volume. There the original masks the byte at 0x5C again
(`andi 0xFF`) before doubling it. That needed two things:

- the strength computed in an inline helper that takes a `u8`;
- the hard-bump test written as a fresh signed read, `(s8)m->m_5C < 0`,
  not a cast of the local.

With one local doing both jobs, GCC dropped the mask (4 off). The
permuter found the re-read.
