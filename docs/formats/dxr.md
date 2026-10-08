# .dxr (code modules)

`data\cineendr.dxr` is a relocatable code module that the game loads onto
the heap, relocates and runs for the end-of-game sequence: it contains its
own copy of the DPS movie player (with the CD, GPU and SPU libraries) and
plays `mr3gen.dps`, the end credits ([dps.md](dps.md)). Its strings include
"Out end scene", "Out cine sound" and "Wait END". Tool: `tools/dxr.py`
(relocates it to a fixed address for disassembly).

Loader: 0x800A6650 in `data\LANGIMG.DAT` (called with the file name from
0x80048434, the "Go End Cine" path); relocation at 0x800A658C.

## Layout

| Offset             | Type   | Meaning                                       |
|--------------------|--------|-----------------------------------------------|
| 0x00               | u32    | code size `n`                                 |
| 0x04               | u32    | relocation table size in bytes                |
| 0x08               | u8[n]  | code block                                    |
| 0x08 + (n & ~3)    |        | relocation table                              |

The code block starts with `u32 entry, u32 0`: `entry` is the offset of the
first instruction (8). After relocation it's an absolute address, and the
loader calls it.

`cineendr.dxr` also has 9244 bytes after the relocation table that look
like a table of offset pairs; the loader doesn't use them.

## Relocations

A list of u32 entries ending with 0xFFFFFFFF. Each entry is `offset | type`,
with the offset relative to the start of the code block and `base` = the
address the code block was loaded at:

| Type | Fix-up                                                                 |
|------|------------------------------------------------------------------------|
| 0    | 32-bit pointer: `word += base`                                         |
| 1    | `%hi`: the next u32 is a target offset; `half = (base + target + 0x8000) >> 16` (the immediate of a `lui`) |
| 2    | `%lo`: `half += base` (low 16 bits)                                    |
| 3    | `j`/`jal`: `word += (base & 0x0FFFFFFF) >> 2`                          |

`cineendr.dxr` has 6044 relocations (402 / 1958 / 2122 / 1562 of types
0–3), and the table fills exactly the size given at 0x04.
