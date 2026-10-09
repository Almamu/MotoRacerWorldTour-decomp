nonmatching func_801403D4, 0x44

glabel func_801403D4
    /* D8A0 801403D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D8A4 801403D8 1000BFAF */  sw         $ra, 0x10($sp)
    /* D8A8 801403DC FF2A050C */  jal        func_8014ABFC
    /* D8AC 801403E0 00000000 */   nop
    /* D8B0 801403E4 03000424 */  addiu      $a0, $zero, 0x3
    /* D8B4 801403E8 132B050C */  jal        func_8014AC4C
    /* D8B8 801403EC 01000524 */   addiu     $a1, $zero, 0x1
    /* D8BC 801403F0 1D80053C */  lui        $a1, %hi(D_801CE780)
    /* D8C0 801403F4 80E7A524 */  addiu      $a1, $a1, %lo(D_801CE780)
    /* D8C4 801403F8 0F2B050C */  jal        func_8014AC3C
    /* D8C8 801403FC 02000424 */   addiu     $a0, $zero, 0x2
    /* D8CC 80140400 032B050C */  jal        func_8014AC0C
    /* D8D0 80140404 00000000 */   nop
    /* D8D4 80140408 1000BF8F */  lw         $ra, 0x10($sp)
    /* D8D8 8014040C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D8DC 80140410 0800E003 */  jr         $ra
    /* D8E0 80140414 00000000 */   nop
endlabel func_801403D4
