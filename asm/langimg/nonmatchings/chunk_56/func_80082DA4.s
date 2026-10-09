nonmatching func_80082DA4, 0x40

glabel func_80082DA4
    /* 715B4 80082DA4 00290500 */  sll        $a1, $a1, 4
    /* 715B8 80082DA8 1000A28F */  lw         $v0, 0x10($sp)
    /* 715BC 80082DAC 6000A524 */  addiu      $a1, $a1, 0x60
    /* 715C0 80082DB0 80100200 */  sll        $v0, $v0, 2
    /* 715C4 80082DB4 2130C200 */  addu       $a2, $a2, $v0
    /* 715C8 80082DB8 4000C28C */  lw         $v0, 0x40($a2)
    /* 715CC 80082DBC 21208500 */  addu       $a0, $a0, $a1
    /* 715D0 80082DC0 05004004 */  bltz       $v0, .L80082DD8
    /* 715D4 80082DC4 010080A0 */   sb        $zero, 0x1($a0)
    /* 715D8 80082DC8 0300E004 */  bltz       $a3, .L80082DD8
    /* 715DC 80082DCC 31004224 */   addiu     $v0, $v0, 0x31
    /* 715E0 80082DD0 0800E003 */  jr         $ra
    /* 715E4 80082DD4 000082A0 */   sb        $v0, 0x0($a0)
  .L80082DD8:
    /* 715E8 80082DD8 2D000224 */  addiu      $v0, $zero, 0x2D
    /* 715EC 80082DDC 0800E003 */  jr         $ra
    /* 715F0 80082DE0 000082A0 */   sb        $v0, 0x0($a0)
endlabel func_80082DA4
