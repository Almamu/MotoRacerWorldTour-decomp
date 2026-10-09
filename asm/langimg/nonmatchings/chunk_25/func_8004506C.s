nonmatching func_8004506C, 0x54

glabel func_8004506C
    /* 3387C 8004506C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 33880 80045070 1400B1AF */  sw         $s1, 0x14($sp)
    /* 33884 80045074 21888000 */  addu       $s1, $a0, $zero
    /* 33888 80045078 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3388C 8004507C 2180A000 */  addu       $s0, $a1, $zero
    /* 33890 80045080 1800BFAF */  sw         $ra, 0x18($sp)
    /* 33894 80045084 A918010C */  jal        func_800462A4
    /* 33898 80045088 13000524 */   addiu     $a1, $zero, 0x13
    /* 3389C 8004508C 80022426 */  addiu      $a0, $s1, 0x280
    /* 338A0 80045090 0B19010C */  jal        func_8004642C
    /* 338A4 80045094 02000524 */   addiu     $a1, $zero, 0x2
    /* 338A8 80045098 01001032 */  andi       $s0, $s0, 0x1
    /* 338AC 8004509C 03000012 */  beqz       $s0, .L800450AC
    /* 338B0 800450A0 00000000 */   nop
    /* 338B4 800450A4 679C020C */  jal        __builtin_delete
    /* 338B8 800450A8 21202002 */   addu      $a0, $s1, $zero
  .L800450AC:
    /* 338BC 800450AC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 338C0 800450B0 1400B18F */  lw         $s1, 0x14($sp)
    /* 338C4 800450B4 1000B08F */  lw         $s0, 0x10($sp)
    /* 338C8 800450B8 0800E003 */  jr         $ra
    /* 338CC 800450BC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8004506C
