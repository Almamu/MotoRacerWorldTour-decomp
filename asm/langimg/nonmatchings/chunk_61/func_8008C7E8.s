nonmatching func_8008C7E8, 0x20

glabel func_8008C7E8
    /* 7AFF8 8008C7E8 1000A38F */  lw         $v1, 0x10($sp)
    /* 7AFFC 8008C7EC 01000224 */  addiu      $v0, $zero, 0x1
    /* 7B000 8008C7F0 600085AC */  sw         $a1, 0x60($a0)
    /* 7B004 8008C7F4 640086AC */  sw         $a2, 0x64($a0)
    /* 7B008 8008C7F8 680087AC */  sw         $a3, 0x68($a0)
    /* 7B00C 8008C7FC 000082AC */  sw         $v0, 0x0($a0)
    /* 7B010 8008C800 0800E003 */  jr         $ra
    /* 7B014 8008C804 6C0083AC */   sw        $v1, 0x6C($a0)
endlabel func_8008C7E8
