nonmatching func_8004845C, 0x38

glabel func_8004845C
    /* 36C6C 8004845C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 36C70 80048460 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36C74 80048464 1400BFAF */  sw         $ra, 0x14($sp)
    /* 36C78 80048468 6E13010C */  jal        func_80044DB8
    /* 36C7C 8004846C 21808000 */   addu      $s0, $a0, $zero
    /* 36C80 80048470 A400048E */  lw         $a0, 0xA4($s0)
    /* 36C84 80048474 1800058E */  lw         $a1, 0x18($s0)
    /* 36C88 80048478 14EE000C */  jal        func_8003B850
    /* 36C8C 8004847C 00000000 */   nop
    /* 36C90 80048480 1400BF8F */  lw         $ra, 0x14($sp)
    /* 36C94 80048484 1000B08F */  lw         $s0, 0x10($sp)
    /* 36C98 80048488 01000224 */  addiu      $v0, $zero, 0x1
    /* 36C9C 8004848C 0800E003 */  jr         $ra
    /* 36CA0 80048490 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004845C
