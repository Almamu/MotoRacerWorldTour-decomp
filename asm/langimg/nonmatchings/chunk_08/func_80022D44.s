nonmatching func_80022D44, 0xA0

glabel func_80022D44
    /* 11554 80022D44 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 11558 80022D48 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1155C 80022D4C 21988000 */  addu       $s3, $a0, $zero
    /* 11560 80022D50 1000A427 */  addiu      $a0, $sp, 0x10
    /* 11564 80022D54 2800B2AF */  sw         $s2, 0x28($sp)
    /* 11568 80022D58 2190A000 */  addu       $s2, $a1, $zero
    /* 1156C 80022D5C 21286002 */  addu       $a1, $s3, $zero
    /* 11570 80022D60 3000B4AF */  sw         $s4, 0x30($sp)
    /* 11574 80022D64 21A0C000 */  addu       $s4, $a2, $zero
    /* 11578 80022D68 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1157C 80022D6C 2180E000 */  addu       $s0, $a3, $zero
    /* 11580 80022D70 3400BFAF */  sw         $ra, 0x34($sp)
    /* 11584 80022D74 488B000C */  jal        func_80022D20
    /* 11588 80022D78 2400B1AF */   sw        $s1, 0x24($sp)
    /* 1158C 80022D7C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 11590 80022D80 01001124 */  addiu      $s1, $zero, 0x1
    /* 11594 80022D84 04885102 */  sllv       $s1, $s1, $s2
    /* 11598 80022D88 21282002 */  addu       $a1, $s1, $zero
    /* 1159C 80022D8C 508C000C */  jal        func_80023140
    /* 115A0 80022D90 21304002 */   addu      $a2, $s2, $zero
    /* 115A4 80022D94 1000A427 */  addiu      $a0, $sp, 0x10
    /* 115A8 80022D98 23805002 */  subu       $s0, $s2, $s0
    /* 115AC 80022D9C 04281402 */  sllv       $a1, $s4, $s0
    /* 115B0 80022DA0 3C65020C */  jal        func_800994F0
    /* 115B4 80022DA4 21304002 */   addu      $a2, $s2, $zero
    /* 115B8 80022DA8 21206002 */  addu       $a0, $s3, $zero
    /* 115BC 80022DAC F465020C */  jal        func_800997D0
    /* 115C0 80022DB0 1000A527 */   addiu     $a1, $sp, 0x10
    /* 115C4 80022DB4 21206002 */  addu       $a0, $s3, $zero
    /* 115C8 80022DB8 21282002 */  addu       $a1, $s1, $zero
    /* 115CC 80022DBC 508C000C */  jal        func_80023140
    /* 115D0 80022DC0 21304002 */   addu      $a2, $s2, $zero
    /* 115D4 80022DC4 3400BF8F */  lw         $ra, 0x34($sp)
    /* 115D8 80022DC8 3000B48F */  lw         $s4, 0x30($sp)
    /* 115DC 80022DCC 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 115E0 80022DD0 2800B28F */  lw         $s2, 0x28($sp)
    /* 115E4 80022DD4 2400B18F */  lw         $s1, 0x24($sp)
    /* 115E8 80022DD8 2000B08F */  lw         $s0, 0x20($sp)
    /* 115EC 80022DDC 0800E003 */  jr         $ra
    /* 115F0 80022DE0 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_80022D44
