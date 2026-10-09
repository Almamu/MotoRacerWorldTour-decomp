nonmatching func_80096538, 0xF4

glabel func_80096538
    /* 84D48 80096538 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 84D4C 8009653C 3000B2AF */  sw         $s2, 0x30($sp)
    /* 84D50 80096540 2190A000 */  addu       $s2, $a1, $zero
    /* 84D54 80096544 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 84D58 80096548 21880000 */  addu       $s1, $zero, $zero
    /* 84D5C 8009654C 80000224 */  addiu      $v0, $zero, 0x80
    /* 84D60 80096550 2800B0AF */  sw         $s0, 0x28($sp)
    /* 84D64 80096554 21808000 */  addu       $s0, $a0, $zero
    /* 84D68 80096558 0E000424 */  addiu      $a0, $zero, 0xE
    /* 84D6C 8009655C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 84D70 80096560 3800B4AF */  sw         $s4, 0x38($sp)
    /* 84D74 80096564 21A0C000 */  addu       $s4, $a2, $zero
    /* 84D78 80096568 3400B3AF */  sw         $s3, 0x34($sp)
    /* 84D7C 8009656C 1800B327 */  addiu      $s3, $sp, 0x18
    /* 84D80 80096570 21306002 */  addu       $a2, $s3, $zero
    /* 84D84 80096574 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 84D88 80096578 4B9E020C */  jal        CdControlB
    /* 84D8C 8009657C 1000A2A3 */   sb        $v0, 0x10($sp)
    /* 84D90 80096580 0A004010 */  beqz       $v0, .L800965AC
    /* 84D94 80096584 21200002 */   addu      $a0, $s0, $zero
    /* 84D98 80096588 2000B027 */  addiu      $s0, $sp, 0x20
    /* 84D9C 8009658C C79E020C */  jal        CdIntToPos
    /* 84DA0 80096590 21280002 */   addu      $a1, $s0, $zero
    /* 84DA4 80096594 06000424 */  addiu      $a0, $zero, 0x6
    /* 84DA8 80096598 21280002 */  addu       $a1, $s0, $zero
    /* 84DAC 8009659C 4B9E020C */  jal        CdControlB
    /* 84DB0 800965A0 21306002 */   addu      $a2, $s3, $zero
    /* 84DB4 800965A4 03004014 */  bnez       $v0, .L800965B4
    /* 84DB8 800965A8 05001324 */   addiu     $s3, $zero, 0x5
  .L800965AC:
    /* 84DBC 800965AC 83590208 */  j          .L8009660C
    /* 84DC0 800965B0 21100000 */   addu      $v0, $zero, $zero
  .L800965B4:
    /* 84DC4 800965B4 01001024 */  addiu      $s0, $zero, 0x1
    /* 84DC8 800965B8 21200000 */  addu       $a0, $zero, $zero
  .L800965BC:
    /* 84DCC 800965BC 9D9D020C */  jal        CdReady
    /* 84DD0 800965C0 1800A527 */   addiu     $a1, $sp, 0x18
    /* 84DD4 800965C4 F9FF5310 */  beq        $v0, $s3, .L800965AC
    /* 84DD8 800965C8 00000000 */   nop
    /* 84DDC 800965CC 08005014 */  bne        $v0, $s0, .L800965F0
    /* 84DE0 800965D0 2A103402 */   slt       $v0, $s1, $s4
    /* 84DE4 800965D4 21204002 */  addu       $a0, $s2, $zero
    /* 84DE8 800965D8 A69E020C */  jal        CdGetSector
    /* 84DEC 800965DC 00020524 */   addiu     $a1, $zero, 0x200
    /* 84DF0 800965E0 F2FF4010 */  beqz       $v0, .L800965AC
    /* 84DF4 800965E4 00085226 */   addiu     $s2, $s2, 0x800
    /* 84DF8 800965E8 01003126 */  addiu      $s1, $s1, 0x1
    /* 84DFC 800965EC 2A103402 */  slt        $v0, $s1, $s4
  .L800965F0:
    /* 84E00 800965F0 F2FF4014 */  bnez       $v0, .L800965BC
    /* 84E04 800965F4 21200000 */   addu      $a0, $zero, $zero
    /* 84E08 800965F8 09000424 */  addiu      $a0, $zero, 0x9
    /* 84E0C 800965FC 21280000 */  addu       $a1, $zero, $zero
    /* 84E10 80096600 4B9E020C */  jal        CdControlB
    /* 84E14 80096604 1800A627 */   addiu     $a2, $sp, 0x18
    /* 84E18 80096608 2B100200 */  sltu       $v0, $zero, $v0
  .L8009660C:
    /* 84E1C 8009660C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 84E20 80096610 3800B48F */  lw         $s4, 0x38($sp)
    /* 84E24 80096614 3400B38F */  lw         $s3, 0x34($sp)
    /* 84E28 80096618 3000B28F */  lw         $s2, 0x30($sp)
    /* 84E2C 8009661C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 84E30 80096620 2800B08F */  lw         $s0, 0x28($sp)
    /* 84E34 80096624 0800E003 */  jr         $ra
    /* 84E38 80096628 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_80096538
