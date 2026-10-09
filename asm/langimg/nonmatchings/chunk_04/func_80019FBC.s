nonmatching func_80019FBC, 0x3C

glabel func_80019FBC
    /* 87CC 80019FBC 06008284 */  lh         $v0, 0x6($a0)
    /* 87D0 80019FC0 08008384 */  lh         $v1, 0x8($a0)
    /* 87D4 80019FC4 00000000 */  nop
    /* 87D8 80019FC8 23104300 */  subu       $v0, $v0, $v1
    /* 87DC 80019FCC 18004500 */  mult       $v0, $a1
    /* 87E0 80019FD0 380085A4 */  sh         $a1, 0x38($a0)
    /* 87E4 80019FD4 06008394 */  lhu        $v1, 0x6($a0)
    /* 87E8 80019FD8 12100000 */  mflo       $v0
    /* 87EC 80019FDC 02004104 */  bgez       $v0, .L80019FE8
    /* 87F0 80019FE0 00000000 */   nop
    /* 87F4 80019FE4 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L80019FE8:
    /* 87F8 80019FE8 03130200 */  sra        $v0, $v0, 12
    /* 87FC 80019FEC 23106200 */  subu       $v0, $v1, $v0
    /* 8800 80019FF0 0800E003 */  jr         $ra
    /* 8804 80019FF4 3A0082A4 */   sh        $v0, 0x3A($a0)
endlabel func_80019FBC
