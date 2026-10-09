nonmatching func_80077520, 0x24

glabel func_80077520
    /* 65D30 80077520 02000224 */  addiu      $v0, $zero, 0x2
    /* 65D34 80077524 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 65D38 80077528 000082AC */  sw         $v0, 0x0($a0)
    /* 65D3C 8007752C 380083AC */  sw         $v1, 0x38($a0)
    /* 65D40 80077530 200080AC */  sw         $zero, 0x20($a0)
    /* 65D44 80077534 400080AC */  sw         $zero, 0x40($a0)
    /* 65D48 80077538 3C0080AC */  sw         $zero, 0x3C($a0)
    /* 65D4C 8007753C 0800E003 */  jr         $ra
    /* 65D50 80077540 480080AC */   sw        $zero, 0x48($a0)
endlabel func_80077520
