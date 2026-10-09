nonmatching func_8006CD00, 0x90

glabel func_8006CD00
    /* 5B510 8006CD00 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5B514 8006CD04 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B518 8006CD08 21880000 */  addu       $s1, $zero, $zero
    /* 5B51C 8006CD0C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5B520 8006CD10 21988000 */  addu       $s3, $a0, $zero
    /* 5B524 8006CD14 2400BFAF */  sw         $ra, 0x24($sp)
    /* 5B528 8006CD18 2000B4AF */  sw         $s4, 0x20($sp)
    /* 5B52C 8006CD1C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B530 8006CD20 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B534 8006CD24 0A007286 */  lh         $s2, 0xA($s3)
    /* 5B538 8006CD28 00000000 */  nop
    /* 5B53C 8006CD2C 1000401A */  blez       $s2, .L8006CD70
    /* 5B540 8006CD30 21A0A000 */   addu      $s4, $a1, $zero
    /* 5B544 8006CD34 21800000 */  addu       $s0, $zero, $zero
  .L8006CD38:
    /* 5B548 8006CD38 0400638E */  lw         $v1, 0x4($s3)
    /* 5B54C 8006CD3C 00000000 */  nop
    /* 5B550 8006CD40 21307000 */  addu       $a2, $v1, $s0
    /* 5B554 8006CD44 0600C294 */  lhu        $v0, 0x6($a2)
    /* 5B558 8006CD48 00000000 */  nop
    /* 5B55C 8006CD4C 01004230 */  andi       $v0, $v0, 0x1
    /* 5B560 8006CD50 03004010 */  beqz       $v0, .L8006CD60
    /* 5B564 8006CD54 21208002 */   addu      $a0, $s4, $zero
    /* 5B568 8006CD58 F4B3010C */  jal        func_8006CFD0
    /* 5B56C 8006CD5C 21280000 */   addu      $a1, $zero, $zero
  .L8006CD60:
    /* 5B570 8006CD60 01003126 */  addiu      $s1, $s1, 0x1
    /* 5B574 8006CD64 2A103202 */  slt        $v0, $s1, $s2
    /* 5B578 8006CD68 F3FF4014 */  bnez       $v0, .L8006CD38
    /* 5B57C 8006CD6C 0C001026 */   addiu     $s0, $s0, 0xC
  .L8006CD70:
    /* 5B580 8006CD70 2400BF8F */  lw         $ra, 0x24($sp)
    /* 5B584 8006CD74 2000B48F */  lw         $s4, 0x20($sp)
    /* 5B588 8006CD78 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5B58C 8006CD7C 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B590 8006CD80 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B594 8006CD84 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B598 8006CD88 0800E003 */  jr         $ra
    /* 5B59C 8006CD8C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006CD00
