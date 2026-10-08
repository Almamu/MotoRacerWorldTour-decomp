# .bs (BSx0 still images)

MDEC-compressed images, used for the loading screens
(`Data\Final\<code>.bs`, `data\Final\fl256.bs`). Tool: `tools/bs.py`.

The image is split into 16-pixel-wide columns, and each column is a
complete, standard PS1 BS v2 frame.

## Container

| Offset      | Type       | Meaning                                       |
|-------------|------------|-----------------------------------------------|
| 0x00        | char[4]    | `BSx0`                                        |
| 0x04        | u32        | file size - 12                                |
| 0x08        | u16        | width (512)                                   |
| 0x0A        | u16        | height (256; 512 for the generic "Loading" screen) |
| 0x0C        | char[4]    | `MCOL`                                        |
| 0x10        | u32[w/16]  | byte size of each column                      |
| 0x10 + w/4  |            | column data, left to right                    |

The column sizes add up exactly to the rest of the file.

## Column (BS v2 frame of 16 x height)

| Offset | Type | Meaning                                       |
|--------|------|-----------------------------------------------|
| 0x00   | u16  | number of 32-bit MDEC words the column decodes to (one DC, run/level or EOB code per half-word), rounded up to a multiple of 32 |
| 0x02   | u16  | 0x3800                                        |
| 0x04   | u16  | quantisation scale                            |
| 0x06   | u16  | version, 2                                    |
| 0x08   |      | bitstream                                     |

The bitstream is read as **16-bit little-endian words, most significant bit
first**. It contains height/16 macroblocks, top to bottom. Each macroblock is
six 8x8 blocks in the order Cr, Cb, Y0 (top-left), Y1 (top-right),
Y2 (bottom-left), Y3 (bottom-right).

Each block:

1. DC: 10-bit signed value. Coefficient 0 = DC × 2 (quant matrix entry 0).
2. AC coefficients until EOB, using MPEG-1 table B.14 ("DCT coefficients
   table zero", not the first-coefficient form):
   - `10` = end of block
   - `000001` = escape: 6-bit run, then 10-bit signed level
   - any other code gives (run, level) and is followed by a sign bit
     (1 = negative)
3. For each coefficient: position `i += run + 1` in zig-zag order;
   value = level × qscale × QUANT[pos] / 8.

`QUANT` is the standard MPEG-1 intra matrix (the PS1 MDEC default):

```
 2 16 19 22 26 27 29 34
16 16 22 24 27 29 34 37
19 22 26 27 29 34 34 38
22 22 26 27 29 34 37 40
22 26 27 29 32 35 40 48
26 27 29 32 35 40 48 58
26 27 29 34 38 46 56 69
27 29 35 38 46 56 69 83
```

Then a regular 8x8 IDCT, +128 on luma, chroma upsampled 2x, and BT.601
YCbCr → RGB (R = Y + 1.402 Cr, G = Y − 0.344 Cb − 0.714 Cr,
B = Y + 1.772 Cb).

Columns are padded to a multiple of 4 bytes.

## Encoding

`bs.py encode <image.png> <out.bs> [qscale | max=<bytes>]` writes a BSx0
file: per 16x16 macroblock, BT.601 RGB → YCbCr with 2x2 chroma averaging,
forward DCT, quantisation with the same matrix and qscale (the DC divided
by 2 and clamped to 10 bits), zig-zag run/level coding with table B.14 (or
the escape code), EOB. Re-encoding `Bar.bs` (34 KB): qscale 1 gives 62 KB
at 49 dB PSNR, qscale 4 gives 33 KB at 41 dB. The game loads these into
buffers sized for the originals, so `max=<original size>` is the safe
choice.
