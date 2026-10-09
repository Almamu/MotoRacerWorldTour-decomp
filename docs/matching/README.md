# docs/matching/

Write-ups of matching passes: one file per chunk issue (or retry of parked
functions), written while the work is done. Each says, function by
function, what made it match or what's left, and what was tried that
didn't work, so the next attempt doesn't repeat it.

The techniques they found are collected, by topic, in
[matching_techniques.md](../matching_techniques.md); a write-up is the
evidence behind them. Name a new file `issue-<N>-<slug>.md` after the
issue it worked on, and add it below.

| Write-up | Pass |
|---|---|
| [issue-85-sces-chunk01.md](issue-85-sces-chunk01.md) | Boot executable, chunk_01's parked functions (and chunk_00's movie loop, #84) |
| [issue-1-langimg-sound.md](issue-1-langimg-sound.md) | The game's chunk_00: its sound engine, and the game's build settings |
