nonmatching func_800A5D2C, 0x3C

glabel func_800A5D2C
    /* 9453C 800A5D2C 0D80033C */  lui        $v1, %hi(D_800D60E0)
    /* 94540 800A5D30 E060628C */  lw         $v0, %lo(D_800D60E0)($v1)
    /* 94544 800A5D34 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 94548 800A5D38 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9454C 800A5D3C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 94550 800A5D40 05004014 */  bnez       $v0, .L800A5D58
    /* 94554 800A5D44 E06062AC */   sw        $v0, %lo(D_800D60E0)($v1)
    /* 94558 800A5D48 0D80043C */  lui        $a0, %hi(D_800D60E8)
    /* 9455C 800A5D4C E8608424 */  addiu      $a0, $a0, %lo(D_800D60E8)
    /* 94560 800A5D50 2296020C */  jal        func_800A5888
    /* 94564 800A5D54 02000524 */   addiu     $a1, $zero, 0x2
  .L800A5D58:
    /* 94568 800A5D58 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9456C 800A5D5C 00000000 */  nop
    /* 94570 800A5D60 0800E003 */  jr         $ra
    /* 94574 800A5D64 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A5D2C
