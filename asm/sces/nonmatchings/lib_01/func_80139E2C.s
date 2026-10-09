nonmatching func_80139E2C, 0x84

glabel func_80139E2C
    /* 72F8 80139E2C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 72FC 80139E30 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7300 80139E34 21808000 */  addu       $s0, $a0, $zero
    /* 7304 80139E38 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7308 80139E3C 2188E000 */  addu       $s1, $a3, $zero
    /* 730C 80139E40 1800B2AF */  sw         $s2, 0x18($sp)
    /* 7310 80139E44 3000B28F */  lw         $s2, 0x30($sp)
    /* 7314 80139E48 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 7318 80139E4C 1BE8040C */  jal        func_8013A06C
    /* 731C 80139E50 01000424 */   addiu     $a0, $zero, 0x1
    /* 7320 80139E54 01001032 */  andi       $s0, $s0, 0x1
    /* 7324 80139E58 1C80013C */  lui        $at, %hi(D_801C6490)
    /* 7328 80139E5C 906420AC */  sw         $zero, %lo(D_801C6490)($at)
    /* 732C 80139E60 1D80013C */  lui        $at, %hi(D_801C88F0)
    /* 7330 80139E64 F08831AC */  sw         $s1, %lo(D_801C88F0)($at)
    /* 7334 80139E68 1C80013C */  lui        $at, %hi(D_801C6468)
    /* 7338 80139E6C 686430AC */  sw         $s0, %lo(D_801C6468)($at)
    /* 733C 80139E70 1C80013C */  lui        $at, %hi(D_801C6478)
    /* 7340 80139E74 786420AC */  sw         $zero, %lo(D_801C6478)($at)
    /* 7344 80139E78 1C80013C */  lui        $at, %hi(D_801C6470)
    /* 7348 80139E7C 706420AC */  sw         $zero, %lo(D_801C6470)($at)
    /* 734C 80139E80 1C80013C */  lui        $at, %hi(D_801C6464)
    /* 7350 80139E84 646420A4 */  sh         $zero, %lo(D_801C6464)($at)
    /* 7354 80139E88 1C80013C */  lui        $at, %hi(D_801C6460)
    /* 7358 80139E8C 606420AC */  sw         $zero, %lo(D_801C6460)($at)
    /* 735C 80139E90 1D80013C */  lui        $at, %hi(D_801C88F4)
    /* 7360 80139E94 F48832AC */  sw         $s2, %lo(D_801C88F4)($at)
    /* 7364 80139E98 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 7368 80139E9C 1800B28F */  lw         $s2, 0x18($sp)
    /* 736C 80139EA0 1400B18F */  lw         $s1, 0x14($sp)
    /* 7370 80139EA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 7374 80139EA8 0800E003 */  jr         $ra
    /* 7378 80139EAC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80139E2C
    /* 737C 80139EB0 00000000 */  nop
    /* 7380 80139EB4 00000000 */  nop
    /* 7384 80139EB8 00000000 */  nop
