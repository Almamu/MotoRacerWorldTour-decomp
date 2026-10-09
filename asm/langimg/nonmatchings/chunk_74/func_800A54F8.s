nonmatching func_800A54F8, 0x38

glabel func_800A54F8
    /* 93D08 800A54F8 21380000 */  addu       $a3, $zero, $zero
    /* 93D0C 800A54FC 0A00C018 */  blez       $a2, .L800A5528
    /* 93D10 800A5500 21408000 */   addu      $t0, $a0, $zero
  .L800A5504:
    /* 93D14 800A5504 0000A28C */  lw         $v0, 0x0($a1)
    /* 93D18 800A5508 0400A524 */  addiu      $a1, $a1, 0x4
    /* 93D1C 800A550C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 93D20 800A5510 21100201 */  addu       $v0, $t0, $v0
    /* 93D24 800A5514 0000438C */  lw         $v1, 0x0($v0)
    /* 93D28 800A5518 2A20E600 */  slt        $a0, $a3, $a2
    /* 93D2C 800A551C 21186800 */  addu       $v1, $v1, $t0
    /* 93D30 800A5520 F8FF8014 */  bnez       $a0, .L800A5504
    /* 93D34 800A5524 000043AC */   sw        $v1, 0x0($v0)
  .L800A5528:
    /* 93D38 800A5528 0800E003 */  jr         $ra
    /* 93D3C 800A552C 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800A54F8
