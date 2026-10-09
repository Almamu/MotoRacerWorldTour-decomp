nonmatching func_800A2490, 0x3C

glabel func_800A2490
    /* 90CA0 800A2490 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90CA4 800A2494 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90CA8 800A2498 98AA020C */  jal        _card_chan
    /* 90CAC 800A249C 00000000 */   nop
    /* 90CB0 800A24A0 0D80033C */  lui        $v1, %hi(D_800D6094)
    /* 90CB4 800A24A4 0D80053C */  lui        $a1, %hi(D_800D60A0)
    /* 90CB8 800A24A8 946060AC */  sw         $zero, %lo(D_800D6094)($v1)
    /* 90CBC 800A24AC A060A48C */  lw         $a0, %lo(D_800D60A0)($a1)
    /* 90CC0 800A24B0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90CC4 800A24B4 0D80033C */  lui        $v1, %hi(D_800D6070)
    /* 90CC8 800A24B8 706062AC */  sw         $v0, %lo(D_800D6070)($v1)
    /* 90CCC 800A24BC 01008424 */  addiu      $a0, $a0, 0x1
    /* 90CD0 800A24C0 A060A4AC */  sw         $a0, %lo(D_800D60A0)($a1)
    /* 90CD4 800A24C4 0800E003 */  jr         $ra
    /* 90CD8 800A24C8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A2490
