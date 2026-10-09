nonmatching func_8005DB30, 0x40

glabel func_8005DB30
    /* 4C340 8005DB30 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4C344 8005DB34 D86C828F */  lw         $v0, %gp_rel(D_800CB3C8)($gp)
    /* 4C348 8005DB38 01000324 */  addiu      $v1, $zero, 0x1
    /* 4C34C 8005DB3C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4C350 8005DB40 01004224 */  addiu      $v0, $v0, 0x1
    /* 4C354 8005DB44 D86C82AF */  sw         $v0, %gp_rel(D_800CB3C8)($gp)
    /* 4C358 8005DB48 05004314 */  bne        $v0, $v1, .L8005DB60
    /* 4C35C 8005DB4C 00000000 */   nop
    /* 4C360 8005DB50 0D80043C */  lui        $a0, %hi(D_800CB3D0)
    /* 4C364 8005DB54 D0B38424 */  addiu      $a0, $a0, %lo(D_800CB3D0)
    /* 4C368 8005DB58 131E020C */  jal        func_8008784C
    /* 4C36C 8005DB5C 00000000 */   nop
  .L8005DB60:
    /* 4C370 8005DB60 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4C374 8005DB64 00000000 */  nop
    /* 4C378 8005DB68 0800E003 */  jr         $ra
    /* 4C37C 8005DB6C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005DB30
