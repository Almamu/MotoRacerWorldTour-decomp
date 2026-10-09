nonmatching func_800B5290, 0x28

glabel func_800B5290
    /* A3AA0 800B5290 0C80023C */  lui        $v0, %hi(D_800C3DB0)
    /* A3AA4 800B5294 B03D428C */  lw         $v0, %lo(D_800C3DB0)($v0)
    /* A3AA8 800B5298 00000000 */  nop
    /* A3AAC 800B529C 840144A4 */  sh         $a0, 0x184($v0)
    /* A3AB0 800B52A0 860145A4 */  sh         $a1, 0x186($v0)
    /* A3AB4 800B52A4 0C80023C */  lui        $v0, %hi(D_800C3D58)
    /* A3AB8 800B52A8 583D4224 */  addiu      $v0, $v0, %lo(D_800C3D58)
    /* A3ABC 800B52AC 000044A4 */  sh         $a0, 0x0($v0)
    /* A3AC0 800B52B0 0800E003 */  jr         $ra
    /* A3AC4 800B52B4 020045A4 */   sh        $a1, 0x2($v0)
endlabel func_800B5290
    /* A3AC8 800B52B8 00000000 */  nop
    /* A3ACC 800B52BC 00000000 */  nop
