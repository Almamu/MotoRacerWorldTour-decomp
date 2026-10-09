nonmatching func_80013BA0, 0x34

glabel func_80013BA0
    /* 23B0 80013BA0 1000828C */  lw         $v0, 0x10($a0)
    /* 23B4 80013BA4 00000000 */  nop
    /* 23B8 80013BA8 00404230 */  andi       $v0, $v0, 0x4000
    /* 23BC 80013BAC 06004010 */  beqz       $v0, .L80013BC8
    /* 23C0 80013BB0 00000000 */   nop
    /* 23C4 80013BB4 1C008284 */  lh         $v0, 0x1C($a0)
    /* 23C8 80013BB8 00000000 */  nop
    /* 23CC 80013BBC 1800A200 */  mult       $a1, $v0
    /* 23D0 80013BC0 12100000 */  mflo       $v0
    /* 23D4 80013BC4 032B0200 */  sra        $a1, $v0, 12
  .L80013BC8:
    /* 23D8 80013BC8 140085A4 */  sh         $a1, 0x14($a0)
    /* 23DC 80013BCC 0800E003 */  jr         $ra
    /* 23E0 80013BD0 1A0085A4 */   sh        $a1, 0x1A($a0)
endlabel func_80013BA0
