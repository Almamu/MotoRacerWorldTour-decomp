nonmatching func_80082B64, 0x88

glabel func_80082B64
    /* 71374 80082B64 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 71378 80082B68 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7137C 80082B6C 21880000 */  addu       $s1, $zero, $zero
    /* 71380 80082B70 0D80023C */  lui        $v0, %hi(D_800D5F38)
    /* 71384 80082B74 385F428C */  lw         $v0, %lo(D_800D5F38)($v0)
    /* 71388 80082B78 0D80033C */  lui        $v1, %hi(D_800C8AC4)
    /* 7138C 80082B7C C48A6324 */  addiu      $v1, $v1, %lo(D_800C8AC4)
    /* 71390 80082B80 1800B2AF */  sw         $s2, 0x18($sp)
    /* 71394 80082B84 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 71398 80082B88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7139C 80082B8C 80100200 */  sll        $v0, $v0, 2
    /* 713A0 80082B90 21104300 */  addu       $v0, $v0, $v1
    /* 713A4 80082B94 3400A38C */  lw         $v1, 0x34($a1)
    /* 713A8 80082B98 0000468C */  lw         $a2, 0x0($v0)
    /* 713AC 80082B9C 4300B080 */  lb         $s0, 0x43($a1)
    /* 713B0 80082BA0 2A30C300 */  slt        $a2, $a2, $v1
    /* 713B4 80082BA4 0A00C010 */  beqz       $a2, .L80082BD0
    /* 713B8 80082BA8 21908000 */   addu      $s2, $a0, $zero
    /* 713BC 80082BAC 01001124 */  addiu      $s1, $zero, 0x1
    /* 713C0 80082BB0 149A020C */  jal        func_800A6850
    /* 713C4 80082BB4 21206000 */   addu      $a0, $v1, $zero
    /* 713C8 80082BB8 00211000 */  sll        $a0, $s0, 4
    /* 713CC 80082BBC 98008424 */  addiu      $a0, $a0, 0x98
    /* 713D0 80082BC0 21204402 */  addu       $a0, $s2, $a0
    /* 713D4 80082BC4 E497020C */  jal        func_800A5F90
    /* 713D8 80082BC8 21284000 */   addu      $a1, $v0, $zero
    /* 713DC 80082BCC 000040A0 */  sb         $zero, 0x0($v0)
  .L80082BD0:
    /* 713E0 80082BD0 21102002 */  addu       $v0, $s1, $zero
    /* 713E4 80082BD4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 713E8 80082BD8 1800B28F */  lw         $s2, 0x18($sp)
    /* 713EC 80082BDC 1400B18F */  lw         $s1, 0x14($sp)
    /* 713F0 80082BE0 1000B08F */  lw         $s0, 0x10($sp)
    /* 713F4 80082BE4 0800E003 */  jr         $ra
    /* 713F8 80082BE8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80082B64
