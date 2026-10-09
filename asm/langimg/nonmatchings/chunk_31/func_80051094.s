nonmatching func_80051094, 0x20

glabel func_80051094
    /* 3F8A4 80051094 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3F8A8 80051098 8B0180A0 */  sb         $zero, 0x18B($a0)
    /* 3F8AC 8005109C 240380A0 */  sb         $zero, 0x324($a0)
    /* 3F8B0 800510A0 270382A0 */  sb         $v0, 0x327($a0)
    /* 3F8B4 800510A4 340080AC */  sw         $zero, 0x34($a0)
    /* 3F8B8 800510A8 C40380AC */  sw         $zero, 0x3C4($a0)
    /* 3F8BC 800510AC 0800E003 */  jr         $ra
    /* 3F8C0 800510B0 180380AC */   sw        $zero, 0x318($a0)
endlabel func_80051094
