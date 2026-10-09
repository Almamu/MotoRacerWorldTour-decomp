nonmatching func_80143690, 0x28

glabel func_80143690
    /* 10B5C 80143690 1C80043C */  lui        $a0, %hi(D_801BFF28)
    /* 10B60 80143694 28FF848C */  lw         $a0, %lo(D_801BFF28)($a0)
    /* 10B64 80143698 FFF0033C */  lui        $v1, (0xF0FFFFFF >> 16)
    /* 10B68 8014369C 0000828C */  lw         $v0, 0x0($a0)
    /* 10B6C 801436A0 FFFF6334 */  ori        $v1, $v1, (0xF0FFFFFF & 0xFFFF)
    /* 10B70 801436A4 24104300 */  and        $v0, $v0, $v1
    /* 10B74 801436A8 0022033C */  lui        $v1, (0x22000000 >> 16)
    /* 10B78 801436AC 25104300 */  or         $v0, $v0, $v1
    /* 10B7C 801436B0 0800E003 */  jr         $ra
    /* 10B80 801436B4 000082AC */   sw        $v0, 0x0($a0)
endlabel func_80143690
