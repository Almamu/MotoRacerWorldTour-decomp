nonmatching func_800A0DC4, 0x94

glabel func_800A0DC4
    /* 8F5D4 800A0DC4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8F5D8 800A0DC8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 8F5DC 800A0DCC 21A08000 */  addu       $s4, $a0, $zero
    /* 8F5E0 800A0DD0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8F5E4 800A0DD4 2188A000 */  addu       $s1, $a1, $zero
    /* 8F5E8 800A0DD8 21202002 */  addu       $a0, $s1, $zero
    /* 8F5EC 800A0DDC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8F5F0 800A0DE0 2198C000 */  addu       $s3, $a2, $zero
    /* 8F5F4 800A0DE4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8F5F8 800A0DE8 04009226 */  addiu      $s2, $s4, 0x4
    /* 8F5FC 800A0DEC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 8F600 800A0DF0 2E85020C */  jal        func_800A14B8
    /* 8F604 800A0DF4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 8F608 800A0DF8 3A85020C */  jal        func_800A14E8
    /* 8F60C 800A0DFC 21202002 */   addu      $a0, $s1, $zero
    /* 8F610 800A0E00 21284000 */  addu       $a1, $v0, $zero
    /* 8F614 800A0E04 80181300 */  sll        $v1, $s3, 2
    /* 8F618 800A0E08 2118A300 */  addu       $v1, $a1, $v1
    /* 8F61C 800A0E0C 0800628C */  lw         $v0, 0x8($v1)
    /* 8F620 800A0E10 00000000 */  nop
    /* 8F624 800A0E14 07004004 */  bltz       $v0, .L800A0E34
    /* 8F628 800A0E18 21800000 */   addu      $s0, $zero, $zero
    /* 8F62C 800A0E1C 21208002 */  addu       $a0, $s4, $zero
    /* 8F630 800A0E20 780051AE */  sw         $s1, 0x78($s2)
    /* 8F634 800A0E24 0000B3AC */  sw         $s3, 0x0($a1)
    /* 8F638 800A0E28 8A84020C */  jal        func_800A1228
    /* 8F63C 800A0E2C 0400A0AC */   sw        $zero, 0x4($a1)
    /* 8F640 800A0E30 01001024 */  addiu      $s0, $zero, 0x1
  .L800A0E34:
    /* 8F644 800A0E34 21100002 */  addu       $v0, $s0, $zero
    /* 8F648 800A0E38 2400BF8F */  lw         $ra, 0x24($sp)
    /* 8F64C 800A0E3C 2000B48F */  lw         $s4, 0x20($sp)
    /* 8F650 800A0E40 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8F654 800A0E44 1800B28F */  lw         $s2, 0x18($sp)
    /* 8F658 800A0E48 1400B18F */  lw         $s1, 0x14($sp)
    /* 8F65C 800A0E4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8F660 800A0E50 0800E003 */  jr         $ra
    /* 8F664 800A0E54 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800A0DC4
