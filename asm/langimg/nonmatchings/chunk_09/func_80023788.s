/* Handwritten function */
nonmatching func_80023788, 0x60

glabel func_80023788
    /* 11F98 80023788 3400828C */  lw         $v0, 0x34($a0)
    /* 11F9C 8002378C 00000000 */  nop
    /* 11FA0 80023790 1800A200 */  mult       $a1, $v0
    /* 11FA4 80023794 80300600 */  sll        $a2, $a2, 2
    /* 11FA8 80023798 21308600 */  addu       $a2, $a0, $a2
    /* 11FAC 8002379C 17000824 */  addiu      $t0, $zero, 0x17
    /* 11FB0 800237A0 0400838C */  lw         $v1, 0x4($a0)
    /* 11FB4 800237A4 12280000 */  mflo       $a1
    /* 11FB8 800237A8 6C00C78C */  lw         $a3, 0x6C($a2)
    /* 11FBC 800237AC 001B0300 */  sll        $v1, $v1, 12
    /* 11FC0 800237B0 1A006700 */  div        $zero, $v1, $a3
    /* 11FC4 800237B4 12180000 */  mflo       $v1
    /* 11FC8 800237B8 00000000 */  nop
    /* 11FCC 800237BC 00000000 */  nop
    /* 11FD0 800237C0 1800A300 */  mult       $a1, $v1
    /* 11FD4 800237C4 20000634 */  ori        $a2, $zero, 0x20
    /* 11FD8 800237C8 2230C800 */  sub        $a2, $a2, $t0 /* handwritten instruction */
    /* 11FDC 800237CC 10100000 */  mfhi       $v0
    /* 11FE0 800237D0 0410C200 */  sllv       $v0, $v0, $a2
    /* 11FE4 800237D4 12300000 */  mflo       $a2
    /* 11FE8 800237D8 06300601 */  srlv       $a2, $a2, $t0
    /* 11FEC 800237DC 25104600 */  or         $v0, $v0, $a2
    /* 11FF0 800237E0 0800E003 */  jr         $ra
    /* 11FF4 800237E4 00000000 */   nop
endlabel func_80023788
