nonmatching SetSp, 0x10

glabel SetSp
    /* A43B0 800B5BA0 2110A003 */  addu       $v0, $sp, $zero
    /* A43B4 800B5BA4 0800E003 */  jr         $ra
    /* A43B8 800B5BA8 21E88000 */   addu      $sp, $a0, $zero
    /* A43BC 800B5BAC 00000000 */  nop
endlabel SetSp
