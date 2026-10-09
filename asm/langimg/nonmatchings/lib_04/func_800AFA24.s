nonmatching func_800AFA24, 0x168

glabel func_800AFA24
    /* 9E234 800AFA24 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 9E238 800AFA28 3400B5AF */  sw         $s5, 0x34($sp)
    /* 9E23C 800AFA2C 21A8C000 */  addu       $s5, $a2, $zero
    /* 9E240 800AFA30 2800B2AF */  sw         $s2, 0x28($sp)
    /* 9E244 800AFA34 21900000 */  addu       $s2, $zero, $zero
    /* 9E248 800AFA38 0C80023C */  lui        $v0, %hi(D_800C3C6C)
    /* 9E24C 800AFA3C 6C3C4224 */  addiu      $v0, $v0, %lo(D_800C3C6C)
    /* 9E250 800AFA40 3800B6AF */  sw         $s6, 0x38($sp)
    /* 9E254 800AFA44 21B04000 */  addu       $s6, $v0, $zero
    /* 9E258 800AFA48 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 9E25C 800AFA4C 2198A000 */  addu       $s3, $a1, $zero
    /* 9E260 800AFA50 2400B1AF */  sw         $s1, 0x24($sp)
    /* 9E264 800AFA54 44007126 */  addiu      $s1, $s3, 0x44
    /* 9E268 800AFA58 0F008430 */  andi       $a0, $a0, 0xF
    /* 9E26C 800AFA5C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 9E270 800AFA60 40A00400 */  sll        $s4, $a0, 1
    /* 9E274 800AFA64 21108202 */  addu       $v0, $s4, $v0
    /* 9E278 800AFA68 0C80033C */  lui        $v1, %hi(D_800C3BC4)
    /* 9E27C 800AFA6C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 9E280 800AFA70 2000B0AF */  sw         $s0, 0x20($sp)
    /* 9E284 800AFA74 00004494 */  lhu        $a0, 0x0($v0)
    /* 9E288 800AFA78 C43B7024 */  addiu      $s0, $v1, %lo(D_800C3BC4)
    /* 9E28C 800AFA7C 1800A0A7 */  sh         $zero, 0x18($sp)
    /* 9E290 800AFA80 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* 9E294 800AFA84 1C00A4A7 */  sh         $a0, 0x1C($sp)
    /* 9E298 800AFA88 1E00A4A7 */  sh         $a0, 0x1E($sp)
  .L800AFA8C:
    /* 9E29C 800AFA8C 0000228E */  lw         $v0, 0x0($s1)
    /* 9E2A0 800AFA90 00000000 */  nop
    /* 9E2A4 800AFA94 11004010 */  beqz       $v0, .L800AFADC
    /* 9E2A8 800AFA98 21289602 */   addu      $a1, $s4, $s6
    /* 9E2AC 800AFA9C 0000A294 */  lhu        $v0, 0x0($a1)
    /* 9E2B0 800AFAA0 0000038E */  lw         $v1, 0x0($s0)
    /* 9E2B4 800AFAA4 00000000 */  nop
    /* 9E2B8 800AFAA8 24104300 */  and        $v0, $v0, $v1
    /* 9E2BC 800AFAAC 0B004010 */  beqz       $v0, .L800AFADC
    /* 9E2C0 800AFAB0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9E2C4 800AFAB4 00000296 */  lhu        $v0, 0x0($s0)
    /* 9E2C8 800AFAB8 0000A394 */  lhu        $v1, 0x0($a1)
    /* 9E2CC 800AFABC 27100200 */  nor        $v0, $zero, $v0
    /* 9E2D0 800AFAC0 24186200 */  and        $v1, $v1, $v0
    /* 9E2D4 800AFAC4 0000A3A4 */  sh         $v1, 0x0($a1)
    /* 9E2D8 800AFAC8 0000668E */  lw         $a2, 0x0($s3)
    /* 9E2DC 800AFACC 0000228E */  lw         $v0, 0x0($s1)
    /* 9E2E0 800AFAD0 2128A002 */  addu       $a1, $s5, $zero
    /* 9E2E4 800AFAD4 09F84000 */  jalr       $v0
    /* 9E2E8 800AFAD8 1000A0AF */   sw        $zero, 0x10($sp)
  .L800AFADC:
    /* 9E2EC 800AFADC 04003126 */  addiu      $s1, $s1, 0x4
    /* 9E2F0 800AFAE0 01005226 */  addiu      $s2, $s2, 0x1
    /* 9E2F4 800AFAE4 1100422E */  sltiu      $v0, $s2, 0x11
    /* 9E2F8 800AFAE8 E8FF4014 */  bnez       $v0, .L800AFA8C
    /* 9E2FC 800AFAEC 04001026 */   addiu     $s0, $s0, 0x4
    /* 9E300 800AFAF0 8400628E */  lw         $v0, 0x84($s3)
    /* 9E304 800AFAF4 00000000 */  nop
    /* 9E308 800AFAF8 05004010 */  beqz       $v0, .L800AFB10
    /* 9E30C 800AFAFC 1000A0AF */   sw        $zero, 0x10($sp)
    /* 9E310 800AFB00 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9E314 800AFB04 0000668E */  lw         $a2, 0x0($s3)
    /* 9E318 800AFB08 09F84000 */  jalr       $v0
    /* 9E31C 800AFB0C 2128A002 */   addu      $a1, $s5, $zero
  .L800AFB10:
    /* 9E320 800AFB10 8800628E */  lw         $v0, 0x88($s3)
    /* 9E324 800AFB14 00000000 */  nop
    /* 9E328 800AFB18 04004010 */  beqz       $v0, .L800AFB2C
    /* 9E32C 800AFB1C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9E330 800AFB20 0000668E */  lw         $a2, 0x0($s3)
    /* 9E334 800AFB24 09F84000 */  jalr       $v0
    /* 9E338 800AFB28 2128A002 */   addu      $a1, $s5, $zero
  .L800AFB2C:
    /* 9E33C 800AFB2C 8C00628E */  lw         $v0, 0x8C($s3)
    /* 9E340 800AFB30 00000000 */  nop
    /* 9E344 800AFB34 04004010 */  beqz       $v0, .L800AFB48
    /* 9E348 800AFB38 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9E34C 800AFB3C 0000668E */  lw         $a2, 0x0($s3)
    /* 9E350 800AFB40 09F84000 */  jalr       $v0
    /* 9E354 800AFB44 2128A002 */   addu      $a1, $s5, $zero
  .L800AFB48:
    /* 9E358 800AFB48 9000628E */  lw         $v0, 0x90($s3)
    /* 9E35C 800AFB4C 00000000 */  nop
    /* 9E360 800AFB50 04004010 */  beqz       $v0, .L800AFB64
    /* 9E364 800AFB54 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9E368 800AFB58 0000668E */  lw         $a2, 0x0($s3)
    /* 9E36C 800AFB5C 09F84000 */  jalr       $v0
    /* 9E370 800AFB60 2128A002 */   addu      $a1, $s5, $zero
  .L800AFB64:
    /* 9E374 800AFB64 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 9E378 800AFB68 3800B68F */  lw         $s6, 0x38($sp)
    /* 9E37C 800AFB6C 3400B58F */  lw         $s5, 0x34($sp)
    /* 9E380 800AFB70 3000B48F */  lw         $s4, 0x30($sp)
    /* 9E384 800AFB74 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 9E388 800AFB78 2800B28F */  lw         $s2, 0x28($sp)
    /* 9E38C 800AFB7C 2400B18F */  lw         $s1, 0x24($sp)
    /* 9E390 800AFB80 2000B08F */  lw         $s0, 0x20($sp)
    /* 9E394 800AFB84 0800E003 */  jr         $ra
    /* 9E398 800AFB88 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_800AFA24
