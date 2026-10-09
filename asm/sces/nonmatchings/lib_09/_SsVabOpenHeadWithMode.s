nonmatching _SsVabOpenHeadWithMode, 0x3EC

glabel _SsVabOpenHeadWithMode
    /* 17214 80149D48 D0FBBD27 */  addiu      $sp, $sp, -0x430
    /* 17218 80149D4C 1C04B3AF */  sw         $s3, 0x41C($sp)
    /* 1721C 80149D50 21988000 */  addu       $s3, $a0, $zero
    /* 17220 80149D54 1004B0AF */  sw         $s0, 0x410($sp)
    /* 17224 80149D58 2180A000 */  addu       $s0, $a1, $zero
    /* 17228 80149D5C 2804B6AF */  sw         $s6, 0x428($sp)
    /* 1722C 80149D60 21B0C000 */  addu       $s6, $a2, $zero
    /* 17230 80149D64 2404B5AF */  sw         $s5, 0x424($sp)
    /* 17234 80149D68 21A8E000 */  addu       $s5, $a3, $zero
    /* 17238 80149D6C 1804B2AF */  sw         $s2, 0x418($sp)
    /* 1723C 80149D70 10001224 */  addiu      $s2, $zero, 0x10
    /* 17240 80149D74 2C04BFAF */  sw         $ra, 0x42C($sp)
    /* 17244 80149D78 2004B4AF */  sw         $s4, 0x420($sp)
    /* 17248 80149D7C 5B20050C */  jal        _spu_getInTransfer
    /* 1724C 80149D80 1404B1AF */   sw        $s1, 0x414($sp)
    /* 17250 80149D84 01001124 */  addiu      $s1, $zero, 0x1
    /* 17254 80149D88 E0005110 */  beq        $v0, $s1, .L8014A10C
    /* 17258 80149D8C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1725C 80149D90 5120050C */  jal        _spu_setInTransfer
    /* 17260 80149D94 01000424 */   addiu     $a0, $zero, 0x1
    /* 17264 80149D98 00141000 */  sll        $v0, $s0, 16
    /* 17268 80149D9C 031C0200 */  sra        $v1, $v0, 16
    /* 1726C 80149DA0 10006228 */  slti       $v0, $v1, 0x10
    /* 17270 80149DA4 2A004010 */  beqz       $v0, .L80149E50
    /* 17274 80149DA8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 17278 80149DAC 14006214 */  bne        $v1, $v0, .L80149E00
    /* 1727C 80149DB0 21280000 */   addu      $a1, $zero, $zero
  .L80149DB4:
    /* 17280 80149DB4 1D80023C */  lui        $v0, %hi(_svm_vab_used)
    /* 17284 80149DB8 21104500 */  addu       $v0, $v0, $a1
    /* 17288 80149DBC D0FB4290 */  lbu        $v0, %lo(_svm_vab_used)($v0)
    /* 1728C 80149DC0 00000000 */  nop
    /* 17290 80149DC4 07004010 */  beqz       $v0, .L80149DE4
    /* 17294 80149DC8 01000224 */   addiu     $v0, $zero, 0x1
    /* 17298 80149DCC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1729C 80149DD0 1000A228 */  slti       $v0, $a1, 0x10
    /* 172A0 80149DD4 F7FF4014 */  bnez       $v0, .L80149DB4
    /* 172A4 80149DD8 00141200 */   sll       $v0, $s2, 16
    /* 172A8 80149DDC 91270508 */  j          .L80149E44
    /* 172AC 80149DE0 03340200 */   sra       $a2, $v0, 16
  .L80149DE4:
    /* 172B0 80149DE4 1D80013C */  lui        $at, %hi(_svm_vab_used)
    /* 172B4 80149DE8 21082500 */  addu       $at, $at, $a1
    /* 172B8 80149DEC D0FB22A0 */  sb         $v0, %lo(_svm_vab_used)($at)
    /* 172BC 80149DF0 1D80023C */  lui        $v0, %hi(_svm_vab_count)
    /* 172C0 80149DF4 28FC4294 */  lhu        $v0, %lo(_svm_vab_count)($v0)
    /* 172C4 80149DF8 8C270508 */  j          .L80149E30
    /* 172C8 80149DFC 2190A000 */   addu      $s2, $a1, $zero
  .L80149E00:
    /* 172CC 80149E00 1D80023C */  lui        $v0, %hi(_svm_vab_used)
    /* 172D0 80149E04 21104300 */  addu       $v0, $v0, $v1
    /* 172D4 80149E08 D0FB4290 */  lbu        $v0, %lo(_svm_vab_used)($v0)
    /* 172D8 80149E0C 00000000 */  nop
    /* 172DC 80149E10 0B004014 */  bnez       $v0, .L80149E40
    /* 172E0 80149E14 00141200 */   sll       $v0, $s2, 16
    /* 172E4 80149E18 1D80013C */  lui        $at, %hi(_svm_vab_used)
    /* 172E8 80149E1C 21082300 */  addu       $at, $at, $v1
    /* 172EC 80149E20 D0FB31A0 */  sb         $s1, %lo(_svm_vab_used)($at)
    /* 172F0 80149E24 1D80023C */  lui        $v0, %hi(_svm_vab_count)
    /* 172F4 80149E28 28FC4294 */  lhu        $v0, %lo(_svm_vab_count)($v0)
    /* 172F8 80149E2C 21900002 */  addu       $s2, $s0, $zero
  .L80149E30:
    /* 172FC 80149E30 01004224 */  addiu      $v0, $v0, 0x1
    /* 17300 80149E34 1D80013C */  lui        $at, %hi(_svm_vab_count)
    /* 17304 80149E38 28FC22A4 */  sh         $v0, %lo(_svm_vab_count)($at)
    /* 17308 80149E3C 00141200 */  sll        $v0, $s2, 16
  .L80149E40:
    /* 1730C 80149E40 03340200 */  sra        $a2, $v0, 16
  .L80149E44:
    /* 17310 80149E44 1000C228 */  slti       $v0, $a2, 0x10
    /* 17314 80149E48 05004014 */  bnez       $v0, .L80149E60
    /* 17318 80149E4C 21386002 */   addu      $a3, $s3, $zero
  .L80149E50:
    /* 1731C 80149E50 5120050C */  jal        _spu_setInTransfer
    /* 17320 80149E54 21200000 */   addu      $a0, $zero, $zero
    /* 17324 80149E58 43280508 */  j          .L8014A10C
    /* 17328 80149E5C FFFF0224 */   addiu     $v0, $zero, -0x1
  .L80149E60:
    /* 1732C 80149E60 80100600 */  sll        $v0, $a2, 2
    /* 17330 80149E64 1D80013C */  lui        $at, %hi(_svm_vab_vh)
    /* 17334 80149E68 21082200 */  addu       $at, $at, $v0
    /* 17338 80149E6C 08FB27AC */  sw         $a3, %lo(_svm_vab_vh)($at)
    /* 1733C 80149E70 5600033C */  lui        $v1, (0x564142 >> 16)
    /* 17340 80149E74 21206002 */  addu       $a0, $s3, $zero
    /* 17344 80149E78 0000858C */  lw         $a1, 0x0($a0)
    /* 17348 80149E7C 42416334 */  ori        $v1, $v1, (0x564142 & 0xFFFF)
    /* 1734C 80149E80 1D80013C */  lui        $at, %hi(D_801CFBA8)
    /* 17350 80149E84 A8FB20AC */  sw         $zero, %lo(D_801CFBA8)($at)
    /* 17354 80149E88 02120500 */  srl        $v0, $a1, 8
    /* 17358 80149E8C 06004310 */  beq        $v0, $v1, .L80149EA8
    /* 1735C 80149E90 2000E724 */   addiu     $a3, $a3, 0x20
    /* 17360 80149E94 1D80013C */  lui        $at, %hi(_svm_vab_used)
    /* 17364 80149E98 21082600 */  addu       $at, $at, $a2
    /* 17368 80149E9C D0FB20A0 */  sb         $zero, %lo(_svm_vab_used)($at)
    /* 1736C 80149EA0 0C280508 */  j          .L8014A030
    /* 17370 80149EA4 21200000 */   addu      $a0, $zero, $zero
  .L80149EA8:
    /* 17374 80149EA8 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 17378 80149EAC 70000224 */  addiu      $v0, $zero, 0x70
    /* 1737C 80149EB0 07006214 */  bne        $v1, $v0, .L80149ED0
    /* 17380 80149EB4 40000224 */   addiu     $v0, $zero, 0x40
    /* 17384 80149EB8 0400828C */  lw         $v0, 0x4($a0)
    /* 17388 80149EBC 00000000 */  nop
    /* 1738C 80149EC0 05004228 */  slti       $v0, $v0, 0x5
    /* 17390 80149EC4 02004014 */  bnez       $v0, .L80149ED0
    /* 17394 80149EC8 40000224 */   addiu     $v0, $zero, 0x40
    /* 17398 80149ECC 80000224 */  addiu      $v0, $zero, 0x80
  .L80149ED0:
    /* 1739C 80149ED0 1D80013C */  lui        $at, %hi(kMaxPrograms)
    /* 173A0 80149ED4 92FB22A4 */  sh         $v0, %lo(kMaxPrograms)($at)
    /* 173A4 80149ED8 12008294 */  lhu        $v0, 0x12($a0)
    /* 173A8 80149EDC 1D80033C */  lui        $v1, %hi(kMaxPrograms)
    /* 173AC 80149EE0 92FB6384 */  lh         $v1, %lo(kMaxPrograms)($v1)
    /* 173B0 80149EE4 00000000 */  nop
    /* 173B4 80149EE8 2A106200 */  slt        $v0, $v1, $v0
    /* 173B8 80149EEC 07004010 */  beqz       $v0, .L80149F0C
    /* 173BC 80149EF0 00141200 */   sll       $v0, $s2, 16
    /* 173C0 80149EF4 03140200 */  sra        $v0, $v0, 16
    /* 173C4 80149EF8 1D80013C */  lui        $at, %hi(_svm_vab_used)
    /* 173C8 80149EFC 21082200 */  addu       $at, $at, $v0
    /* 173CC 80149F00 D0FB20A0 */  sb         $zero, %lo(_svm_vab_used)($at)
    /* 173D0 80149F04 0C280508 */  j          .L8014A030
    /* 173D4 80149F08 21200000 */   addu      $a0, $zero, $zero
  .L80149F0C:
    /* 173D8 80149F0C 83130200 */  sra        $v0, $v0, 14
    /* 173DC 80149F10 1D80013C */  lui        $at, %hi(_svm_vab_pg)
    /* 173E0 80149F14 21082200 */  addu       $at, $at, $v0
    /* 173E4 80149F18 C8FA27AC */  sw         $a3, %lo(_svm_vab_pg)($at)
    /* 173E8 80149F1C 2198E000 */  addu       $s3, $a3, $zero
    /* 173EC 80149F20 00110300 */  sll        $v0, $v1, 4
    /* 173F0 80149F24 21386202 */  addu       $a3, $s3, $v0
    /* 173F4 80149F28 21280000 */  addu       $a1, $zero, $zero
    /* 173F8 80149F2C 0C006018 */  blez       $v1, .L80149F60
    /* 173FC 80149F30 21800000 */   addu      $s0, $zero, $zero
    /* 17400 80149F34 21306000 */  addu       $a2, $v1, $zero
    /* 17404 80149F38 21186002 */  addu       $v1, $s3, $zero
  .L80149F3C:
    /* 17408 80149F3C 00006290 */  lbu        $v0, 0x0($v1)
    /* 1740C 80149F40 00000000 */  nop
    /* 17410 80149F44 02004010 */  beqz       $v0, .L80149F50
    /* 17414 80149F48 080070AC */   sw        $s0, 0x8($v1)
    /* 17418 80149F4C 01001026 */  addiu      $s0, $s0, 0x1
  .L80149F50:
    /* 1741C 80149F50 0100A524 */  addiu      $a1, $a1, 0x1
    /* 17420 80149F54 2A10A600 */  slt        $v0, $a1, $a2
    /* 17424 80149F58 F8FF4014 */  bnez       $v0, .L80149F3C
    /* 17428 80149F5C 10006324 */   addiu     $v1, $v1, 0x10
  .L80149F60:
    /* 1742C 80149F60 21800000 */  addu       $s0, $zero, $zero
    /* 17430 80149F64 21280000 */  addu       $a1, $zero, $zero
    /* 17434 80149F68 00141200 */  sll        $v0, $s2, 16
    /* 17438 80149F6C 83130200 */  sra        $v0, $v0, 14
    /* 1743C 80149F70 1000A627 */  addiu      $a2, $sp, 0x10
    /* 17440 80149F74 1D80013C */  lui        $at, %hi(_svm_vab_tn)
    /* 17444 80149F78 21082200 */  addu       $at, $at, $v0
    /* 17448 80149F7C 50FB27AC */  sw         $a3, %lo(_svm_vab_tn)($at)
    /* 1744C 80149F80 12008294 */  lhu        $v0, 0x12($a0)
    /* 17450 80149F84 16009490 */  lbu        $s4, 0x16($a0)
    /* 17454 80149F88 40120200 */  sll        $v0, $v0, 9
    /* 17458 80149F8C 2138E200 */  addu       $a3, $a3, $v0
    /* 1745C 80149F90 FF008832 */  andi       $t0, $s4, 0xFF
  .L80149F94:
    /* 17460 80149F94 2A100501 */  slt        $v0, $t0, $a1
    /* 17464 80149F98 0B004014 */  bnez       $v0, .L80149FC8
    /* 17468 80149F9C 00000000 */   nop
    /* 1746C 80149FA0 0400828C */  lw         $v0, 0x4($a0)
    /* 17470 80149FA4 0000E394 */  lhu        $v1, 0x0($a3)
    /* 17474 80149FA8 05004228 */  slti       $v0, $v0, 0x5
    /* 17478 80149FAC 02004014 */  bnez       $v0, .L80149FB8
    /* 1747C 80149FB0 80100300 */   sll       $v0, $v1, 2
    /* 17480 80149FB4 C0100300 */  sll        $v0, $v1, 3
  .L80149FB8:
    /* 17484 80149FB8 0000C2AC */  sw         $v0, 0x0($a2)
    /* 17488 80149FBC 0000C28C */  lw         $v0, 0x0($a2)
    /* 1748C 80149FC0 00000000 */  nop
    /* 17490 80149FC4 21800202 */  addu       $s0, $s0, $v0
  .L80149FC8:
    /* 17494 80149FC8 0200E724 */  addiu      $a3, $a3, 0x2
    /* 17498 80149FCC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1749C 80149FD0 0001A228 */  slti       $v0, $a1, 0x100
    /* 174A0 80149FD4 EFFF4014 */  bnez       $v0, .L80149F94
    /* 174A4 80149FD8 0400C624 */   addiu     $a2, $a2, 0x4
    /* 174A8 80149FDC 3F000326 */  addiu      $v1, $s0, 0x3F
    /* 174AC 80149FE0 C0FF0224 */  addiu      $v0, $zero, -0x40
    /* 174B0 80149FE4 24806200 */  and        $s0, $v1, $v0
    /* 174B4 80149FE8 21200002 */  addu       $a0, $s0, $zero
    /* 174B8 80149FEC 00141200 */  sll        $v0, $s2, 16
    /* 174BC 80149FF0 038C0200 */  sra        $s1, $v0, 16
    /* 174C0 80149FF4 2128A002 */  addu       $a1, $s5, $zero
    /* 174C4 80149FF8 09F8C002 */  jalr       $s6
    /* 174C8 80149FFC 21302002 */   addu      $a2, $s1, $zero
    /* 174CC 8014A000 21204000 */  addu       $a0, $v0, $zero
    /* 174D0 8014A004 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 174D4 8014A008 40008210 */  beq        $a0, $v0, .L8014A10C
    /* 174D8 8014A00C 21189000 */   addu      $v1, $a0, $s0
    /* 174DC 8014A010 0800023C */  lui        $v0, (0x80000 >> 16)
    /* 174E0 8014A014 2B104300 */  sltu       $v0, $v0, $v1
    /* 174E4 8014A018 0F004010 */  beqz       $v0, .L8014A058
    /* 174E8 8014A01C 80101100 */   sll       $v0, $s1, 2
    /* 174EC 8014A020 21200000 */  addu       $a0, $zero, $zero
    /* 174F0 8014A024 1D80013C */  lui        $at, %hi(_svm_vab_used)
    /* 174F4 8014A028 21083100 */  addu       $at, $at, $s1
    /* 174F8 8014A02C D0FB20A0 */  sb         $zero, %lo(_svm_vab_used)($at)
  .L8014A030:
    /* 174FC 8014A030 5120050C */  jal        _spu_setInTransfer
    /* 17500 8014A034 00000000 */   nop
    /* 17504 8014A038 1D80033C */  lui        $v1, %hi(_svm_vab_count)
    /* 17508 8014A03C 28FC6394 */  lhu        $v1, %lo(_svm_vab_count)($v1)
    /* 1750C 8014A040 00000000 */  nop
    /* 17510 8014A044 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 17514 8014A048 1D80013C */  lui        $at, %hi(_svm_vab_count)
    /* 17518 8014A04C 28FC23A4 */  sh         $v1, %lo(_svm_vab_count)($at)
    /* 1751C 8014A050 43280508 */  j          .L8014A10C
    /* 17520 8014A054 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8014A058:
    /* 17524 8014A058 1D80013C */  lui        $at, %hi(_svm_vab_start)
    /* 17528 8014A05C 21082200 */  addu       $at, $at, $v0
    /* 1752C 8014A060 30FC24AC */  sw         $a0, %lo(_svm_vab_start)($at)
    /* 17530 8014A064 21800000 */  addu       $s0, $zero, $zero
    /* 17534 8014A068 FF008332 */  andi       $v1, $s4, 0xFF
    /* 17538 8014A06C 00006228 */  slti       $v0, $v1, 0x0
    /* 1753C 8014A070 1C004014 */  bnez       $v0, .L8014A0E4
    /* 17540 8014A074 21280000 */   addu      $a1, $zero, $zero
    /* 17544 8014A078 21386000 */  addu       $a3, $v1, $zero
    /* 17548 8014A07C 1000A627 */  addiu      $a2, $sp, 0x10
  .L8014A080:
    /* 1754C 8014A080 0000C28C */  lw         $v0, 0x0($a2)
    /* 17550 8014A084 00000000 */  nop
    /* 17554 8014A088 21800202 */  addu       $s0, $s0, $v0
    /* 17558 8014A08C 0100A230 */  andi       $v0, $a1, 0x1
    /* 1755C 8014A090 09004014 */  bnez       $v0, .L8014A0B8
    /* 17560 8014A094 C21F0500 */   srl       $v1, $a1, 31
    /* 17564 8014A098 2118A300 */  addu       $v1, $a1, $v1
    /* 17568 8014A09C 43180300 */  sra        $v1, $v1, 1
    /* 1756C 8014A0A0 00190300 */  sll        $v1, $v1, 4
    /* 17570 8014A0A4 21187300 */  addu       $v1, $v1, $s3
    /* 17574 8014A0A8 21109000 */  addu       $v0, $a0, $s0
    /* 17578 8014A0AC C2100200 */  srl        $v0, $v0, 3
    /* 1757C 8014A0B0 35280508 */  j          .L8014A0D4
    /* 17580 8014A0B4 0C0062A4 */   sh        $v0, 0xC($v1)
  .L8014A0B8:
    /* 17584 8014A0B8 2118A300 */  addu       $v1, $a1, $v1
    /* 17588 8014A0BC 43180300 */  sra        $v1, $v1, 1
    /* 1758C 8014A0C0 00190300 */  sll        $v1, $v1, 4
    /* 17590 8014A0C4 21187300 */  addu       $v1, $v1, $s3
    /* 17594 8014A0C8 21109000 */  addu       $v0, $a0, $s0
    /* 17598 8014A0CC C2100200 */  srl        $v0, $v0, 3
    /* 1759C 8014A0D0 0E0062A4 */  sh         $v0, 0xE($v1)
  .L8014A0D4:
    /* 175A0 8014A0D4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 175A4 8014A0D8 2A10E500 */  slt        $v0, $a3, $a1
    /* 175A8 8014A0DC E8FF4010 */  beqz       $v0, .L8014A080
    /* 175AC 8014A0E0 0400C624 */   addiu     $a2, $a2, 0x4
  .L8014A0E4:
    /* 175B0 8014A0E4 00141200 */  sll        $v0, $s2, 16
    /* 175B4 8014A0E8 03140200 */  sra        $v0, $v0, 16
    /* 175B8 8014A0EC 80180200 */  sll        $v1, $v0, 2
    /* 175BC 8014A0F0 1D80013C */  lui        $at, %hi(_svm_vab_total)
    /* 175C0 8014A0F4 21082300 */  addu       $at, $at, $v1
    /* 175C4 8014A0F8 E8FB30AC */  sw         $s0, %lo(_svm_vab_total)($at)
    /* 175C8 8014A0FC 02000324 */  addiu      $v1, $zero, 0x2
    /* 175CC 8014A100 1D80013C */  lui        $at, %hi(_svm_vab_used)
    /* 175D0 8014A104 21082200 */  addu       $at, $at, $v0
    /* 175D4 8014A108 D0FB23A0 */  sb         $v1, %lo(_svm_vab_used)($at)
  .L8014A10C:
    /* 175D8 8014A10C 2C04BF8F */  lw         $ra, 0x42C($sp)
    /* 175DC 8014A110 2804B68F */  lw         $s6, 0x428($sp)
    /* 175E0 8014A114 2404B58F */  lw         $s5, 0x424($sp)
    /* 175E4 8014A118 2004B48F */  lw         $s4, 0x420($sp)
    /* 175E8 8014A11C 1C04B38F */  lw         $s3, 0x41C($sp)
    /* 175EC 8014A120 1804B28F */  lw         $s2, 0x418($sp)
    /* 175F0 8014A124 1404B18F */  lw         $s1, 0x414($sp)
    /* 175F4 8014A128 1004B08F */  lw         $s0, 0x410($sp)
    /* 175F8 8014A12C 0800E003 */  jr         $ra
    /* 175FC 8014A130 3004BD27 */   addiu     $sp, $sp, 0x430
endlabel _SsVabOpenHeadWithMode
    /* 17600 8014A134 00000000 */  nop
