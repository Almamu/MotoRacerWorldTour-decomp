nonmatching func_8006AFA4, 0x48

glabel func_8006AFA4
    /* 597B4 8006AFA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 597B8 8006AFA8 21308000 */  addu       $a2, $a0, $zero
    /* 597BC 8006AFAC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 597C0 8006AFB0 0000C28C */  lw         $v0, 0x0($a2)
    /* 597C4 8006AFB4 00000000 */  nop
    /* 597C8 8006AFB8 0C00438C */  lw         $v1, 0xC($v0)
    /* 597CC 8006AFBC 00000000 */  nop
    /* 597D0 8006AFC0 40006484 */  lh         $a0, 0x40($v1)
    /* 597D4 8006AFC4 00000000 */  nop
    /* 597D8 8006AFC8 21204400 */  addu       $a0, $v0, $a0
    /* 597DC 8006AFCC 4400628C */  lw         $v0, 0x44($v1)
    /* 597E0 8006AFD0 00000000 */  nop
    /* 597E4 8006AFD4 09F84000 */  jalr       $v0
    /* 597E8 8006AFD8 0C00C624 */   addiu     $a2, $a2, 0xC
    /* 597EC 8006AFDC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 597F0 8006AFE0 00000000 */  nop
    /* 597F4 8006AFE4 0800E003 */  jr         $ra
    /* 597F8 8006AFE8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006AFA4
