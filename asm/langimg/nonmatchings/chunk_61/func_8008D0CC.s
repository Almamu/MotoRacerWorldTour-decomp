nonmatching func_8008D0CC, 0x30

glabel func_8008D0CC
    /* 7B8DC 8008D0CC 0900C010 */  beqz       $a2, .L8008D0F4
    /* 7B8E0 8008D0D0 00000000 */   nop
  .L8008D0D4:
    /* 7B8E4 8008D0D4 0000A28C */  lw         $v0, 0x0($a1)
    /* 7B8E8 8008D0D8 0400A394 */  lhu        $v1, 0x4($a1)
    /* 7B8EC 8008D0DC 0800A524 */  addiu      $a1, $a1, 0x8
    /* 7B8F0 8008D0E0 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 7B8F4 8008D0E4 000082AC */  sw         $v0, 0x0($a0)
    /* 7B8F8 8008D0E8 040083A4 */  sh         $v1, 0x4($a0)
    /* 7B8FC 8008D0EC F9FFC014 */  bnez       $a2, .L8008D0D4
    /* 7B900 8008D0F0 08008424 */   addiu     $a0, $a0, 0x8
  .L8008D0F4:
    /* 7B904 8008D0F4 0800E003 */  jr         $ra
    /* 7B908 8008D0F8 00000000 */   nop
endlabel func_8008D0CC
