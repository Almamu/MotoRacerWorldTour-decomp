nonmatching func_8005F4A4, 0x70

glabel func_8005F4A4
    /* 4DCB4 8005F4A4 21400000 */  addu       $t0, $zero, $zero
    /* 4DCB8 8005F4A8 9001868C */  lw         $a2, 0x190($a0)
    /* 4DCBC 8005F4AC 9401878C */  lw         $a3, 0x194($a0)
    /* 4DCC0 8005F4B0 40100600 */  sll        $v0, $a2, 1
    /* 4DCC4 8005F4B4 21104600 */  addu       $v0, $v0, $a2
    /* 4DCC8 8005F4B8 80100200 */  sll        $v0, $v0, 2
    /* 4DCCC 8005F4BC 10004224 */  addiu      $v0, $v0, 0x10
    /* 4DCD0 8005F4C0 387D0108 */  j          .L8005F4E0
    /* 4DCD4 8005F4C4 21188200 */   addu      $v1, $a0, $v0
  .L8005F4C8:
    /* 4DCD8 8005F4C8 0400C104 */  bgez       $a2, .L8005F4DC
    /* 4DCDC 8005F4CC FFFFE724 */   addiu     $a3, $a3, -0x1
    /* 4DCE0 8005F4D0 1F000624 */  addiu      $a2, $zero, 0x1F
    /* 4DCE4 8005F4D4 387D0108 */  j          .L8005F4E0
    /* 4DCE8 8005F4D8 84018324 */   addiu     $v1, $a0, 0x184
  .L8005F4DC:
    /* 4DCEC 8005F4DC F4FF6324 */  addiu      $v1, $v1, -0xC
  .L8005F4E0:
    /* 4DCF0 8005F4E0 0700E018 */  blez       $a3, .L8005F500
    /* 4DCF4 8005F4E4 00000000 */   nop
    /* 4DCF8 8005F4E8 0000628C */  lw         $v0, 0x0($v1)
    /* 4DCFC 8005F4EC 00000000 */  nop
    /* 4DD00 8005F4F0 F5FF4514 */  bne        $v0, $a1, .L8005F4C8
    /* 4DD04 8005F4F4 FFFFC624 */   addiu     $a2, $a2, -0x1
    /* 4DD08 8005F4F8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4DD0C 8005F4FC 01000824 */  addiu      $t0, $zero, 0x1
  .L8005F500:
    /* 4DD10 8005F500 02000015 */  bnez       $t0, .L8005F50C
    /* 4DD14 8005F504 21106000 */   addu      $v0, $v1, $zero
    /* 4DD18 8005F508 21100000 */  addu       $v0, $zero, $zero
  .L8005F50C:
    /* 4DD1C 8005F50C 0800E003 */  jr         $ra
    /* 4DD20 8005F510 00000000 */   nop
endlabel func_8005F4A4
