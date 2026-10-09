nonmatching func_8006BE10, 0x6C

glabel func_8006BE10
    /* 5A620 8006BE10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5A624 8006BE14 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5A628 8006BE18 21908000 */  addu       $s2, $a0, $zero
    /* 5A62C 8006BE1C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5A630 8006BE20 2C045026 */  addiu      $s0, $s2, 0x42C
    /* 5A634 8006BE24 21200002 */  addu       $a0, $s0, $zero
    /* 5A638 8006BE28 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5A63C 8006BE2C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5A640 8006BE30 215A020C */  jal        func_80096884
    /* 5A644 8006BE34 2188A000 */   addu      $s1, $a1, $zero
    /* 5A648 8006BE38 03004010 */  beqz       $v0, .L8006BE48
    /* 5A64C 8006BE3C 00000000 */   nop
    /* 5A650 8006BE40 0B5A020C */  jal        func_8009682C
    /* 5A654 8006BE44 21200002 */   addu      $a0, $s0, $zero
  .L8006BE48:
    /* 5A658 8006BE48 0B5A020C */  jal        func_8009682C
    /* 5A65C 8006BE4C 21200002 */   addu      $a0, $s0, $zero
    /* 5A660 8006BE50 01002232 */  andi       $v0, $s1, 0x1
    /* 5A664 8006BE54 03004010 */  beqz       $v0, .L8006BE64
    /* 5A668 8006BE58 00000000 */   nop
    /* 5A66C 8006BE5C 679C020C */  jal        __builtin_delete
    /* 5A670 8006BE60 21204002 */   addu      $a0, $s2, $zero
  .L8006BE64:
    /* 5A674 8006BE64 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5A678 8006BE68 1800B28F */  lw         $s2, 0x18($sp)
    /* 5A67C 8006BE6C 1400B18F */  lw         $s1, 0x14($sp)
    /* 5A680 8006BE70 1000B08F */  lw         $s0, 0x10($sp)
    /* 5A684 8006BE74 0800E003 */  jr         $ra
    /* 5A688 8006BE78 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006BE10
