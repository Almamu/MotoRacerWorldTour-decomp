nonmatching func_8006F21C, 0x54

glabel func_8006F21C
    /* 5DA2C 8006F21C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5DA30 8006F220 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5DA34 8006F224 21808000 */  addu       $s0, $a0, $zero
    /* 5DA38 8006F228 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5DA3C 8006F22C A2BA010C */  jal        func_8006EA88
    /* 5DA40 8006F230 1400B1AF */   sw        $s1, 0x14($sp)
    /* 5DA44 8006F234 F2B8010C */  jal        func_8006E3C8
    /* 5DA48 8006F238 40000426 */   addiu     $a0, $s0, 0x40
    /* 5DA4C 8006F23C 7800058E */  lw         $a1, 0x78($s0)
    /* 5DA50 8006F240 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 5DA54 8006F244 0500B110 */  beq        $a1, $s1, .L8006F25C
    /* 5DA58 8006F248 00000000 */   nop
    /* 5DA5C 8006F24C 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5DA60 8006F250 DD52000C */  jal        func_80014B74
    /* 5DA64 8006F254 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5DA68 8006F258 780011AE */  sw         $s1, 0x78($s0)
  .L8006F25C:
    /* 5DA6C 8006F25C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5DA70 8006F260 1400B18F */  lw         $s1, 0x14($sp)
    /* 5DA74 8006F264 1000B08F */  lw         $s0, 0x10($sp)
    /* 5DA78 8006F268 0800E003 */  jr         $ra
    /* 5DA7C 8006F26C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006F21C
