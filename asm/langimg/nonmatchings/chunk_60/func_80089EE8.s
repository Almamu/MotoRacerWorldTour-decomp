nonmatching func_80089EE8, 0x30

glabel func_80089EE8
    /* 786F8 80089EE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 786FC 80089EEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 78700 80089EF0 21808000 */  addu       $s0, $a0, $zero
    /* 78704 80089EF4 21280000 */  addu       $a1, $zero, $zero
    /* 78708 80089EF8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 7870C 80089EFC 56D8020C */  jal        func_800B6158
    /* 78710 80089F00 10000624 */   addiu     $a2, $zero, 0x10
    /* 78714 80089F04 21100002 */  addu       $v0, $s0, $zero
    /* 78718 80089F08 1400BF8F */  lw         $ra, 0x14($sp)
    /* 7871C 80089F0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 78720 80089F10 0800E003 */  jr         $ra
    /* 78724 80089F14 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80089EE8
