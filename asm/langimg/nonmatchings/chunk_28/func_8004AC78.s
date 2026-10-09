nonmatching func_8004AC78, 0x138

glabel func_8004AC78
    /* 39488 8004AC78 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3948C 8004AC7C 0D80013C */  lui        $at, %hi(D_800D5F38)
    /* 39490 8004AC80 385F24AC */  sw         $a0, %lo(D_800D5F38)($at)
    /* 39494 8004AC84 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 39498 8004AC88 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 3949C 8004AC8C 01000524 */  addiu      $a1, $zero, 0x1
    /* 394A0 8004AC90 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 394A4 8004AC94 08000724 */  addiu      $a3, $zero, 0x8
    /* 394A8 8004AC98 3000B4AF */  sw         $s4, 0x30($sp)
    /* 394AC 8004AC9C 02001424 */  addiu      $s4, $zero, 0x2
    /* 394B0 8004ACA0 3400B5AF */  sw         $s5, 0x34($sp)
    /* 394B4 8004ACA4 01001524 */  addiu      $s5, $zero, 0x1
    /* 394B8 8004ACA8 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 394BC 8004ACAC 07001324 */  addiu      $s3, $zero, 0x7
    /* 394C0 8004ACB0 0D80023C */  lui        $v0, %hi(D_800CB2D8)
    /* 394C4 8004ACB4 D8B24224 */  addiu      $v0, $v0, %lo(D_800CB2D8)
    /* 394C8 8004ACB8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 394CC 8004ACBC 10001024 */  addiu      $s0, $zero, 0x10
    /* 394D0 8004ACC0 2800B2AF */  sw         $s2, 0x28($sp)
    /* 394D4 8004ACC4 12001224 */  addiu      $s2, $zero, 0x12
    /* 394D8 8004ACC8 3800BFAF */  sw         $ra, 0x38($sp)
    /* 394DC 8004ACCC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 394E0 8004ACD0 0D80013C */  lui        $at, %hi(D_800D5F6C)
    /* 394E4 8004ACD4 6C5F34AC */  sw         $s4, %lo(D_800D5F6C)($at)
    /* 394E8 8004ACD8 0D80013C */  lui        $at, %hi(D_800D5F44)
    /* 394EC 8004ACDC 445F35AC */  sw         $s5, %lo(D_800D5F44)($at)
    /* 394F0 8004ACE0 0D80013C */  lui        $at, %hi(D_800D5F34)
    /* 394F4 8004ACE4 345F20AC */  sw         $zero, %lo(D_800D5F34)($at)
    /* 394F8 8004ACE8 0D80013C */  lui        $at, %hi(D_800D5F40)
    /* 394FC 8004ACEC 405F33AC */  sw         $s3, %lo(D_800D5F40)($at)
    /* 39500 8004ACF0 0D80013C */  lui        $at, %hi(D_800D5F3C)
    /* 39504 8004ACF4 3C5F20AC */  sw         $zero, %lo(D_800D5F3C)($at)
    /* 39508 8004ACF8 0D80013C */  lui        $at, %hi(D_800D5F30)
    /* 3950C 8004ACFC 305F20AC */  sw         $zero, %lo(D_800D5F30)($at)
    /* 39510 8004AD00 0D80013C */  lui        $at, %hi(D_800D5F4C)
    /* 39514 8004AD04 4C5F20AC */  sw         $zero, %lo(D_800D5F4C)($at)
    /* 39518 8004AD08 0D80013C */  lui        $at, %hi(D_800D5F50)
    /* 3951C 8004AD0C 505F20AC */  sw         $zero, %lo(D_800D5F50)($at)
    /* 39520 8004AD10 0D80013C */  lui        $at, %hi(D_800D5F58)
    /* 39524 8004AD14 585F20AC */  sw         $zero, %lo(D_800D5F58)($at)
    /* 39528 8004AD18 D06B80AF */  sw         $zero, %gp_rel(D_800CB2C0)($gp)
    /* 3952C 8004AD1C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 39530 8004AD20 1400B0AF */  sw         $s0, 0x14($sp)
    /* 39534 8004AD24 1800B2AF */  sw         $s2, 0x18($sp)
    /* 39538 8004AD28 5A14010C */  jal        func_80045168
    /* 3953C 8004AD2C 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* 39540 8004AD30 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 39544 8004AD34 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 39548 8004AD38 02000524 */  addiu      $a1, $zero, 0x2
    /* 3954C 8004AD3C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 39550 8004AD40 02000724 */  addiu      $a3, $zero, 0x2
    /* 39554 8004AD44 0D80113C */  lui        $s1, %hi(D_800CB2C0)
    /* 39558 8004AD48 C0B23126 */  addiu      $s1, $s1, %lo(D_800CB2C0)
    /* 3955C 8004AD4C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 39560 8004AD50 1400B4AF */  sw         $s4, 0x14($sp)
    /* 39564 8004AD54 1800B1AF */  sw         $s1, 0x18($sp)
    /* 39568 8004AD58 5A14010C */  jal        func_80045168
    /* 3956C 8004AD5C 1C00B3AF */   sw        $s3, 0x1C($sp)
    /* 39570 8004AD60 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 39574 8004AD64 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 39578 8004AD68 02000524 */  addiu      $a1, $zero, 0x2
    /* 3957C 8004AD6C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 39580 8004AD70 02000724 */  addiu      $a3, $zero, 0x2
    /* 39584 8004AD74 1000B2AF */  sw         $s2, 0x10($sp)
    /* 39588 8004AD78 1400B5AF */  sw         $s5, 0x14($sp)
    /* 3958C 8004AD7C 1800B1AF */  sw         $s1, 0x18($sp)
    /* 39590 8004AD80 5A14010C */  jal        func_80045168
    /* 39594 8004AD84 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* 39598 8004AD88 3800BF8F */  lw         $ra, 0x38($sp)
    /* 3959C 8004AD8C 3400B58F */  lw         $s5, 0x34($sp)
    /* 395A0 8004AD90 3000B48F */  lw         $s4, 0x30($sp)
    /* 395A4 8004AD94 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 395A8 8004AD98 2800B28F */  lw         $s2, 0x28($sp)
    /* 395AC 8004AD9C 2400B18F */  lw         $s1, 0x24($sp)
    /* 395B0 8004ADA0 2000B08F */  lw         $s0, 0x20($sp)
    /* 395B4 8004ADA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 395B8 8004ADA8 0800E003 */  jr         $ra
    /* 395BC 8004ADAC 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8004AC78
