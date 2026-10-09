nonmatching func_8009E2E0, 0x1C

glabel func_8009E2E0
    /* 8CAF0 8009E2E0 2400828C */  lw         $v0, 0x24($a0)
    /* 8CAF4 8009E2E4 00000000 */  nop
    /* 8CAF8 8009E2E8 0400438C */  lw         $v1, 0x4($v0)
    /* 8CAFC 8009E2EC FDFF0424 */  addiu      $a0, $zero, -0x3
    /* 8CB00 8009E2F0 24186400 */  and        $v1, $v1, $a0
    /* 8CB04 8009E2F4 0800E003 */  jr         $ra
    /* 8CB08 8009E2F8 040043AC */   sw        $v1, 0x4($v0)
endlabel func_8009E2E0
