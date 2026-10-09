nonmatching func_800A26DC, 0x1DC

glabel func_800A26DC
    /* 90EEC 800A26DC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 90EF0 800A26E0 3000BFAF */  sw         $ra, 0x30($sp)
    /* 90EF4 800A26E4 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 90EF8 800A26E8 2800B6AF */  sw         $s6, 0x28($sp)
    /* 90EFC 800A26EC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 90F00 800A26F0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 90F04 800A26F4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 90F08 800A26F8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 90F0C 800A26FC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 90F10 800A2700 E0D6020C */  jal        func_800B5B80
    /* 90F14 800A2704 1000B0AF */   sw        $s0, 0x10($sp)
    /* 90F18 800A2708 00F4043C */  lui        $a0, (0xF4000001 >> 16)
    /* 90F1C 800A270C 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
    /* 90F20 800A2710 04000524 */  addiu      $a1, $zero, 0x4
    /* 90F24 800A2714 00100624 */  addiu      $a2, $zero, 0x1000
    /* 90F28 800A2718 0A80073C */  lui        $a3, %hi(func_800A2490)
    /* 90F2C 800A271C BCD6020C */  jal        func_800B5AF0
    /* 90F30 800A2720 9024E724 */   addiu     $a3, $a3, %lo(func_800A2490)
    /* 90F34 800A2724 00F4043C */  lui        $a0, (0xF4000001 >> 16)
    /* 90F38 800A2728 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
    /* 90F3C 800A272C 00800534 */  ori        $a1, $zero, 0x8000
    /* 90F40 800A2730 00100624 */  addiu      $a2, $zero, 0x1000
    /* 90F44 800A2734 0A80073C */  lui        $a3, %hi(func_800A24CC)
    /* 90F48 800A2738 CC24E724 */  addiu      $a3, $a3, %lo(func_800A24CC)
    /* 90F4C 800A273C 0D80173C */  lui        $s7, %hi(D_800D6080)
    /* 90F50 800A2740 BCD6020C */  jal        func_800B5AF0
    /* 90F54 800A2744 8060E2AE */   sw        $v0, %lo(D_800D6080)($s7)
    /* 90F58 800A2748 00F4043C */  lui        $a0, (0xF4000001 >> 16)
    /* 90F5C 800A274C 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
    /* 90F60 800A2750 00010524 */  addiu      $a1, $zero, 0x100
    /* 90F64 800A2754 00100624 */  addiu      $a2, $zero, 0x1000
    /* 90F68 800A2758 0A80073C */  lui        $a3, %hi(func_800A2510)
    /* 90F6C 800A275C 1025E724 */  addiu      $a3, $a3, %lo(func_800A2510)
    /* 90F70 800A2760 0D80163C */  lui        $s6, %hi(D_800D60B8)
    /* 90F74 800A2764 BCD6020C */  jal        func_800B5AF0
    /* 90F78 800A2768 B860C2AE */   sw        $v0, %lo(D_800D60B8)($s6)
    /* 90F7C 800A276C 00F4043C */  lui        $a0, (0xF4000001 >> 16)
    /* 90F80 800A2770 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
    /* 90F84 800A2774 00200524 */  addiu      $a1, $zero, 0x2000
    /* 90F88 800A2778 00100624 */  addiu      $a2, $zero, 0x1000
    /* 90F8C 800A277C 0A80073C */  lui        $a3, %hi(func_800A2554)
    /* 90F90 800A2780 5425E724 */  addiu      $a3, $a3, %lo(func_800A2554)
    /* 90F94 800A2784 0D80153C */  lui        $s5, %hi(D_800D6078)
    /* 90F98 800A2788 BCD6020C */  jal        func_800B5AF0
    /* 90F9C 800A278C 7860A2AE */   sw        $v0, %lo(D_800D6078)($s5)
    /* 90FA0 800A2790 00F0043C */  lui        $a0, (0xF0000011 >> 16)
    /* 90FA4 800A2794 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
    /* 90FA8 800A2798 04000524 */  addiu      $a1, $zero, 0x4
    /* 90FAC 800A279C 00100624 */  addiu      $a2, $zero, 0x1000
    /* 90FB0 800A27A0 0A80073C */  lui        $a3, %hi(func_800A2598)
    /* 90FB4 800A27A4 9825E724 */  addiu      $a3, $a3, %lo(func_800A2598)
    /* 90FB8 800A27A8 0D80143C */  lui        $s4, %hi(D_800D6088)
    /* 90FBC 800A27AC BCD6020C */  jal        func_800B5AF0
    /* 90FC0 800A27B0 886082AE */   sw        $v0, %lo(D_800D6088)($s4)
    /* 90FC4 800A27B4 00F0043C */  lui        $a0, (0xF0000011 >> 16)
    /* 90FC8 800A27B8 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
    /* 90FCC 800A27BC 00800534 */  ori        $a1, $zero, 0x8000
    /* 90FD0 800A27C0 00100624 */  addiu      $a2, $zero, 0x1000
    /* 90FD4 800A27C4 0A80073C */  lui        $a3, %hi(func_800A25D4)
    /* 90FD8 800A27C8 D425E724 */  addiu      $a3, $a3, %lo(func_800A25D4)
    /* 90FDC 800A27CC 0D80133C */  lui        $s3, %hi(D_800D607C)
    /* 90FE0 800A27D0 BCD6020C */  jal        func_800B5AF0
    /* 90FE4 800A27D4 7C6062AE */   sw        $v0, %lo(D_800D607C)($s3)
    /* 90FE8 800A27D8 00F0043C */  lui        $a0, (0xF0000011 >> 16)
    /* 90FEC 800A27DC 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
    /* 90FF0 800A27E0 00010524 */  addiu      $a1, $zero, 0x100
    /* 90FF4 800A27E4 00100624 */  addiu      $a2, $zero, 0x1000
    /* 90FF8 800A27E8 0A80073C */  lui        $a3, %hi(func_800A2618)
    /* 90FFC 800A27EC 1826E724 */  addiu      $a3, $a3, %lo(func_800A2618)
    /* 91000 800A27F0 0D80123C */  lui        $s2, %hi(D_800D60B0)
    /* 91004 800A27F4 BCD6020C */  jal        func_800B5AF0
    /* 91008 800A27F8 B06042AE */   sw        $v0, %lo(D_800D60B0)($s2)
    /* 9100C 800A27FC 00F0043C */  lui        $a0, (0xF0000011 >> 16)
    /* 91010 800A2800 11008434 */  ori        $a0, $a0, (0xF0000011 & 0xFFFF)
    /* 91014 800A2804 00200524 */  addiu      $a1, $zero, 0x2000
    /* 91018 800A2808 00100624 */  addiu      $a2, $zero, 0x1000
    /* 9101C 800A280C 0A80073C */  lui        $a3, %hi(func_800A265C)
    /* 91020 800A2810 5C26E724 */  addiu      $a3, $a3, %lo(func_800A265C)
    /* 91024 800A2814 0D80113C */  lui        $s1, %hi(D_800D6074)
    /* 91028 800A2818 BCD6020C */  jal        func_800B5AF0
    /* 9102C 800A281C 746022AE */   sw        $v0, %lo(D_800D6074)($s1)
    /* 91030 800A2820 0D80103C */  lui        $s0, %hi(D_800D6084)
    /* 91034 800A2824 E4D6020C */  jal        func_800B5B90
    /* 91038 800A2828 846002AE */   sw        $v0, %lo(D_800D6084)($s0)
    /* 9103C 800A282C 8060E48E */  lw         $a0, %lo(D_800D6080)($s7)
    /* 91040 800A2830 CCD6020C */  jal        func_800B5B30
    /* 91044 800A2834 00000000 */   nop
    /* 91048 800A2838 B860C48E */  lw         $a0, %lo(D_800D60B8)($s6)
    /* 9104C 800A283C CCD6020C */  jal        func_800B5B30
    /* 91050 800A2840 00000000 */   nop
    /* 91054 800A2844 7860A48E */  lw         $a0, %lo(D_800D6078)($s5)
    /* 91058 800A2848 CCD6020C */  jal        func_800B5B30
    /* 9105C 800A284C 00000000 */   nop
    /* 91060 800A2850 8860848E */  lw         $a0, %lo(D_800D6088)($s4)
    /* 91064 800A2854 CCD6020C */  jal        func_800B5B30
    /* 91068 800A2858 00000000 */   nop
    /* 9106C 800A285C 7C60648E */  lw         $a0, %lo(D_800D607C)($s3)
    /* 91070 800A2860 CCD6020C */  jal        func_800B5B30
    /* 91074 800A2864 00000000 */   nop
    /* 91078 800A2868 B060448E */  lw         $a0, %lo(D_800D60B0)($s2)
    /* 9107C 800A286C CCD6020C */  jal        func_800B5B30
    /* 91080 800A2870 00000000 */   nop
    /* 91084 800A2874 7460248E */  lw         $a0, %lo(D_800D6074)($s1)
    /* 91088 800A2878 CCD6020C */  jal        func_800B5B30
    /* 9108C 800A287C 00000000 */   nop
    /* 91090 800A2880 8460048E */  lw         $a0, %lo(D_800D6084)($s0)
    /* 91094 800A2884 CCD6020C */  jal        func_800B5B30
    /* 91098 800A2888 00000000 */   nop
    /* 9109C 800A288C 3000BF8F */  lw         $ra, 0x30($sp)
    /* 910A0 800A2890 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 910A4 800A2894 2800B68F */  lw         $s6, 0x28($sp)
    /* 910A8 800A2898 2400B58F */  lw         $s5, 0x24($sp)
    /* 910AC 800A289C 2000B48F */  lw         $s4, 0x20($sp)
    /* 910B0 800A28A0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 910B4 800A28A4 1800B28F */  lw         $s2, 0x18($sp)
    /* 910B8 800A28A8 1400B18F */  lw         $s1, 0x14($sp)
    /* 910BC 800A28AC 1000B08F */  lw         $s0, 0x10($sp)
    /* 910C0 800A28B0 0800E003 */  jr         $ra
    /* 910C4 800A28B4 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800A26DC
