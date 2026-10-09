nonmatching func_80012A88, 0x68

glabel func_80012A88
    /* 1298 80012A88 1800828F */  lw         $v0, %gp_rel(D_800C4708)($gp)
    /* 129C 80012A8C 00000000 */  nop
    /* 12A0 80012A90 1800A200 */  mult       $a1, $v0
    /* 12A4 80012A94 0400838F */  lw         $v1, %gp_rel(D_800C46F4)($gp)
    /* 12A8 80012A98 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 12AC 80012A9C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 12B0 80012AA0 21106600 */  addu       $v0, $v1, $a2
    /* 12B4 80012AA4 12280000 */  mflo       $a1
    /* 12B8 80012AA8 00004890 */  lbu        $t0, 0x0($v0)
    /* 12BC 80012AAC 00000000 */  nop
    /* 12C0 80012AB0 1800A800 */  mult       $a1, $t0
    /* 12C4 80012AB4 7F006324 */  addiu      $v1, $v1, 0x7F
    /* 12C8 80012AB8 23186600 */  subu       $v1, $v1, $a2
    /* 12CC 80012ABC 12400000 */  mflo       $t0
    /* 12D0 80012AC0 00006290 */  lbu        $v0, 0x0($v1)
    /* 12D4 80012AC4 2130E000 */  addu       $a2, $a3, $zero
    /* 12D8 80012AC8 1800A200 */  mult       $a1, $v0
    /* 12DC 80012ACC 21288000 */  addu       $a1, $a0, $zero
    /* 12E0 80012AD0 3000A48F */  lw         $a0, 0x30($sp)
    /* 12E4 80012AD4 12380000 */  mflo       $a3
    /* 12E8 80012AD8 4149000C */  jal        func_80012504
    /* 12EC 80012ADC 1000A8AF */   sw        $t0, 0x10($sp)
    /* 12F0 80012AE0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 12F4 80012AE4 00000000 */  nop
    /* 12F8 80012AE8 0800E003 */  jr         $ra
    /* 12FC 80012AEC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80012A88
