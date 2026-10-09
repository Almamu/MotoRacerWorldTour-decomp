nonmatching func_8006B018, 0x44

glabel func_8006B018
    /* 59828 8006B018 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5982C 8006B01C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 59830 8006B020 21888000 */  addu       $s1, $a0, $zero
    /* 59834 8006B024 1000B0AF */  sw         $s0, 0x10($sp)
    /* 59838 8006B028 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5983C 8006B02C 17AC010C */  jal        func_8006B05C
    /* 59840 8006B030 2180A000 */   addu      $s0, $a1, $zero
    /* 59844 8006B034 01001032 */  andi       $s0, $s0, 0x1
    /* 59848 8006B038 03000012 */  beqz       $s0, .L8006B048
    /* 5984C 8006B03C 00000000 */   nop
    /* 59850 8006B040 679C020C */  jal        __builtin_delete
    /* 59854 8006B044 21202002 */   addu      $a0, $s1, $zero
  .L8006B048:
    /* 59858 8006B048 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5985C 8006B04C 1400B18F */  lw         $s1, 0x14($sp)
    /* 59860 8006B050 1000B08F */  lw         $s0, 0x10($sp)
    /* 59864 8006B054 0800E003 */  jr         $ra
    /* 59868 8006B058 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006B018
