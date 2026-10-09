nonmatching func_8013F188, 0x48

glabel func_8013F188
    /* C654 8013F188 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C658 8013F18C 1000BFAF */  sw         $ra, 0x10($sp)
    /* C65C 8013F190 6AFA040C */  jal        func_8013E9A8
    /* C660 8013F194 00000000 */   nop
    /* C664 8013F198 09004010 */  beqz       $v0, .L8013F1C0
    /* C668 8013F19C 21100000 */   addu      $v0, $zero, $zero
    /* C66C 8013F1A0 CCFA040C */  jal        func_8013EB30
    /* C670 8013F1A4 00000000 */   nop
    /* C674 8013F1A8 1D80033C */  lui        $v1, %hi(D_801CE778)
    /* C678 8013F1AC 78E762AC */  sw         $v0, %lo(D_801CE778)($v1)
    /* C67C 8013F1B0 01000224 */  addiu      $v0, $zero, 0x1
    /* C680 8013F1B4 1C80043C */  lui        $a0, %hi(D_801BFE3C)
    /* C684 8013F1B8 21184000 */  addu       $v1, $v0, $zero
    /* C688 8013F1BC 3CFE83AC */  sw         $v1, %lo(D_801BFE3C)($a0)
  .L8013F1C0:
    /* C68C 8013F1C0 1000BF8F */  lw         $ra, 0x10($sp)
    /* C690 8013F1C4 00000000 */  nop
    /* C694 8013F1C8 0800E003 */  jr         $ra
    /* C698 8013F1CC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013F188
