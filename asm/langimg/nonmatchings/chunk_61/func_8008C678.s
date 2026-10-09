nonmatching func_8008C678, 0x114

glabel func_8008C678
    /* 7AE88 8008C678 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 7AE8C 8008C67C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 7AE90 8008C680 FF7F133C */  lui        $s3, (0x7FFFFFFF >> 16)
    /* 7AE94 8008C684 FFFF7336 */  ori        $s3, $s3, (0x7FFFFFFF & 0xFFFF)
    /* 7AE98 8008C688 2800B2AF */  sw         $s2, 0x28($sp)
    /* 7AE9C 8008C68C FF7F123C */  lui        $s2, (0x7FFFFFFF >> 16)
    /* 7AEA0 8008C690 FFFF5236 */  ori        $s2, $s2, (0x7FFFFFFF & 0xFFFF)
    /* 7AEA4 8008C694 3000B4AF */  sw         $s4, 0x30($sp)
    /* 7AEA8 8008C698 21A00000 */  addu       $s4, $zero, $zero
    /* 7AEAC 8008C69C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 7AEB0 8008C6A0 21A80000 */  addu       $s5, $zero, $zero
    /* 7AEB4 8008C6A4 4400BFAF */  sw         $ra, 0x44($sp)
    /* 7AEB8 8008C6A8 4000BEAF */  sw         $fp, 0x40($sp)
    /* 7AEBC 8008C6AC 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 7AEC0 8008C6B0 3800B6AF */  sw         $s6, 0x38($sp)
    /* 7AEC4 8008C6B4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 7AEC8 8008C6B8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 7AECC 8008C6BC 0400908C */  lw         $s0, 0x4($a0)
    /* 7AED0 8008C6C0 00000000 */  nop
    /* 7AED4 8008C6C4 21000012 */  beqz       $s0, .L8008C74C
    /* 7AED8 8008C6C8 21B0C000 */   addu      $s6, $a2, $zero
    /* 7AEDC 8008C6CC 01001724 */  addiu      $s7, $zero, 0x1
    /* 7AEE0 8008C6D0 04F0F700 */  sllv       $fp, $s7, $a3
    /* 7AEE4 8008C6D4 1000A427 */  addiu      $a0, $sp, 0x10
  .L8008C6D8:
    /* 7AEE8 8008C6D8 2128C002 */  addu       $a1, $s6, $zero
    /* 7AEEC 8008C6DC 3466020C */  jal        func_800998D0
    /* 7AEF0 8008C6E0 0C000626 */   addiu     $a2, $s0, 0xC
    /* 7AEF4 8008C6E4 8F64020C */  jal        func_8009923C
    /* 7AEF8 8008C6E8 1000A427 */   addiu     $a0, $sp, 0x10
    /* 7AEFC 8008C6EC 5C00038E */  lw         $v1, 0x5C($s0)
    /* 7AF00 8008C6F0 00000000 */  nop
    /* 7AF04 8008C6F4 24187E00 */  and        $v1, $v1, $fp
    /* 7AF08 8008C6F8 0B006014 */  bnez       $v1, .L8008C728
    /* 7AF0C 8008C6FC 21884000 */   addu      $s1, $v0, $zero
    /* 7AF10 8008C700 21200002 */  addu       $a0, $s0, $zero
    /* 7AF14 8008C704 662E020C */  jal        func_8008B998
    /* 7AF18 8008C708 2128C002 */   addu      $a1, $s6, $zero
    /* 7AF1C 8008C70C 07005714 */  bne        $v0, $s7, .L8008C72C
    /* 7AF20 8008C710 2B103202 */   sltu      $v0, $s1, $s2
    /* 7AF24 8008C714 2B103302 */  sltu       $v0, $s1, $s3
    /* 7AF28 8008C718 04004010 */  beqz       $v0, .L8008C72C
    /* 7AF2C 8008C71C 2B103202 */   sltu      $v0, $s1, $s2
    /* 7AF30 8008C720 21982002 */  addu       $s3, $s1, $zero
    /* 7AF34 8008C724 21A00002 */  addu       $s4, $s0, $zero
  .L8008C728:
    /* 7AF38 8008C728 2B103202 */  sltu       $v0, $s1, $s2
  .L8008C72C:
    /* 7AF3C 8008C72C 03004010 */  beqz       $v0, .L8008C73C
    /* 7AF40 8008C730 00000000 */   nop
    /* 7AF44 8008C734 21902002 */  addu       $s2, $s1, $zero
    /* 7AF48 8008C738 21A80002 */  addu       $s5, $s0, $zero
  .L8008C73C:
    /* 7AF4C 8008C73C 5400108E */  lw         $s0, 0x54($s0)
    /* 7AF50 8008C740 00000000 */  nop
    /* 7AF54 8008C744 E4FF0016 */  bnez       $s0, .L8008C6D8
    /* 7AF58 8008C748 1000A427 */   addiu     $a0, $sp, 0x10
  .L8008C74C:
    /* 7AF5C 8008C74C 03008016 */  bnez       $s4, .L8008C75C
    /* 7AF60 8008C750 21108002 */   addu      $v0, $s4, $zero
    /* 7AF64 8008C754 21A0A002 */  addu       $s4, $s5, $zero
    /* 7AF68 8008C758 21108002 */  addu       $v0, $s4, $zero
  .L8008C75C:
    /* 7AF6C 8008C75C 4400BF8F */  lw         $ra, 0x44($sp)
    /* 7AF70 8008C760 4000BE8F */  lw         $fp, 0x40($sp)
    /* 7AF74 8008C764 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 7AF78 8008C768 3800B68F */  lw         $s6, 0x38($sp)
    /* 7AF7C 8008C76C 3400B58F */  lw         $s5, 0x34($sp)
    /* 7AF80 8008C770 3000B48F */  lw         $s4, 0x30($sp)
    /* 7AF84 8008C774 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 7AF88 8008C778 2800B28F */  lw         $s2, 0x28($sp)
    /* 7AF8C 8008C77C 2400B18F */  lw         $s1, 0x24($sp)
    /* 7AF90 8008C780 2000B08F */  lw         $s0, 0x20($sp)
    /* 7AF94 8008C784 0800E003 */  jr         $ra
    /* 7AF98 8008C788 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel func_8008C678
