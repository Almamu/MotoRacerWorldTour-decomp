/* Handwritten function */
nonmatching func_8002A268, 0x12C

glabel func_8002A268
    /* 18A78 8002A268 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 18A7C 8002A26C 3800B2AF */  sw         $s2, 0x38($sp)
    /* 18A80 8002A270 2190A000 */  addu       $s2, $a1, $zero
    /* 18A84 8002A274 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 18A88 8002A278 3400B1AF */  sw         $s1, 0x34($sp)
    /* 18A8C 8002A27C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 18A90 8002A280 58008280 */  lb         $v0, 0x58($a0)
    /* 18A94 8002A284 9C02838C */  lw         $v1, 0x29C($a0)
    /* 18A98 8002A288 01004238 */  xori       $v0, $v0, 0x1
    /* 18A9C 8002A28C 01106328 */  slti       $v1, $v1, 0x1001
    /* 18AA0 8002A290 02006014 */  bnez       $v1, .L8002A29C
    /* 18AA4 8002A294 2B100200 */   sltu      $v0, $zero, $v0
    /* 18AA8 8002A298 21100000 */  addu       $v0, $zero, $zero
  .L8002A29C:
    /* 18AAC 8002A29C 37004010 */  beqz       $v0, .L8002A37C
    /* 18AB0 8002A2A0 00000000 */   nop
    /* 18AB4 8002A2A4 AC03838C */  lw         $v1, 0x3AC($a0)
    /* 18AB8 8002A2A8 00000000 */  nop
    /* 18ABC 8002A2AC 33006010 */  beqz       $v1, .L8002A37C
    /* 18AC0 8002A2B0 C2170300 */   srl       $v0, $v1, 31
    /* 18AC4 8002A2B4 21106200 */  addu       $v0, $v1, $v0
    /* 18AC8 8002A2B8 CC05838C */  lw         $v1, 0x5CC($a0)
    /* 18ACC 8002A2BC 43800200 */  sra        $s0, $v0, 1
    /* 18AD0 8002A2C0 1000648C */  lw         $a0, 0x10($v1)
    /* 18AD4 8002A2C4 00000000 */  nop
    /* 18AD8 8002A2C8 2C008010 */  beqz       $a0, .L8002A37C
    /* 18ADC 8002A2CC 00811000 */   sll       $s0, $s0, 4
    /* 18AE0 8002A2D0 2A000012 */  beqz       $s0, .L8002A37C
    /* 18AE4 8002A2D4 00000000 */   nop
    /* 18AE8 8002A2D8 8F64020C */  jal        func_8009923C
    /* 18AEC 8002A2DC 21204002 */   addu      $a0, $s2, $zero
    /* 18AF0 8002A2E0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 18AF4 8002A2E4 21284002 */  addu       $a1, $s2, $zero
    /* 18AF8 8002A2E8 488B000C */  jal        func_80022D20
    /* 18AFC 8002A2EC 21884000 */   addu      $s1, $v0, $zero
    /* 18B00 8002A2F0 14000724 */  addiu      $a3, $zero, 0x14
    /* 18B04 8002A2F4 18001102 */  mult       $s0, $s1
    /* 18B08 8002A2F8 20000234 */  ori        $v0, $zero, 0x20
    /* 18B0C 8002A2FC 22104700 */  sub        $v0, $v0, $a3 /* handwritten instruction */
    /* 18B10 8002A300 10280000 */  mfhi       $a1
    /* 18B14 8002A304 04284500 */  sllv       $a1, $a1, $v0
    /* 18B18 8002A308 12100000 */  mflo       $v0
    /* 18B1C 8002A30C 0610E200 */  srlv       $v0, $v0, $a3
    /* 18B20 8002A310 2528A200 */  or         $a1, $a1, $v0
    /* 18B24 8002A314 0000488E */  lw         $t0, 0x0($s2)
    /* 18B28 8002A318 0400498E */  lw         $t1, 0x4($s2)
    /* 18B2C 8002A31C 08004A8E */  lw         $t2, 0x8($s2)
    /* 18B30 8002A320 2000A8AF */  sw         $t0, 0x20($sp)
    /* 18B34 8002A324 2400A9AF */  sw         $t1, 0x24($sp)
    /* 18B38 8002A328 2800AAAF */  sw         $t2, 0x28($sp)
    /* 18B3C 8002A32C 0D00A010 */  beqz       $a1, .L8002A364
    /* 18B40 8002A330 2000B027 */   addiu     $s0, $sp, 0x20
    /* 18B44 8002A334 1000A427 */  addiu      $a0, $sp, 0x10
    /* 18B48 8002A338 508C000C */  jal        func_80023140
    /* 18B4C 8002A33C 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 18B50 8002A340 21200002 */  addu       $a0, $s0, $zero
    /* 18B54 8002A344 F465020C */  jal        func_800997D0
    /* 18B58 8002A348 1000A527 */   addiu     $a1, $sp, 0x10
    /* 18B5C 8002A34C 21200002 */  addu       $a0, $s0, $zero
    /* 18B60 8002A350 02002106 */  bgez       $s1, .L8002A35C
    /* 18B64 8002A354 21282002 */   addu      $a1, $s1, $zero
    /* 18B68 8002A358 23280500 */  negu       $a1, $a1
  .L8002A35C:
    /* 18B6C 8002A35C 508C000C */  jal        func_80023140
    /* 18B70 8002A360 17000624 */   addiu     $a2, $zero, 0x17
  .L8002A364:
    /* 18B74 8002A364 2000A28F */  lw         $v0, 0x20($sp)
    /* 18B78 8002A368 2400A38F */  lw         $v1, 0x24($sp)
    /* 18B7C 8002A36C 2800A48F */  lw         $a0, 0x28($sp)
    /* 18B80 8002A370 000042AE */  sw         $v0, 0x0($s2)
    /* 18B84 8002A374 040043AE */  sw         $v1, 0x4($s2)
    /* 18B88 8002A378 080044AE */  sw         $a0, 0x8($s2)
  .L8002A37C:
    /* 18B8C 8002A37C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 18B90 8002A380 3800B28F */  lw         $s2, 0x38($sp)
    /* 18B94 8002A384 3400B18F */  lw         $s1, 0x34($sp)
    /* 18B98 8002A388 3000B08F */  lw         $s0, 0x30($sp)
    /* 18B9C 8002A38C 0800E003 */  jr         $ra
    /* 18BA0 8002A390 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8002A268
