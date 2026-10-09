nonmatching SpuClearReverbWorkArea, 0x1A0

glabel SpuClearReverbWorkArea
    /* A2724 800B3F14 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A2728 800B3F18 1800B0AF */  sw         $s0, 0x18($sp)
    /* A272C 800B3F1C 21808000 */  addu       $s0, $a0, $zero
    /* A2730 800B3F20 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* A2734 800B3F24 0A00022E */  sltiu      $v0, $s0, 0xA
    /* A2738 800B3F28 3000BFAF */  sw         $ra, 0x30($sp)
    /* A273C 800B3F2C 2800B4AF */  sw         $s4, 0x28($sp)
    /* A2740 800B3F30 2400B3AF */  sw         $s3, 0x24($sp)
    /* A2744 800B3F34 2000B2AF */  sw         $s2, 0x20($sp)
    /* A2748 800B3F38 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A274C 800B3F3C 1000A0AF */  sw         $zero, 0x10($sp)
    /* A2750 800B3F40 0A004010 */  beqz       $v0, .L800B3F6C
    /* A2754 800B3F44 21A80000 */   addu      $s5, $zero, $zero
    /* A2758 800B3F48 0C80033C */  lui        $v1, %hi(_spu_rev_startaddr)
    /* A275C 800B3F4C 40436324 */  addiu      $v1, $v1, %lo(_spu_rev_startaddr)
    /* A2760 800B3F50 80101000 */  sll        $v0, $s0, 2
    /* A2764 800B3F54 21884300 */  addu       $s1, $v0, $v1
    /* A2768 800B3F58 0000248E */  lw         $a0, 0x0($s1)
    /* A276C 800B3F5C E5CE020C */  jal        _SpuIsInAllocateArea_
    /* A2770 800B3F60 00000000 */   nop
    /* A2774 800B3F64 03004010 */  beqz       $v0, .L800B3F74
    /* A2778 800B3F68 00000000 */   nop
  .L800B3F6C:
    /* A277C 800B3F6C 21D00208 */  j          .L800B4084
    /* A2780 800B3F70 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B3F74:
    /* A2784 800B3F74 08000016 */  bnez       $s0, .L800B3F98
    /* A2788 800B3F78 0100023C */   lui       $v0, (0x10000 >> 16)
    /* A278C 800B3F7C 0C80023C */  lui        $v0, %hi(_spu_mem_mode_plus)
    /* A2790 800B3F80 D83D428C */  lw         $v0, %lo(_spu_mem_mode_plus)($v0)
    /* A2794 800B3F84 10000324 */  addiu      $v1, $zero, 0x10
    /* A2798 800B3F88 04884300 */  sllv       $s1, $v1, $v0
    /* A279C 800B3F8C F0FF0334 */  ori        $v1, $zero, 0xFFF0
    /* A27A0 800B3F90 ECCF0208 */  j          .L800B3FB0
    /* A27A4 800B3F94 04904300 */   sllv      $s2, $v1, $v0
  .L800B3F98:
    /* A27A8 800B3F98 0000248E */  lw         $a0, 0x0($s1)
    /* A27AC 800B3F9C 0C80033C */  lui        $v1, %hi(_spu_mem_mode_plus)
    /* A27B0 800B3FA0 D83D638C */  lw         $v1, %lo(_spu_mem_mode_plus)($v1)
    /* A27B4 800B3FA4 23104400 */  subu       $v0, $v0, $a0
    /* A27B8 800B3FA8 04886200 */  sllv       $s1, $v0, $v1
    /* A27BC 800B3FAC 04906400 */  sllv       $s2, $a0, $v1
  .L800B3FB0:
    /* A27C0 800B3FB0 0C80143C */  lui        $s4, %hi(_spu_transMode)
    /* A27C4 800B3FB4 CC3D948E */  lw         $s4, %lo(_spu_transMode)($s4)
    /* A27C8 800B3FB8 01000224 */  addiu      $v0, $zero, 0x1
    /* A27CC 800B3FBC 04008216 */  bne        $s4, $v0, .L800B3FD0
    /* A27D0 800B3FC0 00000000 */   nop
    /* A27D4 800B3FC4 0C80013C */  lui        $at, %hi(_spu_transMode)
    /* A27D8 800B3FC8 CC3D20AC */  sw         $zero, %lo(_spu_transMode)($at)
    /* A27DC 800B3FCC 01001524 */  addiu      $s5, $zero, 0x1
  .L800B3FD0:
    /* A27E0 800B3FD0 0C80023C */  lui        $v0, %hi(_spu_transferCallback)
    /* A27E4 800B3FD4 E83D428C */  lw         $v0, %lo(_spu_transferCallback)($v0)
    /* A27E8 800B3FD8 00000000 */  nop
    /* A27EC 800B3FDC 07004010 */  beqz       $v0, .L800B3FFC
    /* A27F0 800B3FE0 01001324 */   addiu     $s3, $zero, 0x1
    /* A27F4 800B3FE4 0C80023C */  lui        $v0, %hi(_spu_transferCallback)
    /* A27F8 800B3FE8 E83D428C */  lw         $v0, %lo(_spu_transferCallback)($v0)
    /* A27FC 800B3FEC 00000000 */  nop
    /* A2800 800B3FF0 1000A2AF */  sw         $v0, 0x10($sp)
    /* A2804 800B3FF4 0C80013C */  lui        $at, %hi(_spu_transferCallback)
    /* A2808 800B3FF8 E83D20AC */  sw         $zero, %lo(_spu_transferCallback)($at)
  .L800B3FFC:
    /* A280C 800B3FFC 0104222E */  sltiu      $v0, $s1, 0x401
  .L800B4000:
    /* A2810 800B4000 03004010 */  beqz       $v0, .L800B4010
    /* A2814 800B4004 00041024 */   addiu     $s0, $zero, 0x400
    /* A2818 800B4008 21802002 */  addu       $s0, $s1, $zero
    /* A281C 800B400C 21980000 */  addu       $s3, $zero, $zero
  .L800B4010:
    /* A2820 800B4010 02000424 */  addiu      $a0, $zero, 0x2
    /* A2824 800B4014 46CD020C */  jal        _spu_t
    /* A2828 800B4018 21284002 */   addu      $a1, $s2, $zero
    /* A282C 800B401C 46CD020C */  jal        _spu_t
    /* A2830 800B4020 01000424 */   addiu     $a0, $zero, 0x1
    /* A2834 800B4024 03000424 */  addiu      $a0, $zero, 0x3
    /* A2838 800B4028 0C80053C */  lui        $a1, %hi(_spu_zerobuf)
    /* A283C 800B402C 203EA524 */  addiu      $a1, $a1, %lo(_spu_zerobuf)
    /* A2840 800B4030 46CD020C */  jal        _spu_t
    /* A2844 800B4034 21300002 */   addu      $a2, $s0, $zero
    /* A2848 800B4038 0C80043C */  lui        $a0, %hi(_spu_EVdma)
    /* A284C 800B403C 383D848C */  lw         $a0, %lo(_spu_EVdma)($a0)
    /* A2850 800B4040 00FC3126 */  addiu      $s1, $s1, -0x400
    /* A2854 800B4044 C4D6020C */  jal        WaitEvent
    /* A2858 800B4048 00045226 */   addiu     $s2, $s2, 0x400
    /* A285C 800B404C ECFF6016 */  bnez       $s3, .L800B4000
    /* A2860 800B4050 0104222E */   sltiu     $v0, $s1, 0x401
    /* A2864 800B4054 0300A012 */  beqz       $s5, .L800B4064
    /* A2868 800B4058 00000000 */   nop
    /* A286C 800B405C 0C80013C */  lui        $at, %hi(_spu_transMode)
    /* A2870 800B4060 CC3D34AC */  sw         $s4, %lo(_spu_transMode)($at)
  .L800B4064:
    /* A2874 800B4064 1000A28F */  lw         $v0, 0x10($sp)
    /* A2878 800B4068 00000000 */  nop
    /* A287C 800B406C 05004010 */  beqz       $v0, .L800B4084
    /* A2880 800B4070 21100000 */   addu      $v0, $zero, $zero
    /* A2884 800B4074 1000A28F */  lw         $v0, 0x10($sp)
    /* A2888 800B4078 0C80013C */  lui        $at, %hi(_spu_transferCallback)
    /* A288C 800B407C E83D22AC */  sw         $v0, %lo(_spu_transferCallback)($at)
    /* A2890 800B4080 21100000 */  addu       $v0, $zero, $zero
  .L800B4084:
    /* A2894 800B4084 3000BF8F */  lw         $ra, 0x30($sp)
    /* A2898 800B4088 2C00B58F */  lw         $s5, 0x2C($sp)
    /* A289C 800B408C 2800B48F */  lw         $s4, 0x28($sp)
    /* A28A0 800B4090 2400B38F */  lw         $s3, 0x24($sp)
    /* A28A4 800B4094 2000B28F */  lw         $s2, 0x20($sp)
    /* A28A8 800B4098 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A28AC 800B409C 1800B08F */  lw         $s0, 0x18($sp)
    /* A28B0 800B40A0 0800E003 */  jr         $ra
    /* A28B4 800B40A4 3800BD27 */   addiu     $sp, $sp, 0x38
    /* A28B8 800B40A8 00000000 */  nop
    /* A28BC 800B40AC 00000000 */  nop
    /* A28C0 800B40B0 00000000 */  nop
endlabel SpuClearReverbWorkArea
