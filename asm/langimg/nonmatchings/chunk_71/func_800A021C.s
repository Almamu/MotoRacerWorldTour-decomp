nonmatching func_800A021C, 0x2C

glabel func_800A021C
    /* 8EA2C 800A021C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8EA30 800A0220 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8EA34 800A0224 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8EA38 800A0228 6F80020C */  jal        func_800A01BC
    /* 8EA3C 800A022C 21808000 */   addu      $s0, $a0, $zero
    /* 8EA40 800A0230 7F80020C */  jal        func_800A01FC
    /* 8EA44 800A0234 21200002 */   addu      $a0, $s0, $zero
    /* 8EA48 800A0238 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8EA4C 800A023C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8EA50 800A0240 0800E003 */  jr         $ra
    /* 8EA54 800A0244 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A021C
