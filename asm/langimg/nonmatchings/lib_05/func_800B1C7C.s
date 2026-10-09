nonmatching func_800B1C7C, 0x20

glabel func_800B1C7C
    /* A048C 800B1C7C 4C000224 */  addiu      $v0, $zero, 0x4C
    /* A0490 800B1C80 360082A0 */  sb         $v0, 0x36($a0)
    /* A0494 800B1C84 24008224 */  addiu      $v0, $a0, 0x24
    /* A0498 800B1C88 2C0082AC */  sw         $v0, 0x2C($a0)
    /* A049C 800B1C8C 01000224 */  addiu      $v0, $zero, 0x1
    /* A04A0 800B1C90 240085A0 */  sb         $a1, 0x24($a0)
    /* A04A4 800B1C94 0800E003 */  jr         $ra
    /* A04A8 800B1C98 350082A0 */   sb        $v0, 0x35($a0)
endlabel func_800B1C7C
