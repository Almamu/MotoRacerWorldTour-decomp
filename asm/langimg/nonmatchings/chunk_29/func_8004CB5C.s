nonmatching func_8004CB5C, 0x200

glabel func_8004CB5C
    /* 3B36C 8004CB5C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 3B370 8004CB60 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 3B374 8004CB64 21A80000 */  addu       $s5, $zero, $zero
    /* 3B378 8004CB68 3000B2AF */  sw         $s2, 0x30($sp)
    /* 3B37C 8004CB6C 3400B3AF */  sw         $s3, 0x34($sp)
    /* 3B380 8004CB70 21988000 */  addu       $s3, $a0, $zero
    /* 3B384 8004CB74 4000B6AF */  sw         $s6, 0x40($sp)
    /* 3B388 8004CB78 21B0A000 */  addu       $s6, $a1, $zero
    /* 3B38C 8004CB7C 21107602 */  addu       $v0, $s3, $s6
    /* 3B390 8004CB80 4400BFAF */  sw         $ra, 0x44($sp)
    /* 3B394 8004CB84 3800B4AF */  sw         $s4, 0x38($sp)
    /* 3B398 8004CB88 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3B39C 8004CB8C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 3B3A0 8004CB90 70044380 */  lb         $v1, 0x470($v0)
    /* 3B3A4 8004CB94 7803688E */  lw         $t0, 0x378($s3)
    /* 3B3A8 8004CB98 0C006004 */  bltz       $v1, .L8004CBCC
    /* 3B3AC 8004CB9C 21900000 */   addu      $s2, $zero, $zero
    /* 3B3B0 8004CBA0 40100300 */  sll        $v0, $v1, 1
    /* 3B3B4 8004CBA4 21104300 */  addu       $v0, $v0, $v1
    /* 3B3B8 8004CBA8 80100200 */  sll        $v0, $v0, 2
    /* 3B3BC 8004CBAC 23104300 */  subu       $v0, $v0, $v1
    /* 3B3C0 8004CBB0 80100200 */  sll        $v0, $v0, 2
    /* 3B3C4 8004CBB4 23104300 */  subu       $v0, $v0, $v1
    /* 3B3C8 8004CBB8 80100200 */  sll        $v0, $v0, 2
    /* 3B3CC 8004CBBC 21104300 */  addu       $v0, $v0, $v1
    /* 3B3D0 8004CBC0 C0100200 */  sll        $v0, $v0, 3
    /* 3B3D4 8004CBC4 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 3B3D8 8004CBC8 21900201 */  addu       $s2, $t0, $v0
  .L8004CBCC:
    /* 3B3DC 8004CBCC 59004012 */  beqz       $s2, .L8004CD34
    /* 3B3E0 8004CBD0 2110A002 */   addu      $v0, $s5, $zero
    /* 3B3E4 8004CBD4 3000548E */  lw         $s4, 0x30($s2)
    /* 3B3E8 8004CBD8 00000000 */  nop
    /* 3B3EC 8004CBDC 54008012 */  beqz       $s4, .L8004CD30
    /* 3B3F0 8004CBE0 80101600 */   sll       $v0, $s6, 2
    /* 3B3F4 8004CBE4 21106202 */  addu       $v0, $s3, $v0
    /* 3B3F8 8004CBE8 4A1F0381 */  lb         $v1, 0x1F4A($t0)
    /* 3B3FC 8004CBEC 3C04508C */  lw         $s0, 0x43C($v0)
    /* 3B400 8004CBF0 0A006010 */  beqz       $v1, .L8004CC1C
    /* 3B404 8004CBF4 21286002 */   addu      $a1, $s3, $zero
    /* 3B408 8004CBF8 21384002 */  addu       $a3, $s2, $zero
    /* 3B40C 8004CBFC 5804648E */  lw         $a0, 0x458($s3)
    /* 3B410 8004CC00 0D80063C */  lui        $a2, %hi(D_800D60EC)
    /* 3B414 8004CC04 EC60C68C */  lw         $a2, %lo(D_800D60EC)($a2)
    /* 3B418 8004CC08 401E0225 */  addiu      $v0, $t0, 0x1E40
    /* 3B41C 8004CC0C 4031020C */  jal        func_8008C500
    /* 3B420 8004CC10 1000A2AF */   sw        $v0, 0x10($sp)
    /* 3B424 8004CC14 1E330108 */  j          .L8004CC78
    /* 3B428 8004CC18 21884000 */   addu      $s1, $v0, $zero
  .L8004CC1C:
    /* 3B42C 8004CC1C 3400828E */  lw         $v0, 0x34($s4)
    /* 3B430 8004CC20 00000000 */  nop
    /* 3B434 8004CC24 1400498C */  lw         $t1, 0x14($v0)
    /* 3B438 8004CC28 18004A8C */  lw         $t2, 0x18($v0)
    /* 3B43C 8004CC2C 1C004B8C */  lw         $t3, 0x1C($v0)
    /* 3B440 8004CC30 1800A9AF */  sw         $t1, 0x18($sp)
    /* 3B444 8004CC34 1C00AAAF */  sw         $t2, 0x1C($sp)
    /* 3B448 8004CC38 2000ABAF */  sw         $t3, 0x20($sp)
    /* 3B44C 8004CC3C 6003438E */  lw         $v1, 0x360($s2)
    /* 3B450 8004CC40 00000000 */  nop
    /* 3B454 8004CC44 07006010 */  beqz       $v1, .L8004CC64
    /* 3B458 8004CC48 21380000 */   addu      $a3, $zero, $zero
    /* 3B45C 8004CC4C DD034382 */  lb         $v1, 0x3DD($s2)
    /* 3B460 8004CC50 00000000 */  nop
    /* 3B464 8004CC54 1A006228 */  slti       $v0, $v1, 0x1A
    /* 3B468 8004CC58 02004014 */  bnez       $v0, .L8004CC64
    /* 3B46C 8004CC5C 00000000 */   nop
    /* 3B470 8004CC60 E7FF6724 */  addiu      $a3, $v1, -0x19
  .L8004CC64:
    /* 3B474 8004CC64 5804648E */  lw         $a0, 0x458($s3)
    /* 3B478 8004CC68 21286002 */  addu       $a1, $s3, $zero
    /* 3B47C 8004CC6C 9E31020C */  jal        func_8008C678
    /* 3B480 8004CC70 1800A627 */   addiu     $a2, $sp, 0x18
    /* 3B484 8004CC74 21884000 */  addu       $s1, $v0, $zero
  .L8004CC78:
    /* 3B488 8004CC78 10002012 */  beqz       $s1, .L8004CCBC
    /* 3B48C 8004CC7C 21202002 */   addu      $a0, $s1, $zero
    /* 3B490 8004CC80 21280002 */  addu       $a1, $s0, $zero
    /* 3B494 8004CC84 21308002 */  addu       $a2, $s4, $zero
    /* 3B498 8004CC88 21384002 */  addu       $a3, $s2, $zero
    /* 3B49C 8004CC8C 01001524 */  addiu      $s5, $zero, 0x1
    /* 3B4A0 8004CC90 3400838E */  lw         $v1, 0x34($s4)
    /* 3B4A4 8004CC94 1800A227 */  addiu      $v0, $sp, 0x18
    /* 3B4A8 8004CC98 1400698C */  lw         $t1, 0x14($v1)
    /* 3B4AC 8004CC9C 18006A8C */  lw         $t2, 0x18($v1)
    /* 3B4B0 8004CCA0 1C006B8C */  lw         $t3, 0x1C($v1)
    /* 3B4B4 8004CCA4 1800A9AF */  sw         $t1, 0x18($sp)
    /* 3B4B8 8004CCA8 1C00AAAF */  sw         $t2, 0x1C($sp)
    /* 3B4BC 8004CCAC 2000ABAF */  sw         $t3, 0x20($sp)
    /* 3B4C0 8004CCB0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3B4C4 8004CCB4 2C2F020C */  jal        func_8008BCB0
    /* 3B4C8 8004CCB8 1400B3AF */   sw        $s3, 0x14($sp)
  .L8004CCBC:
    /* 3B4CC 8004CCBC 5C04628E */  lw         $v0, 0x45C($s3)
    /* 3B4D0 8004CCC0 00000000 */  nop
    /* 3B4D4 8004CCC4 03005110 */  beq        $v0, $s1, .L8004CCD4
    /* 3B4D8 8004CCC8 21187602 */   addu      $v1, $s3, $s6
    /* 3B4DC 8004CCCC 01000224 */  addiu      $v0, $zero, 0x1
    /* 3B4E0 8004CCD0 380462A0 */  sb         $v0, 0x438($v1)
  .L8004CCD4:
    /* 3B4E4 8004CCD4 1600A016 */  bnez       $s5, .L8004CD30
    /* 3B4E8 8004CCD8 5C0471AE */   sw        $s1, 0x45C($s3)
    /* 3B4EC 8004CCDC 21206002 */  addu       $a0, $s3, $zero
    /* 3B4F0 8004CCE0 2128C002 */  addu       $a1, $s6, $zero
    /* 3B4F4 8004CCE4 21304002 */  addu       $a2, $s2, $zero
    /* 3B4F8 8004CCE8 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3B4FC 8004CCEC 000002A6 */  sh         $v0, 0x0($s0)
    /* 3B500 8004CCF0 080002A6 */  sh         $v0, 0x8($s0)
    /* 3B504 8004CCF4 100002A6 */  sh         $v0, 0x10($s0)
    /* 3B508 8004CCF8 F8000226 */  addiu      $v0, $s0, 0xF8
    /* 3B50C 8004CCFC 140000AE */  sw         $zero, 0x14($s0)
    /* 3B510 8004CD00 040000A6 */  sh         $zero, 0x4($s0)
    /* 3B514 8004CD04 020000A6 */  sh         $zero, 0x2($s0)
    /* 3B518 8004CD08 180000AE */  sw         $zero, 0x18($s0)
    /* 3B51C 8004CD0C 0A0000A6 */  sh         $zero, 0xA($s0)
    /* 3B520 8004CD10 060000A6 */  sh         $zero, 0x6($s0)
    /* 3B524 8004CD14 1C0000AE */  sw         $zero, 0x1C($s0)
    /* 3B528 8004CD18 0E0000A6 */  sh         $zero, 0xE($s0)
    /* 3B52C 8004CD1C 0C0000A6 */  sh         $zero, 0xC($s0)
    /* 3B530 8004CD20 080040AC */  sw         $zero, 0x8($v0)
    /* 3B534 8004CD24 040040AC */  sw         $zero, 0x4($v0)
    /* 3B538 8004CD28 1C32010C */  jal        func_8004C870
    /* 3B53C 8004CD2C F80000AE */   sw        $zero, 0xF8($s0)
  .L8004CD30:
    /* 3B540 8004CD30 2110A002 */  addu       $v0, $s5, $zero
  .L8004CD34:
    /* 3B544 8004CD34 4400BF8F */  lw         $ra, 0x44($sp)
    /* 3B548 8004CD38 4000B68F */  lw         $s6, 0x40($sp)
    /* 3B54C 8004CD3C 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 3B550 8004CD40 3800B48F */  lw         $s4, 0x38($sp)
    /* 3B554 8004CD44 3400B38F */  lw         $s3, 0x34($sp)
    /* 3B558 8004CD48 3000B28F */  lw         $s2, 0x30($sp)
    /* 3B55C 8004CD4C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 3B560 8004CD50 2800B08F */  lw         $s0, 0x28($sp)
    /* 3B564 8004CD54 0800E003 */  jr         $ra
    /* 3B568 8004CD58 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel func_8004CB5C
