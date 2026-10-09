nonmatching func_8001F67C, 0x168

glabel func_8001F67C
    /* DE8C 8001F67C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* DE90 8001F680 6210023C */  lui        $v0, (0x10624DD3 >> 16)
    /* DE94 8001F684 0D80033C */  lui        $v1, %hi(D_800D6100)
    /* DE98 8001F688 0061638C */  lw         $v1, %lo(D_800D6100)($v1)
    /* DE9C 8001F68C D34D4234 */  ori        $v0, $v0, (0x10624DD3 & 0xFFFF)
    /* DEA0 8001F690 2400B5AF */  sw         $s5, 0x24($sp)
    /* DEA4 8001F694 64001524 */  addiu      $s5, $zero, 0x64
    /* DEA8 8001F698 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* DEAC 8001F69C 21B88000 */  addu       $s7, $a0, $zero
    /* DEB0 8001F6A0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* DEB4 8001F6A4 8425F326 */  addiu      $s3, $s7, 0x2584
    /* DEB8 8001F6A8 2800B6AF */  sw         $s6, 0x28($sp)
    /* DEBC 8001F6AC 001B0300 */  sll        $v1, $v1, 12
    /* DEC0 8001F6B0 18006200 */  mult       $v1, $v0
    /* DEC4 8001F6B4 21B00000 */  addu       $s6, $zero, $zero
    /* DEC8 8001F6B8 3000BEAF */  sw         $fp, 0x30($sp)
    /* DECC 8001F6BC 00101E24 */  addiu      $fp, $zero, 0x1000
    /* DED0 8001F6C0 1800B2AF */  sw         $s2, 0x18($sp)
    /* DED4 8001F6C4 AE25F226 */  addiu      $s2, $s7, 0x25AE
    /* DED8 8001F6C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* DEDC 8001F6CC D025F026 */  addiu      $s0, $s7, 0x25D0
    /* DEE0 8001F6D0 3400BFAF */  sw         $ra, 0x34($sp)
    /* DEE4 8001F6D4 2000B4AF */  sw         $s4, 0x20($sp)
    /* DEE8 8001F6D8 1400B1AF */  sw         $s1, 0x14($sp)
    /* DEEC 8001F6DC C31F0300 */  sra        $v1, $v1, 31
    /* DEF0 8001F6E0 10100000 */  mfhi       $v0
    /* DEF4 8001F6E4 83110200 */  sra        $v0, $v0, 6
    /* DEF8 8001F6E8 23A04300 */  subu       $s4, $v0, $v1
  .L8001F6EC:
    /* DEFC 8001F6EC 00005186 */  lh         $s1, 0x0($s2)
    /* DF00 8001F6F0 00000000 */  nop
    /* DF04 8001F6F4 29002012 */  beqz       $s1, .L8001F79C
    /* DF08 8001F6F8 2A109102 */   slt       $v0, $s4, $s1
    /* DF0C 8001F6FC 25004010 */  beqz       $v0, .L8001F794
    /* DF10 8001F700 00000000 */   nop
    /* DF14 8001F704 B8FF058E */  lw         $a1, -0x48($s0)
    /* DF18 8001F708 BCFF078E */  lw         $a3, -0x44($s0)
    /* DF1C 8001F70C C0FF088E */  lw         $t0, -0x40($s0)
    /* DF20 8001F710 0000698E */  lw         $t1, 0x0($s3)
    /* DF24 8001F714 C4FF05AE */  sw         $a1, -0x3C($s0)
    /* DF28 8001F718 C8FF07AE */  sw         $a3, -0x38($s0)
    /* DF2C 8001F71C CCFF08AE */  sw         $t0, -0x34($s0)
    /* DF30 8001F720 0C00248D */  lw         $a0, 0xC($t1)
    /* DF34 8001F724 00000000 */  nop
    /* DF38 8001F728 18009400 */  mult       $a0, $s4
    /* DF3C 8001F72C D0FF028E */  lw         $v0, -0x30($s0)
    /* DF40 8001F730 D4FF068E */  lw         $a2, -0x2C($s0)
    /* DF44 8001F734 D8FF038E */  lw         $v1, -0x28($s0)
    /* DF48 8001F738 2128A200 */  addu       $a1, $a1, $v0
    /* DF4C 8001F73C 2138E600 */  addu       $a3, $a3, $a2
    /* DF50 8001F740 21400301 */  addu       $t0, $t0, $v1
    /* DF54 8001F744 B8FF05AE */  sw         $a1, -0x48($s0)
    /* DF58 8001F748 BCFF07AE */  sw         $a3, -0x44($s0)
    /* DF5C 8001F74C C0FF08AE */  sw         $t0, -0x40($s0)
    /* DF60 8001F750 12200000 */  mflo       $a0
    /* DF64 8001F754 03230400 */  sra        $a0, $a0, 12
    /* DF68 8001F758 2330C400 */  subu       $a2, $a2, $a0
    /* DF6C 8001F75C D4FF06AE */  sw         $a2, -0x2C($s0)
    /* DF70 8001F760 1000258D */  lw         $a1, 0x10($t1)
    /* DF74 8001F764 5D65020C */  jal        func_80099574
    /* DF78 8001F768 1C006426 */   addiu     $a0, $s3, 0x1C
    /* DF7C 8001F76C 0400038E */  lw         $v1, 0x4($s0)
    /* DF80 8001F770 00000000 */  nop
    /* DF84 8001F774 18002302 */  mult       $s1, $v1
    /* DF88 8001F778 0100D626 */  addiu      $s6, $s6, 0x1
    /* DF8C 8001F77C 23883402 */  subu       $s1, $s1, $s4
    /* DF90 8001F780 12180000 */  mflo       $v1
    /* DF94 8001F784 83190300 */  sra        $v1, $v1, 6
    /* DF98 8001F788 2318C303 */  subu       $v1, $fp, $v1
    /* DF9C 8001F78C E67D0008 */  j          .L8001F798
    /* DFA0 8001F790 000003A6 */   sh        $v1, 0x0($s0)
  .L8001F794:
    /* DFA4 8001F794 21880000 */  addu       $s1, $zero, $zero
  .L8001F798:
    /* DFA8 8001F798 000051A6 */  sh         $s1, 0x0($s2)
  .L8001F79C:
    /* DFAC 8001F79C 60001026 */  addiu      $s0, $s0, 0x60
    /* DFB0 8001F7A0 60005226 */  addiu      $s2, $s2, 0x60
    /* DFB4 8001F7A4 FFFFB526 */  addiu      $s5, $s5, -0x1
    /* DFB8 8001F7A8 D0FFA016 */  bnez       $s5, .L8001F6EC
    /* DFBC 8001F7AC 60007326 */   addiu     $s3, $s3, 0x60
    /* DFC0 8001F7B0 3400BF8F */  lw         $ra, 0x34($sp)
    /* DFC4 8001F7B4 3000BE8F */  lw         $fp, 0x30($sp)
    /* DFC8 8001F7B8 0C4BF6A6 */  sh         $s6, 0x4B0C($s7)
    /* DFCC 8001F7BC 2C00B78F */  lw         $s7, 0x2C($sp)
    /* DFD0 8001F7C0 2800B68F */  lw         $s6, 0x28($sp)
    /* DFD4 8001F7C4 2400B58F */  lw         $s5, 0x24($sp)
    /* DFD8 8001F7C8 2000B48F */  lw         $s4, 0x20($sp)
    /* DFDC 8001F7CC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* DFE0 8001F7D0 1800B28F */  lw         $s2, 0x18($sp)
    /* DFE4 8001F7D4 1400B18F */  lw         $s1, 0x14($sp)
    /* DFE8 8001F7D8 1000B08F */  lw         $s0, 0x10($sp)
    /* DFEC 8001F7DC 0800E003 */  jr         $ra
    /* DFF0 8001F7E0 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8001F67C
