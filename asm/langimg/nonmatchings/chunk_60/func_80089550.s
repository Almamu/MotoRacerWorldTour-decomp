nonmatching func_80089550, 0x50

glabel func_80089550
    /* 77D60 80089550 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 77D64 80089554 1400B1AF */  sw         $s1, 0x14($sp)
    /* 77D68 80089558 21888000 */  addu       $s1, $a0, $zero
    /* 77D6C 8008955C 0D80023C */  lui        $v0, %hi(D_800C8C7C)
    /* 77D70 80089560 7C8C4224 */  addiu      $v0, $v0, %lo(D_800C8C7C)
    /* 77D74 80089564 1000B0AF */  sw         $s0, 0x10($sp)
    /* 77D78 80089568 2180A000 */  addu       $s0, $a1, $zero
    /* 77D7C 8008956C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 77D80 80089570 7B25020C */  jal        func_800895EC
    /* 77D84 80089574 140022AE */   sw        $v0, 0x14($s1)
    /* 77D88 80089578 01001032 */  andi       $s0, $s0, 0x1
    /* 77D8C 8008957C 03000012 */  beqz       $s0, .L8008958C
    /* 77D90 80089580 00000000 */   nop
    /* 77D94 80089584 679C020C */  jal        __builtin_delete
    /* 77D98 80089588 21202002 */   addu      $a0, $s1, $zero
  .L8008958C:
    /* 77D9C 8008958C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 77DA0 80089590 1400B18F */  lw         $s1, 0x14($sp)
    /* 77DA4 80089594 1000B08F */  lw         $s0, 0x10($sp)
    /* 77DA8 80089598 0800E003 */  jr         $ra
    /* 77DAC 8008959C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80089550
