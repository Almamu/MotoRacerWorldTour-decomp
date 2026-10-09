nonmatching func_800997A4, 0x2C

glabel func_800997A4
    /* 87FB4 800997A4 21108000 */  addu       $v0, $a0, $zero
    /* 87FB8 800997A8 0000A38C */  lw         $v1, 0x0($a1)
    /* 87FBC 800997AC 0400A68C */  lw         $a2, 0x4($a1)
    /* 87FC0 800997B0 0800A78C */  lw         $a3, 0x8($a1)
    /* 87FC4 800997B4 23180300 */  negu       $v1, $v1
    /* 87FC8 800997B8 23300600 */  negu       $a2, $a2
    /* 87FCC 800997BC 23380700 */  negu       $a3, $a3
    /* 87FD0 800997C0 000043AC */  sw         $v1, 0x0($v0)
    /* 87FD4 800997C4 040046AC */  sw         $a2, 0x4($v0)
    /* 87FD8 800997C8 0800E003 */  jr         $ra
    /* 87FDC 800997CC 080047AC */   sw        $a3, 0x8($v0)
endlabel func_800997A4
