nonmatching func_8014ACF8, 0x34

glabel func_8014ACF8
    /* 181C4 8014ACF8 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* 181C8 8014ACFC 03006228 */  slti       $v0, $v1, 0x3
    /* 181CC 8014AD00 07004010 */  beqz       $v0, .L8014AD20
    /* 181D0 8014AD04 01000224 */   addiu     $v0, $zero, 0x1
    /* 181D4 8014AD08 1C80043C */  lui        $a0, %hi(D_801C0978)
    /* 181D8 8014AD0C 7809848C */  lw         $a0, %lo(D_801C0978)($a0)
    /* 181DC 8014AD10 00190300 */  sll        $v1, $v1, 4
    /* 181E0 8014AD14 21186400 */  addu       $v1, $v1, $a0
    /* 181E4 8014AD18 492B0508 */  j          .L8014AD24
    /* 181E8 8014AD1C 000060A4 */   sh        $zero, 0x0($v1)
  .L8014AD20:
    /* 181EC 8014AD20 21100000 */  addu       $v0, $zero, $zero
  .L8014AD24:
    /* 181F0 8014AD24 0800E003 */  jr         $ra
    /* 181F4 8014AD28 00000000 */   nop
endlabel func_8014ACF8
    /* 181F8 8014AD2C 00000000 */  nop
