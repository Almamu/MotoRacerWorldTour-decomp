nonmatching func_8006B9B0, 0x48

glabel func_8006B9B0
    /* 5A1C0 8006B9B0 0000858C */  lw         $a1, 0x0($a0)
    /* 5A1C4 8006B9B4 00000000 */  nop
    /* 5A1C8 8006B9B8 0B00A018 */  blez       $a1, .L8006B9E8
    /* 5A1CC 8006B9BC 21180000 */   addu      $v1, $zero, $zero
    /* 5A1D0 8006B9C0 1400848C */  lw         $a0, 0x14($a0)
  .L8006B9C4:
    /* 5A1D4 8006B9C4 00000000 */  nop
    /* 5A1D8 8006B9C8 0400828C */  lw         $v0, 0x4($a0)
    /* 5A1DC 8006B9CC 00000000 */  nop
    /* 5A1E0 8006B9D0 07004010 */  beqz       $v0, .L8006B9F0
    /* 5A1E4 8006B9D4 21106000 */   addu      $v0, $v1, $zero
    /* 5A1E8 8006B9D8 01006324 */  addiu      $v1, $v1, 0x1
    /* 5A1EC 8006B9DC 2A106500 */  slt        $v0, $v1, $a1
    /* 5A1F0 8006B9E0 F8FF4014 */  bnez       $v0, .L8006B9C4
    /* 5A1F4 8006B9E4 24008424 */   addiu     $a0, $a0, 0x24
  .L8006B9E8:
    /* 5A1F8 8006B9E8 0800E003 */  jr         $ra
    /* 5A1FC 8006B9EC FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8006B9F0:
    /* 5A200 8006B9F0 0800E003 */  jr         $ra
    /* 5A204 8006B9F4 00000000 */   nop
endlabel func_8006B9B0
