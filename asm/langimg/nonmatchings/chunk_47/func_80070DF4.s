nonmatching func_80070DF4, 0x2C

glabel func_80070DF4
    /* 5F604 80070DF4 21100000 */  addu       $v0, $zero, $zero
  .L80070DF8:
    /* 5F608 80070DF8 0700C010 */  beqz       $a2, .L80070E18
    /* 5F60C 80070DFC 00000000 */   nop
    /* 5F610 80070E00 0400C28C */  lw         $v0, 0x4($a2)
    /* 5F614 80070E04 0000C68C */  lw         $a2, 0x0($a2)
    /* 5F618 80070E08 26104500 */  xor        $v0, $v0, $a1
    /* 5F61C 80070E0C 0100422C */  sltiu      $v0, $v0, 0x1
    /* 5F620 80070E10 F9FF4010 */  beqz       $v0, .L80070DF8
    /* 5F624 80070E14 00000000 */   nop
  .L80070E18:
    /* 5F628 80070E18 0800E003 */  jr         $ra
    /* 5F62C 80070E1C 00000000 */   nop
endlabel func_80070DF4
