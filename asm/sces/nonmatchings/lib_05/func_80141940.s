nonmatching func_80141940, 0x20

glabel func_80141940
    /* EE0C 80141940 47000224 */  addiu      $v0, $zero, 0x47
    /* EE10 80141944 370082A0 */  sb         $v0, 0x37($a0)
    /* EE14 80141948 24008224 */  addiu      $v0, $a0, 0x24
    /* EE18 8014194C 2C0082AC */  sw         $v0, 0x2C($a0)
    /* EE1C 80141950 01000224 */  addiu      $v0, $zero, 0x1
    /* EE20 80141954 240085A0 */  sb         $a1, 0x24($a0)
    /* EE24 80141958 0800E003 */  jr         $ra
    /* EE28 8014195C 360082A0 */   sb        $v0, 0x36($a0)
endlabel func_80141940
