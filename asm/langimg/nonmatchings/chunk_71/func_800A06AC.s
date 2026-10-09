nonmatching func_800A06AC, 0x160

glabel func_800A06AC
    /* 8EEBC 800A06AC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8EEC0 800A06B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8EEC4 800A06B4 2190A000 */  addu       $s2, $a1, $zero
    /* 8EEC8 800A06B8 2800B6AF */  sw         $s6, 0x28($sp)
    /* 8EECC 800A06BC 21B08000 */  addu       $s6, $a0, $zero
    /* 8EED0 800A06C0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 8EED4 800A06C4 0D80153C */  lui        $s5, %hi(D_800D4788)
    /* 8EED8 800A06C8 8847A48E */  lw         $a0, %lo(D_800D4788)($s5)
    /* 8EEDC 800A06CC 2128C002 */  addu       $a1, $s6, $zero
    /* 8EEE0 800A06D0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 8EEE4 800A06D4 21A00000 */  addu       $s4, $zero, $zero
    /* 8EEE8 800A06D8 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 8EEEC 800A06DC 21B8C000 */  addu       $s7, $a2, $zero
    /* 8EEF0 800A06E0 3000BFAF */  sw         $ra, 0x30($sp)
    /* 8EEF4 800A06E4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8EEF8 800A06E8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8EEFC 800A06EC BF87020C */  jal        func_800A1EFC
    /* 8EF00 800A06F0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 8EF04 800A06F4 0400518C */  lw         $s1, 0x4($v0)
    /* 8EF08 800A06F8 0D004016 */  bnez       $s2, .L800A0730
    /* 8EF0C 800A06FC 2128C002 */   addu      $a1, $s6, $zero
    /* 8EF10 800A0700 87D6020C */  jal        func_800B5A1C
    /* 8EF14 800A0704 01001424 */   addiu     $s4, $zero, 0x1
    /* 8EF18 800A0708 F0FF5024 */  addiu      $s0, $v0, -0x10
    /* 8EF1C 800A070C D3D4020C */  jal        func_800B534C
    /* 8EF20 800A0710 21200002 */   addu      $a0, $s0, $zero
    /* 8EF24 800A0714 21984000 */  addu       $s3, $v0, $zero
    /* 8EF28 800A0718 21807002 */  addu       $s0, $s3, $s0
    /* 8EF2C 800A071C 23801102 */  subu       $s0, $s0, $s1
    /* 8EF30 800A0720 00F81026 */  addiu      $s0, $s0, -0x800
    /* 8EF34 800A0724 FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 8EF38 800A0728 24900202 */  and        $s2, $s0, $v0
    /* 8EF3C 800A072C 2128C002 */  addu       $a1, $s6, $zero
  .L800A0730:
    /* 8EF40 800A0730 21304002 */  addu       $a2, $s2, $zero
    /* 8EF44 800A0734 8847A48E */  lw         $a0, %lo(D_800D4788)($s5)
    /* 8EF48 800A0738 8D88020C */  jal        func_800A2234
    /* 8EF4C 800A073C 21380000 */   addu      $a3, $zero, $zero
    /* 8EF50 800A0740 5353033C */  lui        $v1, (0x53535A4C >> 16)
    /* 8EF54 800A0744 0000428E */  lw         $v0, 0x0($s2)
    /* 8EF58 800A0748 4C5A6334 */  ori        $v1, $v1, (0x53535A4C & 0xFFFF)
    /* 8EF5C 800A074C 17004314 */  bne        $v0, $v1, .L800A07AC
    /* 8EF60 800A0750 00000000 */   nop
    /* 8EF64 800A0754 06008012 */  beqz       $s4, .L800A0770
    /* 8EF68 800A0758 08004426 */   addiu     $a0, $s2, 0x8
    /* 8EF6C 800A075C 0400518E */  lw         $s1, 0x4($s2)
    /* 8EF70 800A0760 6181020C */  jal        func_800A0584
    /* 8EF74 800A0764 21286002 */   addu      $a1, $s3, $zero
    /* 8EF78 800A0768 F0810208 */  j          .L800A07C0
    /* 8EF7C 800A076C 00000000 */   nop
  .L800A0770:
    /* 8EF80 800A0770 21284002 */  addu       $a1, $s2, $zero
    /* 8EF84 800A0774 21302002 */  addu       $a2, $s1, $zero
    /* 8EF88 800A0778 0400508E */  lw         $s0, 0x4($s2)
    /* 8EF8C 800A077C 00EC3126 */  addiu      $s1, $s1, -0x1400
    /* 8EF90 800A0780 FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 8EF94 800A0784 23881102 */  subu       $s1, $s0, $s1
    /* 8EF98 800A0788 24882202 */  and        $s1, $s1, $v0
    /* 8EF9C 800A078C 21885102 */  addu       $s1, $s2, $s1
    /* 8EFA0 800A0790 5681020C */  jal        func_800A0558
    /* 8EFA4 800A0794 21202002 */   addu      $a0, $s1, $zero
    /* 8EFA8 800A0798 08002426 */  addiu      $a0, $s1, 0x8
    /* 8EFAC 800A079C 6181020C */  jal        func_800A0584
    /* 8EFB0 800A07A0 21284002 */   addu      $a1, $s2, $zero
    /* 8EFB4 800A07A4 F0810208 */  j          .L800A07C0
    /* 8EFB8 800A07A8 21880002 */   addu      $s1, $s0, $zero
  .L800A07AC:
    /* 8EFBC 800A07AC 09008012 */  beqz       $s4, .L800A07D4
    /* 8EFC0 800A07B0 21206002 */   addu      $a0, $s3, $zero
    /* 8EFC4 800A07B4 21284002 */  addu       $a1, $s2, $zero
    /* 8EFC8 800A07B8 46D8020C */  jal        func_800B6118
    /* 8EFCC 800A07BC 21302002 */   addu      $a2, $s1, $zero
  .L800A07C0:
    /* 8EFD0 800A07C0 04008012 */  beqz       $s4, .L800A07D4
    /* 8EFD4 800A07C4 21206002 */   addu      $a0, $s3, $zero
    /* 8EFD8 800A07C8 CCD5020C */  jal        func_800B5730
    /* 8EFDC 800A07CC 21282002 */   addu      $a1, $s1, $zero
    /* 8EFE0 800A07D0 21984000 */  addu       $s3, $v0, $zero
  .L800A07D4:
    /* 8EFE4 800A07D4 0200E012 */  beqz       $s7, .L800A07E0
    /* 8EFE8 800A07D8 21106002 */   addu      $v0, $s3, $zero
    /* 8EFEC 800A07DC 0000F1AE */  sw         $s1, 0x0($s7)
  .L800A07E0:
    /* 8EFF0 800A07E0 3000BF8F */  lw         $ra, 0x30($sp)
    /* 8EFF4 800A07E4 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 8EFF8 800A07E8 2800B68F */  lw         $s6, 0x28($sp)
    /* 8EFFC 800A07EC 2400B58F */  lw         $s5, 0x24($sp)
    /* 8F000 800A07F0 2000B48F */  lw         $s4, 0x20($sp)
    /* 8F004 800A07F4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8F008 800A07F8 1800B28F */  lw         $s2, 0x18($sp)
    /* 8F00C 800A07FC 1400B18F */  lw         $s1, 0x14($sp)
    /* 8F010 800A0800 1000B08F */  lw         $s0, 0x10($sp)
    /* 8F014 800A0804 0800E003 */  jr         $ra
    /* 8F018 800A0808 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800A06AC
