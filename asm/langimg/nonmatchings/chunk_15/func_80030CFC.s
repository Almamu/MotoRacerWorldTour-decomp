nonmatching func_80030CFC, 0x74

glabel func_80030CFC
    /* 1F50C 80030CFC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1F510 80030D00 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1F514 80030D04 21808000 */  addu       $s0, $a0, $zero
    /* 1F518 80030D08 30030226 */  addiu      $v0, $s0, 0x330
    /* 1F51C 80030D0C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1F520 80030D10 3003038E */  lw         $v1, 0x330($s0)
    /* 1F524 80030D14 0400458C */  lw         $a1, 0x4($v0)
    /* 1F528 80030D18 0800468C */  lw         $a2, 0x8($v0)
    /* 1F52C 80030D1C 5C040426 */  addiu      $a0, $s0, 0x45C
    /* 1F530 80030D20 5C0403AE */  sw         $v1, 0x45C($s0)
    /* 1F534 80030D24 040085AC */  sw         $a1, 0x4($a0)
    /* 1F538 80030D28 1A000524 */  addiu      $a1, $zero, 0x1A
    /* 1F53C 80030D2C 080086AC */  sw         $a2, 0x8($a0)
    /* 1F540 80030D30 3A64020C */  jal        func_800990E8
    /* 1F544 80030D34 600400AE */   sw        $zero, 0x460($s0)
    /* 1F548 80030D38 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1F54C 80030D3C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1F550 80030D40 680400AE */  sw         $zero, 0x468($s0)
    /* 1F554 80030D44 6C0400AE */  sw         $zero, 0x46C($s0)
    /* 1F558 80030D48 700402AE */  sw         $v0, 0x470($s0)
    /* 1F55C 80030D4C 740400AE */  sw         $zero, 0x474($s0)
    /* 1F560 80030D50 780400AE */  sw         $zero, 0x478($s0)
    /* 1F564 80030D54 7C0400AE */  sw         $zero, 0x47C($s0)
    /* 1F568 80030D58 800400AE */  sw         $zero, 0x480($s0)
    /* 1F56C 80030D5C 840400AE */  sw         $zero, 0x484($s0)
    /* 1F570 80030D60 880402AE */  sw         $v0, 0x488($s0)
    /* 1F574 80030D64 1000B08F */  lw         $s0, 0x10($sp)
    /* 1F578 80030D68 0800E003 */  jr         $ra
    /* 1F57C 80030D6C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80030CFC
