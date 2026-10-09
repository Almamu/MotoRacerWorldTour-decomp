nonmatching __builtin_delete, 0x24

glabel __builtin_delete
    /* 959AC 800A719C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 959B0 800A71A0 03008010 */  beqz       $a0, .L800A71B0
    /* 959B4 800A71A4 1000BFAF */   sw        $ra, 0x10($sp)
    /* 959B8 800A71A8 59D5020C */  jal        free
    /* 959BC 800A71AC 00000000 */   nop
  .L800A71B0:
    /* 959C0 800A71B0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 959C4 800A71B4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 959C8 800A71B8 0800E003 */  jr         $ra
    /* 959CC 800A71BC 00000000 */   nop
endlabel __builtin_delete
