# The game's chunk_64: animation tables and tracks (#65)

Animation tables (`Tab64`) with two kinds of entries by id, each with a
default (`D_800CBE60`, three shorts; `D_800CBE68`, three 10-bit
coordinates packed in a word), set up the first time they're needed.

Tracks (`Track64`, keys of a 0x1C-byte pose and a time) and what plays
them (`Play64`):
- the last key at or before a time;
- a track started, its first pose given;
- a track played to a time: the pose between two keys, blended in from
  where it started over the first 100 (parked);
- a list of objects updated: each one's track played or started, then
  a vector and four shorts of it copied.

Also channels' values refreshed from their sources, and a vector's three
shorts passed to `func_80097E4C`.

One file, `src/langimg/chunk_64.cpp`, 0x800910EC-0x80093150.

19 functions: 11 match, 2 are parked, 6 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800CBE58`, `D_800CBE5C` and `D_800CBE68`.

## Notes

- **Two default returns kept apart.** `func_80091414` and `func_800914AC`
  return the default from two places. With two `return &D_800CBE60;`
  GCC merged them; `return found ? &t->m_10[i] : &D_800CBE60;` at the
  end kept the second one. The table's count is read from the field each
  time (no local), which gave the original's copy of it before the loop.
- **A "next" pointer.** `func_800913C0` walks its channels with the
  element and the next one's address: `Chan64 *c = p++;` at the top of
  the loop matched; `c++` at the bottom gave two derived pointers.
- **Loads first, through locals.** `func_800928FC` copies three halves of
  a vector's words, loading all three before storing:
  `short x = s->m_00; ...` and then the stores.
- **Inline functions with pointer parameters.** `func_800925A8` copies a
  position through pointers held in registers, and `func_80092824` zeroes
  two stack vectors through a pointer and packs one into a word. Each
  matched written as small inline functions taking pointers
  (`func_800925A8_cpy(&o->m_10, &o->m_98)`), the copy loading into locals
  first.
- **An index in a variable.** `func_80092480` computes the next key's
  offset as `(k + 1) << 5`; `&keys[k + 1]` folded into `a + 0x20`, and an
  `int j = k + 1;` declared before the first key's address kept it. Its
  registers still differ; parked.
- **Parked.** `func_8009243C` moves its track to `$v1` and its fourth
  argument to `$a1` first; none of the ways of choosing the default did.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800910EC` | matches | the channels posed under a root matrix |
| `func_800912AC` | matches | each channel's position |
| `func_800913C0` | matches | channels refreshed |
| `func_80091414`, `func_800914AC` | match | an entry by id, or the default |
| `func_80091544` | matches | a table copied into another |
| `func_800916B0` | asm | 578 instructions |
| `func_80091FB4` | asm | 272 instructions |
| `func_800923F0` | matches | the last key at or before a time |
| `func_8009243C` | parked | a track started: registers |
| `func_80092480` | parked | a track played to a time: the keys' addresses |
| `func_800925A8` | matches | a list of objects updated |
| `func_80092684` | asm | 104 instructions |
| `func_80092824` | matches | the defaults set up |
| `func_800928CC` | matches | a vector's shorts passed on |
| `func_800928FC` | matches | a vector's words to shorts |
| `func_80092918`, `func_80092AD4` | asm | 112 and 104 instructions |
| `func_80092C70` | asm | 313 instructions |

## Second pass

- `func_800912AC`: each channel's position, through its owner's matrix
  (with an offset for flag 0x40) or copied from what it follows. The
  offset is added the chunk_62 way (the three loads, then the adds, then
  the stores), and the loop steps the channel before the count
  (`c++, n--`). `Chan64` gained the fields it reads.

## Group C follow-up

- `func_80091544`: a table's entries copied into another's (all at once
  when a count is -1, else one by one by id through `func_80091414` and
  `func_800914AC`), the rest set to the defaults (`func_8008D0FC`,
  `func_8008D148`). The 8-byte entries are copied with the table's base
  read into a local and indexed (`Ent64 *o = d->m_10; ... o[i].m_00 =
  x;`), the three values loaded first; through `&d->m_10[i]` the address
  came out before the loads.
- `func_800910EC` written and parked (81 off): the channels posed in the
  model's order under a root matrix. GCC hoists the scratch matrix's
  address out of the loop into a saved register where the original
  computes it at each use, and the order list and the root are in swapped
  saved registers. `Anim64` gained its model at 4, position at 0x10 and
  angles at 0x1C.

## Inline helpers and small symbols

- `func_800910EC` (the channels posed under a root matrix): 82 off to 6.
  The rotation's call goes through an inline function (`Rot64(&t, c)`), so
  the scratch matrix's address is computed for the call and for `out` as
  the original's instead of being hoisted into a saved register (#289's
  finding); the coordinates declared `long z, y, x` gave the original's
  registers for the translation's sums. Left: inside `Rot64`, the part
  pointer is loaded before the first angle and the other two angles are in
  swapped registers; four other forms of the helper and a 15-minute
  permuter run didn't change it.

## Group C: more functions

- `func_800910EC` (the channels posed under a root matrix) matches, from 6
  off. Inside its rotation helper `Rot64` the original loads the first
  angle, the part pointer and the other two angles, then adds the part's
  offsets: written as four loads into locals followed by three `+=`, it
  matched; summed in the call's arguments, the part pointer was loaded
  first and the angles came out in swapped registers.
