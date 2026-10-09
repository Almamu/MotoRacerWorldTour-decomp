nonmatching func_800968D4, 0x2C

glabel func_800968D4
    /* 850E4 800968D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 850E8 800968D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 850EC 800968DC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 850F0 800968E0 405A020C */  jal        func_80096900
    /* 850F4 800968E4 21808000 */   addu      $s0, $a0, $zero
    /* 850F8 800968E8 2000038E */  lw         $v1, 0x20($s0)
    /* 850FC 800968EC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 85100 800968F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 85104 800968F4 23106200 */  subu       $v0, $v1, $v0
    /* 85108 800968F8 0800E003 */  jr         $ra
    /* 8510C 800968FC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800968D4
