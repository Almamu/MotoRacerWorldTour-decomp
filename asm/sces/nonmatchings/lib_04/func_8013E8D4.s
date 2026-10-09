nonmatching func_8013E8D4, 0x38

glabel func_8013E8D4
    /* BDA0 8013E8D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BDA4 8013E8D8 1D80023C */  lui        $v0, %hi(D_801CE6D8)
    /* BDA8 8013E8DC D8E64224 */  addiu      $v0, $v0, %lo(D_801CE6D8)
    /* BDAC 8013E8E0 80200400 */  sll        $a0, $a0, 2
    /* BDB0 8013E8E4 21208200 */  addu       $a0, $a0, $v0
    /* BDB4 8013E8E8 03000524 */  addiu      $a1, $zero, 0x3
    /* BDB8 8013E8EC 1000BFAF */  sw         $ra, 0x10($sp)
    /* BDBC 8013E8F0 0000848C */  lw         $a0, 0x0($a0)
    /* BDC0 8013E8F4 91FF040C */  jal        PadInfoMode
    /* BDC4 8013E8F8 21300000 */   addu      $a2, $zero, $zero
    /* BDC8 8013E8FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* BDCC 8013E900 00000000 */  nop
    /* BDD0 8013E904 0800E003 */  jr         $ra
    /* BDD4 8013E908 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013E8D4
