# The game's chunk_45: sound banks, slots and a settings stream (#46)

The sound side of the game's objects: a channel set (`D_800D11D0`) and
two banks of 16 lists of nodes; a set of slots, each holding a
0x50-byte object with a vtable, kept in a list and updated by its state;
a table of packed entries with settings read from and written to a bit
stream; a value eased towards its target. One file,
`src/langimg/chunk_45.cpp`, 0x8006B3B0-0x8006D388.

65 functions: 57 match, 8 are parked.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, and eleven
small globals (`langimg.chunk_45_*`), as chunk_23: 2.91.66 code goes on
this far. `func_8006BFC0` told the compiler (its registers only came out
right with 2.91.66), the first wrapper of the channel set the address
mode (its `lui` before the call, `addiu` in the delay slot).

## The types

- `Table45`: 256 packed entries (`Packed45`: 13, 5 and 14 bits) with a
  cursor and a count; two copies of a 12-byte `Settings45`, the current
  one at 0x414 and the last one written or read at 0x420; a bit stream
  at 0x42C.
- `Bank45`: 16 nodes of 0x40 bytes, then 16 list heads. A head holds the
  context it was started for (`Ctx45`, also the sound with its entry's
  index at 0x3F), the entry and the first node. `Banks45` is two banks,
  the entries they share and a table of handles.
- `Slots45`: slots of 0x24 bytes in a list (`m_first`, `m_last`), each
  with an object (`Virt45`) and a state: 0 free, 1 to 3 the states
  `func_8006B570` dispatches on.
- `Ease45`: a value, its target, a rate, and where the current ease
  started.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8006B3B0` to `func_8006B914`, `func_8006B9B0`, `func_8006BA80` | match | a slot finished, added, unlinked; virtual calls; the first free slot; the bank's last user |
| `func_8006B9F8` | parked | the first object whose virtual call fails: the call as the loop's test, registers (8 off) |
| `func_8006BABC` | parked | the bank's first user: the counter set before the array's address (3 off) |
| `func_8006BB48` to `func_8006BB9C` | match | flags; an animation channel's constructor |
| `func_8006BBC4` | parked | a value eased towards its target: `MULSHIFT`, registers (85 off) |
| `func_8006BD78` to `func_8006C064` | match | a word packed through bitfields, the table's destructor, reset, cursor and entries |
| `func_8006C094` | parked | the settings set from a description: the constant 1 loaded twice (22 off) |
| `func_8006C110` to `func_8006C7A0` | match | the settings written to and read from the stream, a parity, the channel set |
| `func_8006C7CC` | parked | a bank loaded: a call's arguments in the other order (3 off) |
| `func_8006C82C` | matches | |
| `func_8006C85C`, `func_8006C8EC` | parked | a sound's settings looked up; a scene's sounds and music |
| `func_8006CA50` to `func_8006CFCC` | match | sounds started, one at random; the lists' contexts and nodes |
| `func_8006CFD0` | parked | an entry's nodes given to an empty list: a second pointer for a halfword (44 off) |
| `func_8006D0BC` to `func_8006D314` | match | the banks' lists |

- **An address as one `la`.** `D_800CB480` declared as an `int` (8 bytes
  or less, so possibly small) comes out as one `la`, with a `nop` in the
  branch's delay slot (`func_8006BA80`); `D_800D11D0` declared as an
  array of unknown size is split, its `addiu` in a call's delay slot
  (`func_8006C77C`). One file, both forms.
- **Bitfields for a word's bits.** `D_800D5FD8 &= ~2` and the bitfield
  store `D_800D5FD8.m_b1 = 0` give the same instructions in another
  order; only the bitfield matched (`func_8006BF4C`). `func_8006BD78`
  packs three values with stores to three bitfields of `*out`, where the
  shifts and masks written out were scheduled differently.
- **A virtual call through a function returning `void`.** With the
  result ignored, the original's registers came from a cast to a `void`
  function (`VCALLV`, `VCALLV1`: `func_8006B914`, `func_8006B500`).
- **A switch with an empty `case 0`.** `func_8006B570` tests 1 first,
  then below 2: the decision tree of a switch on 0 to 3 with `case 0:
  break;` (a free slot), not of one on 1 to 3.
- **The callee's result returned.** `func_8006C110` increments a field in
  `$v1`, `$v0` being live: it returns what `func_8006C140` returned.
- **A word copy of a 12-byte struct of bytes.** The settings (shorts and
  bytes, 2-aligned) are copied with three `lw`/`sw`; written as a struct
  copy GCC used halfwords. Copied through a `Words3` cast
  (`func_8006C330`, `func_8006C140`). The same three bytes are compared
  as a word masked to 24 bits (`func_8006C140`).
- **`x - (10 + y)`.** `x - 10 - y` folds to `x - (y + 10)`; the original's
  `addiu -10` then `subu` came from `x - (10 + y)` (`func_8006B3B0`).
- **The entry after the cursor.** `(&t->m_items[c])[1]` folds the `+ 1`
  into the load's offset; `t->m_items[c + 1]` adds it first
  (`func_8006C4A0`).
- **Loops from 0 over a global table** (`func_8006C85C`,
  `func_8006C8EC`): the open problem of
  [matching_techniques.md](../matching_techniques.md), with each field's
  address from the symbol in the original. `-fno-rerun-cse-after-loop`
  doesn't change these two.

chunk_23's constructor (`func_8003FC94`, #24) matched during this pass:
the permuter wrote its zeros as one chained assignment,
`o->m_04 = o->m_10 = *(int *)o = 0;`, before the -1 stores.
