nonmatching func_8013D8BC, 0x280

glabel func_8013D8BC
    /* AD88 8013D8BC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* AD8C 8013D8C0 1400B1AF */  sw         $s1, 0x14($sp)
    /* AD90 8013D8C4 21888000 */  addu       $s1, $a0, $zero
    /* AD94 8013D8C8 1800B2AF */  sw         $s2, 0x18($sp)
    /* AD98 8013D8CC 2190A000 */  addu       $s2, $a1, $zero
    /* AD9C 8013D8D0 2400BFAF */  sw         $ra, 0x24($sp)
    /* ADA0 8013D8D4 2000B4AF */  sw         $s4, 0x20($sp)
    /* ADA4 8013D8D8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* ADA8 8013D8DC FBF8040C */  jal        func_8013E3EC
    /* ADAC 8013D8E0 1000B0AF */   sw        $s0, 0x10($sp)
    /* ADB0 8013D8E4 04002586 */  lh         $a1, 0x4($s1)
    /* ADB4 8013D8E8 04002396 */  lhu        $v1, 0x4($s1)
    /* ADB8 8013D8EC 0A00A004 */  bltz       $a1, .L8013D918
    /* ADBC 8013D8F0 21206000 */   addu      $a0, $v1, $zero
    /* ADC0 8013D8F4 1C80023C */  lui        $v0, %hi(D_801BFC3C)
    /* ADC4 8013D8F8 3CFC4284 */  lh         $v0, %lo(D_801BFC3C)($v0)
    /* ADC8 8013D8FC 1C80033C */  lui        $v1, %hi(D_801BFC3C)
    /* ADCC 8013D900 3CFC6394 */  lhu        $v1, %lo(D_801BFC3C)($v1)
    /* ADD0 8013D904 2A104500 */  slt        $v0, $v0, $a1
    /* ADD4 8013D908 04004010 */  beqz       $v0, .L8013D91C
    /* ADD8 8013D90C 00000000 */   nop
    /* ADDC 8013D910 47F60408 */  j          .L8013D91C
    /* ADE0 8013D914 21206000 */   addu      $a0, $v1, $zero
  .L8013D918:
    /* ADE4 8013D918 21200000 */  addu       $a0, $zero, $zero
  .L8013D91C:
    /* ADE8 8013D91C 06002586 */  lh         $a1, 0x6($s1)
    /* ADEC 8013D920 06002396 */  lhu        $v1, 0x6($s1)
    /* ADF0 8013D924 0B00A004 */  bltz       $a1, .L8013D954
    /* ADF4 8013D928 040024A6 */   sh        $a0, 0x4($s1)
    /* ADF8 8013D92C 21206000 */  addu       $a0, $v1, $zero
    /* ADFC 8013D930 1C80023C */  lui        $v0, %hi(D_801BFC3E)
    /* AE00 8013D934 3EFC4284 */  lh         $v0, %lo(D_801BFC3E)($v0)
    /* AE04 8013D938 1C80033C */  lui        $v1, %hi(D_801BFC3E)
    /* AE08 8013D93C 3EFC6394 */  lhu        $v1, %lo(D_801BFC3E)($v1)
    /* AE0C 8013D940 2A104500 */  slt        $v0, $v0, $a1
    /* AE10 8013D944 05004010 */  beqz       $v0, .L8013D95C
    /* AE14 8013D948 00140400 */   sll       $v0, $a0, 16
    /* AE18 8013D94C 56F60408 */  j          .L8013D958
    /* AE1C 8013D950 21206000 */   addu      $a0, $v1, $zero
  .L8013D954:
    /* AE20 8013D954 21200000 */  addu       $a0, $zero, $zero
  .L8013D958:
    /* AE24 8013D958 00140400 */  sll        $v0, $a0, 16
  .L8013D95C:
    /* AE28 8013D95C 04002386 */  lh         $v1, 0x4($s1)
    /* AE2C 8013D960 03140200 */  sra        $v0, $v0, 16
    /* AE30 8013D964 18006200 */  mult       $v1, $v0
    /* AE34 8013D968 060024A6 */  sh         $a0, 0x6($s1)
    /* AE38 8013D96C 12300000 */  mflo       $a2
    /* AE3C 8013D970 0100C324 */  addiu      $v1, $a2, 0x1
    /* AE40 8013D974 C2170300 */  srl        $v0, $v1, 31
    /* AE44 8013D978 21186200 */  addu       $v1, $v1, $v0
    /* AE48 8013D97C 43200300 */  sra        $a0, $v1, 1
    /* AE4C 8013D980 0300801C */  bgtz       $a0, .L8013D990
    /* AE50 8013D984 43810300 */   sra       $s0, $v1, 5
    /* AE54 8013D988 C7F60408 */  j          .L8013DB1C
    /* AE58 8013D98C FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8013D990:
    /* AE5C 8013D990 21180002 */  addu       $v1, $s0, $zero
    /* AE60 8013D994 00110300 */  sll        $v0, $v1, 4
    /* AE64 8013D998 23808200 */  subu       $s0, $a0, $v0
    /* AE68 8013D99C 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* AE6C 8013D9A0 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* AE70 8013D9A4 21A06000 */  addu       $s4, $v1, $zero
    /* AE74 8013D9A8 0000428C */  lw         $v0, 0x0($v0)
    /* AE78 8013D9AC 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* AE7C 8013D9B0 24104300 */  and        $v0, $v0, $v1
    /* AE80 8013D9B4 0E004014 */  bnez       $v0, .L8013D9F0
    /* AE84 8013D9B8 00000000 */   nop
    /* AE88 8013D9BC 0004133C */  lui        $s3, (0x4000000 >> 16)
  .L8013D9C0:
    /* AE8C 8013D9C0 08F9040C */  jal        func_8013E420
    /* AE90 8013D9C4 00000000 */   nop
    /* AE94 8013D9C8 54004014 */  bnez       $v0, .L8013DB1C
    /* AE98 8013D9CC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* AE9C 8013D9D0 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* AEA0 8013D9D4 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* AEA4 8013D9D8 00000000 */  nop
    /* AEA8 8013D9DC 0000428C */  lw         $v0, 0x0($v0)
    /* AEAC 8013D9E0 00000000 */  nop
    /* AEB0 8013D9E4 24105300 */  and        $v0, $v0, $s3
    /* AEB4 8013D9E8 F5FF4010 */  beqz       $v0, .L8013D9C0
    /* AEB8 8013D9EC 00000000 */   nop
  .L8013D9F0:
    /* AEBC 8013D9F0 1C80033C */  lui        $v1, %hi(D_801BFD40)
    /* AEC0 8013D9F4 40FD638C */  lw         $v1, %lo(D_801BFD40)($v1)
    /* AEC4 8013D9F8 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* AEC8 8013D9FC 000062AC */  sw         $v0, 0x0($v1)
    /* AECC 8013DA00 1C80033C */  lui        $v1, %hi(D_801BFD3C)
    /* AED0 8013DA04 3CFD638C */  lw         $v1, %lo(D_801BFD3C)($v1)
    /* AED4 8013DA08 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* AED8 8013DA0C 000062AC */  sw         $v0, 0x0($v1)
    /* AEDC 8013DA10 1C80033C */  lui        $v1, %hi(D_801BFD3C)
    /* AEE0 8013DA14 3CFD638C */  lw         $v1, %lo(D_801BFD3C)($v1)
    /* AEE4 8013DA18 00C0023C */  lui        $v0, (0xC0000000 >> 16)
    /* AEE8 8013DA1C 000062AC */  sw         $v0, 0x0($v1)
    /* AEEC 8013DA20 1C80033C */  lui        $v1, %hi(D_801BFD3C)
    /* AEF0 8013DA24 3CFD638C */  lw         $v1, %lo(D_801BFD3C)($v1)
    /* AEF4 8013DA28 0000228E */  lw         $v0, 0x0($s1)
    /* AEF8 8013DA2C 00000000 */  nop
    /* AEFC 8013DA30 000062AC */  sw         $v0, 0x0($v1)
    /* AF00 8013DA34 1C80033C */  lui        $v1, %hi(D_801BFD3C)
    /* AF04 8013DA38 3CFD638C */  lw         $v1, %lo(D_801BFD3C)($v1)
    /* AF08 8013DA3C 0400228E */  lw         $v0, 0x4($s1)
    /* AF0C 8013DA40 00000000 */  nop
    /* AF10 8013DA44 000062AC */  sw         $v0, 0x0($v1)
    /* AF14 8013DA48 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* AF18 8013DA4C 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* AF1C 8013DA50 00000000 */  nop
    /* AF20 8013DA54 0000428C */  lw         $v0, 0x0($v0)
    /* AF24 8013DA58 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* AF28 8013DA5C 24104300 */  and        $v0, $v0, $v1
    /* AF2C 8013DA60 0E004014 */  bnez       $v0, .L8013DA9C
    /* AF30 8013DA64 00000000 */   nop
    /* AF34 8013DA68 0008113C */  lui        $s1, (0x8000000 >> 16)
  .L8013DA6C:
    /* AF38 8013DA6C 08F9040C */  jal        func_8013E420
    /* AF3C 8013DA70 00000000 */   nop
    /* AF40 8013DA74 29004014 */  bnez       $v0, .L8013DB1C
    /* AF44 8013DA78 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* AF48 8013DA7C 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* AF4C 8013DA80 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* AF50 8013DA84 00000000 */  nop
    /* AF54 8013DA88 0000428C */  lw         $v0, 0x0($v0)
    /* AF58 8013DA8C 00000000 */  nop
    /* AF5C 8013DA90 24105100 */  and        $v0, $v0, $s1
    /* AF60 8013DA94 F5FF4010 */  beqz       $v0, .L8013DA6C
    /* AF64 8013DA98 00000000 */   nop
  .L8013DA9C:
    /* AF68 8013DA9C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* AF6C 8013DAA0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* AF70 8013DAA4 09000212 */  beq        $s0, $v0, .L8013DACC
    /* AF74 8013DAA8 FFFF0324 */   addiu     $v1, $zero, -0x1
  .L8013DAAC:
    /* AF78 8013DAAC 1C80023C */  lui        $v0, %hi(D_801BFD3C)
    /* AF7C 8013DAB0 3CFD428C */  lw         $v0, %lo(D_801BFD3C)($v0)
    /* AF80 8013DAB4 00000000 */  nop
    /* AF84 8013DAB8 0000428C */  lw         $v0, 0x0($v0)
    /* AF88 8013DABC FFFF1026 */  addiu      $s0, $s0, -0x1
    /* AF8C 8013DAC0 000042AE */  sw         $v0, 0x0($s2)
    /* AF90 8013DAC4 F9FF0316 */  bne        $s0, $v1, .L8013DAAC
    /* AF94 8013DAC8 04005226 */   addiu     $s2, $s2, 0x4
  .L8013DACC:
    /* AF98 8013DACC 12008012 */  beqz       $s4, .L8013DB18
    /* AF9C 8013DAD0 0004033C */   lui       $v1, (0x4000003 >> 16)
    /* AFA0 8013DAD4 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* AFA4 8013DAD8 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* AFA8 8013DADC 03006334 */  ori        $v1, $v1, (0x4000003 & 0xFFFF)
    /* AFAC 8013DAE0 000043AC */  sw         $v1, 0x0($v0)
    /* AFB0 8013DAE4 1C80023C */  lui        $v0, %hi(D_801BFD44)
    /* AFB4 8013DAE8 44FD428C */  lw         $v0, %lo(D_801BFD44)($v0)
    /* AFB8 8013DAEC 0001043C */  lui        $a0, (0x1000200 >> 16)
    /* AFBC 8013DAF0 000052AC */  sw         $s2, 0x0($v0)
    /* AFC0 8013DAF4 00141400 */  sll        $v0, $s4, 16
    /* AFC4 8013DAF8 1C80033C */  lui        $v1, %hi(D_801BFD48)
    /* AFC8 8013DAFC 48FD638C */  lw         $v1, %lo(D_801BFD48)($v1)
    /* AFCC 8013DB00 10004234 */  ori        $v0, $v0, 0x10
    /* AFD0 8013DB04 000062AC */  sw         $v0, 0x0($v1)
    /* AFD4 8013DB08 1C80023C */  lui        $v0, %hi(D_801BFD4C)
    /* AFD8 8013DB0C 4CFD428C */  lw         $v0, %lo(D_801BFD4C)($v0)
    /* AFDC 8013DB10 00028434 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
    /* AFE0 8013DB14 000044AC */  sw         $a0, 0x0($v0)
  .L8013DB18:
    /* AFE4 8013DB18 21100000 */  addu       $v0, $zero, $zero
  .L8013DB1C:
    /* AFE8 8013DB1C 2400BF8F */  lw         $ra, 0x24($sp)
    /* AFEC 8013DB20 2000B48F */  lw         $s4, 0x20($sp)
    /* AFF0 8013DB24 1C00B38F */  lw         $s3, 0x1C($sp)
    /* AFF4 8013DB28 1800B28F */  lw         $s2, 0x18($sp)
    /* AFF8 8013DB2C 1400B18F */  lw         $s1, 0x14($sp)
    /* AFFC 8013DB30 1000B08F */  lw         $s0, 0x10($sp)
    /* B000 8013DB34 0800E003 */  jr         $ra
    /* B004 8013DB38 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8013D8BC
