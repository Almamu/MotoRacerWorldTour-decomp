nonmatching func_8003CD38, 0x50

glabel func_8003CD38
    /* 2B548 8003CD38 21308000 */  addu       $a2, $a0, $zero
    /* 2B54C 8003CD3C 940AC28C */  lw         $v0, 0xA94($a2)
    /* 2B550 8003CD40 00000000 */  nop
    /* 2B554 8003CD44 02004230 */  andi       $v0, $v0, 0x2
    /* 2B558 8003CD48 0D004014 */  bnez       $v0, .L8003CD80
    /* 2B55C 8003CD4C 00000000 */   nop
    /* 2B560 8003CD50 700AC28C */  lw         $v0, 0xA70($a2)
    /* 2B564 8003CD54 8C0AC38C */  lw         $v1, 0xA8C($a2)
    /* 2B568 8003CD58 01004224 */  addiu      $v0, $v0, 0x1
    /* 2B56C 8003CD5C 2A106200 */  slt        $v0, $v1, $v0
    /* 2B570 8003CD60 07004010 */  beqz       $v0, .L8003CD80
    /* 2B574 8003CD64 80100300 */   sll       $v0, $v1, 2
    /* 2B578 8003CD68 01006324 */  addiu      $v1, $v1, 0x1
    /* 2B57C 8003CD6C 880AC48C */  lw         $a0, 0xA88($a2)
    /* 2B580 8003CD70 800AC58C */  lw         $a1, 0xA80($a2)
    /* 2B584 8003CD74 21104400 */  addu       $v0, $v0, $a0
    /* 2B588 8003CD78 000045AC */  sw         $a1, 0x0($v0)
    /* 2B58C 8003CD7C 8C0AC3AC */  sw         $v1, 0xA8C($a2)
  .L8003CD80:
    /* 2B590 8003CD80 0800E003 */  jr         $ra
    /* 2B594 8003CD84 00000000 */   nop
endlabel func_8003CD38
