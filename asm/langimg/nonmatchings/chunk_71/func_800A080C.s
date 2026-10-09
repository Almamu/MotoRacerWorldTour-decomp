nonmatching func_800A080C, 0x28

glabel func_800A080C
    /* 8F01C 800A080C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8F020 800A0810 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8F024 800A0814 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8F028 800A0818 0D82020C */  jal        func_800A0834
    /* 8F02C 800A081C 21808000 */   addu      $s0, $a0, $zero
    /* 8F030 800A0820 21100002 */  addu       $v0, $s0, $zero
    /* 8F034 800A0824 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8F038 800A0828 1000B08F */  lw         $s0, 0x10($sp)
    /* 8F03C 800A082C 0800E003 */  jr         $ra
    /* 8F040 800A0830 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A080C
