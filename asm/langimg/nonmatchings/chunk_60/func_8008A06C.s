nonmatching func_8008A06C, 0x54

glabel func_8008A06C
    /* 7887C 8008A06C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 78880 8008A070 1000B0AF */  sw         $s0, 0x10($sp)
    /* 78884 8008A074 21808000 */  addu       $s0, $a0, $zero
    /* 78888 8008A078 1400BFAF */  sw         $ra, 0x14($sp)
    /* 7888C 8008A07C BE26020C */  jal        func_80089AF8
    /* 78890 8008A080 0C000426 */   addiu     $a0, $s0, 0xC
    /* 78894 8008A084 BA27020C */  jal        func_80089EE8
    /* 78898 8008A088 2C000426 */   addiu     $a0, $s0, 0x2C
    /* 7889C 8008A08C 5426020C */  jal        func_80089950
    /* 788A0 8008A090 3C000426 */   addiu     $a0, $s0, 0x3C
    /* 788A4 8008A094 5426020C */  jal        func_80089950
    /* 788A8 8008A098 4C000426 */   addiu     $a0, $s0, 0x4C
    /* 788AC 8008A09C 21200002 */  addu       $a0, $s0, $zero
    /* 788B0 8008A0A0 21280000 */  addu       $a1, $zero, $zero
    /* 788B4 8008A0A4 56D8020C */  jal        memset
    /* 788B8 8008A0A8 74000624 */   addiu     $a2, $zero, 0x74
    /* 788BC 8008A0AC 21100002 */  addu       $v0, $s0, $zero
    /* 788C0 8008A0B0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 788C4 8008A0B4 1000B08F */  lw         $s0, 0x10($sp)
    /* 788C8 8008A0B8 0800E003 */  jr         $ra
    /* 788CC 8008A0BC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8008A06C
