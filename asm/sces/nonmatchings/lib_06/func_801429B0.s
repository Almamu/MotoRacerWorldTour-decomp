nonmatching func_801429B0, 0xE0

glabel func_801429B0
    /* FE7C 801429B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* FE80 801429B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* FE84 801429B8 21808000 */  addu       $s0, $a0, $zero
    /* FE88 801429BC 1400BFAF */  sw         $ra, 0x14($sp)
    /* FE8C 801429C0 4C00028E */  lw         $v0, 0x4C($s0)
    /* FE90 801429C4 46000392 */  lbu        $v1, 0x46($s0)
    /* FE94 801429C8 01004224 */  addiu      $v0, $v0, 0x1
    /* FE98 801429CC 1E006010 */  beqz       $v1, .L80142A48
    /* FE9C 801429D0 4C0002AE */   sw        $v0, 0x4C($s0)
    /* FEA0 801429D4 01000224 */  addiu      $v0, $zero, 0x1
    /* FEA4 801429D8 0B006214 */  bne        $v1, $v0, .L80142A08
    /* FEA8 801429DC 00000000 */   nop
    /* FEAC 801429E0 4A000392 */  lbu        $v1, 0x4A($s0)
    /* FEB0 801429E4 00000000 */  nop
    /* FEB4 801429E8 0B00622C */  sltiu      $v0, $v1, 0xB
    /* FEB8 801429EC 0B004014 */  bnez       $v0, .L80142A1C
    /* FEBC 801429F0 01006224 */   addiu     $v0, $v1, 0x1
    /* FEC0 801429F4 02000224 */  addiu      $v0, $zero, 0x2
    /* FEC4 801429F8 490002A2 */  sb         $v0, 0x49($s0)
    /* FEC8 801429FC FF000224 */  addiu      $v0, $zero, 0xFF
    /* FECC 80142A00 A00A0508 */  j          .L80142A80
    /* FED0 80142A04 460002A2 */   sb        $v0, 0x46($s0)
  .L80142A08:
    /* FED4 80142A08 4A000392 */  lbu        $v1, 0x4A($s0)
    /* FED8 80142A0C 00000000 */  nop
    /* FEDC 80142A10 0B00622C */  sltiu      $v0, $v1, 0xB
    /* FEE0 80142A14 03004010 */  beqz       $v0, .L80142A24
    /* FEE4 80142A18 01006224 */   addiu     $v0, $v1, 0x1
  .L80142A1C:
    /* FEE8 80142A1C A00A0508 */  j          .L80142A80
    /* FEEC 80142A20 4A0002A2 */   sb        $v0, 0x4A($s0)
  .L80142A24:
    /* FEF0 80142A24 49000292 */  lbu        $v0, 0x49($s0)
    /* FEF4 80142A28 00000000 */  nop
    /* FEF8 80142A2C 06004010 */  beqz       $v0, .L80142A48
    /* FEFC 80142A30 00000000 */   nop
    /* FF00 80142A34 1C80023C */  lui        $v0, %hi(D_801BFE60)
    /* FF04 80142A38 60FE428C */  lw         $v0, %lo(D_801BFE60)($v0)
    /* FF08 80142A3C 00000000 */  nop
    /* FF0C 80142A40 09F84000 */  jalr       $v0
    /* FF10 80142A44 21200002 */   addu      $a0, $s0, $zero
  .L80142A48:
    /* FF14 80142A48 3C00028E */  lw         $v0, 0x3C($s0)
    /* FF18 80142A4C 00000000 */  nop
    /* FF1C 80142A50 00004390 */  lbu        $v1, 0x0($v0)
    /* FF20 80142A54 F3000224 */  addiu      $v0, $zero, 0xF3
    /* FF24 80142A58 09006210 */  beq        $v1, $v0, .L80142A80
    /* FF28 80142A5C FF000324 */   addiu     $v1, $zero, 0xFF
    /* FF2C 80142A60 3000028E */  lw         $v0, 0x30($s0)
    /* FF30 80142A64 00000000 */  nop
    /* FF34 80142A68 000043A0 */  sb         $v1, 0x0($v0)
    /* FF38 80142A6C 3000028E */  lw         $v0, 0x30($s0)
    /* FF3C 80142A70 00000000 */  nop
    /* FF40 80142A74 010040A0 */  sb         $zero, 0x1($v0)
    /* FF44 80142A78 E80000A2 */  sb         $zero, 0xE8($s0)
    /* FF48 80142A7C 350000A2 */  sb         $zero, 0x35($s0)
  .L80142A80:
    /* FF4C 80142A80 1400BF8F */  lw         $ra, 0x14($sp)
    /* FF50 80142A84 1000B08F */  lw         $s0, 0x10($sp)
    /* FF54 80142A88 0800E003 */  jr         $ra
    /* FF58 80142A8C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_801429B0
