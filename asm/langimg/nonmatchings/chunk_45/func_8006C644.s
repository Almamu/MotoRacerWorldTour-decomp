nonmatching func_8006C644, 0x50

glabel func_8006C644
    /* 5AE54 8006C644 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5AE58 8006C648 2000B0AF */  sw         $s0, 0x20($sp)
    /* 5AE5C 8006C64C 21808000 */  addu       $s0, $a0, $zero
    /* 5AE60 8006C650 2400BFAF */  sw         $ra, 0x24($sp)
    /* 5AE64 8006C654 6400A38C */  lw         $v1, 0x64($a1)
    /* 5AE68 8006C658 6800A78C */  lw         $a3, 0x68($a1)
    /* 5AE6C 8006C65C 6C00A88C */  lw         $t0, 0x6C($a1)
    /* 5AE70 8006C660 1000A3AF */  sw         $v1, 0x10($sp)
    /* 5AE74 8006C664 1400A7AF */  sw         $a3, 0x14($sp)
    /* 5AE78 8006C668 1800A8AF */  sw         $t0, 0x18($sp)
    /* 5AE7C 8006C66C 1000A48F */  lw         $a0, 0x10($sp)
    /* 5AE80 8006C670 1400A58F */  lw         $a1, 0x14($sp)
    /* 5AE84 8006C674 1800A68F */  lw         $a2, 0x18($sp)
    /* 5AE88 8006C678 76B1010C */  jal        func_8006C5D8
    /* 5AE8C 8006C67C 00000000 */   nop
    /* 5AE90 8006C680 2400BF8F */  lw         $ra, 0x24($sp)
    /* 5AE94 8006C684 1B0402A2 */  sb         $v0, 0x41B($s0)
    /* 5AE98 8006C688 2000B08F */  lw         $s0, 0x20($sp)
    /* 5AE9C 8006C68C 0800E003 */  jr         $ra
    /* 5AEA0 8006C690 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006C644
