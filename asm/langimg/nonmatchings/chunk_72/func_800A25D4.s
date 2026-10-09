nonmatching func_800A25D4, 0x44

glabel func_800A25D4
    /* 90DE4 800A25D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90DE8 800A25D8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90DEC 800A25DC 98AA020C */  jal        func_800AAA60
    /* 90DF0 800A25E0 00000000 */   nop
    /* 90DF4 800A25E4 0D80043C */  lui        $a0, %hi(D_800D60C0)
    /* 90DF8 800A25E8 01000324 */  addiu      $v1, $zero, 0x1
    /* 90DFC 800A25EC 0D80053C */  lui        $a1, %hi(D_800D60C8)
    /* 90E00 800A25F0 C860A524 */  addiu      $a1, $a1, %lo(D_800D60C8)
    /* 90E04 800A25F4 C06083AC */  sw         $v1, %lo(D_800D60C0)($a0)
    /* 90E08 800A25F8 0400A38C */  lw         $v1, 0x4($a1)
    /* 90E0C 800A25FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90E10 800A2600 0D80043C */  lui        $a0, %hi(D_800D6070)
    /* 90E14 800A2604 706082AC */  sw         $v0, %lo(D_800D6070)($a0)
    /* 90E18 800A2608 01006324 */  addiu      $v1, $v1, 0x1
    /* 90E1C 800A260C 0400A3AC */  sw         $v1, 0x4($a1)
    /* 90E20 800A2610 0800E003 */  jr         $ra
    /* 90E24 800A2614 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A25D4
