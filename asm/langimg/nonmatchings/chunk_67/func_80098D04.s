nonmatching func_80098D04, 0x18

glabel func_80098D04
    /* 87514 80098D04 80200400 */  sll        $a0, $a0, 2
    /* 87518 80098D08 0D80023C */  lui        $v0, %hi(D_800C8D98)
    /* 8751C 80098D0C 988D4224 */  addiu      $v0, $v0, %lo(D_800C8D98)
    /* 87520 80098D10 21208200 */  addu       $a0, $a0, $v0
    /* 87524 80098D14 0800E003 */  jr         $ra
    /* 87528 80098D18 000085AC */   sw        $a1, 0x0($a0)
endlabel func_80098D04
