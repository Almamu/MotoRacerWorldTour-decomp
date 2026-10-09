nonmatching func_80089AF8, 0x30

glabel func_80089AF8
    /* 78308 80089AF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7830C 80089AFC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 78310 80089B00 21808000 */  addu       $s0, $a0, $zero
    /* 78314 80089B04 21280000 */  addu       $a1, $zero, $zero
    /* 78318 80089B08 1400BFAF */  sw         $ra, 0x14($sp)
    /* 7831C 80089B0C 56D8020C */  jal        memset
    /* 78320 80089B10 20000624 */   addiu     $a2, $zero, 0x20
    /* 78324 80089B14 21100002 */  addu       $v0, $s0, $zero
    /* 78328 80089B18 1400BF8F */  lw         $ra, 0x14($sp)
    /* 7832C 80089B1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 78330 80089B20 0800E003 */  jr         $ra
    /* 78334 80089B24 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80089AF8
