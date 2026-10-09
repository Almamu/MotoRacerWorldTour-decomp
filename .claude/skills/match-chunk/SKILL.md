---
name: match-chunk
description: Pick up one decomp-chunk issue of this repo (a chunk of about 8 KB of still-assembly functions in one source file) and decompile its functions to byte-matching C++/C, ending with a ready-to-open PR. Use when given a decomp-chunk issue number or URL, or asked to "work on issue #N" or "pick up a chunk".
---

# Decompiling a decomp-chunk issue

Each `decomp-chunk` issue is one chunk: one source file
(`src/<target>/<chunk>.cpp` or `.c`) and its functions, listed as a
checklist. This skill gets you from the issue number to the per-function
process in [docs/decomp.md](../../../docs/decomp.md); it doesn't replace it.

## 0. Before anything else

Read, once per session: [CONTRIBUTING.md](../../../CONTRIBUTING.md) and
[docs/decomp.md](../../../docs/decomp.md) (compilers, chunks, "Decompiling a
function", C++ names). Build once (`make setup` if `tools/gcc-*` is missing,
then `make`) and check both lines say `OK` before changing anything. The
build needs the user's own `extracted/` game files; if they're missing,
stop and say so.

## 1. Get the chunk

```sh
gh issue view <N> --json title,body,comments
```

The title names the target and chunk (`Decompile langimg chunk_05 ...`).
The body lists the functions. It's a snapshot: a function whose `.s` file
is gone from `asm/<target>/nonmatchings/<chunk>/` is already done, so skip
it. Read the comments: if someone else has claimed the chunk or some of
its functions, leave those alone.

## 2. Claim it

Comment before starting, naming the whole chunk or the functions you take:

```sh
gh issue comment <N> --body "Taking the whole chunk."
```

Don't edit the checkboxes; `tools/chunks.py sync` ticks them after merge.

## 3. Work through the functions, in address order

For each function:

1. Read its `.s` file, and its callers and callees where that helps
   (`grep -rl <name> asm/ src/`). `m2c <file.s>` gives a draft.
2. Write the code in place of its `INCLUDE_ASM` line. In `.cpp` chunks,
   use C++ where the asm shows it (`this` in `$a0`, vtable calls, mangled
   callee names); classes go in `include/<target>/` headers.
3. `make`, then `tools/diff_func.py <name>` until it reports `identical`
   and both executables say `OK`. Then delete the `.s` file.
4. Matching tricks that often matter with these GCC versions: statement
   order, temporaries vs. reusing a variable, `while` vs. `do`/`for` loop
   shape, signed vs. unsigned types, pointer vs. array indexing.
5. If it doesn't match after real effort but you understand it: park it
   (`#ifdef NON_MATCHING` with a comment saying what differs, `INCLUDE_ASM`
   under `#else`, keep the `.s`).
6. If you don't understand what it does: leave the `INCLUDE_ASM` and say
   so in the PR. Never commit C that doesn't match outside `NON_MATCHING`.

Names: only rename (in `config/<target>/symbol_addrs.txt`, address
order) when you're confident; C++ functions take GCC 2.95 mangled names.
A placeholder is better than a guess.

## 4. Verify

```sh
make clean && make               # both lines must say OK
make NON_MATCHING=1 build        # parked C still builds and links
tools/chunks.py check            # INCLUDE_ASMs and .s files agree
tools/chunks.py status           # your functions show as done
```

Only a clean `make` with both `OK` counts. CI runs the same checks on the
PR (CONTRIBUTING.md, "Continuous integration"); wait for them to pass.

## 5. Commit and open the PR

Work on a branch from the start (never commit to `main`); new commits, no
amend, no force-push. Then:

```sh
gh pr create --title "Decompile <target> <chunk>: <what>" --body "..."
```

The body says which functions matched, which are parked (one line on why
each), which you left alone (and why), and that the clean `make` passed.
`Refs #N` for a partial chunk; `Closes #N` only when every function of the
chunk matches. Never write "close #N" or "closes #N" in a sentence that
means the opposite: GitHub closes the issue anyway. Write "#N stays open".
