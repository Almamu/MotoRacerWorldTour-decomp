nonmatching func_80078FFC, 0x3C

glabel func_80078FFC
    /* 6780C 80078FFC A075828F */  lw         $v0, %gp_rel(D_800CBC90)($gp)
    /* 67810 80079000 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 67814 80079004 1000BFAF */  sw         $ra, 0x10($sp)
    /* 67818 80079008 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 6781C 8007900C A07582AF */  sw         $v0, %gp_rel(D_800CBC90)($gp)
    /* 67820 80079010 05004014 */  bnez       $v0, .L80079028
    /* 67824 80079014 00000000 */   nop
    /* 67828 80079018 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 6782C 8007901C 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 67830 80079020 CDE3010C */  jal        func_80078F34
    /* 67834 80079024 02000524 */   addiu     $a1, $zero, 0x2
  .L80079028:
    /* 67838 80079028 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6783C 8007902C 00000000 */  nop
    /* 67840 80079030 0800E003 */  jr         $ra
    /* 67844 80079034 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80078FFC
