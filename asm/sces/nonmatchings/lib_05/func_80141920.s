nonmatching func_80141920, 0x20

glabel func_80141920
    /* EDEC 80141920 46000224 */  addiu      $v0, $zero, 0x46
    /* EDF0 80141924 370082A0 */  sb         $v0, 0x37($a0)
    /* EDF4 80141928 24008224 */  addiu      $v0, $a0, 0x24
    /* EDF8 8014192C 2C0082AC */  sw         $v0, 0x2C($a0)
    /* EDFC 80141930 01000224 */  addiu      $v0, $zero, 0x1
    /* EE00 80141934 240085A0 */  sb         $a1, 0x24($a0)
    /* EE04 80141938 0800E003 */  jr         $ra
    /* EE08 8014193C 360082A0 */   sb        $v0, 0x36($a0)
endlabel func_80141920
