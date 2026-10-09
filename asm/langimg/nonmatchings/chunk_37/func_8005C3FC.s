nonmatching func_8005C3FC, 0x28

glabel func_8005C3FC
    /* 4AC0C 8005C3FC 40100500 */  sll        $v0, $a1, 1
    /* 4AC10 8005C400 21104500 */  addu       $v0, $v0, $a1
    /* 4AC14 8005C404 C0100200 */  sll        $v0, $v0, 3
    /* 4AC18 8005C408 23104500 */  subu       $v0, $v0, $a1
    /* 4AC1C 8005C40C 80100200 */  sll        $v0, $v0, 2
    /* 4AC20 8005C410 B803868C */  lw         $a2, 0x3B8($a0)
    /* 4AC24 8005C414 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 4AC28 8005C418 21104600 */  addu       $v0, $v0, $a2
    /* 4AC2C 8005C41C 0800E003 */  jr         $ra
    /* 4AC30 8005C420 5A0043A4 */   sh        $v1, 0x5A($v0)
endlabel func_8005C3FC
