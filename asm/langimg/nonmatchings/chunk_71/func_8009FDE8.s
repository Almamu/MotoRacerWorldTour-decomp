nonmatching func_8009FDE8, 0x88

glabel func_8009FDE8
    /* 8E5F8 8009FDE8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8E5FC 8009FDEC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8E600 8009FDF0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8E604 8009FDF4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8E608 8009FDF8 800A858C */  lw         $a1, 0xA80($a0)
    /* 8E60C 8009FDFC 00000000 */  nop
    /* 8E610 8009FE00 6000B08C */  lw         $s0, 0x60($a1)
    /* 8E614 8009FE04 A7AF020C */  jal        DrawSync
    /* 8E618 8009FE08 21200000 */   addu      $a0, $zero, $zero
    /* 8E61C 8009FE0C 3001038E */  lw         $v1, 0x130($s0)
    /* 8E620 8009FE10 01000624 */  addiu      $a2, $zero, 0x1
    /* 8E624 8009FE14 1000A3AF */  sw         $v1, 0x10($sp)
    /* 8E628 8009FE18 1401028E */  lw         $v0, 0x114($s0)
    /* 8E62C 8009FE1C 20011126 */  addiu      $s1, $s0, 0x120
    /* 8E630 8009FE20 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8E634 8009FE24 8400058E */  lw         $a1, 0x84($s0)
    /* 8E638 8009FE28 2C01078E */  lw         $a3, 0x12C($s0)
    /* 8E63C 8009FE2C 1A1D020C */  jal        func_80087468
    /* 8E640 8009FE30 21202002 */   addu      $a0, $s1, $zero
    /* 8E644 8009FE34 3801038E */  lw         $v1, 0x138($s0)
    /* 8E648 8009FE38 00000000 */  nop
    /* 8E64C 8009FE3C 1000A3AF */  sw         $v1, 0x10($sp)
    /* 8E650 8009FE40 1001028E */  lw         $v0, 0x110($s0)
    /* 8E654 8009FE44 21202002 */  addu       $a0, $s1, $zero
    /* 8E658 8009FE48 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8E65C 8009FE4C 8000058E */  lw         $a1, 0x80($s0)
    /* 8E660 8009FE50 3401078E */  lw         $a3, 0x134($s0)
    /* 8E664 8009FE54 1A1D020C */  jal        func_80087468
    /* 8E668 8009FE58 01000624 */   addiu     $a2, $zero, 0x1
    /* 8E66C 8009FE5C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8E670 8009FE60 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8E674 8009FE64 1800B08F */  lw         $s0, 0x18($sp)
    /* 8E678 8009FE68 0800E003 */  jr         $ra
    /* 8E67C 8009FE6C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009FDE8
