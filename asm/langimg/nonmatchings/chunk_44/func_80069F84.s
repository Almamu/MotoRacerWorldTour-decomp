nonmatching func_80069F84, 0x34

glabel func_80069F84
    /* 58794 80069F84 01000224 */  addiu      $v0, $zero, 0x1
    /* 58798 80069F88 FFFF0334 */  ori        $v1, $zero, 0xFFFF
    /* 5879C 80069F8C 000082A0 */  sb         $v0, 0x0($a0)
    /* 587A0 80069F90 08000224 */  addiu      $v0, $zero, 0x8
    /* 587A4 80069F94 380083AC */  sw         $v1, 0x38($a0)
    /* 587A8 80069F98 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 587AC 80069F9C 3C0080AC */  sw         $zero, 0x3C($a0)
    /* 587B0 80069FA0 400082A4 */  sh         $v0, 0x40($a0)
    /* 587B4 80069FA4 420080A4 */  sh         $zero, 0x42($a0)
    /* 587B8 80069FA8 440083AC */  sw         $v1, 0x44($a0)
    /* 587BC 80069FAC 280080AC */  sw         $zero, 0x28($a0)
    /* 587C0 80069FB0 0800E003 */  jr         $ra
    /* 587C4 80069FB4 2C0080AC */   sw        $zero, 0x2C($a0)
endlabel func_80069F84
