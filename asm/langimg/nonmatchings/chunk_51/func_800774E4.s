nonmatching func_800774E4, 0x3C

glabel func_800774E4
    /* 65CF4 800774E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 65CF8 800774E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 65CFC 800774EC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 65D00 800774F0 4DD1010C */  jal        func_80074534
    /* 65D04 800774F4 21808000 */   addu      $s0, $a0, $zero
    /* 65D08 800774F8 0D80033C */  lui        $v1, %hi(D_800C8824)
    /* 65D0C 800774FC 24886324 */  addiu      $v1, $v1, %lo(D_800C8824)
    /* 65D10 80077500 21200002 */  addu       $a0, $s0, $zero
    /* 65D14 80077504 48DD010C */  jal        func_80077520
    /* 65D18 80077508 340003AE */   sw        $v1, 0x34($s0)
    /* 65D1C 8007750C 21100002 */  addu       $v0, $s0, $zero
    /* 65D20 80077510 1400BF8F */  lw         $ra, 0x14($sp)
    /* 65D24 80077514 1000B08F */  lw         $s0, 0x10($sp)
    /* 65D28 80077518 0800E003 */  jr         $ra
    /* 65D2C 8007751C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800774E4
