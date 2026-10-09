nonmatching func_80089950, 0x30

glabel func_80089950
    /* 78160 80089950 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 78164 80089954 1000B0AF */  sw         $s0, 0x10($sp)
    /* 78168 80089958 21808000 */  addu       $s0, $a0, $zero
    /* 7816C 8008995C 21280000 */  addu       $a1, $zero, $zero
    /* 78170 80089960 1400BFAF */  sw         $ra, 0x14($sp)
    /* 78174 80089964 56D8020C */  jal        memset
    /* 78178 80089968 10000624 */   addiu     $a2, $zero, 0x10
    /* 7817C 8008996C 21100002 */  addu       $v0, $s0, $zero
    /* 78180 80089970 1400BF8F */  lw         $ra, 0x14($sp)
    /* 78184 80089974 1000B08F */  lw         $s0, 0x10($sp)
    /* 78188 80089978 0800E003 */  jr         $ra
    /* 7818C 8008997C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80089950
