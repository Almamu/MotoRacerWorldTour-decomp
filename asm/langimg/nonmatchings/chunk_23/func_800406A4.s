nonmatching func_800406A4, 0x3C

glabel func_800406A4
    /* 2EEB4 800406A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2EEB8 800406A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2EEBC 800406AC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2EEC0 800406B0 5C13010C */  jal        func_80044D70
    /* 2EEC4 800406B4 21808000 */   addu      $s0, $a0, $zero
    /* 2EEC8 800406B8 709C020C */  jal        __builtin_new
    /* 2EECC 800406BC 94010424 */   addiu     $a0, $zero, 0x194
    /* 2EED0 800406C0 91E0010C */  jal        func_80078244
    /* 2EED4 800406C4 21204000 */   addu      $a0, $v0, $zero
    /* 2EED8 800406C8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2EEDC 800406CC 9C0002AE */  sw         $v0, 0x9C($s0)
    /* 2EEE0 800406D0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2EEE4 800406D4 01000224 */  addiu      $v0, $zero, 0x1
    /* 2EEE8 800406D8 0800E003 */  jr         $ra
    /* 2EEEC 800406DC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800406A4
