nonmatching func_80048980, 0x64

glabel func_80048980
    /* 37190 80048980 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 37194 80048984 1000B0AF */  sw         $s0, 0x10($sp)
    /* 37198 80048988 21808000 */  addu       $s0, $a0, $zero
    /* 3719C 8004898C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 371A0 80048990 1800058E */  lw         $a1, 0x18($s0)
    /* 371A4 80048994 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 371A8 80048998 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 371AC 8004899C F1E3010C */  jal        func_80078FC4
    /* 371B0 800489A0 00000000 */   nop
    /* 371B4 800489A4 21284000 */  addu       $a1, $v0, $zero
    /* 371B8 800489A8 0800A38C */  lw         $v1, 0x8($a1)
    /* 371BC 800489AC 06000224 */  addiu      $v0, $zero, 0x6
    /* 371C0 800489B0 06006214 */  bne        $v1, $v0, .L800489CC
    /* 371C4 800489B4 2120A000 */   addu      $a0, $a1, $zero
    /* 371C8 800489B8 01000224 */  addiu      $v0, $zero, 0x1
    /* 371CC 800489BC 7401A0AC */  sw         $zero, 0x174($a1)
    /* 371D0 800489C0 7C01A2AC */  sw         $v0, 0x17C($a1)
    /* 371D4 800489C4 B7E4010C */  jal        func_800792DC
    /* 371D8 800489C8 8001A0AC */   sw        $zero, 0x180($a1)
  .L800489CC:
    /* 371DC 800489CC CD13010C */  jal        func_80044F34
    /* 371E0 800489D0 21200002 */   addu      $a0, $s0, $zero
    /* 371E4 800489D4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 371E8 800489D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 371EC 800489DC 0800E003 */  jr         $ra
    /* 371F0 800489E0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80048980
