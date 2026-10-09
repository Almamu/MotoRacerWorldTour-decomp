nonmatching func_800AEC94, 0x6C

glabel func_800AEC94
    /* 9D4A4 800AEC94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9D4A8 800AEC98 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9D4AC 800AEC9C 21808000 */  addu       $s0, $a0, $zero
    /* 9D4B0 800AECA0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9D4B4 800AECA4 0CD7020C */  jal        func_800B5C30
    /* 9D4B8 800AECA8 21200000 */   addu      $a0, $zero, $zero
    /* 9D4BC 800AECAC E0D6020C */  jal        func_800B5B80
    /* 9D4C0 800AECB0 00000000 */   nop
    /* 9D4C4 800AECB4 C8D7020C */  jal        func_800B5F20
    /* 9D4C8 800AECB8 00000000 */   nop
    /* 9D4CC 800AECBC 02004014 */  bnez       $v0, .L800AECC8
    /* 9D4D0 800AECC0 00000000 */   nop
    /* 9D4D4 800AECC4 21800000 */  addu       $s0, $zero, $zero
  .L800AECC8:
    /* 9D4D8 800AECC8 59BB020C */  jal        func_800AED64
    /* 9D4DC 800AECCC 21200002 */   addu      $a0, $s0, $zero
    /* 9D4E0 800AECD0 CCBB020C */  jal        func_800AEF30
    /* 9D4E4 800AECD4 00000000 */   nop
    /* 9D4E8 800AECD8 8BBB020C */  jal        func_800AEE2C
    /* 9D4EC 800AECDC 00000000 */   nop
    /* 9D4F0 800AECE0 B0BB020C */  jal        func_800AEEC0
    /* 9D4F4 800AECE4 00000000 */   nop
    /* 9D4F8 800AECE8 E4D6020C */  jal        func_800B5B90
    /* 9D4FC 800AECEC 00000000 */   nop
    /* 9D500 800AECF0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9D504 800AECF4 1000B08F */  lw         $s0, 0x10($sp)
    /* 9D508 800AECF8 0800E003 */  jr         $ra
    /* 9D50C 800AECFC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AEC94
