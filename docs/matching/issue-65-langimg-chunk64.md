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

19 functions: 9 match, 2 are parked, 8 are still asm.

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
| `func_800910EC` | asm | 112 instructions |
| `func_800912AC` | matches | each channel's position |
| `func_800913C0` | matches | channels refreshed |
| `func_80091414`, `func_800914AC` | match | an entry by id, or the default |
| `func_80091544` | asm | 91 instructions (a pose set from a table) |
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
