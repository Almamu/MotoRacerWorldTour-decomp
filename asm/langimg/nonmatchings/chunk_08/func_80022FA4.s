/* Handwritten function */
nonmatching func_80022FA4, 0x60

glabel func_80022FA4
    /* 117B4 80022FA4 0800898C */  lw         $t1, 0x8($a0)
    /* 117B8 80022FA8 0000AA8C */  lw         $t2, 0x0($a1)
    /* 117BC 80022FAC 00000000 */  nop
    /* 117C0 80022FB0 18002A01 */  mult       $t1, $t2
    /* 117C4 80022FB4 20000734 */  ori        $a3, $zero, 0x20
    /* 117C8 80022FB8 2238E600 */  sub        $a3, $a3, $a2 /* handwritten instruction */
    /* 117CC 80022FBC 10180000 */  mfhi       $v1
    /* 117D0 80022FC0 0418E300 */  sllv       $v1, $v1, $a3
    /* 117D4 80022FC4 12380000 */  mflo       $a3
    /* 117D8 80022FC8 0638C700 */  srlv       $a3, $a3, $a2
    /* 117DC 80022FCC 25186700 */  or         $v1, $v1, $a3
    /* 117E0 80022FD0 0000848C */  lw         $a0, 0x0($a0)
    /* 117E4 80022FD4 0800A58C */  lw         $a1, 0x8($a1)
    /* 117E8 80022FD8 00000000 */  nop
    /* 117EC 80022FDC 18008500 */  mult       $a0, $a1
    /* 117F0 80022FE0 20000834 */  ori        $t0, $zero, 0x20
    /* 117F4 80022FE4 22400601 */  sub        $t0, $t0, $a2 /* handwritten instruction */
    /* 117F8 80022FE8 10100000 */  mfhi       $v0
    /* 117FC 80022FEC 04100201 */  sllv       $v0, $v0, $t0
    /* 11800 80022FF0 12400000 */  mflo       $t0
    /* 11804 80022FF4 0640C800 */  srlv       $t0, $t0, $a2
    /* 11808 80022FF8 25104800 */  or         $v0, $v0, $t0
    /* 1180C 80022FFC 0800E003 */  jr         $ra
    /* 11810 80023000 23106200 */   subu      $v0, $v1, $v0
endlabel func_80022FA4
