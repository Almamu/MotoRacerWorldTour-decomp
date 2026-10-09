/* Handwritten function */
nonmatching func_8007F21C, 0x78

glabel func_8007F21C
    /* 6DA2C 8007F21C 21308000 */  addu       $a2, $a0, $zero
    /* 6DA30 8007F220 0D80073C */  lui        $a3, %hi(D_800C8C70)
    /* 6DA34 8007F224 708CE78C */  lw         $a3, %lo(D_800C8C70)($a3)
    /* 6DA38 8007F228 21400000 */  addu       $t0, $zero, $zero
    /* 6DA3C 8007F22C 00408848 */  mtc2       $t0, $8 /* handwritten instruction */
    /* 6DA40 8007F230 82200500 */  srl        $a0, $a1, 2
    /* 6DA44 8007F234 1F008430 */  andi       $a0, $a0, 0x1F
    /* 6DA48 8007F238 42110500 */  srl        $v0, $a1, 5
    /* 6DA4C 8007F23C E0034230 */  andi       $v0, $v0, 0x3E0
    /* 6DA50 8007F240 022A0500 */  srl        $a1, $a1, 8
    /* 6DA54 8007F244 007CA530 */  andi       $a1, $a1, 0x7C00
    /* 6DA58 8007F248 25208200 */  or         $a0, $a0, $v0
    /* 6DA5C 8007F24C 2B18C700 */  sltu       $v1, $a2, $a3
    /* 6DA60 8007F250 0E006010 */  beqz       $v1, .L8007F28C
    /* 6DA64 8007F254 25208500 */   or        $a0, $a0, $a1
  .L8007F258:
    /* 6DA68 8007F258 0300C380 */  lb         $v1, 0x3($a2)
    /* 6DA6C 8007F25C 0400C6C8 */  lwc2       $6, 0x4($a2)
    /* 6DA70 8007F260 00E08448 */  mtc2       $a0, $28 /* handwritten instruction */
    /* 6DA74 8007F264 00000000 */  nop
    /* 6DA78 8007F268 00000000 */  nop
    /* 6DA7C 8007F26C 2900684A */  dpcl
    /* 6DA80 8007F270 0400D6E8 */  swc2       $22, 0x4($a2)
    /* 6DA84 8007F274 80180300 */  sll        $v1, $v1, 2
    /* 6DA88 8007F278 04006324 */  addiu      $v1, $v1, 0x4
    /* 6DA8C 8007F27C 2130C300 */  addu       $a2, $a2, $v1
    /* 6DA90 8007F280 2B10C700 */  sltu       $v0, $a2, $a3
    /* 6DA94 8007F284 F4FF4014 */  bnez       $v0, .L8007F258
    /* 6DA98 8007F288 00000000 */   nop
  .L8007F28C:
    /* 6DA9C 8007F28C 0800E003 */  jr         $ra
    /* 6DAA0 8007F290 00000000 */   nop
endlabel func_8007F21C
