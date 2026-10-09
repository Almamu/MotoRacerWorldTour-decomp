nonmatching func_8007F2AC, 0x1C

glabel func_8007F2AC
    /* 6DABC 8007F2AC FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* 6DAC0 8007F2B0 03008010 */  beqz       $a0, .L8007F2C0
    /* 6DAC4 8007F2B4 FFFFC630 */   andi      $a2, $a2, 0xFFFF
    /* 6DAC8 8007F2B8 070085A0 */  sb         $a1, 0x7($a0)
    /* 6DACC 8007F2BC 0A0086A4 */  sh         $a2, 0xA($a0)
  .L8007F2C0:
    /* 6DAD0 8007F2C0 0800E003 */  jr         $ra
    /* 6DAD4 8007F2C4 00000000 */   nop
endlabel func_8007F2AC
