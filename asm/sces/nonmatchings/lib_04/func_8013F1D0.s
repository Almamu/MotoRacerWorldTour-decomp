nonmatching func_8013F1D0, 0x34

glabel func_8013F1D0
    /* C69C 8013F1D0 1C80033C */  lui        $v1, %hi(D_801BFE3C)
    /* C6A0 8013F1D4 3CFE628C */  lw         $v0, %lo(D_801BFE3C)($v1)
    /* C6A4 8013F1D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C6A8 8013F1DC 03004014 */  bnez       $v0, .L8013F1EC
    /* C6AC 8013F1E0 1000BFAF */   sw        $ra, 0x10($sp)
    /* C6B0 8013F1E4 7DFC0408 */  j          .L8013F1F4
    /* C6B4 8013F1E8 21100000 */   addu      $v0, $zero, $zero
  .L8013F1EC:
    /* C6B8 8013F1EC B8FA040C */  jal        func_8013EAE0
    /* C6BC 8013F1F0 3CFE60AC */   sw        $zero, %lo(D_801BFE3C)($v1)
  .L8013F1F4:
    /* C6C0 8013F1F4 1000BF8F */  lw         $ra, 0x10($sp)
    /* C6C4 8013F1F8 00000000 */  nop
    /* C6C8 8013F1FC 0800E003 */  jr         $ra
    /* C6CC 8013F200 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013F1D0
