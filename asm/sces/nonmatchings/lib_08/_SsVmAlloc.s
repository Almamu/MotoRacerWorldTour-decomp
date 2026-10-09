nonmatching _SsVmAlloc, 0x270

glabel _SsVmAlloc
    /* 13DB0 801468E4 63000B24 */  addiu      $t3, $zero, 0x63
    /* 13DB4 801468E8 FFFF0C34 */  ori        $t4, $zero, 0xFFFF
    /* 13DB8 801468EC 21500000 */  addu       $t2, $zero, $zero
    /* 13DBC 801468F0 21400000 */  addu       $t0, $zero, $zero
    /* 13DC0 801468F4 63000924 */  addiu      $t1, $zero, 0x63
    /* 13DC4 801468F8 21380000 */  addu       $a3, $zero, $zero
    /* 13DC8 801468FC 1D80023C */  lui        $v0, %hi(D_801CFBBF)
    /* 13DCC 80146900 BFFB4290 */  lbu        $v0, %lo(D_801CFBBF)($v0)
    /* 13DD0 80146904 1D80033C */  lui        $v1, %hi(_SsVmMaxVoice)
    /* 13DD4 80146908 A4FB6380 */  lb         $v1, %lo(_SsVmMaxVoice)($v1)
    /* 13DD8 8014690C 00160200 */  sll        $v0, $v0, 24
    /* 13DDC 80146910 52006018 */  blez       $v1, .L80146A5C
    /* 13DE0 80146914 036E0200 */   sra       $t5, $v0, 24
    /* 13DE4 80146918 01001824 */  addiu      $t8, $zero, 0x1
    /* 13DE8 8014691C 1C800F3C */  lui        $t7, %hi(_snd_vmask)
    /* 13DEC 80146920 3404EF8D */  lw         $t7, %lo(_snd_vmask)($t7)
    /* 13DF0 80146924 21706000 */  addu       $t6, $v1, $zero
    /* 13DF4 80146928 FF00E330 */  andi       $v1, $a3, 0xFF
  .L8014692C:
    /* 13DF8 8014692C 04107800 */  sllv       $v0, $t8, $v1
    /* 13DFC 80146930 2410E201 */  and        $v0, $t7, $v0
    /* 13E00 80146934 44004014 */  bnez       $v0, .L80146A48
    /* 13E04 80146938 C0100300 */   sll       $v0, $v1, 3
    /* 13E08 8014693C 23104300 */  subu       $v0, $v0, $v1
    /* 13E0C 80146940 C0180200 */  sll        $v1, $v0, 3
    /* 13E10 80146944 1D80023C */  lui        $v0, %hi(D_801CF39D)
    /* 13E14 80146948 21104300 */  addu       $v0, $v0, $v1
    /* 13E18 8014694C 9DF34280 */  lb         $v0, %lo(D_801CF39D)($v0)
    /* 13E1C 80146950 00000000 */  nop
    /* 13E20 80146954 09004014 */  bnez       $v0, .L8014697C
    /* 13E24 80146958 FF00E230 */   andi      $v0, $a3, 0xFF
    /* 13E28 8014695C 1D80023C */  lui        $v0, %hi(D_801CF386)
    /* 13E2C 80146960 21104300 */  addu       $v0, $v0, $v1
    /* 13E30 80146964 86F34294 */  lhu        $v0, %lo(D_801CF386)($v0)
    /* 13E34 80146968 00000000 */  nop
    /* 13E38 8014696C 03004014 */  bnez       $v0, .L8014697C
    /* 13E3C 80146970 FF00E230 */   andi      $v0, $a3, 0xFF
    /* 13E40 80146974 971A0508 */  j          .L80146A5C
    /* 13E44 80146978 2158E000 */   addu      $t3, $a3, $zero
  .L8014697C:
    /* 13E48 8014697C C0180200 */  sll        $v1, $v0, 3
    /* 13E4C 80146980 23186200 */  subu       $v1, $v1, $v0
    /* 13E50 80146984 C0180300 */  sll        $v1, $v1, 3
    /* 13E54 80146988 FFFFA531 */  andi       $a1, $t5, 0xFFFF
    /* 13E58 8014698C 1D80063C */  lui        $a2, %hi(D_801CF39A)
    /* 13E5C 80146990 2130C300 */  addu       $a2, $a2, $v1
    /* 13E60 80146994 9AF3C684 */  lh         $a2, %lo(D_801CF39A)($a2)
    /* 13E64 80146998 1D80043C */  lui        $a0, %hi(D_801CF39A)
    /* 13E68 8014699C 21208300 */  addu       $a0, $a0, $v1
    /* 13E6C 801469A0 9AF38494 */  lhu        $a0, %lo(D_801CF39A)($a0)
    /* 13E70 801469A4 2A10C500 */  slt        $v0, $a2, $a1
    /* 13E74 801469A8 0B004010 */  beqz       $v0, .L801469D8
    /* 13E78 801469AC 00000000 */   nop
    /* 13E7C 801469B0 21688000 */  addu       $t5, $a0, $zero
    /* 13E80 801469B4 2148E000 */  addu       $t1, $a3, $zero
    /* 13E84 801469B8 1D800C3C */  lui        $t4, %hi(D_801CF386)
    /* 13E88 801469BC 21608301 */  addu       $t4, $t4, $v1
    /* 13E8C 801469C0 86F38C95 */  lhu        $t4, %lo(D_801CF386)($t4)
    /* 13E90 801469C4 1D80083C */  lui        $t0, %hi(D_801CF382)
    /* 13E94 801469C8 21400301 */  addu       $t0, $t0, $v1
    /* 13E98 801469CC 82F30895 */  lhu        $t0, %lo(D_801CF382)($t0)
    /* 13E9C 801469D0 921A0508 */  j          .L80146A48
    /* 13EA0 801469D4 01000A24 */   addiu     $t2, $zero, 0x1
  .L801469D8:
    /* 13EA4 801469D8 1B00C514 */  bne        $a2, $a1, .L80146A48
    /* 13EA8 801469DC FFFF8431 */   andi      $a0, $t4, 0xFFFF
    /* 13EAC 801469E0 1D80063C */  lui        $a2, %hi(D_801CF386)
    /* 13EB0 801469E4 2130C300 */  addu       $a2, $a2, $v1
    /* 13EB4 801469E8 86F3C694 */  lhu        $a2, %lo(D_801CF386)($a2)
    /* 13EB8 801469EC 00000000 */  nop
    /* 13EBC 801469F0 FFFFC530 */  andi       $a1, $a2, 0xFFFF
    /* 13EC0 801469F4 2B10A400 */  sltu       $v0, $a1, $a0
    /* 13EC4 801469F8 06004010 */  beqz       $v0, .L80146A14
    /* 13EC8 801469FC 01004A25 */   addiu     $t2, $t2, 0x1
    /* 13ECC 80146A00 1D80083C */  lui        $t0, %hi(D_801CF382)
    /* 13ED0 80146A04 21400301 */  addu       $t0, $t0, $v1
    /* 13ED4 80146A08 82F30895 */  lhu        $t0, %lo(D_801CF382)($t0)
    /* 13ED8 80146A0C 911A0508 */  j          .L80146A44
    /* 13EDC 80146A10 2160C000 */   addu      $t4, $a2, $zero
  .L80146A14:
    /* 13EE0 80146A14 0C00A414 */  bne        $a1, $a0, .L80146A48
    /* 13EE4 80146A18 00000000 */   nop
    /* 13EE8 80146A1C 1D80023C */  lui        $v0, %hi(D_801CF382)
    /* 13EEC 80146A20 21104300 */  addu       $v0, $v0, $v1
    /* 13EF0 80146A24 82F34284 */  lh         $v0, %lo(D_801CF382)($v0)
    /* 13EF4 80146A28 1D80013C */  lui        $at, %hi(D_801CF382)
    /* 13EF8 80146A2C 21082300 */  addu       $at, $at, $v1
    /* 13EFC 80146A30 82F32394 */  lhu        $v1, %lo(D_801CF382)($at)
    /* 13F00 80146A34 2A100201 */  slt        $v0, $t0, $v0
    /* 13F04 80146A38 03004010 */  beqz       $v0, .L80146A48
    /* 13F08 80146A3C 00000000 */   nop
    /* 13F0C 80146A40 21406000 */  addu       $t0, $v1, $zero
  .L80146A44:
    /* 13F10 80146A44 2148E000 */  addu       $t1, $a3, $zero
  .L80146A48:
    /* 13F14 80146A48 0100E724 */  addiu      $a3, $a3, 0x1
    /* 13F18 80146A4C FF00E230 */  andi       $v0, $a3, 0xFF
    /* 13F1C 80146A50 2A104E00 */  slt        $v0, $v0, $t6
    /* 13F20 80146A54 B5FF4014 */  bnez       $v0, .L8014692C
    /* 13F24 80146A58 FF00E330 */   andi      $v1, $a3, 0xFF
  .L80146A5C:
    /* 13F28 80146A5C FF006331 */  andi       $v1, $t3, 0xFF
    /* 13F2C 80146A60 63000224 */  addiu      $v0, $zero, 0x63
    /* 13F30 80146A64 05006214 */  bne        $v1, $v0, .L80146A7C
    /* 13F34 80146A68 FF004231 */   andi      $v0, $t2, 0xFF
    /* 13F38 80146A6C 03004014 */  bnez       $v0, .L80146A7C
    /* 13F3C 80146A70 21582001 */   addu      $t3, $t1, $zero
    /* 13F40 80146A74 1D800B3C */  lui        $t3, %hi(_SsVmMaxVoice)
    /* 13F44 80146A78 A4FB6B91 */  lbu        $t3, %lo(_SsVmMaxVoice)($t3)
  .L80146A7C:
    /* 13F48 80146A7C 1D80033C */  lui        $v1, %hi(_SsVmMaxVoice)
    /* 13F4C 80146A80 A4FB6380 */  lb         $v1, %lo(_SsVmMaxVoice)($v1)
    /* 13F50 80146A84 FF006231 */  andi       $v0, $t3, 0xFF
    /* 13F54 80146A88 2A104300 */  slt        $v0, $v0, $v1
    /* 13F58 80146A8C 2F004010 */  beqz       $v0, .L80146B4C
    /* 13F5C 80146A90 00000000 */   nop
    /* 13F60 80146A94 19006018 */  blez       $v1, .L80146AFC
    /* 13F64 80146A98 21380000 */   addu      $a3, $zero, $zero
    /* 13F68 80146A9C 01000824 */  addiu      $t0, $zero, 0x1
    /* 13F6C 80146AA0 1C80063C */  lui        $a2, %hi(_snd_vmask)
    /* 13F70 80146AA4 3404C68C */  lw         $a2, %lo(_snd_vmask)($a2)
    /* 13F74 80146AA8 21286000 */  addu       $a1, $v1, $zero
    /* 13F78 80146AAC FF00E430 */  andi       $a0, $a3, 0xFF
  .L80146AB0:
    /* 13F7C 80146AB0 04108800 */  sllv       $v0, $t0, $a0
    /* 13F80 80146AB4 2410C200 */  and        $v0, $a2, $v0
    /* 13F84 80146AB8 0B004014 */  bnez       $v0, .L80146AE8
    /* 13F88 80146ABC C0180400 */   sll       $v1, $a0, 3
    /* 13F8C 80146AC0 23186400 */  subu       $v1, $v1, $a0
    /* 13F90 80146AC4 C0180300 */  sll        $v1, $v1, 3
    /* 13F94 80146AC8 1D80023C */  lui        $v0, %hi(D_801CF382)
    /* 13F98 80146ACC 21104300 */  addu       $v0, $v0, $v1
    /* 13F9C 80146AD0 82F34294 */  lhu        $v0, %lo(D_801CF382)($v0)
    /* 13FA0 80146AD4 00000000 */  nop
    /* 13FA4 80146AD8 01004224 */  addiu      $v0, $v0, 0x1
    /* 13FA8 80146ADC 1D80013C */  lui        $at, %hi(D_801CF382)
    /* 13FAC 80146AE0 21082300 */  addu       $at, $at, $v1
    /* 13FB0 80146AE4 82F322A4 */  sh         $v0, %lo(D_801CF382)($at)
  .L80146AE8:
    /* 13FB4 80146AE8 0100E724 */  addiu      $a3, $a3, 0x1
    /* 13FB8 80146AEC FF00E230 */  andi       $v0, $a3, 0xFF
    /* 13FBC 80146AF0 2A104500 */  slt        $v0, $v0, $a1
    /* 13FC0 80146AF4 EEFF4014 */  bnez       $v0, .L80146AB0
    /* 13FC4 80146AF8 FF00E430 */   andi      $a0, $a3, 0xFF
  .L80146AFC:
    /* 13FC8 80146AFC FF006231 */  andi       $v0, $t3, 0xFF
    /* 13FCC 80146B00 C0180200 */  sll        $v1, $v0, 3
    /* 13FD0 80146B04 23186200 */  subu       $v1, $v1, $v0
    /* 13FD4 80146B08 C0180300 */  sll        $v1, $v1, 3
    /* 13FD8 80146B0C 1D80013C */  lui        $at, %hi(D_801CF382)
    /* 13FDC 80146B10 21082300 */  addu       $at, $at, $v1
    /* 13FE0 80146B14 82F320A4 */  sh         $zero, %lo(D_801CF382)($at)
    /* 13FE4 80146B18 1D80023C */  lui        $v0, %hi(D_801CFBBF)
    /* 13FE8 80146B1C BFFB4290 */  lbu        $v0, %lo(D_801CFBBF)($v0)
    /* 13FEC 80146B20 1D80013C */  lui        $at, %hi(D_801CF3AA)
    /* 13FF0 80146B24 21082300 */  addu       $at, $at, $v1
    /* 13FF4 80146B28 AAF320A4 */  sh         $zero, %lo(D_801CF3AA)($at)
    /* 13FF8 80146B2C 1D80013C */  lui        $at, %hi(D_801CF39E)
    /* 13FFC 80146B30 21082300 */  addu       $at, $at, $v1
    /* 14000 80146B34 9EF320A4 */  sh         $zero, %lo(D_801CF39E)($at)
    /* 14004 80146B38 00160200 */  sll        $v0, $v0, 24
    /* 14008 80146B3C 03160200 */  sra        $v0, $v0, 24
    /* 1400C 80146B40 1D80013C */  lui        $at, %hi(D_801CF39A)
    /* 14010 80146B44 21082300 */  addu       $at, $at, $v1
    /* 14014 80146B48 9AF322A4 */  sh         $v0, %lo(D_801CF39A)($at)
  .L80146B4C:
    /* 14018 80146B4C 0800E003 */  jr         $ra
    /* 1401C 80146B50 FF006231 */   andi      $v0, $t3, 0xFF
endlabel _SsVmAlloc
