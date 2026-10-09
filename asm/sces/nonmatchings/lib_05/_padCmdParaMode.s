nonmatching _padCmdParaMode, 0x20

glabel _padCmdParaMode
    /* ED98 801418CC 43000224 */  addiu      $v0, $zero, 0x43
    /* ED9C 801418D0 370082A0 */  sb         $v0, 0x37($a0)
    /* EDA0 801418D4 24008224 */  addiu      $v0, $a0, 0x24
    /* EDA4 801418D8 2C0082AC */  sw         $v0, 0x2C($a0)
    /* EDA8 801418DC 01000224 */  addiu      $v0, $zero, 0x1
    /* EDAC 801418E0 240085A0 */  sb         $a1, 0x24($a0)
    /* EDB0 801418E4 0800E003 */  jr         $ra
    /* EDB4 801418E8 360082A0 */   sb        $v0, 0x36($a0)
endlabel _padCmdParaMode
