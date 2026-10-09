nonmatching func_80141978, 0x48

glabel func_80141978
    /* EE44 80141978 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EE48 8014197C 1000B0AF */  sw         $s0, 0x10($sp)
    /* EE4C 80141980 1C80023C */  lui        $v0, %hi(_padFuncSendAuto)
    /* EE50 80141984 74FE428C */  lw         $v0, %lo(_padFuncSendAuto)($v0)
    /* EE54 80141988 1400BFAF */  sw         $ra, 0x14($sp)
    /* EE58 8014198C 09F84000 */  jalr       $v0
    /* EE5C 80141990 21808000 */   addu      $s0, $a0, $zero
    /* EE60 80141994 21200002 */  addu       $a0, $s0, $zero
    /* EE64 80141998 3C00038E */  lw         $v1, 0x3C($s0)
    /* EE68 8014199C FEFF0524 */  addiu      $a1, $zero, -0x2
    /* EE6C 801419A0 1C80013C */  lui        $at, %hi(D_801BFEDC)
    /* EE70 801419A4 DCFE22AC */  sw         $v0, %lo(D_801BFEDC)($at)
    /* EE74 801419A8 0F02050C */  jal        _padSioRW
    /* EE78 801419AC 000060A0 */   sb        $zero, 0x0($v1)
    /* EE7C 801419B0 1400BF8F */  lw         $ra, 0x14($sp)
    /* EE80 801419B4 1000B08F */  lw         $s0, 0x10($sp)
    /* EE84 801419B8 0800E003 */  jr         $ra
    /* EE88 801419BC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80141978
