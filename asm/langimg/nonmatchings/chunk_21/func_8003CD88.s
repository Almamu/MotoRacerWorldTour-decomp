nonmatching func_8003CD88, 0x64

glabel func_8003CD88
    /* 2B598 8003CD88 21308000 */  addu       $a2, $a0, $zero
    /* 2B59C 8003CD8C 940AC38C */  lw         $v1, 0xA94($a2)
    /* 2B5A0 8003CD90 00000000 */  nop
    /* 2B5A4 8003CD94 01006230 */  andi       $v0, $v1, 0x1
    /* 2B5A8 8003CD98 12004014 */  bnez       $v0, .L8003CDE4
    /* 2B5AC 8003CD9C 00000000 */   nop
    /* 2B5B0 8003CDA0 8C0AC28C */  lw         $v0, 0xA8C($a2)
    /* 2B5B4 8003CDA4 00000000 */  nop
    /* 2B5B8 8003CDA8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2B5BC 8003CDAC 0B004018 */  blez       $v0, .L8003CDDC
    /* 2B5C0 8003CDB0 8C0AC2AC */   sw        $v0, 0xA8C($a2)
    /* 2B5C4 8003CDB4 80100200 */  sll        $v0, $v0, 2
    /* 2B5C8 8003CDB8 01006334 */  ori        $v1, $v1, 0x1
    /* 2B5CC 8003CDBC 880AC48C */  lw         $a0, 0xA88($a2)
    /* 2B5D0 8003CDC0 FDFF0524 */  addiu      $a1, $zero, -0x3
    /* 2B5D4 8003CDC4 21104400 */  addu       $v0, $v0, $a0
    /* 2B5D8 8003CDC8 FCFF448C */  lw         $a0, -0x4($v0)
    /* 2B5DC 8003CDCC 24186500 */  and        $v1, $v1, $a1
    /* 2B5E0 8003CDD0 940AC3AC */  sw         $v1, 0xA94($a2)
    /* 2B5E4 8003CDD4 0800E003 */  jr         $ra
    /* 2B5E8 8003CDD8 800AC4AC */   sw        $a0, 0xA80($a2)
  .L8003CDDC:
    /* 2B5EC 8003CDDC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B5F0 8003CDE0 8C0AC2AC */  sw         $v0, 0xA8C($a2)
  .L8003CDE4:
    /* 2B5F4 8003CDE4 0800E003 */  jr         $ra
    /* 2B5F8 8003CDE8 00000000 */   nop
endlabel func_8003CD88
