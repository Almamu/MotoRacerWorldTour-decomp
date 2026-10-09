nonmatching func_8009DE0C, 0x114

glabel func_8009DE0C
    /* 8C61C 8009DE0C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8C620 8009DE10 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8C624 8009DE14 21808000 */  addu       $s0, $a0, $zero
    /* 8C628 8009DE18 2400BFAF */  sw         $ra, 0x24($sp)
    /* 8C62C 8009DE1C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8C630 8009DE20 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8C634 8009DE24 900A038E */  lw         $v1, 0xA90($s0)
    /* 8C638 8009DE28 01000224 */  addiu      $v0, $zero, 0x1
    /* 8C63C 8009DE2C 03006210 */  beq        $v1, $v0, .L8009DE3C
    /* 8C640 8009DE30 04000224 */   addiu     $v0, $zero, 0x4
    /* 8C644 8009DE34 04006214 */  bne        $v1, $v0, .L8009DE48
    /* 8C648 8009DE38 FFFD0224 */   addiu     $v0, $zero, -0x201
  .L8009DE3C:
    /* 8C64C 8009DE3C 840A048E */  lw         $a0, 0xA84($s0)
    /* 8C650 8009DE40 93770208 */  j          .L8009DE4C
    /* 8C654 8009DE44 FFFD0224 */   addiu     $v0, $zero, -0x201
  .L8009DE48:
    /* 8C658 8009DE48 800A048E */  lw         $a0, 0xA80($s0)
  .L8009DE4C:
    /* 8C65C 8009DE4C 940A038E */  lw         $v1, 0xA94($s0)
    /* 8C660 8009DE50 6000918C */  lw         $s1, 0x60($a0)
    /* 8C664 8009DE54 24186200 */  and        $v1, $v1, $v0
    /* 8C668 8009DE58 940A03AE */  sw         $v1, 0xA94($s0)
    /* 8C66C 8009DE5C 14002486 */  lh         $a0, 0x14($s1)
    /* 8C670 8009DE60 980A128E */  lw         $s2, 0xA98($s0)
    /* 8C674 8009DE64 23008010 */  beqz       $a0, .L8009DEF4
    /* 8C678 8009DE68 03000224 */   addiu     $v0, $zero, 0x3
    /* 8C67C 8009DE6C 2878020C */  jal        func_8009E0A0
    /* 8C680 8009DE70 21202002 */   addu      $a0, $s1, $zero
    /* 8C684 8009DE74 21284000 */  addu       $a1, $v0, $zero
    /* 8C688 8009DE78 0C80043C */  lui        $a0, %hi(D_800BC884)
    /* 8C68C 8009DE7C 84C8848C */  lw         $a0, %lo(D_800BC884)($a0)
    /* 8C690 8009DE80 46D8020C */  jal        memcpy
    /* 8C694 8009DE84 AC150624 */   addiu     $a2, $zero, 0x15AC
    /* 8C698 8009DE88 2878020C */  jal        func_8009E0A0
    /* 8C69C 8009DE8C 21202002 */   addu      $a0, $s1, $zero
    /* 8C6A0 8009DE90 21200002 */  addu       $a0, $s0, $zero
    /* 8C6A4 8009DE94 04004524 */  addiu      $a1, $v0, 0x4
    /* 8C6A8 8009DE98 54010624 */  addiu      $a2, $zero, 0x154
    /* 8C6AC 8009DE9C 01000224 */  addiu      $v0, $zero, 0x1
    /* 8C6B0 8009DEA0 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 8C6B4 8009DEA4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8C6B8 8009DEA8 80ED000C */  jal        func_8003B600
    /* 8C6BC 8009DEAC 1400A2AF */   sw        $v0, 0x14($sp)
    /* 8C6C0 8009DEB0 84000224 */  addiu      $v0, $zero, 0x84
    /* 8C6C4 8009DEB4 500102AE */  sw         $v0, 0x150($s0)
    /* 8C6C8 8009DEB8 0D80103C */  lui        $s0, %hi(D_800C886C)
    /* 8C6CC 8009DEBC 6C88108E */  lw         $s0, %lo(D_800C886C)($s0)
    /* 8C6D0 8009DEC0 2878020C */  jal        func_8009E0A0
    /* 8C6D4 8009DEC4 21202002 */   addu      $a0, $s1, $zero
    /* 8C6D8 8009DEC8 0001438C */  lw         $v1, 0x100($v0)
    /* 8C6DC 8009DECC 21202002 */  addu       $a0, $s1, $zero
    /* 8C6E0 8009DED0 2878020C */  jal        func_8009E0A0
    /* 8C6E4 8009DED4 600103AE */   sw        $v1, 0x160($s0)
    /* 8C6E8 8009DED8 0401458C */  lw         $a1, 0x104($v0)
    /* 8C6EC 8009DEDC 21200002 */  addu       $a0, $s0, $zero
    /* 8C6F0 8009DEE0 B7E4010C */  jal        func_800792DC
    /* 8C6F4 8009DEE4 640105AE */   sw        $a1, 0x164($s0)
    /* 8C6F8 8009DEE8 2182020C */  jal        func_800A0884
    /* 8C6FC 8009DEEC E0004426 */   addiu     $a0, $s2, 0xE0
    /* 8C700 8009DEF0 03000224 */  addiu      $v0, $zero, 0x3
  .L8009DEF4:
    /* 8C704 8009DEF4 21202002 */  addu       $a0, $s1, $zero
    /* 8C708 8009DEF8 2B78020C */  jal        func_8009E0AC
    /* 8C70C 8009DEFC 340142AE */   sw        $v0, 0x134($s2)
    /* 8C710 8009DF00 9190020C */  jal        func_800A4244
    /* 8C714 8009DF04 00000000 */   nop
    /* 8C718 8009DF08 2400BF8F */  lw         $ra, 0x24($sp)
    /* 8C71C 8009DF0C 2000B28F */  lw         $s2, 0x20($sp)
    /* 8C720 8009DF10 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8C724 8009DF14 1800B08F */  lw         $s0, 0x18($sp)
    /* 8C728 8009DF18 0800E003 */  jr         $ra
    /* 8C72C 8009DF1C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009DE0C
