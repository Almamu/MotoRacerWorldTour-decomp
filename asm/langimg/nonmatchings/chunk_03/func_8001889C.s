nonmatching func_8001889C, 0x30

glabel func_8001889C
    /* 70AC 8001889C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 70B0 800188A0 2110A000 */  addu       $v0, $a1, $zero
    /* 70B4 800188A4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 70B8 800188A8 00004584 */  lh         $a1, 0x0($v0)
    /* 70BC 800188AC 02004684 */  lh         $a2, 0x2($v0)
    /* 70C0 800188B0 04004784 */  lh         $a3, 0x4($v0)
    /* 70C4 800188B4 935F020C */  jal        func_80097E4C
    /* 70C8 800188B8 00000000 */   nop
    /* 70CC 800188BC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 70D0 800188C0 00000000 */  nop
    /* 70D4 800188C4 0800E003 */  jr         $ra
    /* 70D8 800188C8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001889C
