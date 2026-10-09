nonmatching func_8006CF48, 0x44

glabel func_8006CF48
    /* 5B758 8006CF48 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B75C 8006CF4C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B760 8006CF50 21880000 */  addu       $s1, $zero, $zero
    /* 5B764 8006CF54 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B768 8006CF58 00049024 */  addiu      $s0, $a0, 0x400
    /* 5B76C 8006CF5C 1800BFAF */  sw         $ra, 0x18($sp)
  .L8006CF60:
    /* 5B770 8006CF60 89B3010C */  jal        func_8006CE24
    /* 5B774 8006CF64 21200002 */   addu      $a0, $s0, $zero
    /* 5B778 8006CF68 01003126 */  addiu      $s1, $s1, 0x1
    /* 5B77C 8006CF6C 1000222E */  sltiu      $v0, $s1, 0x10
    /* 5B780 8006CF70 FBFF4014 */  bnez       $v0, .L8006CF60
    /* 5B784 8006CF74 0C001026 */   addiu     $s0, $s0, 0xC
    /* 5B788 8006CF78 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5B78C 8006CF7C 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B790 8006CF80 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B794 8006CF84 0800E003 */  jr         $ra
    /* 5B798 8006CF88 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006CF48
