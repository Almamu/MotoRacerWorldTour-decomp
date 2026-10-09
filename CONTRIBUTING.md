# Contributing

The matching decompilation has just started: both executables rebuild byte
for byte, but almost every function is still assembly. The code is split
into chunks of about 8 KB, and each chunk is a GitHub issue listing its
functions. Anyone, human or AI agent, can pick one up. This is the short
version; [docs/decomp.md](docs/decomp.md) has the detail.

## Finding something to work on

- Start from **[the open chunks](https://github.com/Almamu/MotoRacerWorldTour-decomp/issues?q=is%3Aopen%20is%3Aissue%20label%3Adecomp-chunk%20sort%3Acreated-asc)**
  (label `decomp-chunk`), oldest first.
- `langimg` is the game (C++, GCC 2.95.2), `sces` the boot executable (C++,
  GCC 2.91.66).
- `library` marks the PsyQ library code at the end of each executable.
  Don't decompile it by hand: where Sony's own object is what's linked,
  `make sdk` links it (`tools/fetch_psyq.sh` first; docs/decomp.md,
  "Libraries"), and those functions count as done. #97 tracks the rest.
- `cleanup` issues are for code that's already decompiled. Each game
  chunk has a follow-up (labelled `blocked` until its chunk issue
  closes), and #98 to #102 cover naming, headers, source files, data and
  code style across the whole tree.
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
- **Matching notes:** docs/decomp.md, "Matching notes", lists what made
  the trickier functions match (declarations, `char` signedness, statement
  order, ...). Read it before parking anything.
- **Hand-written assembly** isn't decompiled: list the function in
  `config/<target>/handwritten.txt` with a word on what it is.
- **Names:** `tools/rename.py TARGET OLD NEW` renames a symbol everywhere.
  C++ functions take their GCC 2.95 mangled names
  (docs/decomp.md, "C++ names"). Rename only what you understand. An
  honest placeholder (`func_8001B778`, `D_800C4A10`, `m_04`) is better
  than a wrong name.
- **Headers:** classes and declarations shared by several chunks go in
  `include/<target>/`, one header per class or subsystem (e.g.
  `include/langimg/cobjet.h`), not in the chunk file.

### Verification

Work on a branch and open a PR; nothing goes to `main` directly. Before
every PR, from clean:

```sh
make clean && make
make NON_MATCHING=1 build    # parked C has to keep building and linking
tools/chunks.py check        # every INCLUDE_ASM has its .s, no stale .s
tools/chunks.py status
```

`make` must end with `build/langimg.bin: OK` and `build/sces.bin: OK`
(`sha1sum` translates the "OK" in other locales). `status` should show
your functions as done. If you touched the library code or its names,
`make sdk` too (after `tools/fetch_psyq.sh`).

### Continuous integration

CI (`.github/workflows/`) runs the same checks on every PR and on `main`:

- **Compile (no game files)**, on every PR, forks included:
  `tools/chunks.py check`, then `make objects` (every source file, no
  linking) as written and with `NON_MATCHING=1`.
- **Build and compare**: splits, builds and compares both executables,
  builds with `NON_MATCHING=1`, `make sdk`, and puts `tools/chunks.py
  status` in the run summary. It needs the original executables, which
  come from a private archive named by repository secrets (never the
  repository). Without the secrets it warns and skips those steps.
- **Fork PRs** get no secrets, so `fork-rom-check.yml` runs the build
  for them in the `fork-pr-rom` environment, after a maintainer
  approves it. It compares against `main`'s checksums, so a PR can't
  change them to pass. Review a fork's changes to the Makefile and
  `tools/` before approving: that code runs with the game files.

A red check blocks the merge. Maintainers set it up once:

```sh
tools/baserom.sh pack                       # build/baserom.tar.gz: SCES_030.37 + LANGIMG.DAT
# upload it somewhere private, then:
gh secret set BASEROM_URL                   # where CI downloads it from
gh secret set BASEROM_USERNAME              # only if the URL needs basic auth
gh secret set BASEROM_PASSWORD
```

If your change makes something in [docs/decomp.md](docs/decomp.md) out of
date (a compiler finding, a data section, a new convention), update it in
the same PR.

## Opening the PR

Say which functions you decompiled, which you parked and why, and which
you left alone, and that `make` passed from clean. Wait for CI to pass. Reference the issue
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
