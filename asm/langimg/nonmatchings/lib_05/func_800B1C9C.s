nonmatching func_800B1C9C, 0x20

glabel func_800B1C9C
    /* A04AC 800B1C9C 46000224 */  addiu      $v0, $zero, 0x46
    /* A04B0 800B1CA0 360082A0 */  sb         $v0, 0x36($a0)
    /* A04B4 800B1CA4 24008224 */  addiu      $v0, $a0, 0x24
    /* A04B8 800B1CA8 2C0082AC */  sw         $v0, 0x2C($a0)
    /* A04BC 800B1CAC 01000224 */  addiu      $v0, $zero, 0x1
    /* A04C0 800B1CB0 240085A0 */  sb         $a1, 0x24($a0)
    /* A04C4 800B1CB4 0800E003 */  jr         $ra
    /* A04C8 800B1CB8 350082A0 */   sb        $v0, 0x35($a0)
endlabel func_800B1C9C
