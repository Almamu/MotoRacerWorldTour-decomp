nonmatching func_800774B8, 0x2C

glabel func_800774B8
    /* 65CC8 800774B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 65CCC 800774BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 65CD0 800774C0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 65CD4 800774C4 44D1010C */  jal        func_80074510
    /* 65CD8 800774C8 21808000 */   addu      $s0, $a0, $zero
    /* 65CDC 800774CC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 65CE0 800774D0 21100002 */  addu       $v0, $s0, $zero
    /* 65CE4 800774D4 140000AE */  sw         $zero, 0x14($s0)
    /* 65CE8 800774D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 65CEC 800774DC 0800E003 */  jr         $ra
    /* 65CF0 800774E0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800774B8
