nonmatching func_800B1C48, 0x20

glabel func_800B1C48
    /* A0458 800B1C48 43000224 */  addiu      $v0, $zero, 0x43
    /* A045C 800B1C4C 360082A0 */  sb         $v0, 0x36($a0)
    /* A0460 800B1C50 24008224 */  addiu      $v0, $a0, 0x24
    /* A0464 800B1C54 2C0082AC */  sw         $v0, 0x2C($a0)
    /* A0468 800B1C58 01000224 */  addiu      $v0, $zero, 0x1
    /* A046C 800B1C5C 240085A0 */  sb         $a1, 0x24($a0)
    /* A0470 800B1C60 0800E003 */  jr         $ra
    /* A0474 800B1C64 350082A0 */   sb        $v0, 0x35($a0)
endlabel func_800B1C48
