nonmatching func_800815D8, 0x50

glabel func_800815D8
    /* 6FDE8 800815D8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 6FDEC 800815DC 01000224 */  addiu      $v0, $zero, 0x1
    /* 6FDF0 800815E0 060082A0 */  sb         $v0, 0x6($a0)
    /* 6FDF4 800815E4 08008224 */  addiu      $v0, $a0, 0x8
    /* 6FDF8 800815E8 1C0080AC */  sw         $zero, 0x1C($a0)
    /* 6FDFC 800815EC 240080AC */  sw         $zero, 0x24($a0)
    /* 6FE00 800815F0 180080AC */  sw         $zero, 0x18($a0)
    /* 6FE04 800815F4 000080A4 */  sh         $zero, 0x0($a0)
    /* 6FE08 800815F8 040080A4 */  sh         $zero, 0x4($a0)
    /* 6FE0C 800815FC 0000A0AF */  sw         $zero, 0x0($sp)
    /* 6FE10 80081600 0400A0AF */  sw         $zero, 0x4($sp)
    /* 6FE14 80081604 0800A0AF */  sw         $zero, 0x8($sp)
    /* 6FE18 80081608 080080AC */  sw         $zero, 0x8($a0)
    /* 6FE1C 8008160C 040040AC */  sw         $zero, 0x4($v0)
    /* 6FE20 80081610 080040AC */  sw         $zero, 0x8($v0)
    /* 6FE24 80081614 140080AC */  sw         $zero, 0x14($a0)
    /* 6FE28 80081618 200080AC */  sw         $zero, 0x20($a0)
    /* 6FE2C 8008161C 280080AC */  sw         $zero, 0x28($a0)
    /* 6FE30 80081620 0800E003 */  jr         $ra
    /* 6FE34 80081624 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_800815D8
