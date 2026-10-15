# The game's chunk_26: a list of named objects (#27)

A class on chunk_23's named objects (`Owner26`) holding a doubly linked
list of others (`Node26`, at 0x2B4):
- an object added before the first of its sub-kind or higher, taken out
  and deleted, the first of a kind found, the last found, those of a
  kind taken out and deleted;
- an object's virtual call at 0x18 made, and its call at 0x30 if that
  returns 0;
- five arrays of values freed, or made for a count and filled from a
  list of arguments ending in 0 (a function with varargs).

Also a named object's constructor and destructor, the stage given the
race's settings, a flag set from several globals, a counter whose first
holder calls `func_80044FE8` and whose last calls `func_8004506C`, and a
7-word struct's constructor and destructor.

One file, `src/langimg/chunk_26.cpp`, 0x800452BC-0x80046F2C.

20 functions: 17 match, 3 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800CAE60`, `D_800CAE74`, `D_800CAE80`, `D_800CAE84` and
`D_800CAE88`.

## Notes

- **Which test of a loop stays at the top.** `func_80046194` and
  `func_80045F78` search the list until found: the original tests the
  node at the top of the loop and the flag at the bottom, jumping back
  to the node's test. `while (n && !found)` put both tests at the
  bottom; `while (!found && n)` matched.
- **`new T[n]` for a zeroing loop.** `func_80046564` zeroes an array
  after `__builtin_vec_new` with a loop counting down to -1 (and then
  `memset`s it). Written by hand, the loop's registers differed; as `new
  Zero26[n]`, a struct whose inline constructor sets its one word to 0,
  it matched (chunk_44's and chunk_60's form).
- **Two addresses, two calls.** `func_80046870` passes one of two names
  to `func_80096290`, each built in `$a0` in its own branch with the
  `lui` in a delay slot. `c ? a : b` loaded the first before the test;
  `if (c) f(a); else f(b);` matched, with the names declared as arrays
  (split addresses).
- **An object read once for an allocation.** The same function stores
  `__builtin_vec_new`'s result in the stage, reading `o->m_A4` once
  before the call: `st = o->m_A4; st->m_148 = ...(st->m_14C * 4);`.
- **The zero case first.** `func_80046B78` sets a flag to 0 or 1; the
  original lays out the 0 first, so its source is one condition for 0,
  `if (a || (b && ...)) o->m_B4 = 0; else o->m_B4 = 1;`.
- **`void` virtual calls.** The calls at 0x30 and 0x38 and the deleting
  destructor's (0x08) matched declared `void`; the one at 0x30 declared
  `int` swapped `$v0` and `$v1` (chunk_45's technique).
- **The constructor's stores.** `func_800467B8` matched in one of the
  orders of its first five stores (a script tried 60 of them).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_800452BC` | asm | 506 instructions |
| `func_80045A7C` | asm | 319 instructions |
| `func_80045F78` | matches | an object added to the list |
| `func_800460E4` | matches | the first of a kind and sub-kind |
| `func_80046158` | matches | the last in the list |
| `func_80046194` | matches | an object taken out and deleted |
| `func_800462A4` | matches | the objects of a kind taken out and deleted |
| `func_8004636C` | matches | an object's calls at 0x18 and 0x30 |
| `func_80046408`, `func_8004642C` | match | a 7-word struct's constructor and destructor |
| `func_800464F4` | matches | arguments up to a 0 passed on as an array |
| `func_80046564` | matches | the values' arrays freed or made |
| `func_8004673C`, `func_80046778` | match | a counter decremented and incremented |
| `func_800467B8`, `func_80046848` | match | the constructor and destructor |
| `func_80046870` | matches | a name passed on, the stage set up from the race's settings |
| `func_80046A74` | matches | the stage given the race's settings |
| `func_80046B78` | matches | a flag set from several globals |
| `func_80046C40` | asm | 187 instructions |
