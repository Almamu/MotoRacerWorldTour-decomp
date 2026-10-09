nonmatching func_800795A0, 0x5C

glabel func_800795A0
    /* 67DB0 800795A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 67DB4 800795A4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 67DB8 800795A8 21888000 */  addu       $s1, $a0, $zero
    /* 67DBC 800795AC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 67DC0 800795B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 67DC4 800795B4 2C00228E */  lw         $v0, 0x2C($s1)
    /* 67DC8 800795B8 2180A000 */  addu       $s0, $a1, $zero
    /* 67DCC 800795BC 2A105000 */  slt        $v0, $v0, $s0
    /* 67DD0 800795C0 07004010 */  beqz       $v0, .L800795E0
    /* 67DD4 800795C4 00000000 */   nop
    /* 67DD8 800795C8 D3D4020C */  jal        malloc
    /* 67DDC 800795CC 40201000 */   sll       $a0, $s0, 1
    /* 67DE0 800795D0 03004010 */  beqz       $v0, .L800795E0
    /* 67DE4 800795D4 00000000 */   nop
    /* 67DE8 800795D8 280022AE */  sw         $v0, 0x28($s1)
    /* 67DEC 800795DC 240030AE */  sw         $s0, 0x24($s1)
  .L800795E0:
    /* 67DF0 800795E0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 67DF4 800795E4 700120AE */  sw         $zero, 0x170($s1)
    /* 67DF8 800795E8 1400B18F */  lw         $s1, 0x14($sp)
    /* 67DFC 800795EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 67E00 800795F0 01000224 */  addiu      $v0, $zero, 0x1
    /* 67E04 800795F4 0800E003 */  jr         $ra
    /* 67E08 800795F8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800795A0
