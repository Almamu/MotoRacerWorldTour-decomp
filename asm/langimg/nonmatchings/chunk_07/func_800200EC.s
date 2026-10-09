nonmatching func_800200EC, 0x18

glabel func_800200EC
    /* E8FC 800200EC 00830324 */  addiu      $v1, $zero, -0x7D00
    /* E900 800200F0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* E904 800200F4 260083A4 */  sh         $v1, 0x26($a0)
    /* E908 800200F8 2E0083A4 */  sh         $v1, 0x2E($a0)
    /* E90C 800200FC 0800E003 */  jr         $ra
    /* E910 80020100 360082A4 */   sh        $v0, 0x36($a0)
endlabel func_800200EC
