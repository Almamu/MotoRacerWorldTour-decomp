nonmatching func_8004F6C8, 0xA4

glabel func_8004F6C8
    /* 3DED8 8004F6C8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3DEDC 8004F6CC 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3DEE0 8004F6D0 2180A000 */  addu       $s0, $a1, $zero
    /* 3DEE4 8004F6D4 21200002 */  addu       $a0, $s0, $zero
    /* 3DEE8 8004F6D8 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3DEEC 8004F6DC 3800BFAF */  sw         $ra, 0x38($sp)
    /* 3DEF0 8004F6E0 36E2010C */  jal        func_800788D8
    /* 3DEF4 8004F6E4 2188C000 */   addu      $s1, $a2, $zero
    /* 3DEF8 8004F6E8 5FE1010C */  jal        func_8007857C
    /* 3DEFC 8004F6EC 21200002 */   addu      $a0, $s0, $zero
    /* 3DF00 8004F6F0 21202002 */  addu       $a0, $s1, $zero
    /* 3DF04 8004F6F4 F8000226 */  addiu      $v0, $s0, 0xF8
    /* 3DF08 8004F6F8 2000088E */  lw         $t0, 0x20($s0)
    /* 3DF0C 8004F6FC 2400098E */  lw         $t1, 0x24($s0)
    /* 3DF10 8004F700 28000A8E */  lw         $t2, 0x28($s0)
    /* 3DF14 8004F704 2C000B8E */  lw         $t3, 0x2C($s0)
    /* 3DF18 8004F708 1000A8AF */  sw         $t0, 0x10($sp)
    /* 3DF1C 8004F70C 1400A9AF */  sw         $t1, 0x14($sp)
    /* 3DF20 8004F710 1800AAAF */  sw         $t2, 0x18($sp)
    /* 3DF24 8004F714 1C00ABAF */  sw         $t3, 0x1C($sp)
    /* 3DF28 8004F718 3000088E */  lw         $t0, 0x30($s0)
    /* 3DF2C 8004F71C 3400098E */  lw         $t1, 0x34($s0)
    /* 3DF30 8004F720 38000A8E */  lw         $t2, 0x38($s0)
    /* 3DF34 8004F724 3C000B8E */  lw         $t3, 0x3C($s0)
    /* 3DF38 8004F728 2000A8AF */  sw         $t0, 0x20($sp)
    /* 3DF3C 8004F72C 2400A9AF */  sw         $t1, 0x24($sp)
    /* 3DF40 8004F730 2800AAAF */  sw         $t2, 0x28($sp)
    /* 3DF44 8004F734 2C00ABAF */  sw         $t3, 0x2C($sp)
    /* 3DF48 8004F738 F800038E */  lw         $v1, 0xF8($s0)
    /* 3DF4C 8004F73C 0400468C */  lw         $a2, 0x4($v0)
    /* 3DF50 8004F740 0800478C */  lw         $a3, 0x8($v0)
    /* 3DF54 8004F744 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3DF58 8004F748 1400A3AC */  sw         $v1, 0x14($a1)
    /* 3DF5C 8004F74C 1800A6AC */  sw         $a2, 0x18($a1)
    /* 3DF60 8004F750 9176000C */  jal        func_8001DA44
    /* 3DF64 8004F754 1C00A7AC */   sw        $a3, 0x1C($a1)
    /* 3DF68 8004F758 3800BF8F */  lw         $ra, 0x38($sp)
    /* 3DF6C 8004F75C 3400B18F */  lw         $s1, 0x34($sp)
    /* 3DF70 8004F760 3000B08F */  lw         $s0, 0x30($sp)
    /* 3DF74 8004F764 0800E003 */  jr         $ra
    /* 3DF78 8004F768 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8004F6C8
