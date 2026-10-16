# The game's chunk_07: a pool of linked nodes (#8)

A pool of up to 1600 nodes in 200 slots: each slot a position, a size and
its first node; the nodes linked to each other by their distance in the
array. Then the slots' visibility, a table of random fractions, and the
particles' and slots' drawing. One file, `src/langimg/chunk_07.cpp`,
0x8001F7E4-0x80021154.

24 functions: 18 match, 2 are parked, 4 are still asm.

## The settings

As chunk_06: GCC 2.91.66, `-G8`, unsplit addresses, divisions without
checks; its one small global is the random table's reference count,
`D_800CA960` (`langimg.chunk_07_*`).

## The types

`Node` (0x38 bytes): `m_next` and `m_prev` at 0x26 and 0x2E are
distances to the linked nodes, `-32000` (`NODE_NONE`) when there's none;
`m_slot` at 0x36, -1 when free. `NodeSlot` (0x18 bytes): a position, a
size, the first node at 0x16. `NodePool`: the nodes, 200 slots, the
nodes' count and two cursors. A handle is the node's index and the
slot's, `(node << 16) | slot`; a handle whose node has moved to another
slot is stale.

## A node's ends

`func_800203A8` (the matrix and width from `func_80020868` and
`func_80020998`) places a node's two ends, `-w/2` and `w/2` on x, by the
matrix (`func_80098768`, then the GTE's `func_8009887C` with the matrix
already set), grows its slot's box to them, turns the previous node's
position towards the new one and stores the angles (`Ang07`, three
shorts at the slot's 0x10). The node's position (0x06, 0x0E, 0x16) and its
direction's x and z bytes (0x1E, 0x1F) are stored last, in 1/32.

Parked at 8 off. What got it there: the slot indexed each time
(`p->m_slots[slot]`, not a pointer), the copies as inlines with locals
(`VecCopy07`) so the two copies of the slot's position load twice, the
second rotation in an inline (`Rot07`) so its address is a temporary,
and the previous node's position and the angles read in one group. Left:
the midpoint call's delay slot holds the `a2` move where the original has
`&h`'s address into `$s7`, and the last copy into `h` swaps `$v0`/`$v1`
(its halfword in `$v1`, the original's `$a1`).

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8001F7E4`, `func_8001FCC8`, `func_8001FEE4` | asm | the particles drawn (`rtpt`, `avsz3`, OT links by hand; 314, 136, 129 instructions) |
| `func_800200E4` to `func_8002034C` | match | a node's links, a slot's first, the pool reset and given memory, a slot emptied, a node taken out |
| `func_800203A8` | parked | a node's ends and its slot's box: a delay slot and one copy's registers (8 off) |
| `func_8002083C` | matches | the node cursor |
| `func_80020868`, `func_80020998` | match | a position added in a new slot, or linked to a handle's |
| `func_80020AB0` | matches | the frame: visibility into the scratchpad, then the draw |
| `func_80020AE4` | parked | the slots' visibility (as chunk_06's `func_8001E118`): registers, loop pointers (25 off) |
| `func_80020C48` | asm | the slots drawn (283 instructions) |
| `func_800210B0` | matches | the random table, made by its first user |
| `func_80021138` | matches | a vector to an `SVECTOR` |

- **A copy through an inline.** `func_80020868` copies the position into
  its slot; field by field, or through locals, GCC computes the slot's
  address as `p + (i * 24 + 4)`; the original's `(p + i * 24) + 4` came
  only from an inline (`VecCopy`) taking the slot's vector, with the
  values read into locals first in x, y, z order.
- **A return inside the branch.** `func_80020998` has two copies of the
  return (one jumping to the epilogue): `return handle;` inside the
  successful branch as well as at the end. `handle` itself is the
  result, set to -1 when stale.
- **A wrapped `short` compared as unsigned.** `(u16)++p->m_12CA == 200`
  gives the original's `andi 0xFFFF`; without the cast GCC sign-extends.
- **A `short` index from an `int`.** `func_8002012C` takes an `int` and
  indexes with `n[(short)d]`: the stored halfword is the `int`, the
  multiplication the extended value.
- **Loads first.** `func_80021138` copies three halfwords with all three
  loads before the stores: read into locals.
