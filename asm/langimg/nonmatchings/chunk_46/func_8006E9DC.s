nonmatching func_8006E9DC, 0x6C

glabel func_8006E9DC
    /* 5D1EC 8006E9DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5D1F0 8006E9E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5D1F4 8006E9E4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5D1F8 8006E9E8 22B8010C */  jal        func_8006E088
    /* 5D1FC 8006E9EC 21808000 */   addu      $s0, $a0, $zero
    /* 5D200 8006E9F0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5D204 8006E9F4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5D208 8006E9F8 03000324 */  addiu      $v1, $zero, 0x3
    /* 5D20C 8006E9FC 100002AE */  sw         $v0, 0x10($s0)
    /* 5D210 8006EA00 140002AE */  sw         $v0, 0x14($s0)
    /* 5D214 8006EA04 180002AE */  sw         $v0, 0x18($s0)
    /* 5D218 8006EA08 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 5D21C 8006EA0C 200002AE */  sw         $v0, 0x20($s0)
    /* 5D220 8006EA10 280000A2 */  sb         $zero, 0x28($s0)
    /* 5D224 8006EA14 290003A2 */  sb         $v1, 0x29($s0)
    /* 5D228 8006EA18 2C0000AE */  sw         $zero, 0x2C($s0)
    /* 5D22C 8006EA1C 2A0000A6 */  sh         $zero, 0x2A($s0)
    /* 5D230 8006EA20 300000AE */  sw         $zero, 0x30($s0)
    /* 5D234 8006EA24 380000A2 */  sb         $zero, 0x38($s0)
    /* 5D238 8006EA28 390000A2 */  sb         $zero, 0x39($s0)
    /* 5D23C 8006EA2C 3A0000A2 */  sb         $zero, 0x3A($s0)
    /* 5D240 8006EA30 3B0000A2 */  sb         $zero, 0x3B($s0)
    /* 5D244 8006EA34 3C0000A2 */  sb         $zero, 0x3C($s0)
    /* 5D248 8006EA38 3D0000A2 */  sb         $zero, 0x3D($s0)
    /* 5D24C 8006EA3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5D250 8006EA40 0800E003 */  jr         $ra
    /* 5D254 8006EA44 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006E9DC
