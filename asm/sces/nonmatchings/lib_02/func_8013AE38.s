nonmatching func_8013AE38, 0x8C

glabel func_8013AE38
    /* 8304 8013AE38 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8308 8013AE3C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 830C 8013AE40 21888000 */  addu       $s1, $a0, $zero
    /* 8310 8013AE44 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8314 8013AE48 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8318 8013AE4C D6EB040C */  jal        func_8013AF58
    /* 831C 8013AE50 2180A000 */   addu      $s0, $a1, $zero
    /* 8320 8013AE54 1C80033C */  lui        $v1, %hi(D_801BDEC0)
    /* 8324 8013AE58 C0DE638C */  lw         $v1, %lo(D_801BDEC0)($v1)
    /* 8328 8013AE5C 00000000 */  nop
    /* 832C 8013AE60 0000628C */  lw         $v0, 0x0($v1)
    /* 8330 8013AE64 42811000 */  srl        $s0, $s0, 5
    /* 8334 8013AE68 88004234 */  ori        $v0, $v0, 0x88
    /* 8338 8013AE6C 000062AC */  sw         $v0, 0x0($v1)
    /* 833C 8013AE70 1C80023C */  lui        $v0, %hi(D_801BDE9C)
    /* 8340 8013AE74 9CDE428C */  lw         $v0, %lo(D_801BDE9C)($v0)
    /* 8344 8013AE78 00841000 */  sll        $s0, $s0, 16
    /* 8348 8013AE7C 000040AC */  sw         $zero, 0x0($v0)
    /* 834C 8013AE80 1C80023C */  lui        $v0, %hi(D_801BDE94)
    /* 8350 8013AE84 94DE428C */  lw         $v0, %lo(D_801BDE94)($v0)
    /* 8354 8013AE88 20001036 */  ori        $s0, $s0, 0x20
    /* 8358 8013AE8C 000051AC */  sw         $s1, 0x0($v0)
    /* 835C 8013AE90 1C80023C */  lui        $v0, %hi(D_801BDE98)
    /* 8360 8013AE94 98DE428C */  lw         $v0, %lo(D_801BDE98)($v0)
    /* 8364 8013AE98 0001033C */  lui        $v1, (0x1000200 >> 16)
    /* 8368 8013AE9C 000050AC */  sw         $s0, 0x0($v0)
    /* 836C 8013AEA0 1C80023C */  lui        $v0, %hi(D_801BDE9C)
    /* 8370 8013AEA4 9CDE428C */  lw         $v0, %lo(D_801BDE9C)($v0)
    /* 8374 8013AEA8 00026334 */  ori        $v1, $v1, (0x1000200 & 0xFFFF)
    /* 8378 8013AEAC 000043AC */  sw         $v1, 0x0($v0)
    /* 837C 8013AEB0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8380 8013AEB4 1400B18F */  lw         $s1, 0x14($sp)
    /* 8384 8013AEB8 1000B08F */  lw         $s0, 0x10($sp)
    /* 8388 8013AEBC 0800E003 */  jr         $ra
    /* 838C 8013AEC0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8013AE38
