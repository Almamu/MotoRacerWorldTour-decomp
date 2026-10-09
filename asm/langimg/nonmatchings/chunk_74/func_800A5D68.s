nonmatching func_800A5D68, 0x3C

glabel func_800A5D68
    /* 94578 800A5D68 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9457C 800A5D6C 0D80023C */  lui        $v0, %hi(D_800D60E0)
    /* 94580 800A5D70 E060438C */  lw         $v1, %lo(D_800D60E0)($v0)
    /* 94584 800A5D74 01000424 */  addiu      $a0, $zero, 0x1
    /* 94588 800A5D78 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9458C 800A5D7C 01006324 */  addiu      $v1, $v1, 0x1
    /* 94590 800A5D80 04006414 */  bne        $v1, $a0, .L800A5D94
    /* 94594 800A5D84 E06043AC */   sw        $v1, %lo(D_800D60E0)($v0)
    /* 94598 800A5D88 0D80043C */  lui        $a0, %hi(D_800D60E8)
    /* 9459C 800A5D8C F995020C */  jal        func_800A57E4
    /* 945A0 800A5D90 E8608424 */   addiu     $a0, $a0, %lo(D_800D60E8)
  .L800A5D94:
    /* 945A4 800A5D94 1000BF8F */  lw         $ra, 0x10($sp)
    /* 945A8 800A5D98 00000000 */  nop
    /* 945AC 800A5D9C 0800E003 */  jr         $ra
    /* 945B0 800A5DA0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A5D68
