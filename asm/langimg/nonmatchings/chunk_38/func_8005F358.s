nonmatching func_8005F358, 0x28

glabel func_8005F358
    /* 4DB68 8005F358 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4DB6C 8005F35C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4DB70 8005F360 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4DB74 8005F364 E07C010C */  jal        func_8005F380
    /* 4DB78 8005F368 21808000 */   addu      $s0, $a0, $zero
    /* 4DB7C 8005F36C 21100002 */  addu       $v0, $s0, $zero
    /* 4DB80 8005F370 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4DB84 8005F374 1000B08F */  lw         $s0, 0x10($sp)
    /* 4DB88 8005F378 0800E003 */  jr         $ra
    /* 4DB8C 8005F37C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005F358
