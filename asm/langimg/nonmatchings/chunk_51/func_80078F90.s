nonmatching func_80078F90, 0x34

glabel func_80078F90
    /* 677A0 80078F90 0800A010 */  beqz       $a1, .L80078FB4
    /* 677A4 80078F94 21180000 */   addu      $v1, $zero, $zero
  .L80078F98:
    /* 677A8 80078F98 0000828C */  lw         $v0, 0x0($a0)
    /* 677AC 80078F9C 00000000 */  nop
    /* 677B0 80078FA0 06004510 */  beq        $v0, $a1, .L80078FBC
    /* 677B4 80078FA4 21106000 */   addu      $v0, $v1, $zero
    /* 677B8 80078FA8 01006324 */  addiu      $v1, $v1, 0x1
    /* 677BC 80078FAC FAFF6018 */  blez       $v1, .L80078F98
    /* 677C0 80078FB0 04008424 */   addiu     $a0, $a0, 0x4
  .L80078FB4:
    /* 677C4 80078FB4 0800E003 */  jr         $ra
    /* 677C8 80078FB8 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L80078FBC:
    /* 677CC 80078FBC 0800E003 */  jr         $ra
    /* 677D0 80078FC0 00000000 */   nop
endlabel func_80078F90
