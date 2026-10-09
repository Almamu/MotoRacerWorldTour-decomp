nonmatching func_800167B8, 0x40

glabel func_800167B8
    /* 4FC8 800167B8 21308000 */  addu       $a2, $a0, $zero
    /* 4FCC 800167BC 3400C28C */  lw         $v0, 0x34($a2)
    /* 4FD0 800167C0 00000000 */  nop
    /* 4FD4 800167C4 1400428C */  lw         $v0, 0x14($v0)
    /* 4FD8 800167C8 00000000 */  nop
    /* 4FDC 800167CC 0000A2AC */  sw         $v0, 0x0($a1)
    /* 4FE0 800167D0 3400C38C */  lw         $v1, 0x34($a2)
    /* 4FE4 800167D4 00000000 */  nop
    /* 4FE8 800167D8 1800648C */  lw         $a0, 0x18($v1)
    /* 4FEC 800167DC 00000000 */  nop
    /* 4FF0 800167E0 0400A4AC */  sw         $a0, 0x4($a1)
    /* 4FF4 800167E4 3400C28C */  lw         $v0, 0x34($a2)
    /* 4FF8 800167E8 00000000 */  nop
    /* 4FFC 800167EC 1C00438C */  lw         $v1, 0x1C($v0)
    /* 5000 800167F0 0800E003 */  jr         $ra
    /* 5004 800167F4 0800A3AC */   sw        $v1, 0x8($a1)
endlabel func_800167B8
