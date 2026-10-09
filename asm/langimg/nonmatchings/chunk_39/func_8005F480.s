nonmatching func_8005F480, 0x24

glabel func_8005F480
    /* 4DC90 8005F480 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4DC94 8005F484 0500C214 */  bne        $a2, $v0, .L8005F49C
    /* 4DC98 8005F488 00000000 */   nop
    /* 4DC9C 8005F48C A4018294 */  lhu        $v0, 0x1A4($a0)
    /* 4DCA0 8005F490 00000000 */  nop
    /* 4DCA4 8005F494 25104500 */  or         $v0, $v0, $a1
    /* 4DCA8 8005F498 A40182A4 */  sh         $v0, 0x1A4($a0)
  .L8005F49C:
    /* 4DCAC 8005F49C 0800E003 */  jr         $ra
    /* 4DCB0 8005F4A0 00000000 */   nop
endlabel func_8005F480
