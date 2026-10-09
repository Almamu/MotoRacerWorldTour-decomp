nonmatching func_80048A2C, 0x2C8

glabel func_80048A2C
    /* 3723C 80048A2C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 37240 80048A30 1800B2AF */  sw         $s2, 0x18($sp)
    /* 37244 80048A34 21908000 */  addu       $s2, $a0, $zero
    /* 37248 80048A38 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3724C 80048A3C 2400B5AF */  sw         $s5, 0x24($sp)
    /* 37250 80048A40 2000B4AF */  sw         $s4, 0x20($sp)
    /* 37254 80048A44 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 37258 80048A48 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3725C 80048A4C 3113010C */  jal        func_80044CC4
    /* 37260 80048A50 1000B0AF */   sw        $s0, 0x10($sp)
    /* 37264 80048A54 0C80033C */  lui        $v1, %hi(D_800C5E50)
    /* 37268 80048A58 505E6324 */  addiu      $v1, $v1, %lo(D_800C5E50)
    /* 3726C 80048A5C 9C004426 */  addiu      $a0, $s2, 0x9C
    /* 37270 80048A60 8AA6010C */  jal        func_80069A28
    /* 37274 80048A64 680043AE */   sw        $v1, 0x68($s2)
    /* 37278 80048A68 60034226 */  addiu      $v0, $s2, 0x360
    /* 3727C 80048A6C 01000324 */  addiu      $v1, $zero, 0x1
    /* 37280 80048A70 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 37284 80048A74 FFFF0524 */  addiu      $a1, $zero, -0x1
  .L80048A78:
    /* 37288 80048A78 010044A0 */  sb         $a0, 0x1($v0)
    /* 3728C 80048A7C 000044A0 */  sb         $a0, 0x0($v0)
    /* 37290 80048A80 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 37294 80048A84 FCFF6514 */  bne        $v1, $a1, .L80048A78
    /* 37298 80048A88 0C004224 */   addiu     $v0, $v0, 0xC
    /* 3729C 80048A8C 9C045126 */  addiu      $s1, $s2, 0x49C
    /* 372A0 80048A90 01001024 */  addiu      $s0, $zero, 0x1
    /* 372A4 80048A94 FFFF1324 */  addiu      $s3, $zero, -0x1
  .L80048A98:
    /* 372A8 80048A98 4274000C */  jal        func_8001D108
    /* 372AC 80048A9C 21202002 */   addu      $a0, $s1, $zero
    /* 372B0 80048AA0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 372B4 80048AA4 FCFF1316 */  bne        $s0, $s3, .L80048A98
    /* 372B8 80048AA8 84013126 */   addiu     $s1, $s1, 0x184
    /* 372BC 80048AAC A4075126 */  addiu      $s1, $s2, 0x7A4
    /* 372C0 80048AB0 02001024 */  addiu      $s0, $zero, 0x2
    /* 372C4 80048AB4 FFFF1324 */  addiu      $s3, $zero, -0x1
  .L80048AB8:
    /* 372C8 80048AB8 4274000C */  jal        func_8001D108
    /* 372CC 80048ABC 21202002 */   addu      $a0, $s1, $zero
    /* 372D0 80048AC0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 372D4 80048AC4 FCFF1316 */  bne        $s0, $s3, .L80048AB8
    /* 372D8 80048AC8 84013126 */   addiu     $s1, $s1, 0x184
    /* 372DC 80048ACC 6C05020C */  jal        func_800815B0
    /* 372E0 80048AD0 300C4426 */   addiu     $a0, $s2, 0xC30
    /* 372E4 80048AD4 740C5126 */  addiu      $s1, $s2, 0xC74
    /* 372E8 80048AD8 01001024 */  addiu      $s0, $zero, 0x1
    /* 372EC 80048ADC FFFF1324 */  addiu      $s3, $zero, -0x1
  .L80048AE0:
    /* 372F0 80048AE0 F6A9010C */  jal        func_8006A7D8
    /* 372F4 80048AE4 21202002 */   addu      $a0, $s1, $zero
    /* 372F8 80048AE8 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 372FC 80048AEC FCFF1316 */  bne        $s0, $s3, .L80048AE0
    /* 37300 80048AF0 4C003126 */   addiu     $s1, $s1, 0x4C
    /* 37304 80048AF4 21180000 */  addu       $v1, $zero, $zero
    /* 37308 80048AF8 00701524 */  addiu      $s5, $zero, 0x7000
    /* 3730C 80048AFC 15001924 */  addiu      $t9, $zero, 0x15
    /* 37310 80048B00 A5FF1824 */  addiu      $t8, $zero, -0x5B
    /* 37314 80048B04 05FF1424 */  addiu      $s4, $zero, -0xFB
    /* 37318 80048B08 04001324 */  addiu      $s3, $zero, 0x4
    /* 3731C 80048B0C 38045026 */  addiu      $s0, $s2, 0x438
    /* 37320 80048B10 01001124 */  addiu      $s1, $zero, 0x1
    /* 37324 80048B14 10034F26 */  addiu      $t7, $s2, 0x310
    /* 37328 80048B18 44044E26 */  addiu      $t6, $s2, 0x444
    /* 3732C 80048B1C 3C044D26 */  addiu      $t5, $s2, 0x43C
    /* 37330 80048B20 74044C26 */  addiu      $t4, $s2, 0x474
    /* 37334 80048B24 30044B26 */  addiu      $t3, $s2, 0x430
    /* 37338 80048B28 28044A26 */  addiu      $t2, $s2, 0x428
    /* 3733C 80048B2C 20044926 */  addiu      $t1, $s2, 0x420
    /* 37340 80048B30 18044826 */  addiu      $t0, $s2, 0x418
    /* 37344 80048B34 F8034726 */  addiu      $a3, $s2, 0x3F8
    /* 37348 80048B38 10044626 */  addiu      $a2, $s2, 0x410
    /* 3734C 80048B3C 08044526 */  addiu      $a1, $s2, 0x408
    /* 37350 80048B40 00044426 */  addiu      $a0, $s2, 0x400
    /* 37354 80048B44 10000224 */  addiu      $v0, $zero, 0x10
    /* 37358 80048B48 100042AE */  sw         $v0, 0x10($s2)
    /* 3735C 80048B4C B80040AE */  sw         $zero, 0xB8($s2)
    /* 37360 80048B50 5C0340AE */  sw         $zero, 0x35C($s2)
  .L80048B54:
    /* 37364 80048B54 21100302 */  addu       $v0, $s0, $v1
    /* 37368 80048B58 000080AC */  sw         $zero, 0x0($a0)
    /* 3736C 80048B5C 0000A0AC */  sw         $zero, 0x0($a1)
    /* 37370 80048B60 0000C0AC */  sw         $zero, 0x0($a2)
    /* 37374 80048B64 0000F5AC */  sw         $s5, 0x0($a3)
    /* 37378 80048B68 000019AD */  sw         $t9, 0x0($t0)
    /* 3737C 80048B6C 000038AD */  sw         $t8, 0x0($t1)
    /* 37380 80048B70 000054AD */  sw         $s4, 0x0($t2)
    /* 37384 80048B74 000073AD */  sw         $s3, 0x0($t3)
    /* 37388 80048B78 000051A0 */  sb         $s1, 0x0($v0)
    /* 3738C 80048B7C 000080AD */  sw         $zero, 0x0($t4)
    /* 37390 80048B80 0000A0AD */  sw         $zero, 0x0($t5)
    /* 37394 80048B84 0000C0AD */  sw         $zero, 0x0($t6)
    /* 37398 80048B88 0000E0AD */  sw         $zero, 0x0($t7)
    /* 3739C 80048B8C 0400EF25 */  addiu      $t7, $t7, 0x4
    /* 373A0 80048B90 0400CE25 */  addiu      $t6, $t6, 0x4
    /* 373A4 80048B94 0400AD25 */  addiu      $t5, $t5, 0x4
    /* 373A8 80048B98 04008C25 */  addiu      $t4, $t4, 0x4
    /* 373AC 80048B9C 04006B25 */  addiu      $t3, $t3, 0x4
    /* 373B0 80048BA0 04004A25 */  addiu      $t2, $t2, 0x4
    /* 373B4 80048BA4 04002925 */  addiu      $t1, $t1, 0x4
    /* 373B8 80048BA8 04000825 */  addiu      $t0, $t0, 0x4
    /* 373BC 80048BAC 0400E724 */  addiu      $a3, $a3, 0x4
    /* 373C0 80048BB0 0400C624 */  addiu      $a2, $a2, 0x4
    /* 373C4 80048BB4 0400A524 */  addiu      $a1, $a1, 0x4
    /* 373C8 80048BB8 01006324 */  addiu      $v1, $v1, 0x1
    /* 373CC 80048BBC 02006228 */  slti       $v0, $v1, 0x2
    /* 373D0 80048BC0 E4FF4014 */  bnez       $v0, .L80048B54
    /* 373D4 80048BC4 04008424 */   addiu     $a0, $a0, 0x4
    /* 373D8 80048BC8 F0004426 */  addiu      $a0, $s2, 0xF0
    /* 373DC 80048BCC 21280000 */  addu       $a1, $zero, $zero
    /* 373E0 80048BD0 01001024 */  addiu      $s0, $zero, 0x1
    /* 373E4 80048BD4 0C80023C */  lui        $v0, %hi(D_800C71BC)
    /* 373E8 80048BD8 BC714224 */  addiu      $v0, $v0, %lo(D_800C71BC)
    /* 373EC 80048BDC 00020624 */  addiu      $a2, $zero, 0x200
    /* 373F0 80048BE0 540350AE */  sw         $s0, 0x354($s2)
    /* 373F4 80048BE4 4C0340AE */  sw         $zero, 0x34C($s2)
    /* 373F8 80048BE8 600042AE */  sw         $v0, 0x60($s2)
    /* 373FC 80048BEC 5C0C40AE */  sw         $zero, 0xC5C($s2)
    /* 37400 80048BF0 56D8020C */  jal        func_800B6158
    /* 37404 80048BF4 600C40AE */   sw        $zero, 0xC60($s2)
    /* 37408 80048BF8 21204002 */  addu       $a0, $s2, $zero
    /* 3740C 80048BFC 0C80053C */  lui        $a1, %hi(D_800C5E30)
    /* 37410 80048C00 305EA524 */  addiu      $a1, $a1, %lo(D_800C5E30)
    /* 37414 80048C04 5C0440AE */  sw         $zero, 0x45C($s2)
    /* 37418 80048C08 580440AE */  sw         $zero, 0x458($s2)
    /* 3741C 80048C0C 600440AE */  sw         $zero, 0x460($s2)
    /* 37420 80048C10 8BFF000C */  jal        func_8003FE2C
    /* 37424 80048C14 640440AE */   sw        $zero, 0x464($s2)
    /* 37428 80048C18 58040424 */  addiu      $a0, $zero, 0x458
    /* 3742C 80048C1C 580340AE */  sw         $zero, 0x358($s2)
    /* 37430 80048C20 709C020C */  jal        __builtin_new
    /* 37434 80048C24 080340AE */   sw        $zero, 0x308($s2)
    /* 37438 80048C28 77AF010C */  jal        func_8006BDDC
    /* 3743C 80048C2C 21204000 */   addu      $a0, $v0, $zero
    /* 37440 80048C30 60060424 */  addiu      $a0, $zero, 0x660
    /* 37444 80048C34 080342AE */  sw         $v0, 0x308($s2)
    /* 37448 80048C38 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3744C 80048C3C E40340AE */  sw         $zero, 0x3E4($s2)
    /* 37450 80048C40 E00340AE */  sw         $zero, 0x3E0($s2)
    /* 37454 80048C44 E80340AE */  sw         $zero, 0x3E8($s2)
    /* 37458 80048C48 F40340AE */  sw         $zero, 0x3F4($s2)
    /* 3745C 80048C4C EC0340AE */  sw         $zero, 0x3EC($s2)
    /* 37460 80048C50 7C0340AE */  sw         $zero, 0x37C($s2)
    /* 37464 80048C54 AC0040AE */  sw         $zero, 0xAC($s2)
    /* 37468 80048C58 940340AE */  sw         $zero, 0x394($s2)
    /* 3746C 80048C5C F40240AE */  sw         $zero, 0x2F4($s2)
    /* 37470 80048C60 040340AE */  sw         $zero, 0x304($s2)
    /* 37474 80048C64 680C50AE */  sw         $s0, 0xC68($s2)
    /* 37478 80048C68 500442AE */  sw         $v0, 0x450($s2)
    /* 3747C 80048C6C 540442AE */  sw         $v0, 0x454($s2)
    /* 37480 80048C70 900340AE */  sw         $zero, 0x390($s2)
    /* 37484 80048C74 840340AE */  sw         $zero, 0x384($s2)
    /* 37488 80048C78 880340AE */  sw         $zero, 0x388($s2)
    /* 3748C 80048C7C 8C0340AE */  sw         $zero, 0x38C($s2)
    /* 37490 80048C80 980340AE */  sw         $zero, 0x398($s2)
    /* 37494 80048C84 F00340AE */  sw         $zero, 0x3F0($s2)
    /* 37498 80048C88 7C0440AE */  sw         $zero, 0x47C($s2)
    /* 3749C 80048C8C 959C020C */  jal        __builtin_vec_new
    /* 374A0 80048C90 800440AE */   sw        $zero, 0x480($s2)
    /* 374A4 80048C94 21984000 */  addu       $s3, $v0, $zero
    /* 374A8 80048C98 21886002 */  addu       $s1, $s3, $zero
    /* 374AC 80048C9C FFFF1424 */  addiu      $s4, $zero, -0x1
  .L80048CA0:
    /* 374B0 80048CA0 D67C010C */  jal        func_8005F358
    /* 374B4 80048CA4 21202002 */   addu      $a0, $s1, $zero
    /* 374B8 80048CA8 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 374BC 80048CAC FCFF1416 */  bne        $s0, $s4, .L80048CA0
    /* 374C0 80048CB0 30033126 */   addiu     $s1, $s1, 0x330
    /* 374C4 80048CB4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 374C8 80048CB8 2400B58F */  lw         $s5, 0x24($sp)
    /* 374CC 80048CBC 2000B48F */  lw         $s4, 0x20($sp)
    /* 374D0 80048CC0 F00253AE */  sw         $s3, 0x2F0($s2)
    /* 374D4 80048CC4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 374D8 80048CC8 21104002 */  addu       $v0, $s2, $zero
    /* 374DC 80048CCC 940440AE */  sw         $zero, 0x494($s2)
    /* 374E0 80048CD0 840440AE */  sw         $zero, 0x484($s2)
    /* 374E4 80048CD4 B00040AE */  sw         $zero, 0xB0($s2)
    /* 374E8 80048CD8 B40040AE */  sw         $zero, 0xB4($s2)
    /* 374EC 80048CDC FC0240AE */  sw         $zero, 0x2FC($s2)
    /* 374F0 80048CE0 1800B28F */  lw         $s2, 0x18($sp)
    /* 374F4 80048CE4 1400B18F */  lw         $s1, 0x14($sp)
    /* 374F8 80048CE8 1000B08F */  lw         $s0, 0x10($sp)
    /* 374FC 80048CEC 0800E003 */  jr         $ra
    /* 37500 80048CF0 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_80048A2C
