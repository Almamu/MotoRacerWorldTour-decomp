nonmatching func_8013B938, 0x6C

glabel func_8013B938
    /* 8E04 8013B938 1C80023C */  lui        $v0, %hi(D_801BF008)
    /* 8E08 8013B93C 08F0428C */  lw         $v0, %lo(D_801BF008)($v0)
    /* 8E0C 8013B940 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8E10 8013B944 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8E14 8013B948 21880000 */  addu       $s1, $zero, $zero
    /* 8E18 8013B94C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8E1C 8013B950 1C80103C */  lui        $s0, %hi(D_801BEFE8)
    /* 8E20 8013B954 E8EF1026 */  addiu      $s0, $s0, %lo(D_801BEFE8)
    /* 8E24 8013B958 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8E28 8013B95C 01004224 */  addiu      $v0, $v0, 0x1
    /* 8E2C 8013B960 1C80013C */  lui        $at, %hi(D_801BF008)
    /* 8E30 8013B964 08F022AC */  sw         $v0, %lo(D_801BF008)($at)
  .L8013B968:
    /* 8E34 8013B968 0000028E */  lw         $v0, 0x0($s0)
    /* 8E38 8013B96C 00000000 */  nop
    /* 8E3C 8013B970 03004010 */  beqz       $v0, .L8013B980
    /* 8E40 8013B974 00000000 */   nop
    /* 8E44 8013B978 09F84000 */  jalr       $v0
    /* 8E48 8013B97C 00000000 */   nop
  .L8013B980:
    /* 8E4C 8013B980 01003126 */  addiu      $s1, $s1, 0x1
    /* 8E50 8013B984 0800222A */  slti       $v0, $s1, 0x8
    /* 8E54 8013B988 F7FF4014 */  bnez       $v0, .L8013B968
    /* 8E58 8013B98C 04001026 */   addiu     $s0, $s0, 0x4
    /* 8E5C 8013B990 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8E60 8013B994 1400B18F */  lw         $s1, 0x14($sp)
    /* 8E64 8013B998 1000B08F */  lw         $s0, 0x10($sp)
    /* 8E68 8013B99C 0800E003 */  jr         $ra
    /* 8E6C 8013B9A0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8013B938
