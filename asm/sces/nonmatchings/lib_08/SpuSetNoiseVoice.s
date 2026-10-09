nonmatching SpuSetNoiseVoice, 0x30

glabel SpuSetNoiseVoice
    /* 14690 801471C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 14694 801471C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 14698 801471CC CA000624 */  addiu      $a2, $zero, 0xCA
    /* 1469C 801471D0 7D1C050C */  jal        _SpuSetAnyVoice
    /* 146A0 801471D4 CB000724 */   addiu     $a3, $zero, 0xCB
    /* 146A4 801471D8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 146A8 801471DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 146AC 801471E0 0800E003 */  jr         $ra
    /* 146B0 801471E4 00000000 */   nop
    /* 146B4 801471E8 00000000 */  nop
    /* 146B8 801471EC 00000000 */  nop
    /* 146BC 801471F0 00000000 */  nop
endlabel SpuSetNoiseVoice
