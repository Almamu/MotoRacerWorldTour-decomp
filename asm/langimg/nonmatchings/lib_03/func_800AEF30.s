nonmatching func_800AEF30, 0x34

glabel func_800AEF30
    /* 9D740 800AEF30 80DF0234 */  ori        $v0, $zero, 0xDF80
    /* 9D744 800AEF34 0B800A3C */  lui        $t2, %hi(func_800AED84 + 0x10)
    /* 9D748 800AEF38 94ED4A25 */  addiu      $t2, $t2, %lo(func_800AED84 + 0x10)
    /* 9D74C 800AEF3C 0B80093C */  lui        $t1, %hi(func_800AEE04)
    /* 9D750 800AEF40 04EE2925 */  addiu      $t1, $t1, %lo(func_800AEE04)
  .L800AEF44:
    /* 9D754 800AEF44 0000438D */  lw         $v1, 0x0($t2)
    /* 9D758 800AEF48 00000000 */  nop
    /* 9D75C 800AEF4C 000043AC */  sw         $v1, 0x0($v0)
    /* 9D760 800AEF50 04004A25 */  addiu      $t2, $t2, 0x4
    /* 9D764 800AEF54 FBFF4915 */  bne        $t2, $t1, .L800AEF44
    /* 9D768 800AEF58 04004224 */   addiu     $v0, $v0, 0x4
    /* 9D76C 800AEF5C 0800E003 */  jr         $ra
    /* 9D770 800AEF60 00000000 */   nop
endlabel func_800AEF30
