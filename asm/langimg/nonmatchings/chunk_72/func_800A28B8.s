nonmatching func_800A28B8, 0x128

glabel func_800A28B8
    /* 910C8 800A28B8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 910CC 800A28BC 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 910D0 800A28C0 0D80173C */  lui        $s7, %hi(D_800D6080)
    /* 910D4 800A28C4 8060E48E */  lw         $a0, %lo(D_800D6080)($s7)
    /* 910D8 800A28C8 3000BFAF */  sw         $ra, 0x30($sp)
    /* 910DC 800A28CC 2800B6AF */  sw         $s6, 0x28($sp)
    /* 910E0 800A28D0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 910E4 800A28D4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 910E8 800A28D8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 910EC 800A28DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 910F0 800A28E0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 910F4 800A28E4 D0D6020C */  jal        DisableEvent
    /* 910F8 800A28E8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 910FC 800A28EC 0D80163C */  lui        $s6, %hi(D_800D60B8)
    /* 91100 800A28F0 B860C48E */  lw         $a0, %lo(D_800D60B8)($s6)
    /* 91104 800A28F4 D0D6020C */  jal        DisableEvent
    /* 91108 800A28F8 0D80153C */   lui       $s5, %hi(D_800D6078)
    /* 9110C 800A28FC 7860A48E */  lw         $a0, %lo(D_800D6078)($s5)
    /* 91110 800A2900 D0D6020C */  jal        DisableEvent
    /* 91114 800A2904 0D80143C */   lui       $s4, %hi(D_800D6088)
    /* 91118 800A2908 8860848E */  lw         $a0, %lo(D_800D6088)($s4)
    /* 9111C 800A290C D0D6020C */  jal        DisableEvent
    /* 91120 800A2910 0D80133C */   lui       $s3, %hi(D_800D607C)
    /* 91124 800A2914 7C60648E */  lw         $a0, %lo(D_800D607C)($s3)
    /* 91128 800A2918 D0D6020C */  jal        DisableEvent
    /* 9112C 800A291C 0D80123C */   lui       $s2, %hi(D_800D60B0)
    /* 91130 800A2920 B060448E */  lw         $a0, %lo(D_800D60B0)($s2)
    /* 91134 800A2924 D0D6020C */  jal        DisableEvent
    /* 91138 800A2928 0D80113C */   lui       $s1, %hi(D_800D6074)
    /* 9113C 800A292C 7460248E */  lw         $a0, %lo(D_800D6074)($s1)
    /* 91140 800A2930 D0D6020C */  jal        DisableEvent
    /* 91144 800A2934 0D80103C */   lui       $s0, %hi(D_800D6084)
    /* 91148 800A2938 8460048E */  lw         $a0, %lo(D_800D6084)($s0)
    /* 9114C 800A293C D0D6020C */  jal        DisableEvent
    /* 91150 800A2940 00000000 */   nop
    /* 91154 800A2944 E0D6020C */  jal        EnterCriticalSection
    /* 91158 800A2948 00000000 */   nop
    /* 9115C 800A294C 8060E48E */  lw         $a0, %lo(D_800D6080)($s7)
    /* 91160 800A2950 C0D6020C */  jal        CloseEvent
    /* 91164 800A2954 00000000 */   nop
    /* 91168 800A2958 B860C48E */  lw         $a0, %lo(D_800D60B8)($s6)
    /* 9116C 800A295C C0D6020C */  jal        CloseEvent
    /* 91170 800A2960 00000000 */   nop
    /* 91174 800A2964 7860A48E */  lw         $a0, %lo(D_800D6078)($s5)
    /* 91178 800A2968 C0D6020C */  jal        CloseEvent
    /* 9117C 800A296C 00000000 */   nop
    /* 91180 800A2970 8860848E */  lw         $a0, %lo(D_800D6088)($s4)
    /* 91184 800A2974 C0D6020C */  jal        CloseEvent
    /* 91188 800A2978 00000000 */   nop
    /* 9118C 800A297C 7C60648E */  lw         $a0, %lo(D_800D607C)($s3)
    /* 91190 800A2980 C0D6020C */  jal        CloseEvent
    /* 91194 800A2984 00000000 */   nop
    /* 91198 800A2988 B060448E */  lw         $a0, %lo(D_800D60B0)($s2)
    /* 9119C 800A298C C0D6020C */  jal        CloseEvent
    /* 911A0 800A2990 00000000 */   nop
    /* 911A4 800A2994 7460248E */  lw         $a0, %lo(D_800D6074)($s1)
    /* 911A8 800A2998 C0D6020C */  jal        CloseEvent
    /* 911AC 800A299C 00000000 */   nop
    /* 911B0 800A29A0 8460048E */  lw         $a0, %lo(D_800D6084)($s0)
    /* 911B4 800A29A4 C0D6020C */  jal        CloseEvent
    /* 911B8 800A29A8 00000000 */   nop
    /* 911BC 800A29AC E4D6020C */  jal        ExitCriticalSection
    /* 911C0 800A29B0 00000000 */   nop
    /* 911C4 800A29B4 3000BF8F */  lw         $ra, 0x30($sp)
    /* 911C8 800A29B8 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 911CC 800A29BC 2800B68F */  lw         $s6, 0x28($sp)
    /* 911D0 800A29C0 2400B58F */  lw         $s5, 0x24($sp)
    /* 911D4 800A29C4 2000B48F */  lw         $s4, 0x20($sp)
    /* 911D8 800A29C8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 911DC 800A29CC 1800B28F */  lw         $s2, 0x18($sp)
    /* 911E0 800A29D0 1400B18F */  lw         $s1, 0x14($sp)
    /* 911E4 800A29D4 1000B08F */  lw         $s0, 0x10($sp)
    /* 911E8 800A29D8 0800E003 */  jr         $ra
    /* 911EC 800A29DC 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800A28B8
