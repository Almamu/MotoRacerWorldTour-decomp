nonmatching func_80141900, 0x20

glabel func_80141900
    /* EDCC 80141900 4C000224 */  addiu      $v0, $zero, 0x4C
    /* EDD0 80141904 370082A0 */  sb         $v0, 0x37($a0)
    /* EDD4 80141908 24008224 */  addiu      $v0, $a0, 0x24
    /* EDD8 8014190C 2C0082AC */  sw         $v0, 0x2C($a0)
    /* EDDC 80141910 01000224 */  addiu      $v0, $zero, 0x1
    /* EDE0 80141914 240085A0 */  sb         $a1, 0x24($a0)
    /* EDE4 80141918 0800E003 */  jr         $ra
    /* EDE8 8014191C 360082A0 */   sb        $v0, 0x36($a0)
endlabel func_80141900
