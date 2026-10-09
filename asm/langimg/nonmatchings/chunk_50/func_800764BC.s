nonmatching func_800764BC, 0x48

glabel func_800764BC
    /* 64CCC 800764BC 0D80033C */  lui        $v1, %hi(D_800C8740)
    /* 64CD0 800764C0 4087638C */  lw         $v1, %lo(D_800C8740)($v1)
    /* 64CD4 800764C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 64CD8 800764C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 64CDC 800764CC 0400628C */  lw         $v0, 0x4($v1)
    /* 64CE0 800764D0 00000000 */  nop
    /* 64CE4 800764D4 00804230 */  andi       $v0, $v0, 0x8000
    /* 64CE8 800764D8 04004010 */  beqz       $v0, .L800764EC
    /* 64CEC 800764DC 00000000 */   nop
    /* 64CF0 800764E0 9C00828C */  lw         $v0, 0x9C($a0)
    /* 64CF4 800764E4 00000000 */  nop
    /* 64CF8 800764E8 5C0062AC */  sw         $v0, 0x5C($v1)
  .L800764EC:
    /* 64CFC 800764EC 16D4010C */  jal        func_80075058
    /* 64D00 800764F0 00000000 */   nop
    /* 64D04 800764F4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 64D08 800764F8 00000000 */  nop
    /* 64D0C 800764FC 0800E003 */  jr         $ra
    /* 64D10 80076500 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800764BC
