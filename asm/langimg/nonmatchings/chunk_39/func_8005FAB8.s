nonmatching func_8005FAB8, 0xE0

glabel func_8005FAB8
    /* 4E2C8 8005FAB8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4E2CC 8005FABC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4E2D0 8005FAC0 21988000 */  addu       $s3, $a0, $zero
    /* 4E2D4 8005FAC4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4E2D8 8005FAC8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4E2DC 8005FACC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4E2E0 8005FAD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4E2E4 8005FAD4 0E006282 */  lb         $v0, 0xE($s3)
    /* 4E2E8 8005FAD8 00000000 */  nop
    /* 4E2EC 8005FADC 12004014 */  bnez       $v0, .L8005FB28
    /* 4E2F0 8005FAE0 2190A000 */   addu      $s2, $a1, $zero
    /* 4E2F4 8005FAE4 21180000 */  addu       $v1, $zero, $zero
    /* 4E2F8 8005FAE8 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 4E2FC 8005FAEC 18006426 */  addiu      $a0, $s3, 0x18
  .L8005FAF0:
    /* 4E300 8005FAF0 0000828C */  lw         $v0, 0x0($a0)
    /* 4E304 8005FAF4 00000000 */  nop
    /* 4E308 8005FAF8 05004514 */  bne        $v0, $a1, .L8005FB10
    /* 4E30C 8005FAFC 00000000 */   nop
    /* 4E310 8005FB00 0D80023C */  lui        $v0, %hi(D_800D6104)
    /* 4E314 8005FB04 0461428C */  lw         $v0, %lo(D_800D6104)($v0)
    /* 4E318 8005FB08 00000000 */  nop
    /* 4E31C 8005FB0C 000082AC */  sw         $v0, 0x0($a0)
  .L8005FB10:
    /* 4E320 8005FB10 01006324 */  addiu      $v1, $v1, 0x1
    /* 4E324 8005FB14 20006228 */  slti       $v0, $v1, 0x20
    /* 4E328 8005FB18 F5FF4014 */  bnez       $v0, .L8005FAF0
    /* 4E32C 8005FB1C 0C008424 */   addiu     $a0, $a0, 0xC
    /* 4E330 8005FB20 DF7E0108 */  j          .L8005FB7C
    /* 4E334 8005FB24 00000000 */   nop
  .L8005FB28:
    /* 4E338 8005FB28 01001024 */  addiu      $s0, $zero, 0x1
    /* 4E33C 8005FB2C 21880000 */  addu       $s1, $zero, $zero
  .L8005FB30:
    /* 4E340 8005FB30 06FF0232 */  andi       $v0, $s0, 0xFF06
    /* 4E344 8005FB34 0D004014 */  bnez       $v0, .L8005FB6C
    /* 4E348 8005FB38 00000000 */   nop
    /* 4E34C 8005FB3C 08004396 */  lhu        $v1, 0x8($s2)
    /* 4E350 8005FB40 0E004296 */  lhu        $v0, 0xE($s2)
    /* 4E354 8005FB44 24187000 */  and        $v1, $v1, $s0
    /* 4E358 8005FB48 24105000 */  and        $v0, $v0, $s0
    /* 4E35C 8005FB4C 07006210 */  beq        $v1, $v0, .L8005FB6C
    /* 4E360 8005FB50 00000000 */   nop
    /* 4E364 8005FB54 02006010 */  beqz       $v1, .L8005FB60
    /* 4E368 8005FB58 21300000 */   addu      $a2, $zero, $zero
    /* 4E36C 8005FB5C FF000624 */  addiu      $a2, $zero, 0xFF
  .L8005FB60:
    /* 4E370 8005FB60 21206002 */  addu       $a0, $s3, $zero
    /* 4E374 8005FB64 457D010C */  jal        func_8005F514
    /* 4E378 8005FB68 21280002 */   addu      $a1, $s0, $zero
  .L8005FB6C:
    /* 4E37C 8005FB6C 01003126 */  addiu      $s1, $s1, 0x1
    /* 4E380 8005FB70 1400222A */  slti       $v0, $s1, 0x14
    /* 4E384 8005FB74 EEFF4014 */  bnez       $v0, .L8005FB30
    /* 4E388 8005FB78 40801000 */   sll       $s0, $s0, 1
  .L8005FB7C:
    /* 4E38C 8005FB7C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4E390 8005FB80 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4E394 8005FB84 1800B28F */  lw         $s2, 0x18($sp)
    /* 4E398 8005FB88 1400B18F */  lw         $s1, 0x14($sp)
    /* 4E39C 8005FB8C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4E3A0 8005FB90 0800E003 */  jr         $ra
    /* 4E3A4 8005FB94 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8005FAB8
