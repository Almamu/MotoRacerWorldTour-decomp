/* Handwritten function */
nonmatching __SN_ENTRY_POINT, 0xA8

glabel __SN_ENTRY_POINT
    /* 4018 80136B4C 1C80023C */  lui        $v0, %hi(D_801C0A58)
    /* 401C 80136B50 580A4224 */  addiu      $v0, $v0, %lo(D_801C0A58)
    /* 4020 80136B54 1D80033C */  lui        $v1, %hi(D_801CFDD8)
    /* 4024 80136B58 D8FD6324 */  addiu      $v1, $v1, %lo(D_801CFDD8)
  .L80136B5C:
    /* 4028 80136B5C 000040AC */  sw         $zero, 0x0($v0)
    /* 402C 80136B60 04004224 */  addiu      $v0, $v0, 0x4
    /* 4030 80136B64 2B084300 */  sltu       $at, $v0, $v1
    /* 4034 80136B68 FCFF2014 */  bnez       $at, .L80136B5C
    /* 4038 80136B6C 00000000 */   nop
    /* 403C 80136B70 1580023C */  lui        $v0, %hi(D_8014D478)
    /* 4040 80136B74 78D4428C */  lw         $v0, %lo(D_8014D478)($v0)
    /* 4044 80136B78 00000000 */  nop
    /* 4048 80136B7C F8FF4220 */  addi       $v0, $v0, -0x8 /* handwritten instruction */
    /* 404C 80136B80 0080083C */  lui        $t0, %hi(D_80000004)
    /* 4050 80136B84 25E84800 */  or         $sp, $v0, $t0
    /* 4054 80136B88 1D80043C */  lui        $a0, %hi(D_801CFDD8)
    /* 4058 80136B8C D8FD8424 */  addiu      $a0, $a0, %lo(D_801CFDD8)
    /* 405C 80136B90 C0200400 */  sll        $a0, $a0, 3
    /* 4060 80136B94 C2200400 */  srl        $a0, $a0, 3
    /* 4064 80136B98 1580033C */  lui        $v1, %hi(D_8014D47C)
    /* 4068 80136B9C 7CD4638C */  lw         $v1, %lo(D_8014D47C)($v1)
    /* 406C 80136BA0 00000000 */  nop
    /* 4070 80136BA4 23284300 */  subu       $a1, $v0, $v1
    /* 4074 80136BA8 2328A400 */  subu       $a1, $a1, $a0
    /* 4078 80136BAC 1C80013C */  lui        $at, %hi(D_801BD88C)
    /* 407C 80136BB0 8CD825AC */  sw         $a1, %lo(D_801BD88C)($at)
    /* 4080 80136BB4 25208800 */  or         $a0, $a0, $t0
    /* 4084 80136BB8 1C80013C */  lui        $at, %hi(D_801BD888)
    /* 4088 80136BBC 88D824AC */  sw         $a0, %lo(D_801BD888)($at)
    /* 408C 80136BC0 1C80013C */  lui        $at, %hi(D_801C0A58)
    /* 4090 80136BC4 580A3FAC */  sw         $ra, %lo(D_801C0A58)($at)
    /* 4094 80136BC8 1C801C3C */  lui        $gp, %hi(_gp)
    /* 4098 80136BCC 540A9C27 */  addiu      $gp, $gp, %lo(_gp)
    /* 409C 80136BD0 21F0A003 */  addu       $fp, $sp, $zero
    /* 40A0 80136BD4 F228050C */  jal        func_8014A3C8
    /* 40A4 80136BD8 04008420 */   addi      $a0, $a0, %lo(D_80000004) /* handwritten instruction */
    /* 40A8 80136BDC 1C801F3C */  lui        $ra, %hi(D_801C0A58)
    /* 40AC 80136BE0 580AFF8F */  lw         $ra, %lo(D_801C0A58)($ra)
    /* 40B0 80136BE4 00000000 */  nop
    /* 40B4 80136BE8 8AD4040C */  jal        func_80135228
    /* 40B8 80136BEC 00000000 */   nop
    /* 40BC 80136BF0 4D000000 */  break      0, 1
endlabel __SN_ENTRY_POINT
