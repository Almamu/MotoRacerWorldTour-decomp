nonmatching func_80090D74, 0xE4

glabel func_80090D74
    /* 7F584 80090D74 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 7F588 80090D78 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 7F58C 80090D7C 21A88000 */  addu       $s5, $a0, $zero
    /* 7F590 80090D80 4400B3AF */  sw         $s3, 0x44($sp)
    /* 7F594 80090D84 2198A000 */  addu       $s3, $a1, $zero
    /* 7F598 80090D88 4800B4AF */  sw         $s4, 0x48($sp)
    /* 7F59C 80090D8C 21A0C000 */  addu       $s4, $a2, $zero
    /* 7F5A0 80090D90 4000B2AF */  sw         $s2, 0x40($sp)
    /* 7F5A4 80090D94 1000B227 */  addiu      $s2, $sp, 0x10
    /* 7F5A8 80090D98 5000BFAF */  sw         $ra, 0x50($sp)
    /* 7F5AC 80090D9C 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 7F5B0 80090DA0 3800B0AF */  sw         $s0, 0x38($sp)
    /* 7F5B4 80090DA4 0400A28E */  lw         $v0, 0x4($s5)
    /* 7F5B8 80090DA8 21304002 */  addu       $a2, $s2, $zero
    /* 7F5BC 80090DAC 1C004384 */  lh         $v1, 0x1C($v0)
    /* 7F5C0 80090DB0 0C001024 */  addiu      $s0, $zero, 0xC
    /* 7F5C4 80090DB4 0B43020C */  jal        func_80090C2C
    /* 7F5C8 80090DB8 23800302 */   subu      $s0, $s0, $v1
    /* 7F5CC 80090DBC 2800B127 */  addiu      $s1, $sp, 0x28
    /* 7F5D0 80090DC0 21202002 */  addu       $a0, $s1, $zero
    /* 7F5D4 80090DC4 1C006526 */  addiu      $a1, $s3, 0x1C
    /* 7F5D8 80090DC8 6867020C */  jal        func_80099DA0
    /* 7F5DC 80090DCC 21300002 */   addu      $a2, $s0, $zero
    /* 7F5E0 80090DD0 21204002 */  addu       $a0, $s2, $zero
    /* 7F5E4 80090DD4 F465020C */  jal        func_800997D0
    /* 7F5E8 80090DD8 21282002 */   addu      $a1, $s1, $zero
    /* 7F5EC 80090DDC 1C00B027 */  addiu      $s0, $sp, 0x1C
    /* 7F5F0 80090DE0 21200002 */  addu       $a0, $s0, $zero
    /* 7F5F4 80090DE4 F465020C */  jal        func_800997D0
    /* 7F5F8 80090DE8 21282002 */   addu      $a1, $s1, $zero
    /* 7F5FC 80090DEC 21208002 */  addu       $a0, $s4, $zero
    /* 7F600 80090DF0 7563020C */  jal        func_80098DD4
    /* 7F604 80090DF4 21284002 */   addu      $a1, $s2, $zero
    /* 7F608 80090DF8 0C008426 */  addiu      $a0, $s4, 0xC
    /* 7F60C 80090DFC 8E63020C */  jal        func_80098E38
    /* 7F610 80090E00 21280002 */   addu      $a1, $s0, $zero
    /* 7F614 80090E04 0000658E */  lw         $a1, 0x0($s3)
    /* 7F618 80090E08 00000000 */  nop
    /* 7F61C 80090E0C 0300A010 */  beqz       $a1, .L80090E1C
    /* 7F620 80090E10 2120A002 */   addu      $a0, $s5, $zero
    /* 7F624 80090E14 5D43020C */  jal        func_80090D74
    /* 7F628 80090E18 21308002 */   addu      $a2, $s4, $zero
  .L80090E1C:
    /* 7F62C 80090E1C 0800658E */  lw         $a1, 0x8($s3)
    /* 7F630 80090E20 00000000 */  nop
    /* 7F634 80090E24 0300A010 */  beqz       $a1, .L80090E34
    /* 7F638 80090E28 2120A002 */   addu      $a0, $s5, $zero
    /* 7F63C 80090E2C 5D43020C */  jal        func_80090D74
    /* 7F640 80090E30 21308002 */   addu      $a2, $s4, $zero
  .L80090E34:
    /* 7F644 80090E34 5000BF8F */  lw         $ra, 0x50($sp)
    /* 7F648 80090E38 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 7F64C 80090E3C 4800B48F */  lw         $s4, 0x48($sp)
    /* 7F650 80090E40 4400B38F */  lw         $s3, 0x44($sp)
    /* 7F654 80090E44 4000B28F */  lw         $s2, 0x40($sp)
    /* 7F658 80090E48 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 7F65C 80090E4C 3800B08F */  lw         $s0, 0x38($sp)
    /* 7F660 80090E50 0800E003 */  jr         $ra
    /* 7F664 80090E54 5800BD27 */   addiu     $sp, $sp, 0x58
endlabel func_80090D74
