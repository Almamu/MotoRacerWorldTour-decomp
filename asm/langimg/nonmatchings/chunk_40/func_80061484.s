nonmatching func_80061484, 0x3C

glabel func_80061484
    /* 4FC94 80061484 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4FC98 80061488 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4FC9C 8006148C 21888000 */  addu       $s1, $a0, $zero
    /* 4FCA0 80061490 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4FCA4 80061494 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4FCA8 80061498 E784010C */  jal        func_8006139C
    /* 4FCAC 8006149C 2180C000 */   addu      $s0, $a2, $zero
    /* 4FCB0 800614A0 10002426 */  addiu      $a0, $s1, 0x10
    /* 4FCB4 800614A4 E784010C */  jal        func_8006139C
    /* 4FCB8 800614A8 21280002 */   addu      $a1, $s0, $zero
    /* 4FCBC 800614AC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4FCC0 800614B0 1400B18F */  lw         $s1, 0x14($sp)
    /* 4FCC4 800614B4 1000B08F */  lw         $s0, 0x10($sp)
    /* 4FCC8 800614B8 0800E003 */  jr         $ra
    /* 4FCCC 800614BC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80061484
