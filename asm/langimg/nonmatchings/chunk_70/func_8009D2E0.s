nonmatching func_8009D2E0, 0x70

glabel func_8009D2E0
    /* 8BAF0 8009D2E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8BAF4 8009D2E4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8BAF8 8009D2E8 709C020C */  jal        __builtin_new
    /* 8BAFC 8009D2EC 20000424 */   addiu     $a0, $zero, 0x20
    /* 8BB00 8009D2F0 0D80033C */  lui        $v1, %hi(D_800C9750)
    /* 8BB04 8009D2F4 50976324 */  addiu      $v1, $v1, %lo(D_800C9750)
    /* 8BB08 8009D2F8 2C000424 */  addiu      $a0, $zero, 0x2C
    /* 8BB0C 8009D2FC 000043AC */  sw         $v1, 0x0($v0)
    /* 8BB10 8009D300 0D80033C */  lui        $v1, %hi(D_800C98F4)
    /* 8BB14 8009D304 F4986324 */  addiu      $v1, $v1, %lo(D_800C98F4)
    /* 8BB18 8009D308 040044AC */  sw         $a0, 0x4($v0)
    /* 8BB1C 8009D30C 08000424 */  addiu      $a0, $zero, 0x8
    /* 8BB20 8009D310 080043AC */  sw         $v1, 0x8($v0)
    /* 8BB24 8009D314 0D80033C */  lui        $v1, %hi(D_800C9A6C)
    /* 8BB28 8009D318 6C9A6324 */  addiu      $v1, $v1, %lo(D_800C9A6C)
    /* 8BB2C 8009D31C 0C0044AC */  sw         $a0, 0xC($v0)
    /* 8BB30 8009D320 17000424 */  addiu      $a0, $zero, 0x17
    /* 8BB34 8009D324 100043AC */  sw         $v1, 0x10($v0)
    /* 8BB38 8009D328 0D80033C */  lui        $v1, %hi(D_800CBEA0)
    /* 8BB3C 8009D32C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8BB40 8009D330 A0BE6324 */  addiu      $v1, $v1, %lo(D_800CBEA0)
    /* 8BB44 8009D334 140044AC */  sw         $a0, 0x14($v0)
    /* 8BB48 8009D338 0F000424 */  addiu      $a0, $zero, 0xF
    /* 8BB4C 8009D33C 180043AC */  sw         $v1, 0x18($v0)
    /* 8BB50 8009D340 1C0044AC */  sw         $a0, 0x1C($v0)
    /* 8BB54 8009D344 6C4C82AF */  sw         $v0, %gp_rel(D_800C935C)($gp)
    /* 8BB58 8009D348 0800E003 */  jr         $ra
    /* 8BB5C 8009D34C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009D2E0
