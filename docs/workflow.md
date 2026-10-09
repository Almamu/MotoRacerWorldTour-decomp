# The per-function matching loop

How to take one function from assembly to matching C or C++. Finding
work, claiming it and opening the PR are in
[CONTRIBUTING.md](../CONTRIBUTING.md); this is the loop you run for each
function in between. The techniques it refers to are in
[matching_techniques.md](matching_techniques.md).

Every step, every function. Don't leave the write-up (step 8) for later.

## 1. Read it

Read `asm/<target>/nonmatchings/<chunk>/<function>.s`, its callers and its
callees (`grep -rl <name> asm/ src/ lib/`), and what's already known
about the globals and structs it uses (`include/`, `lib/*/include/`).
Work out what it does before writing anything.

- `m2c asm/.../<function>.s` gives a draft. It's a starting point: its
  types are guesses and its loops are often inside out.
- Check how callers set its arguments: a function that seems to take
  nothing may pass its own `$a0` on.

## 2. Write it

Replace the function's `INCLUDE_ASM` line in its chunk (`src/<target>/`
or `lib/<library>/<target>/`) with the code, where the line was.

- Use C++ where the asm shows it (`this` in `$a0`, vtable calls, mangled
  callee names); classes go in a header.
- Declare what it uses in a header, with real types: a small global with
  its type (`extern int x;`, so it's `$gp`-relative), callees with the
  return type the asm shows.
- Placeholder names keep C linkage (`extern "C"`) in `.cpp` chunks.

## 3. Compare it

```sh
tools/try_func.py <function>              # the differing instructions
tools/try_func.py <function> -v           # every instruction, side by side
```

The last line counts the differences and the "opcode runs out of place":

- **0 runs out of place**, some instructions differ: only registers or
  immediates. Go to step 5.
- **Runs out of place**: the instructions themselves, their order or
  count differ. That's the source shape (step 4), or the compiler.

If the shape is wrong in ways that look structural (a loop compiled
differently, registers wrong throughout), **check the compiler before
anything else**:

```sh
tools/try_func.py <function> --gcc 2.91.66
tools/try_func.py <function> --gcc 2.95.2
```

A function that only matches with the other one means its file was
built apart: it goes in a library with its own settings
([libraries.md](libraries.md)). Flags can be tried the same way
(`--cflags=-mno-split-addresses`).

## 4. Shape the source

Iterate on the C until the instructions match. Keep a scratch copy of the
chunk (same file name) and compare versions of the function side by side:

```sh
cp lib/sound/langimg/chunk_00.cpp /tmp/v/chunk_00.cpp   # edit it
tools/try_func.py <function> /tmp/v/chunk_00.cpp
```

The usual levers, in rough order: statement order, where the result
variable is assigned, early returns vs one exit, the loop's form
(`while`/`do`/`for`/`goto`), temporaries (a pointer variable, a
block-local), types (signed/unsigned, `short`/`int`), struct vs array
access. [matching_techniques.md](matching_techniques.md) has each with
the case it came from.

## 5. Registers: the permuter

When only registers differ and reshaping doesn't help, run
[decomp-permuter](https://github.com/simonlindholm/decomp-permuter)
(checked out anywhere; not a dependency of the build):

```sh
tools/permuter_setup.py <function> base.c /tmp/perm/<function>
PATH=/tmp/perm/<function>/bin:$PATH python3 ../decomp-permuter/permuter.py /tmp/perm/<function> -j8 --best-only
```

`base.c` is the function as plain C with every declaration it needs above
it (the permuter parses C, not C++). It compiles with the chunk's own
command, wrapped in `extern "C"` for a C++ chunk. Most of what it finds is
noise; read the best result's `diff.txt` for the idea behind it and write
that plainly.

## 6. Match or park

**It matches** (`tools/try_func.py` says 0 differ): delete its `.s` file,
then

```sh
make                                  # both lines must say OK
tools/diff_func.py <function>         # identical
```

**It doesn't, after a real effort, but you understand it**: park it.
Its C goes under `#ifdef NON_MATCHING`, with a comment saying what still
differs, and the `INCLUDE_ASM` under `#else`; the `.s` stays. Compare
parked C with `tools/try_func.py <function> -D NON_MATCHING`.

**You don't understand it**: leave the `INCLUDE_ASM`, and say so in the
PR. Never leave non-matching C outside `NON_MATCHING`.

## 7. Clean up and verify

Name what you understood (`tools/rename.py`, only when confident), give
the function a comment saying what it does, format (`tools/format.py`),
and run the verification in CONTRIBUTING.md from clean. A workaround stays
only if the plainer code doesn't match: try removing it once more.

## 8. Write it up

Add what you learned to the docs in the same PR:

- A **new technique** (a build setting, a source shape, a workaround, a
  tool) goes in [matching_techniques.md](matching_techniques.md), under
  its topic, naming the function it came from. A workaround that fits in
  a macro gets one in `include/match.h`.
- The **pass** (a chunk issue, a retry of parked functions) gets a
  write-up in [docs/matching/](matching/README.md): each function, what
  matched it or what's left, and what was tried that didn't work.
- Library findings (a compiler, a flag, where it starts and ends) go in
  [libraries.md](libraries.md).
