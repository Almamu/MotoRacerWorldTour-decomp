nonmatching func_8013D18C, 0x98

glabel func_8013D18C
    /* A658 8013D18C 00140400 */  sll        $v0, $a0, 16
    /* A65C 8013D190 03340200 */  sra        $a2, $v0, 16
    /* A660 8013D194 0B00C004 */  bltz       $a2, .L8013D1C4
    /* A664 8013D198 21100000 */   addu      $v0, $zero, $zero
    /* A668 8013D19C 1C80023C */  lui        $v0, %hi(D_801BFC3C)
    /* A66C 8013D1A0 3CFC4284 */  lh         $v0, %lo(D_801BFC3C)($v0)
    /* A670 8013D1A4 00000000 */  nop
    /* A674 8013D1A8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A678 8013D1AC 2A104600 */  slt        $v0, $v0, $a2
    /* A67C 8013D1B0 1C80063C */  lui        $a2, %hi(D_801BFC3C)
    /* A680 8013D1B4 3CFCC694 */  lhu        $a2, %lo(D_801BFC3C)($a2)
    /* A684 8013D1B8 02004014 */  bnez       $v0, .L8013D1C4
    /* A688 8013D1BC FFFFC224 */   addiu     $v0, $a2, -0x1
    /* A68C 8013D1C0 21108000 */  addu       $v0, $a0, $zero
  .L8013D1C4:
    /* A690 8013D1C4 21204000 */  addu       $a0, $v0, $zero
    /* A694 8013D1C8 00140500 */  sll        $v0, $a1, 16
    /* A698 8013D1CC 03340200 */  sra        $a2, $v0, 16
    /* A69C 8013D1D0 0C00C004 */  bltz       $a2, .L8013D204
    /* A6A0 8013D1D4 00000000 */   nop
    /* A6A4 8013D1D8 1C80023C */  lui        $v0, %hi(D_801BFC3E)
    /* A6A8 8013D1DC 3EFC4284 */  lh         $v0, %lo(D_801BFC3E)($v0)
    /* A6AC 8013D1E0 00000000 */  nop
    /* A6B0 8013D1E4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A6B4 8013D1E8 2A104600 */  slt        $v0, $v0, $a2
    /* A6B8 8013D1EC 1C80063C */  lui        $a2, %hi(D_801BFC3E)
    /* A6BC 8013D1F0 3EFCC694 */  lhu        $a2, %lo(D_801BFC3E)($a2)
    /* A6C0 8013D1F4 05004010 */  beqz       $v0, .L8013D20C
    /* A6C4 8013D1F8 FF03A330 */   andi      $v1, $a1, 0x3FF
    /* A6C8 8013D1FC 82F40408 */  j          .L8013D208
    /* A6CC 8013D200 FFFFC524 */   addiu     $a1, $a2, -0x1
  .L8013D204:
    /* A6D0 8013D204 21280000 */  addu       $a1, $zero, $zero
  .L8013D208:
    /* A6D4 8013D208 FF03A330 */  andi       $v1, $a1, 0x3FF
  .L8013D20C:
    /* A6D8 8013D20C 801A0300 */  sll        $v1, $v1, 10
    /* A6DC 8013D210 FF038230 */  andi       $v0, $a0, 0x3FF
    /* A6E0 8013D214 00E3043C */  lui        $a0, (0xE3000000 >> 16)
    /* A6E4 8013D218 25104400 */  or         $v0, $v0, $a0
    /* A6E8 8013D21C 0800E003 */  jr         $ra
    /* A6EC 8013D220 25106200 */   or        $v0, $v1, $v0
endlabel func_8013D18C
