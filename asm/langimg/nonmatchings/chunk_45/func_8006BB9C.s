nonmatching func_8006BB9C, 0x28

glabel func_8006BB9C
    /* 5A3AC 8006BB9C AE030224 */  addiu      $v0, $zero, 0x3AE
    /* 5A3B0 8006BBA0 33030324 */  addiu      $v1, $zero, 0x333
    /* 5A3B4 8006BBA4 000085AC */  sw         $a1, 0x0($a0)
    /* 5A3B8 8006BBA8 040085AC */  sw         $a1, 0x4($a0)
    /* 5A3BC 8006BBAC 100085AC */  sw         $a1, 0x10($a0)
    /* 5A3C0 8006BBB0 140080AC */  sw         $zero, 0x14($a0)
    /* 5A3C4 8006BBB4 180080AC */  sw         $zero, 0x18($a0)
    /* 5A3C8 8006BBB8 080082AC */  sw         $v0, 0x8($a0)
    /* 5A3CC 8006BBBC 0800E003 */  jr         $ra
    /* 5A3D0 8006BBC0 0C0083AC */   sw        $v1, 0xC($a0)
endlabel func_8006BB9C
