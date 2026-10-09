nonmatching func_8009EAD0, 0x1C

glabel func_8009EAD0
    /* 8D2E0 8009EAD0 A40A828C */  lw         $v0, 0xAA4($a0)
    /* 8D2E4 8009EAD4 0300A014 */  bnez       $a1, .L8009EAE4
    /* 8D2E8 8009EAD8 08004324 */   addiu     $v1, $v0, 0x8
    /* 8D2EC 8009EADC 01000224 */  addiu      $v0, $zero, 0x1
    /* 8D2F0 8009EAE0 080062AC */  sw         $v0, 0x8($v1)
  .L8009EAE4:
    /* 8D2F4 8009EAE4 0800E003 */  jr         $ra
    /* 8D2F8 8009EAE8 00000000 */   nop
endlabel func_8009EAD0
