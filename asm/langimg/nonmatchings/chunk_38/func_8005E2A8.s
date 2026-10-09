nonmatching func_8005E2A8, 0xFC

glabel func_8005E2A8
    /* 4CAB8 8005E2A8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4CABC 8005E2AC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4CAC0 8005E2B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4CAC4 8005E2B4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4CAC8 8005E2B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4CACC 8005E2BC 0403828C */  lw         $v0, 0x304($a0)
    /* 4CAD0 8005E2C0 00000000 */  nop
    /* 4CAD4 8005E2C4 31004010 */  beqz       $v0, .L8005E38C
    /* 4CAD8 8005E2C8 01000624 */   addiu     $a2, $zero, 0x1
    /* 4CADC 8005E2CC 7803828C */  lw         $v0, 0x378($a0)
    /* 4CAE0 8005E2D0 21280000 */  addu       $a1, $zero, $zero
    /* 4CAE4 8005E2D4 02001224 */  addiu      $s2, $zero, 0x2
    /* 4CAE8 8005E2D8 E8025124 */  addiu      $s1, $v0, 0x2E8
    /* 4CAEC 8005E2DC BF780108 */  j          .L8005E2FC
    /* 4CAF0 8005E2E0 E9025024 */   addiu     $s0, $v0, 0x2E9
  .L8005E2E4:
    /* 4CAF4 8005E2E4 68051026 */  addiu      $s0, $s0, 0x568
    /* 4CAF8 8005E2E8 68053126 */  addiu      $s1, $s1, 0x568
    /* 4CAFC 8005E2EC 0100A524 */  addiu      $a1, $a1, 0x1
  .L8005E2F0:
    /* 4CB00 8005E2F0 0500A228 */  slti       $v0, $a1, 0x5
    /* 4CB04 8005E2F4 25004010 */  beqz       $v0, .L8005E38C
    /* 4CB08 8005E2F8 00000000 */   nop
  .L8005E2FC:
    /* 4CB0C 8005E2FC 0000238E */  lw         $v1, 0x0($s1)
    /* 4CB10 8005E300 00000000 */  nop
    /* 4CB14 8005E304 82110300 */  srl        $v0, $v1, 6
    /* 4CB18 8005E308 01004230 */  andi       $v0, $v0, 0x1
    /* 4CB1C 8005E30C F5FF4010 */  beqz       $v0, .L8005E2E4
    /* 4CB20 8005E310 80160300 */   sll       $v0, $v1, 26
    /* 4CB24 8005E314 C3160200 */  sra        $v0, $v0, 27
    /* 4CB28 8005E318 F2FF4614 */  bne        $v0, $a2, .L8005E2E4
    /* 4CB2C 8005E31C 00000000 */   nop
    /* 4CB30 8005E320 0D80023C */  lui        $v0, %hi(D_800D6100)
    /* 4CB34 8005E324 0061428C */  lw         $v0, %lo(D_800D6100)($v0)
    /* 4CB38 8005E328 00000000 */  nop
    /* 4CB3C 8005E32C F0FF4010 */  beqz       $v0, .L8005E2F0
    /* 4CB40 8005E330 0100A524 */   addiu     $a1, $a1, 0x1
    /* 4CB44 8005E334 0803848C */  lw         $a0, 0x308($a0)
    /* 4CB48 8005E338 2F00058E */  lw         $a1, 0x2F($s0)
    /* 4CB4C 8005E33C A5B1010C */  jal        func_8006C694
    /* 4CB50 8005E340 00000000 */   nop
    /* 4CB54 8005E344 0C80033C */  lui        $v1, %hi(D_800C7764)
    /* 4CB58 8005E348 6477638C */  lw         $v1, %lo(D_800C7764)($v1)
    /* 4CB5C 8005E34C 00000000 */  nop
    /* 4CB60 8005E350 29006328 */  slti       $v1, $v1, 0x29
    /* 4CB64 8005E354 0D006014 */  bnez       $v1, .L8005E38C
    /* 4CB68 8005E358 00000000 */   nop
    /* 4CB6C 8005E35C 00000292 */  lbu        $v0, 0x0($s0)
    /* 4CB70 8005E360 00000000 */  nop
    /* 4CB74 8005E364 09005214 */  bne        $v0, $s2, .L8005E38C
    /* 4CB78 8005E368 21202002 */   addu      $a0, $s1, $zero
    /* 4CB7C 8005E36C 0D80023C */  lui        $v0, %hi(D_800D5FD8)
    /* 4CB80 8005E370 D85F428C */  lw         $v0, %lo(D_800D5FD8)($v0)
    /* 4CB84 8005E374 00000000 */  nop
    /* 4CB88 8005E378 02004234 */  ori        $v0, $v0, 0x2
    /* 4CB8C 8005E37C 0D80013C */  lui        $at, %hi(D_800D5FD8)
    /* 4CB90 8005E380 D85F22AC */  sw         $v0, %lo(D_800D5FD8)($at)
    /* 4CB94 8005E384 2344010C */  jal        func_8005108C
    /* 4CB98 8005E388 03000524 */   addiu     $a1, $zero, 0x3
  .L8005E38C:
    /* 4CB9C 8005E38C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4CBA0 8005E390 1800B28F */  lw         $s2, 0x18($sp)
    /* 4CBA4 8005E394 1400B18F */  lw         $s1, 0x14($sp)
    /* 4CBA8 8005E398 1000B08F */  lw         $s0, 0x10($sp)
    /* 4CBAC 8005E39C 0800E003 */  jr         $ra
    /* 4CBB0 8005E3A0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8005E2A8
