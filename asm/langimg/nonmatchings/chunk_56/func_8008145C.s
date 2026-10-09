nonmatching func_8008145C, 0x154

glabel func_8008145C
    /* 6FC6C 8008145C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6FC70 80081460 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6FC74 80081464 21808000 */  addu       $s0, $a0, $zero
    /* 6FC78 80081468 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6FC7C 8008146C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6FC80 80081470 0C00048E */  lw         $a0, 0xC($s0)
    /* 6FC84 80081474 00000000 */  nop
    /* 6FC88 80081478 04008010 */  beqz       $a0, .L8008148C
    /* 6FC8C 8008147C 2188A000 */   addu      $s1, $a1, $zero
    /* 6FC90 80081480 8D9C020C */  jal        __builtin_vec_delete
    /* 6FC94 80081484 00000000 */   nop
    /* 6FC98 80081488 0C0000AE */  sw         $zero, 0xC($s0)
  .L8008148C:
    /* 6FC9C 8008148C 2800048E */  lw         $a0, 0x28($s0)
    /* 6FCA0 80081490 00000000 */  nop
    /* 6FCA4 80081494 04008010 */  beqz       $a0, .L800814A8
    /* 6FCA8 80081498 00000000 */   nop
    /* 6FCAC 8008149C 8D9C020C */  jal        __builtin_vec_delete
    /* 6FCB0 800814A0 00000000 */   nop
    /* 6FCB4 800814A4 280000AE */  sw         $zero, 0x28($s0)
  .L800814A8:
    /* 6FCB8 800814A8 2400048E */  lw         $a0, 0x24($s0)
    /* 6FCBC 800814AC 00000000 */  nop
    /* 6FCC0 800814B0 04008010 */  beqz       $a0, .L800814C4
    /* 6FCC4 800814B4 00000000 */   nop
    /* 6FCC8 800814B8 8D9C020C */  jal        __builtin_vec_delete
    /* 6FCCC 800814BC 00000000 */   nop
    /* 6FCD0 800814C0 240000AE */  sw         $zero, 0x24($s0)
  .L800814C4:
    /* 6FCD4 800814C4 2C00048E */  lw         $a0, 0x2C($s0)
    /* 6FCD8 800814C8 00000000 */  nop
    /* 6FCDC 800814CC 04008010 */  beqz       $a0, .L800814E0
    /* 6FCE0 800814D0 00000000 */   nop
    /* 6FCE4 800814D4 8D9C020C */  jal        __builtin_vec_delete
    /* 6FCE8 800814D8 00000000 */   nop
    /* 6FCEC 800814DC 2C0000AE */  sw         $zero, 0x2C($s0)
  .L800814E0:
    /* 6FCF0 800814E0 1000048E */  lw         $a0, 0x10($s0)
    /* 6FCF4 800814E4 00000000 */  nop
    /* 6FCF8 800814E8 04008010 */  beqz       $a0, .L800814FC
    /* 6FCFC 800814EC 00000000 */   nop
    /* 6FD00 800814F0 8D9C020C */  jal        __builtin_vec_delete
    /* 6FD04 800814F4 00000000 */   nop
    /* 6FD08 800814F8 100000AE */  sw         $zero, 0x10($s0)
  .L800814FC:
    /* 6FD0C 800814FC 0000048E */  lw         $a0, 0x0($s0)
    /* 6FD10 80081500 00000000 */  nop
    /* 6FD14 80081504 04008010 */  beqz       $a0, .L80081518
    /* 6FD18 80081508 00000000 */   nop
    /* 6FD1C 8008150C 8D9C020C */  jal        __builtin_vec_delete
    /* 6FD20 80081510 00000000 */   nop
    /* 6FD24 80081514 000000AE */  sw         $zero, 0x0($s0)
  .L80081518:
    /* 6FD28 80081518 0400048E */  lw         $a0, 0x4($s0)
    /* 6FD2C 8008151C 00000000 */  nop
    /* 6FD30 80081520 04008010 */  beqz       $a0, .L80081534
    /* 6FD34 80081524 00000000 */   nop
    /* 6FD38 80081528 8D9C020C */  jal        __builtin_vec_delete
    /* 6FD3C 8008152C 00000000 */   nop
    /* 6FD40 80081530 040000AE */  sw         $zero, 0x4($s0)
  .L80081534:
    /* 6FD44 80081534 2000048E */  lw         $a0, 0x20($s0)
    /* 6FD48 80081538 00000000 */  nop
    /* 6FD4C 8008153C 04008010 */  beqz       $a0, .L80081550
    /* 6FD50 80081540 00000000 */   nop
    /* 6FD54 80081544 8D9C020C */  jal        __builtin_vec_delete
    /* 6FD58 80081548 00000000 */   nop
    /* 6FD5C 8008154C 200000AE */  sw         $zero, 0x20($s0)
  .L80081550:
    /* 6FD60 80081550 1800048E */  lw         $a0, 0x18($s0)
    /* 6FD64 80081554 00000000 */  nop
    /* 6FD68 80081558 04008010 */  beqz       $a0, .L8008156C
    /* 6FD6C 8008155C 00000000 */   nop
    /* 6FD70 80081560 8D9C020C */  jal        __builtin_vec_delete
    /* 6FD74 80081564 00000000 */   nop
    /* 6FD78 80081568 180000AE */  sw         $zero, 0x18($s0)
  .L8008156C:
    /* 6FD7C 8008156C 1C00048E */  lw         $a0, 0x1C($s0)
    /* 6FD80 80081570 00000000 */  nop
    /* 6FD84 80081574 05008010 */  beqz       $a0, .L8008158C
    /* 6FD88 80081578 01002232 */   andi      $v0, $s1, 0x1
    /* 6FD8C 8008157C 8D9C020C */  jal        __builtin_vec_delete
    /* 6FD90 80081580 00000000 */   nop
    /* 6FD94 80081584 1C0000AE */  sw         $zero, 0x1C($s0)
    /* 6FD98 80081588 01002232 */  andi       $v0, $s1, 0x1
  .L8008158C:
    /* 6FD9C 8008158C 03004010 */  beqz       $v0, .L8008159C
    /* 6FDA0 80081590 00000000 */   nop
    /* 6FDA4 80081594 679C020C */  jal        __builtin_delete
    /* 6FDA8 80081598 21200002 */   addu      $a0, $s0, $zero
  .L8008159C:
    /* 6FDAC 8008159C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6FDB0 800815A0 1400B18F */  lw         $s1, 0x14($sp)
    /* 6FDB4 800815A4 1000B08F */  lw         $s0, 0x10($sp)
    /* 6FDB8 800815A8 0800E003 */  jr         $ra
    /* 6FDBC 800815AC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8008145C
