nonmatching func_8001CC14, 0x320

glabel func_8001CC14
    /* B424 8001CC14 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* B428 8001CC18 4000B6AF */  sw         $s6, 0x40($sp)
    /* B42C 8001CC1C 21B08000 */  addu       $s6, $a0, $zero
    /* B430 8001CC20 3400B3AF */  sw         $s3, 0x34($sp)
    /* B434 8001CC24 21980000 */  addu       $s3, $zero, $zero
    /* B438 8001CC28 21300000 */  addu       $a2, $zero, $zero
    /* B43C 8001CC2C 4400BFAF */  sw         $ra, 0x44($sp)
    /* B440 8001CC30 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* B444 8001CC34 3800B4AF */  sw         $s4, 0x38($sp)
    /* B448 8001CC38 3000B2AF */  sw         $s2, 0x30($sp)
    /* B44C 8001CC3C 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* B450 8001CC40 2800B0AF */  sw         $s0, 0x28($sp)
    /* B454 8001CC44 7803A28C */  lw         $v0, 0x378($a1)
    /* B458 8001CC48 1000A427 */  addiu      $a0, $sp, 0x10
    /* B45C 8001CC4C E8024324 */  addiu      $v1, $v0, 0x2E8
  .L8001CC50:
    /* B460 8001CC50 0000628C */  lw         $v0, 0x0($v1)
    /* B464 8001CC54 00000000 */  nop
    /* B468 8001CC58 82110200 */  srl        $v0, $v0, 6
    /* B46C 8001CC5C 01004230 */  andi       $v0, $v0, 0x1
    /* B470 8001CC60 04004010 */  beqz       $v0, .L8001CC74
    /* B474 8001CC64 00000000 */   nop
    /* B478 8001CC68 000083AC */  sw         $v1, 0x0($a0)
    /* B47C 8001CC6C 04008424 */  addiu      $a0, $a0, 0x4
    /* B480 8001CC70 01007326 */  addiu      $s3, $s3, 0x1
  .L8001CC74:
    /* B484 8001CC74 0100C624 */  addiu      $a2, $a2, 0x1
    /* B488 8001CC78 0500C228 */  slti       $v0, $a2, 0x5
    /* B48C 8001CC7C F4FF4014 */  bnez       $v0, .L8001CC50
    /* B490 8001CC80 68056324 */   addiu     $v1, $v1, 0x568
    /* B494 8001CC84 FFFF7026 */  addiu      $s0, $s3, -0x1
    /* B498 8001CC88 2100001A */  blez       $s0, .L8001CD10
    /* B49C 8001CC8C 21A00002 */   addu      $s4, $s0, $zero
  .L8001CC90:
    /* B4A0 8001CC90 1000A28F */  lw         $v0, 0x10($sp)
    /* B4A4 8001CC94 00000000 */  nop
    /* B4A8 8001CC98 3000438C */  lw         $v1, 0x30($v0)
    /* B4AC 8001CC9C 21300000 */  addu       $a2, $zero, $zero
    /* B4B0 8001CCA0 1800001A */  blez       $s0, .L8001CD04
    /* B4B4 8001CCA4 B4016724 */   addiu     $a3, $v1, 0x1B4
    /* B4B8 8001CCA8 1000AB27 */  addiu      $t3, $sp, 0x10
    /* B4BC 8001CCAC 0100CA24 */  addiu      $t2, $a2, 0x1
  .L8001CCB0:
    /* B4C0 8001CCB0 80100A00 */  sll        $v0, $t2, 2
    /* B4C4 8001CCB4 21486201 */  addu       $t1, $t3, $v0
    /* B4C8 8001CCB8 0000288D */  lw         $t0, 0x0($t1)
    /* B4CC 8001CCBC 2128E000 */  addu       $a1, $a3, $zero
    /* B4D0 8001CCC0 3000038D */  lw         $v1, 0x30($t0)
    /* B4D4 8001CCC4 5400A48C */  lw         $a0, 0x54($a1)
    /* B4D8 8001CCC8 B4016724 */  addiu      $a3, $v1, 0x1B4
    /* B4DC 8001CCCC 5400E28C */  lw         $v0, 0x54($a3)
    /* B4E0 8001CCD0 00000000 */  nop
    /* B4E4 8001CCD4 2A104400 */  slt        $v0, $v0, $a0
    /* B4E8 8001CCD8 06004010 */  beqz       $v0, .L8001CCF4
    /* B4EC 8001CCDC 80100600 */   sll       $v0, $a2, 2
    /* B4F0 8001CCE0 21106201 */  addu       $v0, $t3, $v0
    /* B4F4 8001CCE4 0000438C */  lw         $v1, 0x0($v0)
    /* B4F8 8001CCE8 2138A000 */  addu       $a3, $a1, $zero
    /* B4FC 8001CCEC 000048AC */  sw         $t0, 0x0($v0)
    /* B500 8001CCF0 000023AD */  sw         $v1, 0x0($t1)
  .L8001CCF4:
    /* B504 8001CCF4 21304001 */  addu       $a2, $t2, $zero
    /* B508 8001CCF8 2A10D000 */  slt        $v0, $a2, $s0
    /* B50C 8001CCFC ECFF4014 */  bnez       $v0, .L8001CCB0
    /* B510 8001CD00 0100CA24 */   addiu     $t2, $a2, 0x1
  .L8001CD04:
    /* B514 8001CD04 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* B518 8001CD08 E1FF001E */  bgtz       $s0, .L8001CC90
    /* B51C 8001CD0C 00000000 */   nop
  .L8001CD10:
    /* B520 8001CD10 01001024 */  addiu      $s0, $zero, 0x1
    /* B524 8001CD14 2A101402 */  slt        $v0, $s0, $s4
    /* B528 8001CD18 14004010 */  beqz       $v0, .L8001CD6C
    /* B52C 8001CD1C 0200622A */   slti      $v0, $s3, 0x2
    /* B530 8001CD20 1000A827 */  addiu      $t0, $sp, 0x10
  .L8001CD24:
    /* B534 8001CD24 80101000 */  sll        $v0, $s0, 2
    /* B538 8001CD28 21100201 */  addu       $v0, $t0, $v0
    /* B53C 8001CD2C 01000726 */  addiu      $a3, $s0, 0x1
    /* B540 8001CD30 80200700 */  sll        $a0, $a3, 2
    /* B544 8001CD34 21200401 */  addu       $a0, $t0, $a0
    /* B548 8001CD38 0000458C */  lw         $a1, 0x0($v0)
    /* B54C 8001CD3C FFFF0226 */  addiu      $v0, $s0, -0x1
    /* B550 8001CD40 80100200 */  sll        $v0, $v0, 2
    /* B554 8001CD44 21100201 */  addu       $v0, $t0, $v0
    /* B558 8001CD48 0000838C */  lw         $v1, 0x0($a0)
    /* B55C 8001CD4C 3000A68C */  lw         $a2, 0x30($a1)
    /* B560 8001CD50 2180E000 */  addu       $s0, $a3, $zero
    /* B564 8001CD54 B401C3AC */  sw         $v1, 0x1B4($a2)
    /* B568 8001CD58 0000438C */  lw         $v1, 0x0($v0)
    /* B56C 8001CD5C 2A101402 */  slt        $v0, $s0, $s4
    /* B570 8001CD60 F0FF4014 */  bnez       $v0, .L8001CD24
    /* B574 8001CD64 B801C3AC */   sw        $v1, 0x1B8($a2)
    /* B578 8001CD68 0200622A */  slti       $v0, $s3, 0x2
  .L8001CD6C:
    /* B57C 8001CD6C 5E004014 */  bnez       $v0, .L8001CEE8
    /* B580 8001CD70 80281400 */   sll       $a1, $s4, 2
    /* B584 8001CD74 1000B127 */  addiu      $s1, $sp, 0x10
    /* B588 8001CD78 21282502 */  addu       $a1, $s1, $a1
    /* B58C 8001CD7C 0000A28C */  lw         $v0, 0x0($a1)
    /* B590 8001CD80 1000A38F */  lw         $v1, 0x10($sp)
    /* B594 8001CD84 3000468C */  lw         $a2, 0x30($v0)
    /* B598 8001CD88 FEFF6226 */  addiu      $v0, $s3, -0x2
    /* B59C 8001CD8C 80100200 */  sll        $v0, $v0, 2
    /* B5A0 8001CD90 3000688C */  lw         $t0, 0x30($v1)
    /* B5A4 8001CD94 21102202 */  addu       $v0, $s1, $v0
    /* B5A8 8001CD98 B401C3AC */  sw         $v1, 0x1B4($a2)
    /* B5AC 8001CD9C 0000438C */  lw         $v1, 0x0($v0)
    /* B5B0 8001CDA0 2120C002 */  addu       $a0, $s6, $zero
    /* B5B4 8001CDA4 B801C3AC */  sw         $v1, 0x1B8($a2)
    /* B5B8 8001CDA8 0000A28C */  lw         $v0, 0x0($a1)
    /* B5BC 8001CDAC 21800000 */  addu       $s0, $zero, $zero
    /* B5C0 8001CDB0 B80102AD */  sw         $v0, 0x1B8($t0)
    /* B5C4 8001CDB4 1400A38F */  lw         $v1, 0x14($sp)
    /* B5C8 8001CDB8 21A80000 */  addu       $s5, $zero, $zero
    /* B5CC 8001CDBC B40103AD */  sw         $v1, 0x1B4($t0)
    /* B5D0 8001CDC0 0000A28C */  lw         $v0, 0x0($a1)
    /* B5D4 8001CDC4 1000A78F */  lw         $a3, 0x10($sp)
    /* B5D8 8001CDC8 3000458C */  lw         $a1, 0x30($v0)
    /* B5DC 8001CDCC 3000E68C */  lw         $a2, 0x30($a3)
    /* B5E0 8001CDD0 B401A524 */  addiu      $a1, $a1, 0x1B4
    /* B5E4 8001CDD4 0674000C */  jal        func_8001D018
    /* B5E8 8001CDD8 B401C624 */   addiu     $a2, $a2, 0x1B4
    /* B5EC 8001CDDC 02004104 */  bgez       $v0, .L8001CDE8
    /* B5F0 8001CDE0 21904000 */   addu      $s2, $v0, $zero
    /* B5F4 8001CDE4 23901200 */  negu       $s2, $s2
  .L8001CDE8:
    /* B5F8 8001CDE8 1800601A */  blez       $s3, .L8001CE4C
    /* B5FC 8001CDEC 21308002 */   addu      $a2, $s4, $zero
    /* B600 8001CDF0 21A02002 */  addu       $s4, $s1, $zero
  .L8001CDF4:
    /* B604 8001CDF4 2120C002 */  addu       $a0, $s6, $zero
    /* B608 8001CDF8 80100600 */  sll        $v0, $a2, 2
    /* B60C 8001CDFC 21108202 */  addu       $v0, $s4, $v0
    /* B610 8001CE00 0000438C */  lw         $v1, 0x0($v0)
    /* B614 8001CE04 0000278E */  lw         $a3, 0x0($s1)
    /* B618 8001CE08 3000658C */  lw         $a1, 0x30($v1)
    /* B61C 8001CE0C 3000E68C */  lw         $a2, 0x30($a3)
    /* B620 8001CE10 B401A524 */  addiu      $a1, $a1, 0x1B4
    /* B624 8001CE14 0674000C */  jal        func_8001D018
    /* B628 8001CE18 B401C624 */   addiu     $a2, $a2, 0x1B4
    /* B62C 8001CE1C 02004104 */  bgez       $v0, .L8001CE28
    /* B630 8001CE20 00000000 */   nop
    /* B634 8001CE24 23100200 */  negu       $v0, $v0
  .L8001CE28:
    /* B638 8001CE28 2A184202 */  slt        $v1, $s2, $v0
    /* B63C 8001CE2C 03006010 */  beqz       $v1, .L8001CE3C
    /* B640 8001CE30 21300002 */   addu      $a2, $s0, $zero
    /* B644 8001CE34 21904000 */  addu       $s2, $v0, $zero
    /* B648 8001CE38 21A80002 */  addu       $s5, $s0, $zero
  .L8001CE3C:
    /* B64C 8001CE3C 01001026 */  addiu      $s0, $s0, 0x1
    /* B650 8001CE40 2A101302 */  slt        $v0, $s0, $s3
    /* B654 8001CE44 EBFF4014 */  bnez       $v0, .L8001CDF4
    /* B658 8001CE48 04003126 */   addiu     $s1, $s1, 0x4
  .L8001CE4C:
    /* B65C 8001CE4C 21800000 */  addu       $s0, $zero, $zero
    /* B660 8001CE50 0D80063C */  lui        $a2, %hi(D_800D60FC)
    /* B664 8001CE54 FC60C68C */  lw         $a2, %lo(D_800D60FC)($a2)
    /* B668 8001CE58 1E00601A */  blez       $s3, .L8001CED4
    /* B66C 8001CE5C 1000A727 */   addiu     $a3, $sp, 0x10
    /* B670 8001CE60 2128E000 */  addu       $a1, $a3, $zero
  .L8001CE64:
    /* B674 8001CE64 0000A48C */  lw         $a0, 0x0($a1)
    /* B678 8001CE68 00000000 */  nop
    /* B67C 8001CE6C 3000828C */  lw         $v0, 0x30($a0)
    /* B680 8001CE70 00000000 */  nop
    /* B684 8001CE74 BC01438C */  lw         $v1, 0x1BC($v0)
    /* B688 8001CE78 B401428C */  lw         $v0, 0x1B4($v0)
    /* B68C 8001CE7C 0D006010 */  beqz       $v1, .L8001CEB4
    /* B690 8001CE80 00000000 */   nop
    /* B694 8001CE84 0B006214 */  bne        $v1, $v0, .L8001CEB4
    /* B698 8001CE88 00000000 */   nop
    /* B69C 8001CE8C 3005828C */  lw         $v0, 0x530($a0)
    /* B6A0 8001CE90 00000000 */  nop
    /* B6A4 8001CE94 2310C200 */  subu       $v0, $a2, $v0
    /* B6A8 8001CE98 11274228 */  slti       $v0, $v0, 0x2711
    /* B6AC 8001CE9C 05004014 */  bnez       $v0, .L8001CEB4
    /* B6B0 8001CEA0 00000000 */   nop
    /* B6B4 8001CEA4 300586AC */  sw         $a2, 0x530($a0)
    /* B6B8 8001CEA8 0000A28C */  lw         $v0, 0x0($a1)
    /* B6BC 8001CEAC 00000000 */  nop
    /* B6C0 8001CEB0 340540AC */  sw         $zero, 0x534($v0)
  .L8001CEB4:
    /* B6C4 8001CEB4 0000A28C */  lw         $v0, 0x0($a1)
    /* B6C8 8001CEB8 0400A524 */  addiu      $a1, $a1, 0x4
    /* B6CC 8001CEBC 3000448C */  lw         $a0, 0x30($v0)
    /* B6D0 8001CEC0 01001026 */  addiu      $s0, $s0, 0x1
    /* B6D4 8001CEC4 B801838C */  lw         $v1, 0x1B8($a0)
    /* B6D8 8001CEC8 2A101302 */  slt        $v0, $s0, $s3
    /* B6DC 8001CECC E5FF4014 */  bnez       $v0, .L8001CE64
    /* B6E0 8001CED0 BC0183AC */   sw        $v1, 0x1BC($a0)
  .L8001CED4:
    /* B6E4 8001CED4 80181500 */  sll        $v1, $s5, 2
    /* B6E8 8001CED8 2118E300 */  addu       $v1, $a3, $v1
    /* B6EC 8001CEDC 0000628C */  lw         $v0, 0x0($v1)
    /* B6F0 8001CEE0 C3730008 */  j          .L8001CF0C
    /* B6F4 8001CEE4 00000000 */   nop
  .L8001CEE8:
    /* B6F8 8001CEE8 08006012 */  beqz       $s3, .L8001CF0C
    /* B6FC 8001CEEC 21100000 */   addu      $v0, $zero, $zero
    /* B700 8001CEF0 1000A28F */  lw         $v0, 0x10($sp)
    /* B704 8001CEF4 00000000 */  nop
    /* B708 8001CEF8 3000438C */  lw         $v1, 0x30($v0)
    /* B70C 8001CEFC 00000000 */  nop
    /* B710 8001CF00 B40160AC */  sw         $zero, 0x1B4($v1)
    /* B714 8001CF04 B80160AC */  sw         $zero, 0x1B8($v1)
    /* B718 8001CF08 21100000 */  addu       $v0, $zero, $zero
  .L8001CF0C:
    /* B71C 8001CF0C 4400BF8F */  lw         $ra, 0x44($sp)
    /* B720 8001CF10 4000B68F */  lw         $s6, 0x40($sp)
    /* B724 8001CF14 3C00B58F */  lw         $s5, 0x3C($sp)
    /* B728 8001CF18 3800B48F */  lw         $s4, 0x38($sp)
    /* B72C 8001CF1C 3400B38F */  lw         $s3, 0x34($sp)
    /* B730 8001CF20 3000B28F */  lw         $s2, 0x30($sp)
    /* B734 8001CF24 2C00B18F */  lw         $s1, 0x2C($sp)
    /* B738 8001CF28 2800B08F */  lw         $s0, 0x28($sp)
    /* B73C 8001CF2C 0800E003 */  jr         $ra
    /* B740 8001CF30 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel func_8001CC14
