nonmatching func_80024C60, 0x30

glabel func_80024C60
    /* 13470 80024C60 0400A324 */  addiu      $v1, $a1, 0x4
    /* 13474 80024C64 01000224 */  addiu      $v0, $zero, 0x1
    /* 13478 80024C68 0000A0AC */  sw         $zero, 0x0($a1)
    /* 1347C 80024C6C 0400A0AC */  sw         $zero, 0x4($a1)
    /* 13480 80024C70 040060AC */  sw         $zero, 0x4($v1)
    /* 13484 80024C74 080060AC */  sw         $zero, 0x8($v1)
    /* 13488 80024C78 1000A2AC */  sw         $v0, 0x10($a1)
    /* 1348C 80024C7C 1400A2AC */  sw         $v0, 0x14($a1)
    /* 13490 80024C80 1800A2AC */  sw         $v0, 0x18($a1)
    /* 13494 80024C84 2000A0AC */  sw         $zero, 0x20($a1)
    /* 13498 80024C88 0800E003 */  jr         $ra
    /* 1349C 80024C8C 1C00A0AC */   sw        $zero, 0x1C($a1)
endlabel func_80024C60
