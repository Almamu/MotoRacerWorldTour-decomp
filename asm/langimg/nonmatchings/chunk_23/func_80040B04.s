nonmatching func_80040B04, 0x130

glabel func_80040B04
    /* 2F314 80040B04 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2F318 80040B08 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2F31C 80040B0C 21908000 */  addu       $s2, $a0, $zero
    /* 2F320 80040B10 0C80053C */  lui        $a1, %hi(D_800C4FC8)
    /* 2F324 80040B14 0D80043C */  lui        $a0, %hi(D_800C8D8C)
    /* 2F328 80040B18 8C8D848C */  lw         $a0, %lo(D_800C8D8C)($a0)
    /* 2F32C 80040B1C C84FA524 */  addiu      $a1, $a1, %lo(D_800C4FC8)
    /* 2F330 80040B20 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2F334 80040B24 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2F338 80040B28 7155020C */  jal        func_800955C4
    /* 2F33C 80040B2C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2F340 80040B30 FFFF4530 */  andi       $a1, $v0, 0xFFFF
    /* 2F344 80040B34 0D80103C */  lui        $s0, %hi(D_800CC030)
    /* 2F348 80040B38 30C01026 */  addiu      $s0, $s0, %lo(D_800CC030)
    /* 2F34C 80040B3C 4400048E */  lw         $a0, 0x44($s0)
    /* 2F350 80040B40 ABFC010C */  jal        func_8007F2AC
    /* 2F354 80040B44 5E010624 */   addiu     $a2, $zero, 0x15E
    /* 2F358 80040B48 0C80053C */  lui        $a1, %hi(D_800C4FD4)
    /* 2F35C 80040B4C 0D80043C */  lui        $a0, %hi(D_800C8D8C)
    /* 2F360 80040B50 8C8D848C */  lw         $a0, %lo(D_800C8D8C)($a0)
    /* 2F364 80040B54 7155020C */  jal        func_800955C4
    /* 2F368 80040B58 D44FA524 */   addiu     $a1, $a1, %lo(D_800C4FD4)
    /* 2F36C 80040B5C FFFF5130 */  andi       $s1, $v0, 0xFFFF
    /* 2F370 80040B60 21282002 */  addu       $a1, $s1, $zero
    /* 2F374 80040B64 4800048E */  lw         $a0, 0x48($s0)
    /* 2F378 80040B68 ABFC010C */  jal        func_8007F2AC
    /* 2F37C 80040B6C E8030624 */   addiu     $a2, $zero, 0x3E8
    /* 2F380 80040B70 21282002 */  addu       $a1, $s1, $zero
    /* 2F384 80040B74 4C00048E */  lw         $a0, 0x4C($s0)
    /* 2F388 80040B78 ABFC010C */  jal        func_8007F2AC
    /* 2F38C 80040B7C E8030624 */   addiu     $a2, $zero, 0x3E8
    /* 2F390 80040B80 709C020C */  jal        __builtin_new
    /* 2F394 80040B84 0C000424 */   addiu     $a0, $zero, 0xC
    /* 2F398 80040B88 1B04020C */  jal        func_8008106C
    /* 2F39C 80040B8C 21204000 */   addu      $a0, $v0, $zero
    /* 2F3A0 80040B90 21204000 */  addu       $a0, $v0, $zero
    /* 2F3A4 80040B94 0D80013C */  lui        $at, %hi(D_800C89E8)
    /* 2F3A8 80040B98 E88922AC */  sw         $v0, %lo(D_800C89E8)($at)
    /* 2F3AC 80040B9C 5504020C */  jal        func_80081154
    /* 2F3B0 80040BA0 05000524 */   addiu     $a1, $zero, 0x5
    /* 2F3B4 80040BA4 0D80043C */  lui        $a0, %hi(D_800C89E8)
    /* 2F3B8 80040BA8 E889848C */  lw         $a0, %lo(D_800C89E8)($a0)
    /* 2F3BC 80040BAC 4400058E */  lw         $a1, 0x44($s0)
    /* 2F3C0 80040BB0 7104020C */  jal        func_800811C4
    /* 2F3C4 80040BB4 21300000 */   addu      $a2, $zero, $zero
    /* 2F3C8 80040BB8 0D80043C */  lui        $a0, %hi(D_800C89E8)
    /* 2F3CC 80040BBC E889848C */  lw         $a0, %lo(D_800C89E8)($a0)
    /* 2F3D0 80040BC0 4800058E */  lw         $a1, 0x48($s0)
    /* 2F3D4 80040BC4 7104020C */  jal        func_800811C4
    /* 2F3D8 80040BC8 21300000 */   addu      $a2, $zero, $zero
    /* 2F3DC 80040BCC 0D80043C */  lui        $a0, %hi(D_800C89E8)
    /* 2F3E0 80040BD0 E889848C */  lw         $a0, %lo(D_800C89E8)($a0)
    /* 2F3E4 80040BD4 4C00058E */  lw         $a1, 0x4C($s0)
    /* 2F3E8 80040BD8 7104020C */  jal        func_800811C4
    /* 2F3EC 80040BDC 21300000 */   addu      $a2, $zero, $zero
    /* 2F3F0 80040BE0 0D80043C */  lui        $a0, %hi(D_800C89E8)
    /* 2F3F4 80040BE4 E889848C */  lw         $a0, %lo(D_800C89E8)($a0)
    /* 2F3F8 80040BE8 4000058E */  lw         $a1, 0x40($s0)
    /* 2F3FC 80040BEC 7104020C */  jal        func_800811C4
    /* 2F400 80040BF0 21300000 */   addu      $a2, $zero, $zero
    /* 2F404 80040BF4 0D80043C */  lui        $a0, %hi(D_800C89E8)
    /* 2F408 80040BF8 E889848C */  lw         $a0, %lo(D_800C89E8)($a0)
    /* 2F40C 80040BFC 5000058E */  lw         $a1, 0x50($s0)
    /* 2F410 80040C00 7104020C */  jal        func_800811C4
    /* 2F414 80040C04 21300000 */   addu      $a2, $zero, $zero
    /* 2F418 80040C08 A000448E */  lw         $a0, 0xA0($s2)
    /* 2F41C 80040C0C 1FED000C */  jal        func_8003B47C
    /* 2F420 80040C10 00000000 */   nop
    /* 2F424 80040C14 6801010C */  jal        func_800405A0
    /* 2F428 80040C18 21204002 */   addu      $a0, $s2, $zero
    /* 2F42C 80040C1C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2F430 80040C20 1800B28F */  lw         $s2, 0x18($sp)
    /* 2F434 80040C24 1400B18F */  lw         $s1, 0x14($sp)
    /* 2F438 80040C28 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F43C 80040C2C 0800E003 */  jr         $ra
    /* 2F440 80040C30 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80040B04
