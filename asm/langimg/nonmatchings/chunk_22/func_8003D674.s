nonmatching func_8003D674, 0xA0

glabel func_8003D674
    /* 2BE84 8003D674 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2BE88 8003D678 3000B2AF */  sw         $s2, 0x30($sp)
    /* 2BE8C 8003D67C 21900000 */  addu       $s2, $zero, $zero
    /* 2BE90 8003D680 3400BFAF */  sw         $ra, 0x34($sp)
    /* 2BE94 8003D684 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 2BE98 8003D688 2800B0AF */  sw         $s0, 0x28($sp)
    /* 2BE9C 8003D68C 900A838C */  lw         $v1, 0xA90($a0)
    /* 2BEA0 8003D690 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BEA4 8003D694 04006210 */  beq        $v1, $v0, .L8003D6A8
    /* 2BEA8 8003D698 2138A000 */   addu      $a3, $a1, $zero
    /* 2BEAC 8003D69C 04000224 */  addiu      $v0, $zero, 0x4
    /* 2BEB0 8003D6A0 04006214 */  bne        $v1, $v0, .L8003D6B4
    /* 2BEB4 8003D6A4 00000000 */   nop
  .L8003D6A8:
    /* 2BEB8 8003D6A8 840A908C */  lw         $s0, 0xA84($a0)
    /* 2BEBC 8003D6AC AFF50008 */  j          .L8003D6BC
    /* 2BEC0 8003D6B0 1000A427 */   addiu     $a0, $sp, 0x10
  .L8003D6B4:
    /* 2BEC4 8003D6B4 800A908C */  lw         $s0, 0xA80($a0)
    /* 2BEC8 8003D6B8 1000A427 */  addiu      $a0, $sp, 0x10
  .L8003D6BC:
    /* 2BECC 8003D6BC 0C80053C */  lui        $a1, %hi(D_800C4E14)
    /* 2BED0 8003D6C0 F8FFE68C */  lw         $a2, -0x8($a3)
    /* 2BED4 8003D6C4 FCFFF18C */  lw         $s1, -0x4($a3)
    /* 2BED8 8003D6C8 96D9020C */  jal        func_800B6658
    /* 2BEDC 8003D6CC 144EA524 */   addiu     $a1, $a1, %lo(D_800C4E14)
    /* 2BEE0 8003D6D0 21200002 */  addu       $a0, $s0, $zero
    /* 2BEE4 8003D6D4 A4EA000C */  jal        func_8003AA90
    /* 2BEE8 8003D6D8 1000A527 */   addiu     $a1, $sp, 0x10
    /* 2BEEC 8003D6DC 05004010 */  beqz       $v0, .L8003D6F4
    /* 2BEF0 8003D6E0 00000000 */   nop
    /* 2BEF4 8003D6E4 2800438C */  lw         $v1, 0x28($v0)
    /* 2BEF8 8003D6E8 80101100 */  sll        $v0, $s1, 2
    /* 2BEFC 8003D6EC 21104300 */  addu       $v0, $v0, $v1
    /* 2BF00 8003D6F0 0000528C */  lw         $s2, 0x0($v0)
  .L8003D6F4:
    /* 2BF04 8003D6F4 00000000 */  nop
    /* 2BF08 8003D6F8 21104002 */  addu       $v0, $s2, $zero
    /* 2BF0C 8003D6FC 3400BF8F */  lw         $ra, 0x34($sp)
    /* 2BF10 8003D700 3000B28F */  lw         $s2, 0x30($sp)
    /* 2BF14 8003D704 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 2BF18 8003D708 2800B08F */  lw         $s0, 0x28($sp)
    /* 2BF1C 8003D70C 0800E003 */  jr         $ra
    /* 2BF20 8003D710 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8003D674
