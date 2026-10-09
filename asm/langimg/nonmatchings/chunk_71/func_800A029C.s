nonmatching func_800A029C, 0x184

glabel func_800A029C
    /* 8EAAC 800A029C F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 8EAB0 800A02A0 0000B0AF */  sw         $s0, 0x0($sp)
    /* 8EAB4 800A02A4 21800000 */  addu       $s0, $zero, $zero
    /* 8EAB8 800A02A8 0400B1AF */  sw         $s1, 0x4($sp)
    /* 8EABC 800A02AC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8EAC0 800A02B0 5600A210 */  beq        $a1, $v0, .L800A040C
    /* 8EAC4 800A02B4 2188C000 */   addu      $s1, $a2, $zero
    /* 8EAC8 800A02B8 21480000 */  addu       $t1, $zero, $zero
    /* 8EACC 800A02BC 04008624 */  addiu      $a2, $a0, 0x4
    /* 8EAD0 800A02C0 0400838C */  lw         $v1, 0x4($a0)
    /* 8EAD4 800A02C4 00000000 */  nop
    /* 8EAD8 800A02C8 27100300 */  nor        $v0, $zero, $v1
    /* 8EADC 800A02CC 21004010 */  beqz       $v0, .L800A0354
    /* 8EAE0 800A02D0 2140C000 */   addu      $t0, $a2, $zero
    /* 8EAE4 800A02D4 0000828C */  lw         $v0, 0x0($a0)
    /* 8EAE8 800A02D8 00000000 */  nop
    /* 8EAEC 800A02DC 0F004010 */  beqz       $v0, .L800A031C
    /* 8EAF0 800A02E0 00000000 */   nop
    /* 8EAF4 800A02E4 2B106500 */  sltu       $v0, $v1, $a1
  .L800A02E8:
    /* 8EAF8 800A02E8 1B004010 */  beqz       $v0, .L800A0358
    /* 8EAFC 800A02EC 05002229 */   slti      $v0, $t1, 0x5
    /* 8EB00 800A02F0 01002925 */  addiu      $t1, $t1, 0x1
    /* 8EB04 800A02F4 05002229 */  slti       $v0, $t1, 0x5
    /* 8EB08 800A02F8 44004010 */  beqz       $v0, .L800A040C
    /* 8EB0C 800A02FC 0C000825 */   addiu     $t0, $t0, 0xC
    /* 8EB10 800A0300 0000038D */  lw         $v1, 0x0($t0)
    /* 8EB14 800A0304 00000000 */  nop
    /* 8EB18 800A0308 27100300 */  nor        $v0, $zero, $v1
    /* 8EB1C 800A030C 11004010 */  beqz       $v0, .L800A0354
    /* 8EB20 800A0310 2B106500 */   sltu      $v0, $v1, $a1
    /* 8EB24 800A0314 BA800208 */  j          .L800A02E8
    /* 8EB28 800A0318 00000000 */   nop
  .L800A031C:
    /* 8EB2C 800A031C 0000028D */  lw         $v0, 0x0($t0)
    /* 8EB30 800A0320 00000000 */  nop
    /* 8EB34 800A0324 2B10A200 */  sltu       $v0, $a1, $v0
  .L800A0328:
    /* 8EB38 800A0328 0B004010 */  beqz       $v0, .L800A0358
    /* 8EB3C 800A032C 05002229 */   slti      $v0, $t1, 0x5
    /* 8EB40 800A0330 01002925 */  addiu      $t1, $t1, 0x1
    /* 8EB44 800A0334 05002229 */  slti       $v0, $t1, 0x5
    /* 8EB48 800A0338 34004010 */  beqz       $v0, .L800A040C
    /* 8EB4C 800A033C 0C000825 */   addiu     $t0, $t0, 0xC
    /* 8EB50 800A0340 0000038D */  lw         $v1, 0x0($t0)
    /* 8EB54 800A0344 00000000 */  nop
    /* 8EB58 800A0348 27100300 */  nor        $v0, $zero, $v1
    /* 8EB5C 800A034C F6FF4014 */  bnez       $v0, .L800A0328
    /* 8EB60 800A0350 2B10A300 */   sltu      $v0, $a1, $v1
  .L800A0354:
    /* 8EB64 800A0354 05002229 */  slti       $v0, $t1, 0x5
  .L800A0358:
    /* 8EB68 800A0358 2C004010 */  beqz       $v0, .L800A040C
    /* 8EB6C 800A035C 04002229 */   slti      $v0, $t1, 0x4
    /* 8EB70 800A0360 1D004010 */  beqz       $v0, .L800A03D8
    /* 8EB74 800A0364 01001024 */   addiu     $s0, $zero, 0x1
    /* 8EB78 800A0368 04001924 */  addiu      $t9, $zero, 0x4
    /* 8EB7C 800A036C 3E009824 */  addiu      $t8, $a0, 0x3E
    /* 8EB80 800A0370 32008F24 */  addiu      $t7, $a0, 0x32
    /* 8EB84 800A0374 3C008E24 */  addiu      $t6, $a0, 0x3C
    /* 8EB88 800A0378 30008D24 */  addiu      $t5, $a0, 0x30
    /* 8EB8C 800A037C 38008C24 */  addiu      $t4, $a0, 0x38
    /* 8EB90 800A0380 2C008B24 */  addiu      $t3, $a0, 0x2C
    /* 8EB94 800A0384 34008A24 */  addiu      $t2, $a0, 0x34
    /* 8EB98 800A0388 28008824 */  addiu      $t0, $a0, 0x28
  .L800A038C:
    /* 8EB9C 800A038C 0000028D */  lw         $v0, 0x0($t0)
    /* 8EBA0 800A0390 F4FF0825 */  addiu      $t0, $t0, -0xC
    /* 8EBA4 800A0394 FFFF3927 */  addiu      $t9, $t9, -0x1
    /* 8EBA8 800A0398 000042AD */  sw         $v0, 0x0($t2)
    /* 8EBAC 800A039C 0000638D */  lw         $v1, 0x0($t3)
    /* 8EBB0 800A03A0 F4FF6B25 */  addiu      $t3, $t3, -0xC
    /* 8EBB4 800A03A4 F4FF4A25 */  addiu      $t2, $t2, -0xC
    /* 8EBB8 800A03A8 000083AD */  sw         $v1, 0x0($t4)
    /* 8EBBC 800A03AC 0000A295 */  lhu        $v0, 0x0($t5)
    /* 8EBC0 800A03B0 F4FFAD25 */  addiu      $t5, $t5, -0xC
    /* 8EBC4 800A03B4 F4FF8C25 */  addiu      $t4, $t4, -0xC
    /* 8EBC8 800A03B8 0000C2A5 */  sh         $v0, 0x0($t6)
    /* 8EBCC 800A03BC 0000E395 */  lhu        $v1, 0x0($t7)
    /* 8EBD0 800A03C0 F4FFEF25 */  addiu      $t7, $t7, -0xC
    /* 8EBD4 800A03C4 F4FFCE25 */  addiu      $t6, $t6, -0xC
    /* 8EBD8 800A03C8 2A103901 */  slt        $v0, $t1, $t9
    /* 8EBDC 800A03CC 000003A7 */  sh         $v1, 0x0($t8)
    /* 8EBE0 800A03D0 EEFF4014 */  bnez       $v0, .L800A038C
    /* 8EBE4 800A03D4 F4FF1827 */   addiu     $t8, $t8, -0xC
  .L800A03D8:
    /* 8EBE8 800A03D8 40100900 */  sll        $v0, $t1, 1
    /* 8EBEC 800A03DC 21104900 */  addu       $v0, $v0, $t1
    /* 8EBF0 800A03E0 80100200 */  sll        $v0, $v0, 2
    /* 8EBF4 800A03E4 21208200 */  addu       $a0, $a0, $v0
    /* 8EBF8 800A03E8 2110C200 */  addu       $v0, $a2, $v0
    /* 8EBFC 800A03EC 0E0087A4 */  sh         $a3, 0xE($a0)
    /* 8EC00 800A03F0 000045AC */  sw         $a1, 0x0($v0)
    /* 8EC04 800A03F4 1800A38F */  lw         $v1, 0x18($sp)
    /* 8EC08 800A03F8 00000000 */  nop
    /* 8EC0C 800A03FC 0C0083A4 */  sh         $v1, 0xC($a0)
    /* 8EC10 800A0400 0000228E */  lw         $v0, 0x0($s1)
    /* 8EC14 800A0404 00000000 */  nop
    /* 8EC18 800A0408 080082AC */  sw         $v0, 0x8($a0)
  .L800A040C:
    /* 8EC1C 800A040C 21100002 */  addu       $v0, $s0, $zero
    /* 8EC20 800A0410 0400B18F */  lw         $s1, 0x4($sp)
    /* 8EC24 800A0414 0000B08F */  lw         $s0, 0x0($sp)
    /* 8EC28 800A0418 0800E003 */  jr         $ra
    /* 8EC2C 800A041C 0800BD27 */   addiu     $sp, $sp, 0x8
endlabel func_800A029C
