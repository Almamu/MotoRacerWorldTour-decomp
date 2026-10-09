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

Follow the per-function loop in [docs/workflow.md](docs/workflow.md),
every step, every function. In short:

- Replace the function's `INCLUDE_ASM` line in its chunk's source file
  (`src/<target>/`, or `lib/<library>/<target>/` for a library) with the
  code, where the line was, and delete its `.s` file under
  `asm/<target>/nonmatchings/<chunk>/` once it matches.
- **Every change must keep both executables byte-identical.** `make` must
  print `OK` for both. While you iterate, `tools/try_func.py <function>`
  compiles the chunk alone and shows what differs, without linking.
- **Check the compiler** when a function resists in ways that look
  structural: `tools/try_func.py <function> --gcc 2.91.66` (and
  `2.95.2`). Code that only matches with another compiler or flags than
  its executable's belongs in a library ([docs/libraries.md](docs/libraries.md)).
- **Parking:** a function you understand but can't match goes under
  `#ifdef NON_MATCHING`, with a comment saying what differs, and keeps its
  `INCLUDE_ASM` under `#else` and its `.s` file. A function you don't
  understand stays as it is: say so in the PR rather than guessing.
- **Stay in your chunk.** Each chunk is its own source file so parallel
  work doesn't conflict. The shared files are the headers in `include/`
  and `config/<target>/symbol_addrs.txt`: keep `symbol_addrs.txt` in
  address order and change only the lines you need.
- **Techniques:** [docs/matching_techniques.md](docs/matching_techniques.md)
  is what made the trickier functions match (build settings, source
  shapes, workarounds), each with its case. Read it before parking
  anything. Workarounds are spelled with their `include/match.h` macro and
  a comment saying what they fix.
- **Write it up** (docs/workflow.md, step 8), in the same PR: a new
  technique goes in docs/matching_techniques.md, your pass gets a file in
  [docs/matching/](docs/matching/README.md) (`issue-<N>-<slug>.md`: each
  function, what matched it or what's left, what you tried), and library
  findings go in docs/libraries.md.
- **Libraries** (`lib/`) have their own build settings; moving a chunk
  there is in docs/libraries.md.
- **Hand-written assembly** isn't decompiled: list the function in
  `config/<target>/handwritten.txt` with a word on what it is.
- **Names:** `tools/rename.py TARGET OLD NEW` renames a symbol everywhere.
  C++ functions take their GCC 2.95 mangled names
  (docs/decomp.md, "C++ names"). Rename only what you understand. An
  honest placeholder (`func_8001B778`, `D_800C4A10`, `m_04`) is better
  than a wrong name.
- **Headers:** classes and declarations shared by several chunks go in
  `include/<target>/`, one header per class or subsystem (e.g.
  `include/langimg/cobjet.h`), not in the chunk file; a library's in
  `lib/<library>/include/`.

### Verification

Work on a branch and open a PR; nothing goes to `main` directly. Before
every PR, from clean:

```sh
make clean && make
make NON_MATCHING=1 build    # parked C has to keep building and linking
tools/format.py --check      # clang-format (tools/format.py fixes it)
tools/chunks.py check        # every INCLUDE_ASM has its .s, no stale .s, linker/ up to date
tools/chunks.py status
```

`make` must end with `build/langimg.bin: OK` and `build/sces.bin: OK`
(`sha1sum` translates the "OK" in other locales). `status` should show
your functions as done. If you touched the library code or its names,
`make sdk` too (after `tools/fetch_psyq.sh`).

### Code style

The C and C++ in `src/` and `include/` follow `.clang-format`: 4-space
indent, 100 columns, braces on the same line, `type *name`, no one-line
functions or `if` bodies. Format with the script, which only accepts
clang-format 21 (other versions format some things differently):

```sh
tools/format.py              # format everything in place
tools/format.py src/sces     # or just these files or directories
tools/format.py --check      # what CI runs; changes nothing
```

The devshell has clang-format 21; elsewhere `pip install -r
requirements.txt` gives the same version (or point `CLANG_FORMAT` at one).
`git config core.hooksPath tools/hooks` makes git refuse commits with
unformatted code.
Formatting only moves whitespace and line breaks, so it can't change the
build, but `make` still checks it. Where a layout matters (a table aligned
in columns), wrap it in `// clang-format off` / `// clang-format on`.

### Continuous integration

CI (`.github/workflows/build.yml`) runs on every PR, forks included, and
on `main`. The repository holds everything the build needs, so it needs
no secrets and no copy of the game:

- **Format and bookkeeping:** `tools/format.py --check` and
  `tools/chunks.py check`.
- **Build and compare:** `make compare` rebuilds both executables and
  checks them byte for byte, then `make NON_MATCHING=1 build`; the run
  summary shows `tools/chunks.py status`.
- **Build with Sony's libraries:** `make sdk` (it downloads them; cached).

Don't merge a PR with a red check (GitHub can't enforce it on this
private repository's plan, so it's on the reviewer). Changes to `config/<target>.yaml` or the
symbols need a re-split with your copy of the game (docs/decomp.md);
`tools/chunks.py check` fails until the regenerated `asm/` and `linker/`
are committed.

## Opening the PR

Say which functions you decompiled, which you parked and why, and which
you left alone, and that `make` passed from clean. Link the write-up in
docs/matching/. Wait for CI to pass. Reference the issue
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
