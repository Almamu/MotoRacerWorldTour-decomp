nonmatching func_8013EEBC, 0x2CC

glabel func_8013EEBC
    /* C388 8013EEBC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C38C 8013EEC0 1000B0AF */  sw         $s0, 0x10($sp)
    /* C390 8013EEC4 1400BFAF */  sw         $ra, 0x14($sp)
    /* C394 8013EEC8 17FB040C */  jal        func_8013EC5C
    /* C398 8013EECC 21808000 */   addu      $s0, $a0, $zero
    /* C39C 8013EED0 21204000 */  addu       $a0, $v0, $zero
    /* C3A0 8013EED4 A7008010 */  beqz       $a0, .L8013F174
    /* C3A4 8013EED8 07000324 */   addiu     $v1, $zero, 0x7
    /* C3A8 8013EEDC 01008290 */  lbu        $v0, 0x1($a0)
    /* C3AC 8013EEE0 00000000 */  nop
    /* C3B0 8013EEE4 02110200 */  srl        $v0, $v0, 4
    /* C3B4 8013EEE8 A3004314 */  bne        $v0, $v1, .L8013F178
    /* C3B8 8013EEEC 21100000 */   addu      $v0, $zero, $zero
    /* C3BC 8013EEF0 0F001032 */  andi       $s0, $s0, 0xF
    /* C3C0 8013EEF4 1D80033C */  lui        $v1, %hi(D_801CE740)
    /* C3C4 8013EEF8 02008624 */  addiu      $a2, $a0, 0x2
    /* C3C8 8013EEFC 02008294 */  lhu        $v0, 0x2($a0)
    /* C3CC 8013EF00 00211000 */  sll        $a0, $s0, 4
    /* C3D0 8013EF04 27100200 */  nor        $v0, $zero, $v0
    /* C3D4 8013EF08 40E762A4 */  sh         $v0, %lo(D_801CE740)($v1)
    /* C3D8 8013EF0C 1D80033C */  lui        $v1, %hi(D_801CE758)
    /* C3DC 8013EF10 58E76324 */  addiu      $v1, $v1, %lo(D_801CE758)
    /* C3E0 8013EF14 21188300 */  addu       $v1, $a0, $v1
    /* C3E4 8013EF18 1D80023C */  lui        $v0, %hi(D_801CE700)
    /* C3E8 8013EF1C 00E74224 */  addiu      $v0, $v0, %lo(D_801CE700)
    /* C3EC 8013EF20 21208200 */  addu       $a0, $a0, $v0
    /* C3F0 8013EF24 0400C590 */  lbu        $a1, 0x4($a2)
    /* C3F4 8013EF28 0000628C */  lw         $v0, 0x0($v1)
    /* C3F8 8013EF2C 0000848C */  lw         $a0, 0x0($a0)
    /* C3FC 8013EF30 2328A200 */  subu       $a1, $a1, $v0
    /* C400 8013EF34 23100400 */  negu       $v0, $a0
    /* C404 8013EF38 2A10A200 */  slt        $v0, $a1, $v0
    /* C408 8013EF3C 03004010 */  beqz       $v0, .L8013EF4C
    /* C40C 8013EF40 2A108500 */   slt       $v0, $a0, $a1
    /* C410 8013EF44 D6FB0408 */  j          .L8013EF58
    /* C414 8013EF48 2128A400 */   addu      $a1, $a1, $a0
  .L8013EF4C:
    /* C418 8013EF4C 02004014 */  bnez       $v0, .L8013EF58
    /* C41C 8013EF50 2328A400 */   subu      $a1, $a1, $a0
    /* C420 8013EF54 21280000 */  addu       $a1, $zero, $zero
  .L8013EF58:
    /* C424 8013EF58 1D80023C */  lui        $v0, %hi(D_801CE720)
    /* C428 8013EF5C 20E74224 */  addiu      $v0, $v0, %lo(D_801CE720)
    /* C42C 8013EF60 00211000 */  sll        $a0, $s0, 4
    /* C430 8013EF64 21108200 */  addu       $v0, $a0, $v0
    /* C434 8013EF68 0000438C */  lw         $v1, 0x0($v0)
    /* C438 8013EF6C 00120500 */  sll        $v0, $a1, 8
    /* C43C 8013EF70 1A004300 */  div        $zero, $v0, $v1
    /* C440 8013EF74 02006014 */  bnez       $v1, .L8013EF80
    /* C444 8013EF78 00000000 */   nop
    /* C448 8013EF7C 0D000700 */  break      7
  .L8013EF80:
    /* C44C 8013EF80 FFFF0124 */  addiu      $at, $zero, -0x1
    /* C450 8013EF84 04006114 */  bne        $v1, $at, .L8013EF98
    /* C454 8013EF88 0080013C */   lui       $at, (0x80000000 >> 16)
    /* C458 8013EF8C 02004114 */  bne        $v0, $at, .L8013EF98
    /* C45C 8013EF90 00000000 */   nop
    /* C460 8013EF94 0D000600 */  break      6
  .L8013EF98:
    /* C464 8013EF98 12100000 */  mflo       $v0
    /* C468 8013EF9C 1D80033C */  lui        $v1, %hi(D_801CE74C)
    /* C46C 8013EFA0 4CE762AC */  sw         $v0, %lo(D_801CE74C)($v1)
    /* C470 8013EFA4 1D80033C */  lui        $v1, %hi(D_801CE758)
    /* C474 8013EFA8 58E76324 */  addiu      $v1, $v1, %lo(D_801CE758)
    /* C478 8013EFAC 21188300 */  addu       $v1, $a0, $v1
    /* C47C 8013EFB0 1D80023C */  lui        $v0, %hi(D_801CE700)
    /* C480 8013EFB4 00E74224 */  addiu      $v0, $v0, %lo(D_801CE700)
    /* C484 8013EFB8 21208200 */  addu       $a0, $a0, $v0
    /* C488 8013EFBC 0500C590 */  lbu        $a1, 0x5($a2)
    /* C48C 8013EFC0 0400628C */  lw         $v0, 0x4($v1)
    /* C490 8013EFC4 0400838C */  lw         $v1, 0x4($a0)
    /* C494 8013EFC8 2328A200 */  subu       $a1, $a1, $v0
    /* C498 8013EFCC 23100300 */  negu       $v0, $v1
    /* C49C 8013EFD0 2A10A200 */  slt        $v0, $a1, $v0
    /* C4A0 8013EFD4 03004010 */  beqz       $v0, .L8013EFE4
    /* C4A4 8013EFD8 2A106500 */   slt       $v0, $v1, $a1
    /* C4A8 8013EFDC FCFB0408 */  j          .L8013EFF0
    /* C4AC 8013EFE0 2128A300 */   addu      $a1, $a1, $v1
  .L8013EFE4:
    /* C4B0 8013EFE4 02004014 */  bnez       $v0, .L8013EFF0
    /* C4B4 8013EFE8 2328A300 */   subu      $a1, $a1, $v1
    /* C4B8 8013EFEC 21280000 */  addu       $a1, $zero, $zero
  .L8013EFF0:
    /* C4BC 8013EFF0 1D80023C */  lui        $v0, %hi(D_801CE720)
    /* C4C0 8013EFF4 20E74224 */  addiu      $v0, $v0, %lo(D_801CE720)
    /* C4C4 8013EFF8 00211000 */  sll        $a0, $s0, 4
    /* C4C8 8013EFFC 21108200 */  addu       $v0, $a0, $v0
    /* C4CC 8013F000 0400438C */  lw         $v1, 0x4($v0)
    /* C4D0 8013F004 00120500 */  sll        $v0, $a1, 8
    /* C4D4 8013F008 1A004300 */  div        $zero, $v0, $v1
    /* C4D8 8013F00C 02006014 */  bnez       $v1, .L8013F018
    /* C4DC 8013F010 00000000 */   nop
    /* C4E0 8013F014 0D000700 */  break      7
  .L8013F018:
    /* C4E4 8013F018 FFFF0124 */  addiu      $at, $zero, -0x1
    /* C4E8 8013F01C 04006114 */  bne        $v1, $at, .L8013F030
    /* C4EC 8013F020 0080013C */   lui       $at, (0x80000000 >> 16)
    /* C4F0 8013F024 02004114 */  bne        $v0, $at, .L8013F030
    /* C4F4 8013F028 00000000 */   nop
    /* C4F8 8013F02C 0D000600 */  break      6
  .L8013F030:
    /* C4FC 8013F030 12100000 */  mflo       $v0
    /* C500 8013F034 1D80033C */  lui        $v1, %hi(D_801CE750)
    /* C504 8013F038 50E762AC */  sw         $v0, %lo(D_801CE750)($v1)
    /* C508 8013F03C 1D80033C */  lui        $v1, %hi(D_801CE758)
    /* C50C 8013F040 58E76324 */  addiu      $v1, $v1, %lo(D_801CE758)
    /* C510 8013F044 21188300 */  addu       $v1, $a0, $v1
    /* C514 8013F048 1D80023C */  lui        $v0, %hi(D_801CE700)
    /* C518 8013F04C 00E74224 */  addiu      $v0, $v0, %lo(D_801CE700)
    /* C51C 8013F050 21208200 */  addu       $a0, $a0, $v0
    /* C520 8013F054 0200C590 */  lbu        $a1, 0x2($a2)
    /* C524 8013F058 0800628C */  lw         $v0, 0x8($v1)
    /* C528 8013F05C 0800838C */  lw         $v1, 0x8($a0)
    /* C52C 8013F060 2328A200 */  subu       $a1, $a1, $v0
    /* C530 8013F064 23100300 */  negu       $v0, $v1
    /* C534 8013F068 2A10A200 */  slt        $v0, $a1, $v0
    /* C538 8013F06C 03004010 */  beqz       $v0, .L8013F07C
    /* C53C 8013F070 2A106500 */   slt       $v0, $v1, $a1
    /* C540 8013F074 22FC0408 */  j          .L8013F088
    /* C544 8013F078 2128A300 */   addu      $a1, $a1, $v1
  .L8013F07C:
    /* C548 8013F07C 02004014 */  bnez       $v0, .L8013F088
    /* C54C 8013F080 2328A300 */   subu      $a1, $a1, $v1
    /* C550 8013F084 21280000 */  addu       $a1, $zero, $zero
  .L8013F088:
    /* C554 8013F088 1D80023C */  lui        $v0, %hi(D_801CE720)
    /* C558 8013F08C 20E74224 */  addiu      $v0, $v0, %lo(D_801CE720)
    /* C55C 8013F090 00211000 */  sll        $a0, $s0, 4
    /* C560 8013F094 21108200 */  addu       $v0, $a0, $v0
    /* C564 8013F098 0800438C */  lw         $v1, 0x8($v0)
    /* C568 8013F09C 00120500 */  sll        $v0, $a1, 8
    /* C56C 8013F0A0 1A004300 */  div        $zero, $v0, $v1
    /* C570 8013F0A4 02006014 */  bnez       $v1, .L8013F0B0
    /* C574 8013F0A8 00000000 */   nop
    /* C578 8013F0AC 0D000700 */  break      7
  .L8013F0B0:
    /* C57C 8013F0B0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* C580 8013F0B4 04006114 */  bne        $v1, $at, .L8013F0C8
    /* C584 8013F0B8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* C588 8013F0BC 02004114 */  bne        $v0, $at, .L8013F0C8
    /* C58C 8013F0C0 00000000 */   nop
    /* C590 8013F0C4 0D000600 */  break      6
  .L8013F0C8:
    /* C594 8013F0C8 12100000 */  mflo       $v0
    /* C598 8013F0CC 1D80033C */  lui        $v1, %hi(D_801CE744)
    /* C59C 8013F0D0 44E762AC */  sw         $v0, %lo(D_801CE744)($v1)
    /* C5A0 8013F0D4 1D80033C */  lui        $v1, %hi(D_801CE758)
    /* C5A4 8013F0D8 58E76324 */  addiu      $v1, $v1, %lo(D_801CE758)
    /* C5A8 8013F0DC 21188300 */  addu       $v1, $a0, $v1
    /* C5AC 8013F0E0 1D80023C */  lui        $v0, %hi(D_801CE700)
    /* C5B0 8013F0E4 00E74224 */  addiu      $v0, $v0, %lo(D_801CE700)
    /* C5B4 8013F0E8 21208200 */  addu       $a0, $a0, $v0
    /* C5B8 8013F0EC 0300C590 */  lbu        $a1, 0x3($a2)
    /* C5BC 8013F0F0 0C00628C */  lw         $v0, 0xC($v1)
    /* C5C0 8013F0F4 0C00838C */  lw         $v1, 0xC($a0)
    /* C5C4 8013F0F8 2328A200 */  subu       $a1, $a1, $v0
    /* C5C8 8013F0FC 23100300 */  negu       $v0, $v1
    /* C5CC 8013F100 2A10A200 */  slt        $v0, $a1, $v0
    /* C5D0 8013F104 03004010 */  beqz       $v0, .L8013F114
    /* C5D4 8013F108 2A106500 */   slt       $v0, $v1, $a1
    /* C5D8 8013F10C 48FC0408 */  j          .L8013F120
    /* C5DC 8013F110 2128A300 */   addu      $a1, $a1, $v1
  .L8013F114:
    /* C5E0 8013F114 02004014 */  bnez       $v0, .L8013F120
    /* C5E4 8013F118 2328A300 */   subu      $a1, $a1, $v1
    /* C5E8 8013F11C 21280000 */  addu       $a1, $zero, $zero
  .L8013F120:
    /* C5EC 8013F120 1D80033C */  lui        $v1, %hi(D_801CE720)
    /* C5F0 8013F124 20E76324 */  addiu      $v1, $v1, %lo(D_801CE720)
    /* C5F4 8013F128 00111000 */  sll        $v0, $s0, 4
    /* C5F8 8013F12C 21104300 */  addu       $v0, $v0, $v1
    /* C5FC 8013F130 0C00428C */  lw         $v0, 0xC($v0)
    /* C600 8013F134 001A0500 */  sll        $v1, $a1, 8
    /* C604 8013F138 1A006200 */  div        $zero, $v1, $v0
    /* C608 8013F13C 02004014 */  bnez       $v0, .L8013F148
    /* C60C 8013F140 00000000 */   nop
    /* C610 8013F144 0D000700 */  break      7
  .L8013F148:
    /* C614 8013F148 FFFF0124 */  addiu      $at, $zero, -0x1
    /* C618 8013F14C 04004114 */  bne        $v0, $at, .L8013F160
    /* C61C 8013F150 0080013C */   lui       $at, (0x80000000 >> 16)
    /* C620 8013F154 02006114 */  bne        $v1, $at, .L8013F160
    /* C624 8013F158 00000000 */   nop
    /* C628 8013F15C 0D000600 */  break      6
  .L8013F160:
    /* C62C 8013F160 12180000 */  mflo       $v1
    /* C630 8013F164 1D80023C */  lui        $v0, %hi(D_801CE740)
    /* C634 8013F168 40E74224 */  addiu      $v0, $v0, %lo(D_801CE740)
    /* C638 8013F16C 5EFC0408 */  j          .L8013F178
    /* C63C 8013F170 080043AC */   sw        $v1, 0x8($v0)
  .L8013F174:
    /* C640 8013F174 21100000 */  addu       $v0, $zero, $zero
  .L8013F178:
    /* C644 8013F178 1400BF8F */  lw         $ra, 0x14($sp)
    /* C648 8013F17C 1000B08F */  lw         $s0, 0x10($sp)
    /* C64C 8013F180 0800E003 */  jr         $ra
    /* C650 8013F184 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013EEBC
