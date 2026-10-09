nonmatching func_8003D9EC, 0x1B0

glabel func_8003D9EC
    /* 2C1FC 8003D9EC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2C200 8003D9F0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C204 8003D9F4 2190C000 */  addu       $s2, $a2, $zero
    /* 2C208 8003D9F8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 2C20C 8003D9FC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2C210 8003DA00 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2C214 8003DA04 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2C218 8003DA08 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C21C 8003DA0C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C220 8003DA10 0400518E */  lw         $s1, 0x4($s2)
    /* 2C224 8003DA14 00000000 */  nop
    /* 2C228 8003DA18 900A258E */  lw         $a1, 0xA90($s1)
    /* 2C22C 8003DA1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C230 8003DA20 0300A210 */  beq        $a1, $v0, .L8003DA30
    /* 2C234 8003DA24 04000224 */   addiu     $v0, $zero, 0x4
    /* 2C238 8003DA28 0400A214 */  bne        $a1, $v0, .L8003DA3C
    /* 2C23C 8003DA2C 00000000 */   nop
  .L8003DA30:
    /* 2C240 8003DA30 840A348E */  lw         $s4, 0xA84($s1)
    /* 2C244 8003DA34 90F60008 */  j          .L8003DA40
    /* 2C248 8003DA38 00000000 */   nop
  .L8003DA3C:
    /* 2C24C 8003DA3C 800A348E */  lw         $s4, 0xA80($s1)
  .L8003DA40:
    /* 2C250 8003DA40 0000428E */  lw         $v0, 0x0($s2)
    /* 2C254 8003DA44 0C80153C */  lui        $s5, %hi(D_800C4D98)
    /* 2C258 8003DA48 984DB526 */  addiu      $s5, $s5, %lo(D_800C4D98)
    /* 2C25C 8003DA4C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2C260 8003DA50 80100200 */  sll        $v0, $v0, 2
    /* 2C264 8003DA54 21105500 */  addu       $v0, $v0, $s5
    /* 2C268 8003DA58 0000438C */  lw         $v1, 0x0($v0)
    /* 2C26C 8003DA5C 00000000 */  nop
    /* 2C270 8003DA60 45006014 */  bnez       $v1, .L8003DB78
    /* 2C274 8003DA64 21800000 */   addu      $s0, $zero, $zero
    /* 2C278 8003DA68 940A238E */  lw         $v1, 0xA94($s1)
    /* 2C27C 8003DA6C 0000938C */  lw         $s3, 0x0($a0)
    /* 2C280 8003DA70 80006230 */  andi       $v0, $v1, 0x80
    /* 2C284 8003DA74 07004010 */  beqz       $v0, .L8003DA94
    /* 2C288 8003DA78 05000224 */   addiu     $v0, $zero, 0x5
    /* 2C28C 8003DA7C 3E006016 */  bnez       $s3, .L8003DB78
    /* 2C290 8003DA80 7FFF0224 */   addiu     $v0, $zero, -0x81
    /* 2C294 8003DA84 900A258E */  lw         $a1, 0xA90($s1)
    /* 2C298 8003DA88 24106200 */  and        $v0, $v1, $v0
    /* 2C29C 8003DA8C 940A22AE */  sw         $v0, 0xA94($s1)
    /* 2C2A0 8003DA90 05000224 */  addiu      $v0, $zero, 0x5
  .L8003DA94:
    /* 2C2A4 8003DA94 1800A214 */  bne        $a1, $v0, .L8003DAF8
    /* 2C2A8 8003DA98 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 2C2AC 8003DA9C 16006216 */  bne        $s3, $v0, .L8003DAF8
    /* 2C2B0 8003DAA0 21208002 */   addu      $a0, $s4, $zero
  .L8003DAA4:
    /* 2C2B4 8003DAA4 0000468E */  lw         $a2, 0x0($s2)
    /* 2C2B8 8003DAA8 0EEC000C */  jal        func_8003B038
    /* 2C2BC 8003DAAC 21280002 */   addu      $a1, $s0, $zero
    /* 2C2C0 8003DAB0 21204000 */  addu       $a0, $v0, $zero
    /* 2C2C4 8003DAB4 0A008010 */  beqz       $a0, .L8003DAE0
    /* 2C2C8 8003DAB8 00000000 */   nop
    /* 2C2CC 8003DABC 2000828C */  lw         $v0, 0x20($a0)
    /* 2C2D0 8003DAC0 0000438E */  lw         $v1, 0x0($s2)
    /* 2C2D4 8003DAC4 00110200 */  sll        $v0, $v0, 4
    /* 2C2D8 8003DAC8 03140200 */  sra        $v0, $v0, 16
    /* 2C2DC 8003DACC 24104300 */  and        $v0, $v0, $v1
    /* 2C2E0 8003DAD0 29004010 */  beqz       $v0, .L8003DB78
    /* 2C2E4 8003DAD4 00000000 */   nop
    /* 2C2E8 8003DAD8 EFE2000C */  jal        func_80038BBC
    /* 2C2EC 8003DADC 21282002 */   addu      $a1, $s1, $zero
  .L8003DAE0:
    /* 2C2F0 8003DAE0 01001026 */  addiu      $s0, $s0, 0x1
    /* 2C2F4 8003DAE4 0300022A */  slti       $v0, $s0, 0x3
    /* 2C2F8 8003DAE8 EEFF4014 */  bnez       $v0, .L8003DAA4
    /* 2C2FC 8003DAEC 21208002 */   addu      $a0, $s4, $zero
    /* 2C300 8003DAF0 D6F60008 */  j          .L8003DB58
    /* 2C304 8003DAF4 00000000 */   nop
  .L8003DAF8:
    /* 2C308 8003DAF8 1F00A014 */  bnez       $a1, .L8003DB78
    /* 2C30C 8003DAFC 21800000 */   addu      $s0, $zero, $zero
    /* 2C310 8003DB00 21208002 */  addu       $a0, $s4, $zero
  .L8003DB04:
    /* 2C314 8003DB04 0000468E */  lw         $a2, 0x0($s2)
    /* 2C318 8003DB08 0EEC000C */  jal        func_8003B038
    /* 2C31C 8003DB0C 21280002 */   addu      $a1, $s0, $zero
    /* 2C320 8003DB10 21284000 */  addu       $a1, $v0, $zero
    /* 2C324 8003DB14 0C00A010 */  beqz       $a1, .L8003DB48
    /* 2C328 8003DB18 00000000 */   nop
    /* 2C32C 8003DB1C 2000A48C */  lw         $a0, 0x20($a1)
    /* 2C330 8003DB20 0000438E */  lw         $v1, 0x0($s2)
    /* 2C334 8003DB24 00110400 */  sll        $v0, $a0, 4
    /* 2C338 8003DB28 03140200 */  sra        $v0, $v0, 16
    /* 2C33C 8003DB2C 24104300 */  and        $v0, $v0, $v1
    /* 2C340 8003DB30 11004010 */  beqz       $v0, .L8003DB78
    /* 2C344 8003DB34 FF038230 */   andi      $v0, $a0, 0x3FF
    /* 2C348 8003DB38 03006216 */  bne        $s3, $v0, .L8003DB48
    /* 2C34C 8003DB3C 00000000 */   nop
    /* 2C350 8003DB40 7BF3000C */  jal        func_8003CDEC
    /* 2C354 8003DB44 21202002 */   addu      $a0, $s1, $zero
  .L8003DB48:
    /* 2C358 8003DB48 01001026 */  addiu      $s0, $s0, 0x1
    /* 2C35C 8003DB4C 0300022A */  slti       $v0, $s0, 0x3
    /* 2C360 8003DB50 ECFF4014 */  bnez       $v0, .L8003DB04
    /* 2C364 8003DB54 21208002 */   addu      $a0, $s4, $zero
  .L8003DB58:
    /* 2C368 8003DB58 6CF9000C */  jal        func_8003E5B0
    /* 2C36C 8003DB5C 21202002 */   addu      $a0, $s1, $zero
    /* 2C370 8003DB60 0000428E */  lw         $v0, 0x0($s2)
    /* 2C374 8003DB64 01000324 */  addiu      $v1, $zero, 0x1
    /* 2C378 8003DB68 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2C37C 8003DB6C 80100200 */  sll        $v0, $v0, 2
    /* 2C380 8003DB70 21105500 */  addu       $v0, $v0, $s5
    /* 2C384 8003DB74 000043AC */  sw         $v1, 0x0($v0)
  .L8003DB78:
    /* 2C388 8003DB78 2800BF8F */  lw         $ra, 0x28($sp)
    /* 2C38C 8003DB7C 2400B58F */  lw         $s5, 0x24($sp)
    /* 2C390 8003DB80 2000B48F */  lw         $s4, 0x20($sp)
    /* 2C394 8003DB84 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2C398 8003DB88 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C39C 8003DB8C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C3A0 8003DB90 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C3A4 8003DB94 0800E003 */  jr         $ra
    /* 2C3A8 8003DB98 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8003D9EC
