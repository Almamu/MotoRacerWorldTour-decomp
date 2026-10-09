nonmatching func_800AEDC0, 0x44

glabel func_800AEDC0
    /* 9D5D0 800AEDC0 7410628C */  lw         $v0, 0x1074($v1)
    /* 9D5D4 800AEDC4 00000000 */  nop
    /* 9D5D8 800AEDC8 80004230 */  andi       $v0, $v0, 0x80
    /* 9D5DC 800AEDCC 0B004010 */  beqz       $v0, .L800AEDFC
    /* 9D5E0 800AEDD0 00000000 */   nop
  .L800AEDD4:
    /* 9D5E4 800AEDD4 4410628C */  lw         $v0, 0x1044($v1)
    /* 9D5E8 800AEDD8 00000000 */  nop
    /* 9D5EC 800AEDDC 80004230 */  andi       $v0, $v0, 0x80
    /* 9D5F0 800AEDE0 FCFF4014 */  bnez       $v0, .L800AEDD4
    /* 9D5F4 800AEDE4 00000000 */   nop
    /* 9D5F8 800AEDE8 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 9D5FC 800AEDEC FCDF428C */  lw         $v0, -0x2004($v0)
    /* 9D600 800AEDF0 00000000 */  nop
    /* 9D604 800AEDF4 08004000 */  jr         $v0
    /* 9D608 800AEDF8 00000000 */   nop
  .L800AEDFC:
    /* 9D60C 800AEDFC 0800E003 */  jr         $ra
    /* 9D610 800AEE00 00000000 */   nop
endlabel func_800AEDC0
