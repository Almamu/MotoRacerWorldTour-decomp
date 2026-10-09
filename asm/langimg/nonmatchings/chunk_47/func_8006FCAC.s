nonmatching func_8006FCAC, 0x4C

glabel func_8006FCAC
    /* 5E4BC 8006FCAC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5E4C0 8006FCB0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5E4C4 8006FCB4 21888000 */  addu       $s1, $a0, $zero
    /* 5E4C8 8006FCB8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E4CC 8006FCBC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5E4D0 8006FCC0 50BF010C */  jal        func_8006FD40
    /* 5E4D4 8006FCC4 2180A000 */   addu      $s0, $a1, $zero
    /* 5E4D8 8006FCC8 0B5A020C */  jal        func_8009682C
    /* 5E4DC 8006FCCC 08002426 */   addiu     $a0, $s1, 0x8
    /* 5E4E0 8006FCD0 01001032 */  andi       $s0, $s0, 0x1
    /* 5E4E4 8006FCD4 03000012 */  beqz       $s0, .L8006FCE4
    /* 5E4E8 8006FCD8 00000000 */   nop
    /* 5E4EC 8006FCDC 679C020C */  jal        __builtin_delete
    /* 5E4F0 8006FCE0 21202002 */   addu      $a0, $s1, $zero
  .L8006FCE4:
    /* 5E4F4 8006FCE4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5E4F8 8006FCE8 1400B18F */  lw         $s1, 0x14($sp)
    /* 5E4FC 8006FCEC 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E500 8006FCF0 0800E003 */  jr         $ra
    /* 5E504 8006FCF4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006FCAC
