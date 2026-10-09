nonmatching func_8014B020, 0x3C

glabel func_8014B020
    /* 184EC 8014B020 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 184F0 8014B024 1C00A227 */  addiu      $v0, $sp, 0x1C
    /* 184F4 8014B028 1800A4AF */  sw         $a0, 0x18($sp)
    /* 184F8 8014B02C 01000424 */  addiu      $a0, $zero, 0x1
    /* 184FC 8014B030 1000BFAF */  sw         $ra, 0x10($sp)
    /* 18500 8014B034 1C00A5AF */  sw         $a1, 0x1C($sp)
    /* 18504 8014B038 040046AC */  sw         $a2, 0x4($v0)
    /* 18508 8014B03C 080047AC */  sw         $a3, 0x8($v0)
    /* 1850C 8014B040 1800A58F */  lw         $a1, 0x18($sp)
    /* 18510 8014B044 182C050C */  jal        func_8014B060
    /* 18514 8014B048 21304000 */   addu      $a2, $v0, $zero
    /* 18518 8014B04C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1851C 8014B050 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 18520 8014B054 0800E003 */  jr         $ra
    /* 18524 8014B058 00000000 */   nop
endlabel func_8014B020
    /* 18528 8014B05C 00000000 */  nop
