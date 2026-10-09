nonmatching func_8013DBB4, 0x48

glabel func_8013DBB4
    /* B080 8013DBB4 0004033C */  lui        $v1, (0x4000002 >> 16)
    /* B084 8013DBB8 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* B088 8013DBBC 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* B08C 8013DBC0 02006334 */  ori        $v1, $v1, (0x4000002 & 0xFFFF)
    /* B090 8013DBC4 000043AC */  sw         $v1, 0x0($v0)
    /* B094 8013DBC8 1C80023C */  lui        $v0, %hi(D_801BFD44)
    /* B098 8013DBCC 44FD428C */  lw         $v0, %lo(D_801BFD44)($v0)
    /* B09C 8013DBD0 00000000 */  nop
    /* B0A0 8013DBD4 000044AC */  sw         $a0, 0x0($v0)
    /* B0A4 8013DBD8 1C80023C */  lui        $v0, %hi(D_801BFD48)
    /* B0A8 8013DBDC 48FD428C */  lw         $v0, %lo(D_801BFD48)($v0)
    /* B0AC 8013DBE0 0001033C */  lui        $v1, (0x1000401 >> 16)
    /* B0B0 8013DBE4 000040AC */  sw         $zero, 0x0($v0)
    /* B0B4 8013DBE8 1C80023C */  lui        $v0, %hi(D_801BFD4C)
    /* B0B8 8013DBEC 4CFD428C */  lw         $v0, %lo(D_801BFD4C)($v0)
    /* B0BC 8013DBF0 01046334 */  ori        $v1, $v1, (0x1000401 & 0xFFFF)
    /* B0C0 8013DBF4 0800E003 */  jr         $ra
    /* B0C4 8013DBF8 000043AC */   sw        $v1, 0x0($v0)
endlabel func_8013DBB4
