nonmatching func_8014A3C8, 0x8C

glabel func_8014A3C8
    /* 17894 8014A3C8 FF1F083C */  lui        $t0, (0x1FFFFFFF >> 16)
    /* 17898 8014A3CC FFFF0835 */  ori        $t0, $t0, (0x1FFFFFFF & 0xFFFF)
    /* 1789C 8014A3D0 1D80023C */  lui        $v0, %hi(D_801CFD80)
    /* 178A0 8014A3D4 80FD40AC */  sw         $zero, %lo(D_801CFD80)($v0)
    /* 178A4 8014A3D8 1D80023C */  lui        $v0, %hi(D_801CFD84)
    /* 178A8 8014A3DC 84FD40AC */  sw         $zero, %lo(D_801CFD84)($v0)
    /* 178AC 8014A3E0 1C80023C */  lui        $v0, %hi(D_801BD888)
    /* 178B0 8014A3E4 1C80043C */  lui        $a0, %hi(D_801BD88C)
    /* 178B4 8014A3E8 88D8438C */  lw         $v1, %lo(D_801BD888)($v0)
    /* 178B8 8014A3EC 1D80023C */  lui        $v0, %hi(D_801CFD88)
    /* 178BC 8014A3F0 8CD8878C */  lw         $a3, %lo(D_801BD88C)($a0)
    /* 178C0 8014A3F4 1D80043C */  lui        $a0, %hi(D_801CFD90)
    /* 178C4 8014A3F8 1C80063C */  lui        $a2, %hi(D_801BD8A0)
    /* 178C8 8014A3FC 88FD43AC */  sw         $v1, %lo(D_801CFD88)($v0)
    /* 178CC 8014A400 0200E234 */  ori        $v0, $a3, 0x2
    /* 178D0 8014A404 040062AC */  sw         $v0, 0x4($v1)
    /* 178D4 8014A408 1580023C */  lui        $v0, %hi(D_8014D47C)
    /* 178D8 8014A40C 000060AC */  sw         $zero, 0x0($v1)
    /* 178DC 8014A410 1C80033C */  lui        $v1, %hi(D_801BD8A4)
    /* 178E0 8014A414 7CD4428C */  lw         $v0, %lo(D_8014D47C)($v0)
    /* 178E4 8014A418 A4D8658C */  lw         $a1, %lo(D_801BD8A4)($v1)
    /* 178E8 8014A41C A0D8C38C */  lw         $v1, %lo(D_801BD8A0)($a2)
    /* 178EC 8014A420 21104500 */  addu       $v0, $v0, $a1
    /* 178F0 8014A424 24186800 */  and        $v1, $v1, $t0
    /* 178F4 8014A428 21104300 */  addu       $v0, $v0, $v1
    /* 178F8 8014A42C 08004224 */  addiu      $v0, $v0, 0x8
    /* 178FC 8014A430 90FD82AC */  sw         $v0, %lo(D_801CFD90)($a0)
    /* 17900 8014A434 90FD8424 */  addiu      $a0, $a0, %lo(D_801CFD90)
    /* 17904 8014A438 01000224 */  addiu      $v0, $zero, 0x1
    /* 17908 8014A43C 040087AC */  sw         $a3, 0x4($a0)
    /* 1790C 8014A440 0C0087AC */  sw         $a3, 0xC($a0)
    /* 17910 8014A444 080080AC */  sw         $zero, 0x8($a0)
    /* 17914 8014A448 100080AC */  sw         $zero, 0x10($a0)
    /* 17918 8014A44C 0800E003 */  jr         $ra
    /* 1791C 8014A450 140082AC */   sw        $v0, 0x14($a0)
endlabel func_8014A3C8
