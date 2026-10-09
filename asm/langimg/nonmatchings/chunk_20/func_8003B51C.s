nonmatching func_8003B51C, 0xE4

glabel func_8003B51C
    /* 29D2C 8003B51C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 29D30 8003B520 2000B2AF */  sw         $s2, 0x20($sp)
    /* 29D34 8003B524 21908000 */  addu       $s2, $a0, $zero
    /* 29D38 8003B528 1800B0AF */  sw         $s0, 0x18($sp)
    /* 29D3C 8003B52C 2180E000 */  addu       $s0, $a3, $zero
    /* 29D40 8003B530 2400BFAF */  sw         $ra, 0x24($sp)
    /* 29D44 8003B534 0600A010 */  beqz       $a1, .L8003B550
    /* 29D48 8003B538 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 29D4C 8003B53C 01000224 */  addiu      $v0, $zero, 0x1
    /* 29D50 8003B540 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 29D54 8003B544 1000A2AF */  sw         $v0, 0x10($sp)
    /* 29D58 8003B548 80ED000C */  jal        func_8003B600
    /* 29D5C 8003B54C 1400A2AF */   sw        $v0, 0x14($sp)
  .L8003B550:
    /* 29D60 8003B550 25000012 */  beqz       $s0, .L8003B5E8
    /* 29D64 8003B554 00000000 */   nop
    /* 29D68 8003B558 B40A428E */  lw         $v0, 0xAB4($s2)
    /* 29D6C 8003B55C 00000000 */  nop
    /* 29D70 8003B560 21004018 */  blez       $v0, .L8003B5E8
    /* 29D74 8003B564 21800000 */   addu      $s0, $zero, $zero
  .L8003B568:
    /* 29D78 8003B568 B80A438E */  lw         $v1, 0xAB8($s2)
    /* 29D7C 8003B56C 00891000 */  sll        $s1, $s0, 4
    /* 29D80 8003B570 21182302 */  addu       $v1, $s1, $v1
    /* 29D84 8003B574 0400648C */  lw         $a0, 0x4($v1)
    /* 29D88 8003B578 4A5C020C */  jal        func_80097128
    /* 29D8C 8003B57C 00000000 */   nop
    /* 29D90 8003B580 14004010 */  beqz       $v0, .L8003B5D4
    /* 29D94 8003B584 01001026 */   addiu     $s0, $s0, 0x1
    /* 29D98 8003B588 B80A438E */  lw         $v1, 0xAB8($s2)
    /* 29D9C 8003B58C 880A448E */  lw         $a0, 0xA88($s2)
    /* 29DA0 8003B590 21182302 */  addu       $v1, $s1, $v1
    /* 29DA4 8003B594 0800628C */  lw         $v0, 0x8($v1)
    /* 29DA8 8003B598 00000000 */  nop
    /* 29DAC 8003B59C 800A42AE */  sw         $v0, 0xA80($s2)
    /* 29DB0 8003B5A0 0000668C */  lw         $a2, 0x0($v1)
    /* 29DB4 8003B5A4 0C00658C */  lw         $a1, 0xC($v1)
    /* 29DB8 8003B5A8 80300600 */  sll        $a2, $a2, 2
    /* 29DBC 8003B5AC 46D8020C */  jal        memcpy
    /* 29DC0 8003B5B0 FFFFC624 */   addiu     $a2, $a2, -0x1
    /* 29DC4 8003B5B4 B80A428E */  lw         $v0, 0xAB8($s2)
    /* 29DC8 8003B5B8 00000000 */  nop
    /* 29DCC 8003B5BC 21102202 */  addu       $v0, $s1, $v0
    /* 29DD0 8003B5C0 0000438C */  lw         $v1, 0x0($v0)
    /* 29DD4 8003B5C4 00000000 */  nop
    /* 29DD8 8003B5C8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 29DDC 8003B5CC 7AED0008 */  j          .L8003B5E8
    /* 29DE0 8003B5D0 8C0A43AE */   sw        $v1, 0xA8C($s2)
  .L8003B5D4:
    /* 29DE4 8003B5D4 B40A428E */  lw         $v0, 0xAB4($s2)
    /* 29DE8 8003B5D8 00000000 */  nop
    /* 29DEC 8003B5DC 2A100202 */  slt        $v0, $s0, $v0
    /* 29DF0 8003B5E0 E1FF4014 */  bnez       $v0, .L8003B568
    /* 29DF4 8003B5E4 00000000 */   nop
  .L8003B5E8:
    /* 29DF8 8003B5E8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 29DFC 8003B5EC 2000B28F */  lw         $s2, 0x20($sp)
    /* 29E00 8003B5F0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 29E04 8003B5F4 1800B08F */  lw         $s0, 0x18($sp)
    /* 29E08 8003B5F8 0800E003 */  jr         $ra
    /* 29E0C 8003B5FC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8003B51C
