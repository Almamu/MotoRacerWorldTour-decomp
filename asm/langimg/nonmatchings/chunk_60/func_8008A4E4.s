nonmatching func_8008A4E4, 0x34

glabel func_8008A4E4
    /* 78CF4 8008A4E4 21388000 */  addu       $a3, $a0, $zero
    /* 78CF8 8008A4E8 0200E684 */  lh         $a2, 0x2($a3)
  .L8008A4EC:
    /* 78CFC 8008A4EC 0800E28C */  lw         $v0, 0x8($a3)
    /* 78D00 8008A4F0 80180600 */  sll        $v1, $a2, 2
    /* 78D04 8008A4F4 21186200 */  addu       $v1, $v1, $v0
    /* 78D08 8008A4F8 000065AC */  sw         $a1, 0x0($v1)
    /* 78D0C 8008A4FC 0400A48C */  lw         $a0, 0x4($a1)
    /* 78D10 8008A500 0400A0AC */  sw         $zero, 0x4($a1)
    /* 78D14 8008A504 21288000 */  addu       $a1, $a0, $zero
    /* 78D18 8008A508 F8FFA014 */  bnez       $a1, .L8008A4EC
    /* 78D1C 8008A50C 0100C624 */   addiu     $a2, $a2, 0x1
    /* 78D20 8008A510 0800E003 */  jr         $ra
    /* 78D24 8008A514 0200E6A4 */   sh        $a2, 0x2($a3)
endlabel func_8008A4E4
