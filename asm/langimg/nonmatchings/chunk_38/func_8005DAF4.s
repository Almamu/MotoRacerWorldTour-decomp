nonmatching func_8005DAF4, 0x3C

glabel func_8005DAF4
    /* 4C304 8005DAF4 D86C828F */  lw         $v0, %gp_rel(D_800CB3C8)($gp)
    /* 4C308 8005DAF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4C30C 8005DAFC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4C310 8005DB00 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4C314 8005DB04 D86C82AF */  sw         $v0, %gp_rel(D_800CB3C8)($gp)
    /* 4C318 8005DB08 05004014 */  bnez       $v0, .L8005DB20
    /* 4C31C 8005DB0C 00000000 */   nop
    /* 4C320 8005DB10 0D80043C */  lui        $a0, %hi(D_800CB3D0)
    /* 4C324 8005DB14 D0B38424 */  addiu      $a0, $a0, %lo(D_800CB3D0)
    /* 4C328 8005DB18 231E020C */  jal        func_8008788C
    /* 4C32C 8005DB1C 02000524 */   addiu     $a1, $zero, 0x2
  .L8005DB20:
    /* 4C330 8005DB20 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4C334 8005DB24 00000000 */  nop
    /* 4C338 8005DB28 0800E003 */  jr         $ra
    /* 4C33C 8005DB2C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005DAF4
