nonmatching FindEntry, 0x190

glabel FindEntry
    /* 2E58 8013598C D0FDBD27 */  addiu      $sp, $sp, -0x230
    /* 2E5C 80135990 1802B2AF */  sw         $s2, 0x218($sp)
    /* 2E60 80135994 2190A000 */  addu       $s2, $a1, $zero
    /* 2E64 80135998 2002B4AF */  sw         $s4, 0x220($sp)
    /* 2E68 8013599C 21A00000 */  addu       $s4, $zero, $zero
    /* 2E6C 801359A0 2402B5AF */  sw         $s5, 0x224($sp)
    /* 2E70 801359A4 21A88000 */  addu       $s5, $a0, $zero
    /* 2E74 801359A8 2C02BFAF */  sw         $ra, 0x22C($sp)
    /* 2E78 801359AC 2802B6AF */  sw         $s6, 0x228($sp)
    /* 2E7C 801359B0 1C02B3AF */  sw         $s3, 0x21C($sp)
    /* 2E80 801359B4 1402B1AF */  sw         $s1, 0x214($sp)
    /* 2E84 801359B8 4D00A012 */  beqz       $s5, .L80135AF0
    /* 2E88 801359BC 1002B0AF */   sw        $s0, 0x210($sp)
    /* 2E8C 801359C0 0600B396 */  lhu        $s3, 0x6($s5)
    /* 2E90 801359C4 00000000 */  nop
    /* 2E94 801359C8 02006016 */  bnez       $s3, .L801359D4
    /* 2E98 801359CC 1000B026 */   addiu     $s0, $s5, 0x10
    /* 2E9C 801359D0 30001324 */  addiu      $s3, $zero, 0x30
  .L801359D4:
    /* 2EA0 801359D4 5C000224 */  addiu      $v0, $zero, 0x5C
    /* 2EA4 801359D8 00004382 */  lb         $v1, 0x0($s2)
    /* 2EA8 801359DC 0000B18E */  lw         $s1, 0x0($s5)
    /* 2EAC 801359E0 02006214 */  bne        $v1, $v0, .L801359EC
    /* 2EB0 801359E4 21B06002 */   addu      $s6, $s3, $zero
    /* 2EB4 801359E8 01005226 */  addiu      $s2, $s2, 0x1
  .L801359EC:
    /* 2EB8 801359EC 40002012 */  beqz       $s1, .L80135AF0
    /* 2EBC 801359F0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 2EC0 801359F4 C42B050C */  jal        strcpy
    /* 2EC4 801359F8 21284002 */   addu      $a1, $s2, $zero
    /* 2EC8 801359FC B2D7040C */  jal        StrUpper
    /* 2ECC 80135A00 1000A427 */   addiu     $a0, $sp, 0x10
    /* 2ED0 80135A04 D82B050C */  jal        strlen
    /* 2ED4 80135A08 21204002 */   addu      $a0, $s2, $zero
    /* 2ED8 80135A0C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2EDC 80135A10 21284000 */  addu       $a1, $v0, $zero
    /* 2EE0 80135A14 66D7040C */  jal        Crc32
    /* 2EE4 80135A18 21300000 */   addu      $a2, $zero, $zero
    /* 2EE8 80135A1C 0400A396 */  lhu        $v1, 0x4($s5)
    /* 2EEC 80135A20 00000000 */  nop
    /* 2EF0 80135A24 08006330 */  andi       $v1, $v1, 0x8
    /* 2EF4 80135A28 2C006010 */  beqz       $v1, .L80135ADC
    /* 2EF8 80135A2C 21404000 */   addu      $t0, $v0, $zero
    /* 2EFC 80135A30 FFFF2726 */  addiu      $a3, $s1, -0x1
    /* 2F00 80135A34 1800F300 */  mult       $a3, $s3
    /* 2F04 80135A38 0C00028E */  lw         $v0, 0xC($s0)
    /* 2F08 80135A3C 21300000 */  addu       $a2, $zero, $zero
    /* 2F0C 80135A40 2B100201 */  sltu       $v0, $t0, $v0
    /* 2F10 80135A44 12180000 */  mflo       $v1
    /* 2F14 80135A48 29004014 */  bnez       $v0, .L80135AF0
    /* 2F18 80135A4C 21180302 */   addu      $v1, $s0, $v1
    /* 2F1C 80135A50 0C00628C */  lw         $v0, 0xC($v1)
    /* 2F20 80135A54 00000000 */  nop
    /* 2F24 80135A58 2B104800 */  sltu       $v0, $v0, $t0
    /* 2F28 80135A5C 25004014 */  bnez       $v0, .L80135AF4
    /* 2F2C 80135A60 21108002 */   addu      $v0, $s4, $zero
    /* 2F30 80135A64 42280700 */  srl        $a1, $a3, 1
    /* 2F34 80135A68 1800B300 */  mult       $a1, $s3
    /* 2F38 80135A6C 12100000 */  mflo       $v0
    /* 2F3C 80135A70 21180202 */  addu       $v1, $s0, $v0
    /* 2F40 80135A74 0C00648C */  lw         $a0, 0xC($v1)
    /* 2F44 80135A78 00000000 */  nop
    /* 2F48 80135A7C 13000411 */  beq        $t0, $a0, .L80135ACC
    /* 2F4C 80135A80 00000000 */   nop
  .L80135A84:
    /* 2F50 80135A84 2B108800 */  sltu       $v0, $a0, $t0
    /* 2F54 80135A88 03004010 */  beqz       $v0, .L80135A98
    /* 2F58 80135A8C 00000000 */   nop
    /* 2F5C 80135A90 A7D60408 */  j          .L80135A9C
    /* 2F60 80135A94 0100A624 */   addiu     $a2, $a1, 0x1
  .L80135A98:
    /* 2F64 80135A98 FFFFA724 */  addiu      $a3, $a1, -0x1
  .L80135A9C:
    /* 2F68 80135A9C 2B10E600 */  sltu       $v0, $a3, $a2
    /* 2F6C 80135AA0 13004014 */  bnez       $v0, .L80135AF0
    /* 2F70 80135AA4 2310E600 */   subu      $v0, $a3, $a2
    /* 2F74 80135AA8 42100200 */  srl        $v0, $v0, 1
    /* 2F78 80135AAC 2128C200 */  addu       $a1, $a2, $v0
    /* 2F7C 80135AB0 1800B600 */  mult       $a1, $s6
    /* 2F80 80135AB4 12180000 */  mflo       $v1
    /* 2F84 80135AB8 21180302 */  addu       $v1, $s0, $v1
    /* 2F88 80135ABC 0C00628C */  lw         $v0, 0xC($v1)
    /* 2F8C 80135AC0 00000000 */  nop
    /* 2F90 80135AC4 EFFF0215 */  bne        $t0, $v0, .L80135A84
    /* 2F94 80135AC8 21204000 */   addu      $a0, $v0, $zero
  .L80135ACC:
    /* 2F98 80135ACC BCD60408 */  j          .L80135AF0
    /* 2F9C 80135AD0 21A06000 */   addu      $s4, $v1, $zero
  .L80135AD4:
    /* 2FA0 80135AD4 06002012 */  beqz       $s1, .L80135AF0
    /* 2FA4 80135AD8 21801302 */   addu      $s0, $s0, $s3
  .L80135ADC:
    /* 2FA8 80135ADC 0C00028E */  lw         $v0, 0xC($s0)
    /* 2FAC 80135AE0 00000000 */  nop
    /* 2FB0 80135AE4 FBFF0215 */  bne        $t0, $v0, .L80135AD4
    /* 2FB4 80135AE8 FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 2FB8 80135AEC 21A00002 */  addu       $s4, $s0, $zero
  .L80135AF0:
    /* 2FBC 80135AF0 21108002 */  addu       $v0, $s4, $zero
  .L80135AF4:
    /* 2FC0 80135AF4 2C02BF8F */  lw         $ra, 0x22C($sp)
    /* 2FC4 80135AF8 2802B68F */  lw         $s6, 0x228($sp)
    /* 2FC8 80135AFC 2402B58F */  lw         $s5, 0x224($sp)
    /* 2FCC 80135B00 2002B48F */  lw         $s4, 0x220($sp)
    /* 2FD0 80135B04 1C02B38F */  lw         $s3, 0x21C($sp)
    /* 2FD4 80135B08 1802B28F */  lw         $s2, 0x218($sp)
    /* 2FD8 80135B0C 1402B18F */  lw         $s1, 0x214($sp)
    /* 2FDC 80135B10 1002B08F */  lw         $s0, 0x210($sp)
    /* 2FE0 80135B14 0800E003 */  jr         $ra
    /* 2FE4 80135B18 3002BD27 */   addiu     $sp, $sp, 0x230
endlabel FindEntry
