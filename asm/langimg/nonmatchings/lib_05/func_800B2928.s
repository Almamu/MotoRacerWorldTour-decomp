nonmatching func_800B2928, 0x20

glabel func_800B2928
    /* A1138 800B2928 0E80023C */  lui        $v0, %hi(D_800DE4E0)
    /* A113C 800B292C E0E44224 */  addiu      $v0, $v0, %lo(D_800DE4E0)
    /* A1140 800B2930 F0008430 */  andi       $a0, $a0, 0xF0
    /* A1144 800B2934 02008010 */  beqz       $a0, .L800B2940
    /* A1148 800B2938 00000000 */   nop
    /* A114C 800B293C F0004224 */  addiu      $v0, $v0, 0xF0
  .L800B2940:
    /* A1150 800B2940 0800E003 */  jr         $ra
    /* A1154 800B2944 00000000 */   nop
endlabel func_800B2928
    /* A1158 800B2948 00000000 */  nop
