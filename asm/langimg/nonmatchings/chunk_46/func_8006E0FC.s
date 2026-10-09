nonmatching func_8006E0FC, 0x48

glabel func_8006E0FC
    /* 5C90C 8006E0FC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5C910 8006E100 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5C914 8006E104 21888000 */  addu       $s1, $a0, $zero
    /* 5C918 8006E108 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5C91C 8006E10C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5C920 8006E110 0400258E */  lw         $a1, 0x4($s1)
    /* 5C924 8006E114 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 5C928 8006E118 0500B010 */  beq        $a1, $s0, .L8006E130
    /* 5C92C 8006E11C 00000000 */   nop
    /* 5C930 8006E120 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5C934 8006E124 DD52000C */  jal        func_80014B74
    /* 5C938 8006E128 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5C93C 8006E12C 040030AE */  sw         $s0, 0x4($s1)
  .L8006E130:
    /* 5C940 8006E130 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5C944 8006E134 1400B18F */  lw         $s1, 0x14($sp)
    /* 5C948 8006E138 1000B08F */  lw         $s0, 0x10($sp)
    /* 5C94C 8006E13C 0800E003 */  jr         $ra
    /* 5C950 8006E140 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006E0FC
