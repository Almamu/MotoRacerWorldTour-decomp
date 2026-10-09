# Contributing

The matching decompilation has just started: both executables rebuild byte
for byte, but almost every function is still assembly. The code is split
into chunks of about 8 KB, and each chunk is a GitHub issue listing its
functions. Anyone, human or AI agent, can pick one up. This is the short
version; [docs/decomp.md](docs/decomp.md) has the detail.

## Finding something to work on

- Start from **[the open chunks](https://github.com/Almamu/MotoRacerWorldTour-decomp/issues?q=is%3Aopen%20is%3Aissue%20label%3Adecomp-chunk%20sort%3Acreated-asc)**
  (label `decomp-chunk`), oldest first.
- `langimg` is the game (C++, GCC 2.95.2), `sces` the boot executable (C,
  GCC 2.91.66).
- `library` marks the PsyQ library code at the end of each executable.
  Its compiler hasn't been identified yet, so start with a game chunk
  unless you want to work that out (docs/decomp.md, "Libraries").
- An issue already claimed in its comments is taken, unless the claim is
  old and nothing came of it; ask in the issue.

## Claiming work

- **Comment on the issue before you start**, saying what you're taking.
  Taking the whole chunk is preferred: its functions often belong to the
  same classes and share data, and one person sees them together.
- Taking a few functions is fine too. Name them in the comment so others
  can take the rest in parallel.
- If you stop partway, say so in a comment, with what's done and what's
  left.
- The checkboxes are ticked by `tools/chunks.py sync` once a function is
  decompiled on `main`; don't tick them by hand to claim.
- Two people picking the same function is a minor, self-correcting race:
  whoever's PR lands first wins, and the other rebases and drops it.

## Doing the work

Follow "Decompiling a function" in [docs/decomp.md](docs/decomp.md). In
short:

- Replace the function's `INCLUDE_ASM` line in its chunk's source file
  with the code, where the line was, and delete its `.s` file under
  `asm/<target>/nonmatchings/<chunk>/`.
- **Every change must keep both executables byte-identical.** `make` must
  print `OK` for both, and `tools/diff_func.py <function>` shows what
  differs while you iterate.
- **Parking:** a function you understand but can't match goes under
  `#ifdef NON_MATCHING`, with a comment saying what differs, and keeps its
  `INCLUDE_ASM` under `#else` and its `.s` file. A function you don't
  understand stays as it is: say so in the PR rather than guessing.
- **Stay in your chunk.** Each chunk is its own source file so parallel
  work doesn't conflict. The shared files are the headers in `include/`
  and `config/<target>/symbol_addrs.txt`: keep `symbol_addrs.txt` in
  address order and change only the lines you need.
- **Names:** C++ functions take their GCC 2.95 mangled names
  (docs/decomp.md, "C++ names"). Rename only what you understand. An
  honest placeholder (`func_8001B778`, `D_800C4A10`, `m_04`) is better
  than a wrong name.
- **Headers:** classes and declarations shared by several chunks go in
  `include/<target>/`, one header per class or subsystem (e.g.
  `include/langimg/cobjet.h`), not in the chunk file.

### Verification

Before every PR, from clean:

```sh
make clean && make
tools/chunks.py status
```

`make` must end with `build/langimg.bin: OK` and `build/sces.bin: OK`
(`sha1sum` translates the "OK" in other locales). `status` should show
your functions as done.

If your change makes something in [docs/decomp.md](docs/decomp.md) out of
date (a compiler finding, a data section, a new convention), update it in
the same PR.

## Opening the PR

Say which functions you decompiled, which you parked and why, and which
you left alone, and that `make` passed from clean. Reference the issue
with `Refs #N`. Use `Closes #N` only in the PR that decompiles every
function of the chunk; parked functions keep the issue open.

**Never write `close #N` / `closes #N` / `fixes #N` anywhere in a PR
description when you mean the opposite,** not even in "this does not
close #N". GitHub matches the phrase regardless of the negation and
closes the issue when the PR merges. Write "#N stays open" instead.

## If you're an AI agent

The process above applies to you exactly as written, and
[README.md](README.md#ai-assisted-decompilation) has the project's stance
on AI-assisted work. Claude Code sessions can use the
[`match-chunk` skill](.claude/skills/match-chunk/SKILL.md): it takes an
issue number, claims it, works through its functions, verifies and
prepares the PR.
