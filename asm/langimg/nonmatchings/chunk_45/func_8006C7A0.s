nonmatching func_8006C7A0, 0x2C

glabel func_8006C7A0
    /* 5AFB0 8006C7A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5AFB4 8006C7A4 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5AFB8 8006C7A8 0D80053C */  lui        $a1, %hi(D_800D6130)
    /* 5AFBC 8006C7AC 3061A58C */  lw         $a1, %lo(D_800D6130)($a1)
    /* 5AFC0 8006C7B0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5AFC4 8006C7B4 CE4F000C */  jal        func_80013F38
    /* 5AFC8 8006C7B8 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5AFCC 8006C7BC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5AFD0 8006C7C0 00000000 */  nop
    /* 5AFD4 8006C7C4 0800E003 */  jr         $ra
    /* 5AFD8 8006C7C8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006C7A0
