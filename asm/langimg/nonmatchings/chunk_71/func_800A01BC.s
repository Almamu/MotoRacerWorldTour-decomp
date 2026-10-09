nonmatching func_800A01BC, 0x40

glabel func_800A01BC
    /* 8E9CC 800A01BC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8E9D0 800A01C0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8E9D4 800A01C4 04001124 */  addiu      $s1, $zero, 0x4
    /* 8E9D8 800A01C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8E9DC 800A01CC 34009024 */  addiu      $s0, $a0, 0x34
    /* 8E9E0 800A01D0 1800BFAF */  sw         $ra, 0x18($sp)
  .L800A01D4:
    /* 8E9E4 800A01D4 4980020C */  jal        func_800A0124
    /* 8E9E8 800A01D8 21200002 */   addu      $a0, $s0, $zero
    /* 8E9EC 800A01DC FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 8E9F0 800A01E0 FCFF2106 */  bgez       $s1, .L800A01D4
    /* 8E9F4 800A01E4 F4FF1026 */   addiu     $s0, $s0, -0xC
    /* 8E9F8 800A01E8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8E9FC 800A01EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 8EA00 800A01F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 8EA04 800A01F4 0800E003 */  jr         $ra
    /* 8EA08 800A01F8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A01BC
