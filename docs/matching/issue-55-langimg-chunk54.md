# The game's chunk_54: GTE drawing, a sprite facing the camera (#55)

More of chunk_53's drawing through the GTE:
- a sprite's matrix (`Spr54`, at 0x18) set to face the camera (its matrix
  at 0x14): the camera's position minus `D_800CBCA8`, normalised, two cross products with the vertical (`func_80099908`,
  `func_80098E9C`) for the rows, the sprite's position through that
  matrix, then chunk_67's `func_800985A8` with the camera's matrix, the
  first two rows scaled by the texture's width and height (`D_800CBCA4`'s
  corners at 0/0xA and 1/0xB) over 32, the translation set from the
  texture's centre (`func_8007F000`, parked);
- the primitives from one to the end of the frame's (`D_800C8C70`) given
  a colour through the GTE's depth cueing (`dpcl`, IR0 cleared, the colour
  packed in 15 bits into register 28), each primitive's length from its
  byte at 3 (`func_8007F21C`, parked).

One file, `src/langimg/chunk_54.cpp`, 0x8007D130-0x8007F290.

13 functions: 2 are parked, 11 are still asm.

## The settings

GCC 2.91.66, `-G8`, split addresses, divisions without checks, small
globals `D_800C88FC` and `D_800CBCA4`.

## Notes

- **A callee that returns its output.** `func_8007F000` ignores chunk_67's
  `func_800985A8`'s result, but the callee leaves its output pointer in
  `$v0`; declared `MATRIX *` (as chunk_18's `func_8001B350`), the code
  around the call matched, from 21 off to 6 (the permuter's find, checked
  against the callee).
- **Values computed before the stores.** The same function scales six
  shorts of the matrix and stores them after all six products (each
  shifted by 5 on its store): the products in locals first. It reads the
  texture's four corners before clearing the translation's z.
- **GTE loads and stores in C.** `func_8007F21C` is marked hand-written by
  splat (its `mtc2`, `lwc2`, `dpcl`, `swc2`), but it's C with
  `GTE_MTC2`, and `GTE_LWC2`, `GTE_SWC2` and `GTE_DPCL`, new in
  `include/gte.h`: the loop, the GTE sequence and its `nop`s come out as
  the original's.
- **Parked.**
  - `func_8007F000`: the first vector's copy (the camera's position) is
    scheduled differently: the original loads the camera pointer before
    taking the copy's address and loads `D_800CBCA8`'s address after the
    three loads (6 off).
  - `func_8007F21C`: registers. The original copies the primitive pointer
    to `$a2` and builds the colour in `$a0`, the pointer's argument
    register; here the colour goes to `$a1` (7 off).
- **Still asm.** `func_8007D130` to `func_8007ED28` (eleven functions of
  130 to 210 instructions), marked hand-written by splat: GTE code, not
  tried.

## The functions

| Function | State | Notes |
|---|---|---|
| `func_8007D130` | asm | 194 instructions (GTE) |
| `func_8007D434` | asm | 130 instructions (GTE) |
| `func_8007D638` | asm | 160 instructions (GTE) |
| `func_8007D8B4` | asm | 194 instructions (GTE) |
| `func_8007DBB8` | asm | 174 instructions (GTE) |
| `func_8007DE6C` | asm | 201 instructions (GTE) |
| `func_8007E18C` | asm | 160 instructions (GTE) |
| `func_8007E408` | asm | 208 instructions (GTE) |
| `func_8007E744` | asm | 169 instructions (GTE) |
| `func_8007E9E4` | asm | 210 instructions (GTE) |
| `func_8007ED28` | asm | 183 instructions (GTE) |
| `func_8007F000` | parked | a sprite facing the camera: scheduling |
| `func_8007F21C` | parked | the primitives' colours: registers |
