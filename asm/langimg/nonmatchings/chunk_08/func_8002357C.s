/* Handwritten function */
nonmatching func_8002357C, 0x7C

glabel func_8002357C
    /* 11D8C 8002357C E600073C */  lui        $a3, (0xE66000 >> 16)
    /* 11D90 80023580 0060E734 */  ori        $a3, $a3, (0xE66000 & 0xFFFF)
    /* 11D94 80023584 80300600 */  sll        $a2, $a2, 2
    /* 11D98 80023588 6C008824 */  addiu      $t0, $a0, 0x6C
    /* 11D9C 8002358C 21400601 */  addu       $t0, $t0, $a2
    /* 11DA0 80023590 0C000A24 */  addiu      $t2, $zero, 0xC
    /* 11DA4 80023594 62008284 */  lh         $v0, 0x62($a0)
    /* 11DA8 80023598 0000088D */  lw         $t0, 0x0($t0)
    /* 11DAC 8002359C 1A00E200 */  div        $zero, $a3, $v0
    /* 11DB0 800235A0 12380000 */  mflo       $a3
    /* 11DB4 800235A4 00000000 */  nop
    /* 11DB8 800235A8 00000000 */  nop
    /* 11DBC 800235AC 18000701 */  mult       $t0, $a3
    /* 11DC0 800235B0 20000634 */  ori        $a2, $zero, 0x20
    /* 11DC4 800235B4 2230CA00 */  sub        $a2, $a2, $t2 /* handwritten instruction */
    /* 11DC8 800235B8 10180000 */  mfhi       $v1
    /* 11DCC 800235BC 0418C300 */  sllv       $v1, $v1, $a2
    /* 11DD0 800235C0 12300000 */  mflo       $a2
    /* 11DD4 800235C4 06304601 */  srlv       $a2, $a2, $t2
    /* 11DD8 800235C8 25186600 */  or         $v1, $v1, $a2
    /* 11DDC 800235CC 18000A24 */  addiu      $t2, $zero, 0x18
    /* 11DE0 800235D0 1800A300 */  mult       $a1, $v1
    /* 11DE4 800235D4 20000934 */  ori        $t1, $zero, 0x20
    /* 11DE8 800235D8 22482A01 */  sub        $t1, $t1, $t2 /* handwritten instruction */
    /* 11DEC 800235DC 10100000 */  mfhi       $v0
    /* 11DF0 800235E0 04102201 */  sllv       $v0, $v0, $t1
    /* 11DF4 800235E4 12480000 */  mflo       $t1
    /* 11DF8 800235E8 06484901 */  srlv       $t1, $t1, $t2
    /* 11DFC 800235EC 25104900 */  or         $v0, $v0, $t1
    /* 11E00 800235F0 0800E003 */  jr         $ra
    /* 11E04 800235F4 00000000 */   nop
endlabel func_8002357C
