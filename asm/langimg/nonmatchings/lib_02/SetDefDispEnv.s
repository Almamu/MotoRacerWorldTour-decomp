nonmatching SetDefDispEnv, 0x3C

glabel SetDefDispEnv
    /* 99FDC 800AB7CC 1000A38F */  lw         $v1, 0x10($sp)
    /* 99FE0 800AB7D0 21108000 */  addu       $v0, $a0, $zero
    /* 99FE4 800AB7D4 000045A4 */  sh         $a1, 0x0($v0)
    /* 99FE8 800AB7D8 020046A4 */  sh         $a2, 0x2($v0)
    /* 99FEC 800AB7DC 040047A4 */  sh         $a3, 0x4($v0)
    /* 99FF0 800AB7E0 080040A4 */  sh         $zero, 0x8($v0)
    /* 99FF4 800AB7E4 0A0040A4 */  sh         $zero, 0xA($v0)
    /* 99FF8 800AB7E8 0C0040A4 */  sh         $zero, 0xC($v0)
    /* 99FFC 800AB7EC 0E0040A4 */  sh         $zero, 0xE($v0)
    /* 9A000 800AB7F0 110040A0 */  sb         $zero, 0x11($v0)
    /* 9A004 800AB7F4 100040A0 */  sb         $zero, 0x10($v0)
    /* 9A008 800AB7F8 130040A0 */  sb         $zero, 0x13($v0)
    /* 9A00C 800AB7FC 120040A0 */  sb         $zero, 0x12($v0)
    /* 9A010 800AB800 0800E003 */  jr         $ra
    /* 9A014 800AB804 060043A4 */   sh        $v1, 0x6($v0)
endlabel SetDefDispEnv
