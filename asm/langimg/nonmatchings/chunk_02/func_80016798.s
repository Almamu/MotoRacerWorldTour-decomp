nonmatching func_80016798, 0x20

glabel func_80016798
    /* 4FA8 80016798 FBFF053C */  lui        $a1, (0xFFFBFFFF >> 16)
    /* 4FAC 8001679C FFFFA534 */  ori        $a1, $a1, (0xFFFBFFFF & 0xFFFF)
    /* 4FB0 800167A0 0400828C */  lw         $v0, 0x4($a0)
    /* 4FB4 800167A4 14008324 */  addiu      $v1, $a0, 0x14
    /* 4FB8 800167A8 340083AC */  sw         $v1, 0x34($a0)
    /* 4FBC 800167AC 24104500 */  and        $v0, $v0, $a1
    /* 4FC0 800167B0 0800E003 */  jr         $ra
    /* 4FC4 800167B4 040082AC */   sw        $v0, 0x4($a0)
endlabel func_80016798
