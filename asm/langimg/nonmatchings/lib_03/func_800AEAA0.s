nonmatching func_800AEAA0, 0x150

glabel func_800AEAA0
    /* 9D2B0 800AEAA0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 9D2B4 800AEAA4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 9D2B8 800AEAA8 21A08000 */  addu       $s4, $a0, $zero
    /* 9D2BC 800AEAAC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 9D2C0 800AEAB0 21A8A000 */  addu       $s5, $a1, $zero
    /* 9D2C4 800AEAB4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 9D2C8 800AEAB8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9D2CC 800AEABC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9D2D0 800AEAC0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9D2D4 800AEAC4 03008012 */  beqz       $s4, .L800AEAD4
    /* 9D2D8 800AEAC8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 9D2DC 800AEACC F3BA0208 */  j          .L800AEBCC
    /* 9D2E0 800AEAD0 21100000 */   addu      $v0, $zero, $zero
  .L800AEAD4:
    /* 9D2E4 800AEAD4 E0D6020C */  jal        func_800B5B80
    /* 9D2E8 800AEAD8 0E80133C */   lui       $s3, %hi(D_800DE2F8)
    /* 9D2EC 800AEADC 25BB020C */  jal        func_800AEC94
    /* 9D2F0 800AEAE0 21200000 */   addu      $a0, $zero, $zero
    /* 9D2F4 800AEAE4 E4D6020C */  jal        func_800B5B90
    /* 9D2F8 800AEAE8 21900000 */   addu      $s2, $zero, $zero
    /* 9D2FC 800AEAEC 40BB020C */  jal        func_800AED00
    /* 9D300 800AEAF0 00000000 */   nop
    /* 9D304 800AEAF4 21BB020C */  jal        func_800AEC84
    /* 9D308 800AEAF8 00000000 */   nop
    /* 9D30C 800AEAFC F8E26426 */  addiu      $a0, $s3, %lo(D_800DE2F8)
    /* 9D310 800AEB00 BBC8020C */  jal        func_800B22EC
    /* 9D314 800AEB04 22008524 */   addiu     $a1, $a0, 0x22
    /* 9D318 800AEB08 0E80033C */  lui        $v1, %hi(D_800DE358)
    /* 9D31C 800AEB0C 0C80023C */  lui        $v0, %hi(D_800C3C24)
    /* 9D320 800AEB10 243C4C24 */  addiu      $t4, $v0, %lo(D_800C3C24)
    /* 9D324 800AEB14 58E36B24 */  addiu      $t3, $v1, %lo(D_800DE358)
    /* 9D328 800AEB18 0000898D */  lw         $t1, 0x0($t4)
    /* 9D32C 800AEB1C 04008A8D */  lw         $t2, 0x4($t4)
    /* 9D330 800AEB20 000069AD */  sw         $t1, 0x0($t3)
    /* 9D334 800AEB24 04006AAD */  sw         $t2, 0x4($t3)
    /* 9D338 800AEB28 58E37124 */  addiu      $s1, $v1, %lo(D_800DE358)
    /* 9D33C 800AEB2C 0E80023C */  lui        $v0, %hi(D_800DE350)
    /* 9D340 800AEB30 50E35024 */  addiu      $s0, $v0, %lo(D_800DE350)
  .L800AEB34:
    /* 9D344 800AEB34 0000248E */  lw         $a0, 0x0($s1)
    /* 9D348 800AEB38 21280002 */  addu       $a1, $s0, $zero
    /* 9D34C 800AEB3C 02000624 */  addiu      $a2, $zero, 0x2
    /* 9D350 800AEB40 04003126 */  addiu      $s1, $s1, 0x4
    /* 9D354 800AEB44 02001026 */  addiu      $s0, $s0, 0x2
    /* 9D358 800AEB48 E2C1020C */  jal        func_800B0788
    /* 9D35C 800AEB4C 01005226 */   addiu     $s2, $s2, 0x1
    /* 9D360 800AEB50 0200422A */  slti       $v0, $s2, 0x2
    /* 9D364 800AEB54 F7FF4014 */  bnez       $v0, .L800AEB34
    /* 9D368 800AEB58 00000000 */   nop
    /* 9D36C 800AEB5C 0FC1020C */  jal        func_800B043C
    /* 9D370 800AEB60 00000000 */   nop
    /* 9D374 800AEB64 80000424 */  addiu      $a0, $zero, 0x80
    /* 9D378 800AEB68 80000524 */  addiu      $a1, $zero, 0x80
    /* 9D37C 800AEB6C 80000624 */  addiu      $a2, $zero, 0x80
    /* 9D380 800AEB70 80000724 */  addiu      $a3, $zero, 0x80
    /* 9D384 800AEB74 0E80023C */  lui        $v0, %hi(D_800DE360)
    /* 9D388 800AEB78 0E80083C */  lui        $t0, %hi(D_800DE33C)
    /* 9D38C 800AEB7C F8E26326 */  addiu      $v1, $s3, %lo(D_800DE2F8)
    /* 9D390 800AEB80 60E355AC */  sw         $s5, %lo(D_800DE360)($v0)
    /* 9D394 800AEB84 0C80023C */  lui        $v0, %hi(D_800C3BB4)
    /* 9D398 800AEB88 3CE303AD */  sw         $v1, %lo(D_800DE33C)($t0)
    /* 9D39C 800AEB8C 0C80083C */  lui        $t0, %hi(D_800C3BB0)
    /* 9D3A0 800AEB90 01000324 */  addiu      $v1, $zero, 0x1
    /* 9D3A4 800AEB94 B43B54AC */  sw         $s4, %lo(D_800C3BB4)($v0)
    /* 9D3A8 800AEB98 12BC020C */  jal        func_800AF048
    /* 9D3AC 800AEB9C B03B03AD */   sw        $v1, %lo(D_800C3BB0)($t0)
    /* 9D3B0 800AEBA0 1E000424 */  addiu      $a0, $zero, 0x1E
    /* 9D3B4 800AEBA4 1E000524 */  addiu      $a1, $zero, 0x1E
    /* 9D3B8 800AEBA8 1E000624 */  addiu      $a2, $zero, 0x1E
    /* 9D3BC 800AEBAC 2BBC020C */  jal        func_800AF0AC
    /* 9D3C0 800AEBB0 1E000724 */   addiu     $a3, $zero, 0x1E
    /* 9D3C4 800AEBB4 00010424 */  addiu      $a0, $zero, 0x100
    /* 9D3C8 800AEBB8 00010524 */  addiu      $a1, $zero, 0x100
    /* 9D3CC 800AEBBC 00010624 */  addiu      $a2, $zero, 0x100
    /* 9D3D0 800AEBC0 F9BB020C */  jal        func_800AEFE4
    /* 9D3D4 800AEBC4 00010724 */   addiu     $a3, $zero, 0x100
    /* 9D3D8 800AEBC8 0300A22A */  slti       $v0, $s5, 0x3
  .L800AEBCC:
    /* 9D3DC 800AEBCC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 9D3E0 800AEBD0 2400B58F */  lw         $s5, 0x24($sp)
    /* 9D3E4 800AEBD4 2000B48F */  lw         $s4, 0x20($sp)
    /* 9D3E8 800AEBD8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9D3EC 800AEBDC 1800B28F */  lw         $s2, 0x18($sp)
    /* 9D3F0 800AEBE0 1400B18F */  lw         $s1, 0x14($sp)
    /* 9D3F4 800AEBE4 1000B08F */  lw         $s0, 0x10($sp)
    /* 9D3F8 800AEBE8 0800E003 */  jr         $ra
    /* 9D3FC 800AEBEC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800AEAA0
