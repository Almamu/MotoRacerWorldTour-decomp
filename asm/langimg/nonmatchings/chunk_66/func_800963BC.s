nonmatching func_800963BC, 0x2C

glabel func_800963BC
    /* 84BCC 800963BC A446848F */  lw         $a0, %gp_rel(D_800C8D94)($gp)
    /* 84BD0 800963C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 84BD4 800963C4 04008010 */  beqz       $a0, .L800963D8
    /* 84BD8 800963C8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 84BDC 800963CC 59D5020C */  jal        func_800B5564
    /* 84BE0 800963D0 00000000 */   nop
    /* 84BE4 800963D4 A44680AF */  sw         $zero, %gp_rel(D_800C8D94)($gp)
  .L800963D8:
    /* 84BE8 800963D8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 84BEC 800963DC 01000224 */  addiu      $v0, $zero, 0x1
    /* 84BF0 800963E0 0800E003 */  jr         $ra
    /* 84BF4 800963E4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800963BC
