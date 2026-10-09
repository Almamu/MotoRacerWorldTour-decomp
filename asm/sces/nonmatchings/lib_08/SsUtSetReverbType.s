nonmatching SsUtSetReverbType, 0x9C

glabel SsUtSetReverbType
    /* 13C04 80146738 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 13C08 8014673C 21280000 */  addu       $a1, $zero, $zero
    /* 13C0C 80146740 21188000 */  addu       $v1, $a0, $zero
    /* 13C10 80146744 00140400 */  sll        $v0, $a0, 16
    /* 13C14 80146748 1400BFAF */  sw         $ra, 0x14($sp)
    /* 13C18 8014674C 03004104 */  bgez       $v0, .L8014675C
    /* 13C1C 80146750 1000B0AF */   sw        $s0, 0x10($sp)
    /* 13C20 80146754 01000524 */  addiu      $a1, $zero, 0x1
    /* 13C24 80146758 23180400 */  negu       $v1, $a0
  .L8014675C:
    /* 13C28 8014675C FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 13C2C 80146760 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 13C30 80146764 16004010 */  beqz       $v0, .L801467C0
    /* 13C34 80146768 01000224 */   addiu     $v0, $zero, 0x1
    /* 13C38 8014676C 1D80043C */  lui        $a0, %hi(D_801CFAB0)
    /* 13C3C 80146770 B0FA8424 */  addiu      $a0, $a0, %lo(D_801CFAB0)
    /* 13C40 80146774 0400A010 */  beqz       $a1, .L80146788
    /* 13C44 80146778 000082AC */   sw        $v0, 0x0($a0)
    /* 13C48 8014677C 00016234 */  ori        $v0, $v1, 0x100
    /* 13C4C 80146780 E3190508 */  j          .L8014678C
    /* 13C50 80146784 00140200 */   sll       $v0, $v0, 16
  .L80146788:
    /* 13C54 80146788 00140300 */  sll        $v0, $v1, 16
  .L8014678C:
    /* 13C58 8014678C 03140200 */  sra        $v0, $v0, 16
    /* 13C5C 80146790 040082AC */  sw         $v0, 0x4($a0)
    /* 13C60 80146794 00140300 */  sll        $v0, $v1, 16
    /* 13C64 80146798 03840200 */  sra        $s0, $v0, 16
    /* 13C68 8014679C 03000016 */  bnez       $s0, .L801467AC
    /* 13C6C 801467A0 00000000 */   nop
    /* 13C70 801467A4 F519050C */  jal        SpuSetReverb
    /* 13C74 801467A8 21200000 */   addu      $a0, $zero, $zero
  .L801467AC:
    /* 13C78 801467AC 1D80043C */  lui        $a0, %hi(D_801CFAB0)
    /* 13C7C 801467B0 6217050C */  jal        SpuSetReverbModeParam
    /* 13C80 801467B4 B0FA8424 */   addiu     $a0, $a0, %lo(D_801CFAB0)
    /* 13C84 801467B8 F1190508 */  j          .L801467C4
    /* 13C88 801467BC 21100002 */   addu      $v0, $s0, $zero
  .L801467C0:
    /* 13C8C 801467C0 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L801467C4:
    /* 13C90 801467C4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 13C94 801467C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 13C98 801467CC 0800E003 */  jr         $ra
    /* 13C9C 801467D0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel SsUtSetReverbType
