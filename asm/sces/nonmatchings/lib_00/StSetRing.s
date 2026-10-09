nonmatching StSetRing, 0x30

glabel StSetRing
    /* 4174 80136CA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4178 80136CAC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 417C 80136CB0 1C80013C */  lui        $at, %hi(D_801C64A0)
    /* 4180 80136CB4 A06424AC */  sw         $a0, %lo(D_801C64A0)($at)
    /* 4184 80136CB8 1C80013C */  lui        $at, %hi(D_801C64A4)
    /* 4188 80136CBC 50E7040C */  jal        StClearRing
    /* 418C 80136CC0 A46425AC */   sw        $a1, %lo(D_801C64A4)($at)
    /* 4190 80136CC4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4194 80136CC8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4198 80136CCC 0800E003 */  jr         $ra
    /* 419C 80136CD0 00000000 */   nop
    /* 41A0 80136CD4 00000000 */  nop
endlabel StSetRing
