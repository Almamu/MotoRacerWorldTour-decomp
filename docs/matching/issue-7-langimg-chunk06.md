# The game's chunk_06: racers, visibility, particles (#7)

The racer's arrays and planes, a visibility test through the GTE, the
static racer's reference count, and a pool of 100 particles. One file,
`src/langimg/chunk_06.cpp`, 0x8001D760-0x8001F7E4.

17 functions: 12 match, 1 is parked, 4 are still asm (after the near-misses
pass).

## The settings

GCC 2.91.66, `-G8`, addresses unsplit (the game's default), divisions
without checks, and two small externs (`D_800C4D14`, `D_800CA7D0`):
`langimg.chunk_06_*`.

Unsplit, unlike chunk_03 to chunk_05: `func_8001F090` and
`func_8001F0CC` take the static racer's address with one `la` (a `nop`
in the branch's delay slot, where split addresses put the `lui`), and
match only with `-mno-split-addresses`; every other function matched so
far matches either way. Their reference count, `D_800CA7D0`, and
`D_800C4D14` are the file's small globals (`$gp`).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8001D760` | parked | the racer's setup (11 arguments): the sine table's two bases, 47 off from one instruction more |
| `func_8001D99C`, `func_8001DA10` | match | the racer's arrays freed and cleared |
| `func_8001DA44` | asm | 308 instructions |
| `func_8001DF10` | matches | inside the racer's three planes |
| `func_8001DFD8` | matches | the planes' normals as the GTE's light matrix |
| `func_8001E110`, `func_8001E118`, `func_8001E1C8` | match | visibility of spheres in the light matrix's frame |
| `func_8001E240` | matches | the racer's outline as six triangles, scaled, passed on; a wait of 18 first |
| `func_8001E458`, `func_8001EAF4` | asm | 424 and 360 instructions |
| `func_8001F090`, `func_8001F0CC` | match | the static racer's last and first user |
| `func_8001F10C` | matches | the particles reset |
| `func_8001F13C` | asm | 336 instructions |
| `func_8001F67C` | matches | the particles' frame |

- **An undeclared clobber.** `func_8001DFD8` loads the light matrix
  through `$v0` and `$v1` in one `asm` block; it matches only with `$v1`
  declared clobbered and `$v0` not (`GTE_SET_LIGHT_M`): the original's
  macro left `$v0` out, and GCC's register choice around it follows.
- **Read, then subtract in place.** `func_8001E118` reads the point's
  three coordinates into locals, subtracts the camera's and shifts them
  in place, and the GTE's results come back into the same locals.
- **A temporary started at 0.** `if (ok) v = test; ok = v;` with `v = 0`
  first, where a ternary took other registers (`func_8001E118`).

## Near-misses pass

- `func_8001F67C` (the particles' frame) matches, from 23 off. The new
  position is summed into the position's locals first (`x += vx; ...`,
  then the three stores), the speed's change computed into its own local
  (`vy -= g >> 12;` then stored), and `func_80099574` declared returning
  its vector, as chunk_68 defines it: declared `void`, the alpha's
  computation after the call took `$v0` where the original has `$v1`.
