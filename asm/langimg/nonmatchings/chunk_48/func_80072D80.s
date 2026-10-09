nonmatching func_80072D80, 0x20

glabel func_80072D80
    /* 61590 80072D80 0A000224 */  addiu      $v0, $zero, 0xA
    /* 61594 80072D84 E8030324 */  addiu      $v1, $zero, 0x3E8
    /* 61598 80072D88 780082AC */  sw         $v0, 0x78($a0)
    /* 6159C 80072D8C 740083AC */  sw         $v1, 0x74($a0)
    /* 615A0 80072D90 0D80023C */  lui        $v0, %hi(D_800D60FC)
    /* 615A4 80072D94 FC60428C */  lw         $v0, %lo(D_800D60FC)($v0)
    /* 615A8 80072D98 0800E003 */  jr         $ra
    /* 615AC 80072D9C 480082AC */   sw        $v0, 0x48($a0)
endlabel func_80072D80
