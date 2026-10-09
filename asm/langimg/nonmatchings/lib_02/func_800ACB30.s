nonmatching func_800ACB30, 0x270

glabel func_800ACB30
    /* 9B340 800ACB30 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9B344 800ACB34 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9B348 800ACB38 2180A000 */  addu       $s0, $a1, $zero
    /* 9B34C 800ACB3C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 9B350 800ACB40 21888000 */  addu       $s1, $a0, $zero
    /* 9B354 800ACB44 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9B358 800ACB48 00000486 */  lh         $a0, 0x0($s0)
    /* 9B35C 800ACB4C 02000586 */  lh         $a1, 0x2($s0)
    /* 9B360 800ACB50 70B3020C */  jal        func_800ACDC0
    /* 9B364 800ACB54 00000000 */   nop
    /* 9B368 800ACB58 040022AE */  sw         $v0, 0x4($s1)
    /* 9B36C 800ACB5C 04000496 */  lhu        $a0, 0x4($s0)
    /* 9B370 800ACB60 00000296 */  lhu        $v0, 0x0($s0)
    /* 9B374 800ACB64 02000596 */  lhu        $a1, 0x2($s0)
    /* 9B378 800ACB68 21208200 */  addu       $a0, $a0, $v0
    /* 9B37C 800ACB6C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 9B380 800ACB70 00240400 */  sll        $a0, $a0, 16
    /* 9B384 800ACB74 06000296 */  lhu        $v0, 0x6($s0)
    /* 9B388 800ACB78 03240400 */  sra        $a0, $a0, 16
    /* 9B38C 800ACB7C 2128A200 */  addu       $a1, $a1, $v0
    /* 9B390 800ACB80 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 9B394 800ACB84 002C0500 */  sll        $a1, $a1, 16
    /* 9B398 800ACB88 96B3020C */  jal        func_800ACE58
    /* 9B39C 800ACB8C 032C0500 */   sra       $a1, $a1, 16
    /* 9B3A0 800ACB90 080022AE */  sw         $v0, 0x8($s1)
    /* 9B3A4 800ACB94 08000486 */  lh         $a0, 0x8($s0)
    /* 9B3A8 800ACB98 0A000586 */  lh         $a1, 0xA($s0)
    /* 9B3AC 800ACB9C BCB3020C */  jal        func_800ACEF0
    /* 9B3B0 800ACBA0 00000000 */   nop
    /* 9B3B4 800ACBA4 0C0022AE */  sw         $v0, 0xC($s1)
    /* 9B3B8 800ACBA8 17000492 */  lbu        $a0, 0x17($s0)
    /* 9B3BC 800ACBAC 16000592 */  lbu        $a1, 0x16($s0)
    /* 9B3C0 800ACBB0 14000696 */  lhu        $a2, 0x14($s0)
    /* 9B3C4 800ACBB4 68B3020C */  jal        func_800ACDA0
    /* 9B3C8 800ACBB8 00000000 */   nop
    /* 9B3CC 800ACBBC 0C000426 */  addiu      $a0, $s0, 0xC
    /* 9B3D0 800ACBC0 C3B3020C */  jal        func_800ACF0C
    /* 9B3D4 800ACBC4 100022AE */   sw        $v0, 0x10($s1)
    /* 9B3D8 800ACBC8 140022AE */  sw         $v0, 0x14($s1)
    /* 9B3DC 800ACBCC 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* 9B3E0 800ACBD0 180022AE */  sw         $v0, 0x18($s1)
    /* 9B3E4 800ACBD4 18000292 */  lbu        $v0, 0x18($s0)
    /* 9B3E8 800ACBD8 00000000 */  nop
    /* 9B3EC 800ACBDC 69004010 */  beqz       $v0, .L800ACD84
    /* 9B3F0 800ACBE0 07000824 */   addiu     $t0, $zero, 0x7
    /* 9B3F4 800ACBE4 00000296 */  lhu        $v0, 0x0($s0)
    /* 9B3F8 800ACBE8 00000000 */  nop
    /* 9B3FC 800ACBEC 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 9B400 800ACBF0 02000296 */  lhu        $v0, 0x2($s0)
    /* 9B404 800ACBF4 00000000 */  nop
    /* 9B408 800ACBF8 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 9B40C 800ACBFC 04000496 */  lhu        $a0, 0x4($s0)
    /* 9B410 800ACC00 00000000 */  nop
    /* 9B414 800ACC04 1400A4A7 */  sh         $a0, 0x14($sp)
    /* 9B418 800ACC08 06000296 */  lhu        $v0, 0x6($s0)
    /* 9B41C 800ACC0C 00000000 */  nop
    /* 9B420 800ACC10 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 9B424 800ACC14 00140400 */  sll        $v0, $a0, 16
    /* 9B428 800ACC18 031C0200 */  sra        $v1, $v0, 16
    /* 9B42C 800ACC1C 0B006004 */  bltz       $v1, .L800ACC4C
    /* 9B430 800ACC20 21100000 */   addu      $v0, $zero, $zero
    /* 9B434 800ACC24 0C80023C */  lui        $v0, %hi(D_800BF244)
    /* 9B438 800ACC28 44F24284 */  lh         $v0, %lo(D_800BF244)($v0)
    /* 9B43C 800ACC2C 00000000 */  nop
    /* 9B440 800ACC30 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B444 800ACC34 2A104300 */  slt        $v0, $v0, $v1
    /* 9B448 800ACC38 0C80033C */  lui        $v1, %hi(D_800BF244)
    /* 9B44C 800ACC3C 44F26394 */  lhu        $v1, %lo(D_800BF244)($v1)
    /* 9B450 800ACC40 02004014 */  bnez       $v0, .L800ACC4C
    /* 9B454 800ACC44 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 9B458 800ACC48 21108000 */  addu       $v0, $a0, $zero
  .L800ACC4C:
    /* 9B45C 800ACC4C 1600A387 */  lh         $v1, 0x16($sp)
    /* 9B460 800ACC50 1600A497 */  lhu        $a0, 0x16($sp)
    /* 9B464 800ACC54 0C006004 */  bltz       $v1, .L800ACC88
    /* 9B468 800ACC58 1400A2A7 */   sh        $v0, 0x14($sp)
    /* 9B46C 800ACC5C 0C80023C */  lui        $v0, %hi(D_800BF246)
    /* 9B470 800ACC60 46F24284 */  lh         $v0, %lo(D_800BF246)($v0)
    /* 9B474 800ACC64 00000000 */  nop
    /* 9B478 800ACC68 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B47C 800ACC6C 2A104300 */  slt        $v0, $v0, $v1
    /* 9B480 800ACC70 0C80033C */  lui        $v1, %hi(D_800BF246)
    /* 9B484 800ACC74 46F26394 */  lhu        $v1, %lo(D_800BF246)($v1)
    /* 9B488 800ACC78 04004014 */  bnez       $v0, .L800ACC8C
    /* 9B48C 800ACC7C FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 9B490 800ACC80 23B30208 */  j          .L800ACC8C
    /* 9B494 800ACC84 21108000 */   addu      $v0, $a0, $zero
  .L800ACC88:
    /* 9B498 800ACC88 21100000 */  addu       $v0, $zero, $zero
  .L800ACC8C:
    /* 9B49C 800ACC8C 1000A397 */  lhu        $v1, 0x10($sp)
    /* 9B4A0 800ACC90 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 9B4A4 800ACC94 3F006230 */  andi       $v0, $v1, 0x3F
    /* 9B4A8 800ACC98 06004014 */  bnez       $v0, .L800ACCB4
    /* 9B4AC 800ACC9C 80300800 */   sll       $a2, $t0, 2
    /* 9B4B0 800ACCA0 1400A297 */  lhu        $v0, 0x14($sp)
    /* 9B4B4 800ACCA4 00000000 */  nop
    /* 9B4B8 800ACCA8 3F004230 */  andi       $v0, $v0, 0x3F
    /* 9B4BC 800ACCAC 1F004010 */  beqz       $v0, .L800ACD2C
    /* 9B4C0 800ACCB0 80280800 */   sll       $a1, $t0, 2
  .L800ACCB4:
    /* 9B4C4 800ACCB4 01000825 */  addiu      $t0, $t0, 0x1
    /* 9B4C8 800ACCB8 80380800 */  sll        $a3, $t0, 2
    /* 9B4CC 800ACCBC 01000825 */  addiu      $t0, $t0, 0x1
    /* 9B4D0 800ACCC0 80280800 */  sll        $a1, $t0, 2
    /* 9B4D4 800ACCC4 01000825 */  addiu      $t0, $t0, 0x1
    /* 9B4D8 800ACCC8 08000296 */  lhu        $v0, 0x8($s0)
    /* 9B4DC 800ACCCC 2130D100 */  addu       $a2, $a2, $s1
    /* 9B4E0 800ACCD0 23106200 */  subu       $v0, $v1, $v0
    /* 9B4E4 800ACCD4 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 9B4E8 800ACCD8 1200A297 */  lhu        $v0, 0x12($sp)
    /* 9B4EC 800ACCDC 0A000396 */  lhu        $v1, 0xA($s0)
    /* 9B4F0 800ACCE0 0060043C */  lui        $a0, (0x60000000 >> 16)
    /* 9B4F4 800ACCE4 23104300 */  subu       $v0, $v0, $v1
    /* 9B4F8 800ACCE8 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 9B4FC 800ACCEC 1B000292 */  lbu        $v0, 0x1B($s0)
    /* 9B500 800ACCF0 1A000392 */  lbu        $v1, 0x1A($s0)
    /* 9B504 800ACCF4 00140200 */  sll        $v0, $v0, 16
    /* 9B508 800ACCF8 001A0300 */  sll        $v1, $v1, 8
    /* 9B50C 800ACCFC 25186400 */  or         $v1, $v1, $a0
    /* 9B510 800ACD00 19000492 */  lbu        $a0, 0x19($s0)
    /* 9B514 800ACD04 25104300 */  or         $v0, $v0, $v1
    /* 9B518 800ACD08 25104400 */  or         $v0, $v0, $a0
    /* 9B51C 800ACD0C 0000C2AC */  sw         $v0, 0x0($a2)
    /* 9B520 800ACD10 1000A28F */  lw         $v0, 0x10($sp)
    /* 9B524 800ACD14 2138F100 */  addu       $a3, $a3, $s1
    /* 9B528 800ACD18 0000E2AC */  sw         $v0, 0x0($a3)
    /* 9B52C 800ACD1C 1400A28F */  lw         $v0, 0x14($sp)
    /* 9B530 800ACD20 2128B100 */  addu       $a1, $a1, $s1
    /* 9B534 800ACD24 61B30208 */  j          .L800ACD84
    /* 9B538 800ACD28 0000A2AC */   sw        $v0, 0x0($a1)
  .L800ACD2C:
    /* 9B53C 800ACD2C 01000825 */  addiu      $t0, $t0, 0x1
    /* 9B540 800ACD30 80300800 */  sll        $a2, $t0, 2
    /* 9B544 800ACD34 01000825 */  addiu      $t0, $t0, 0x1
    /* 9B548 800ACD38 80380800 */  sll        $a3, $t0, 2
    /* 9B54C 800ACD3C 01000825 */  addiu      $t0, $t0, 0x1
    /* 9B550 800ACD40 2128B100 */  addu       $a1, $a1, $s1
    /* 9B554 800ACD44 0002043C */  lui        $a0, (0x2000000 >> 16)
    /* 9B558 800ACD48 1B000292 */  lbu        $v0, 0x1B($s0)
    /* 9B55C 800ACD4C 1A000392 */  lbu        $v1, 0x1A($s0)
    /* 9B560 800ACD50 00140200 */  sll        $v0, $v0, 16
    /* 9B564 800ACD54 001A0300 */  sll        $v1, $v1, 8
    /* 9B568 800ACD58 25186400 */  or         $v1, $v1, $a0
    /* 9B56C 800ACD5C 19000492 */  lbu        $a0, 0x19($s0)
    /* 9B570 800ACD60 25104300 */  or         $v0, $v0, $v1
    /* 9B574 800ACD64 25104400 */  or         $v0, $v0, $a0
    /* 9B578 800ACD68 0000A2AC */  sw         $v0, 0x0($a1)
    /* 9B57C 800ACD6C 1000A28F */  lw         $v0, 0x10($sp)
    /* 9B580 800ACD70 2130D100 */  addu       $a2, $a2, $s1
    /* 9B584 800ACD74 0000C2AC */  sw         $v0, 0x0($a2)
    /* 9B588 800ACD78 1400A28F */  lw         $v0, 0x14($sp)
    /* 9B58C 800ACD7C 2138F100 */  addu       $a3, $a3, $s1
    /* 9B590 800ACD80 0000E2AC */  sw         $v0, 0x0($a3)
  .L800ACD84:
    /* 9B594 800ACD84 FFFF0225 */  addiu      $v0, $t0, -0x1
    /* 9B598 800ACD88 030022A2 */  sb         $v0, 0x3($s1)
    /* 9B59C 800ACD8C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9B5A0 800ACD90 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 9B5A4 800ACD94 1800B08F */  lw         $s0, 0x18($sp)
    /* 9B5A8 800ACD98 0800E003 */  jr         $ra
    /* 9B5AC 800ACD9C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800ACB30
