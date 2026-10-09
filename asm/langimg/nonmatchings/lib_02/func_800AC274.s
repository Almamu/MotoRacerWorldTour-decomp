nonmatching func_800AC274, 0x5C

glabel func_800AC274
    /* 9AA84 800AC274 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9AA88 800AC278 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9AA8C 800AC27C 21808000 */  addu       $s0, $a0, $zero
    /* 9AA90 800AC280 0C80023C */  lui        $v0, %hi(D_800BF238)
    /* 9AA94 800AC284 38F2428C */  lw         $v0, %lo(D_800BF238)($v0)
    /* 9AA98 800AC288 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9AA9C 800AC28C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9AAA0 800AC290 3C00428C */  lw         $v0, 0x3C($v0)
    /* 9AAA4 800AC294 03001192 */  lbu        $s1, 0x3($s0)
    /* 9AAA8 800AC298 09F84000 */  jalr       $v0
    /* 9AAAC 800AC29C 21200000 */   addu      $a0, $zero, $zero
    /* 9AAB0 800AC2A0 0C80023C */  lui        $v0, %hi(D_800BF238)
    /* 9AAB4 800AC2A4 38F2428C */  lw         $v0, %lo(D_800BF238)($v0)
    /* 9AAB8 800AC2A8 04000426 */  addiu      $a0, $s0, 0x4
    /* 9AABC 800AC2AC 1400428C */  lw         $v0, 0x14($v0)
    /* 9AAC0 800AC2B0 00000000 */  nop
    /* 9AAC4 800AC2B4 09F84000 */  jalr       $v0
    /* 9AAC8 800AC2B8 21282002 */   addu      $a1, $s1, $zero
    /* 9AACC 800AC2BC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9AAD0 800AC2C0 1400B18F */  lw         $s1, 0x14($sp)
    /* 9AAD4 800AC2C4 1000B08F */  lw         $s0, 0x10($sp)
    /* 9AAD8 800AC2C8 0800E003 */  jr         $ra
    /* 9AADC 800AC2CC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AC274
