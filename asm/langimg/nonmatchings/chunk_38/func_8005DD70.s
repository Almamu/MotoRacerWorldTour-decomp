nonmatching func_8005DD70, 0xBC

glabel func_8005DD70
    /* 4C580 8005DD70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4C584 8005DD74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4C588 8005DD78 21800000 */  addu       $s0, $zero, $zero
    /* 4C58C 8005DD7C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4C590 8005DD80 7803838C */  lw         $v1, 0x378($a0)
    /* 4C594 8005DD84 0C00A004 */  bltz       $a1, .L8005DDB8
    /* 4C598 8005DD88 21300000 */   addu      $a2, $zero, $zero
    /* 4C59C 8005DD8C 40100500 */  sll        $v0, $a1, 1
    /* 4C5A0 8005DD90 21104500 */  addu       $v0, $v0, $a1
    /* 4C5A4 8005DD94 80100200 */  sll        $v0, $v0, 2
    /* 4C5A8 8005DD98 23104500 */  subu       $v0, $v0, $a1
    /* 4C5AC 8005DD9C 80100200 */  sll        $v0, $v0, 2
    /* 4C5B0 8005DDA0 23104500 */  subu       $v0, $v0, $a1
    /* 4C5B4 8005DDA4 80100200 */  sll        $v0, $v0, 2
    /* 4C5B8 8005DDA8 21104500 */  addu       $v0, $v0, $a1
    /* 4C5BC 8005DDAC C0100200 */  sll        $v0, $v0, 3
    /* 4C5C0 8005DDB0 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4C5C4 8005DDB4 21306200 */  addu       $a2, $v1, $v0
  .L8005DDB8:
    /* 4C5C8 8005DDB8 2C00C28C */  lw         $v0, 0x2C($a2)
    /* 4C5CC 8005DDBC 00000000 */  nop
    /* 4C5D0 8005DDC0 0001438C */  lw         $v1, 0x100($v0)
    /* 4C5D4 8005DDC4 00000000 */  nop
    /* 4C5D8 8005DDC8 00006480 */  lb         $a0, 0x0($v1)
    /* 4C5DC 8005DDCC 3000C58C */  lw         $a1, 0x30($a2)
    /* 4C5E0 8005DDD0 11008010 */  beqz       $a0, .L8005DE18
    /* 4C5E4 8005DDD4 02000324 */   addiu     $v1, $zero, 0x2
    /* 4C5E8 8005DDD8 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C5EC 8005DDDC 00000000 */  nop
    /* 4C5F0 8005DDE0 80160200 */  sll        $v0, $v0, 26
    /* 4C5F4 8005DDE4 C3260200 */  sra        $a0, $v0, 27
    /* 4C5F8 8005DDE8 06008314 */  bne        $a0, $v1, .L8005DE04
    /* 4C5FC 8005DDEC 01000224 */   addiu     $v0, $zero, 0x1
    /* 4C600 8005DDF0 01001024 */  addiu      $s0, $zero, 0x1
    /* 4C604 8005DDF4 F990010C */  jal        func_800643E4
    /* 4C608 8005DDF8 2120A000 */   addu      $a0, $a1, $zero
    /* 4C60C 8005DDFC 87770108 */  j          .L8005DE1C
    /* 4C610 8005DE00 21100002 */   addu      $v0, $s0, $zero
  .L8005DE04:
    /* 4C614 8005DE04 05008214 */  bne        $a0, $v0, .L8005DE1C
    /* 4C618 8005DE08 21100002 */   addu      $v0, $s0, $zero
    /* 4C61C 8005DE0C 01001024 */  addiu      $s0, $zero, 0x1
    /* 4C620 8005DE10 6191000C */  jal        func_80024584
    /* 4C624 8005DE14 2120A000 */   addu      $a0, $a1, $zero
  .L8005DE18:
    /* 4C628 8005DE18 21100002 */  addu       $v0, $s0, $zero
  .L8005DE1C:
    /* 4C62C 8005DE1C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4C630 8005DE20 1000B08F */  lw         $s0, 0x10($sp)
    /* 4C634 8005DE24 0800E003 */  jr         $ra
    /* 4C638 8005DE28 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005DD70
