nonmatching func_8006C694, 0xBC

glabel func_8006C694
    /* 5AEA4 8006C694 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 5AEA8 8006C698 2000B0AF */  sw         $s0, 0x20($sp)
    /* 5AEAC 8006C69C 21808000 */  addu       $s0, $a0, $zero
    /* 5AEB0 8006C6A0 2800BFAF */  sw         $ra, 0x28($sp)
    /* 5AEB4 8006C6A4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 5AEB8 8006C6A8 0400028E */  lw         $v0, 0x4($s0)
    /* 5AEBC 8006C6AC 0000038E */  lw         $v1, 0x0($s0)
    /* 5AEC0 8006C6B0 00000000 */  nop
    /* 5AEC4 8006C6B4 2B104300 */  sltu       $v0, $v0, $v1
    /* 5AEC8 8006C6B8 03004014 */  bnez       $v0, .L8006C6C8
    /* 5AECC 8006C6BC 21880000 */   addu      $s1, $zero, $zero
    /* 5AED0 8006C6C0 CFB10108 */  j          .L8006C73C
    /* 5AED4 8006C6C4 21100000 */   addu      $v0, $zero, $zero
  .L8006C6C8:
    /* 5AED8 8006C6C8 6400A78C */  lw         $a3, 0x64($a1)
    /* 5AEDC 8006C6CC 6800A88C */  lw         $t0, 0x68($a1)
    /* 5AEE0 8006C6D0 6C00A98C */  lw         $t1, 0x6C($a1)
    /* 5AEE4 8006C6D4 1000A7AF */  sw         $a3, 0x10($sp)
    /* 5AEE8 8006C6D8 1400A8AF */  sw         $t0, 0x14($sp)
    /* 5AEEC 8006C6DC 1800A9AF */  sw         $t1, 0x18($sp)
    /* 5AEF0 8006C6E0 1000A48F */  lw         $a0, 0x10($sp)
    /* 5AEF4 8006C6E4 1400A58F */  lw         $a1, 0x14($sp)
    /* 5AEF8 8006C6E8 1800A68F */  lw         $a2, 0x18($sp)
    /* 5AEFC 8006C6EC 76B1010C */  jal        func_8006C5D8
    /* 5AF00 8006C6F0 00000000 */   nop
    /* 5AF04 8006C6F4 1B040382 */  lb         $v1, 0x41B($s0)
    /* 5AF08 8006C6F8 00000000 */  nop
    /* 5AF0C 8006C6FC 05006010 */  beqz       $v1, .L8006C714
    /* 5AF10 8006C700 00000000 */   nop
    /* 5AF14 8006C704 05004010 */  beqz       $v0, .L8006C71C
    /* 5AF18 8006C708 00000000 */   nop
    /* 5AF1C 8006C70C C8B10108 */  j          .L8006C720
    /* 5AF20 8006C710 00000000 */   nop
  .L8006C714:
    /* 5AF24 8006C714 02004010 */  beqz       $v0, .L8006C720
    /* 5AF28 8006C718 00000000 */   nop
  .L8006C71C:
    /* 5AF2C 8006C71C 01001124 */  addiu      $s1, $zero, 0x1
  .L8006C720:
    /* 5AF30 8006C720 06002012 */  beqz       $s1, .L8006C73C
    /* 5AF34 8006C724 21102002 */   addu      $v0, $s1, $zero
    /* 5AF38 8006C728 7430828F */  lw         $v0, %gp_rel(D_800C7764)($gp)
    /* 5AF3C 8006C72C 00000000 */  nop
    /* 5AF40 8006C730 01004224 */  addiu      $v0, $v0, 0x1
    /* 5AF44 8006C734 743082AF */  sw         $v0, %gp_rel(D_800C7764)($gp)
    /* 5AF48 8006C738 21102002 */  addu       $v0, $s1, $zero
  .L8006C73C:
    /* 5AF4C 8006C73C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 5AF50 8006C740 2400B18F */  lw         $s1, 0x24($sp)
    /* 5AF54 8006C744 2000B08F */  lw         $s0, 0x20($sp)
    /* 5AF58 8006C748 0800E003 */  jr         $ra
    /* 5AF5C 8006C74C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8006C694
