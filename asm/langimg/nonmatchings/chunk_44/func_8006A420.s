nonmatching func_8006A420, 0x40

glabel func_8006A420
    /* 58C30 8006A420 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 58C34 8006A424 1000B0AF */  sw         $s0, 0x10($sp)
    /* 58C38 8006A428 21808000 */  addu       $s0, $a0, $zero
    /* 58C3C 8006A42C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 58C40 8006A430 48000586 */  lh         $a1, 0x48($s0)
    /* 58C44 8006A434 0D80043C */  lui        $a0, %hi(D_800CB480)
    /* 58C48 8006A438 80B48424 */  addiu      $a0, $a0, %lo(D_800CB480)
    /* 58C4C 8006A43C ACA9010C */  jal        func_8006A6B0
    /* 58C50 8006A440 00000000 */   nop
    /* 58C54 8006A444 1400BF8F */  lw         $ra, 0x14($sp)
    /* 58C58 8006A448 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 58C5C 8006A44C 4C0000AE */  sw         $zero, 0x4C($s0)
    /* 58C60 8006A450 480002A6 */  sh         $v0, 0x48($s0)
    /* 58C64 8006A454 1000B08F */  lw         $s0, 0x10($sp)
    /* 58C68 8006A458 0800E003 */  jr         $ra
    /* 58C6C 8006A45C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006A420
