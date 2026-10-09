nonmatching func_800B2A80, 0x250

glabel func_800B2A80
    /* A1290 800B2A80 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A1294 800B2A84 1000B0AF */  sw         $s0, 0x10($sp)
    /* A1298 800B2A88 21808000 */  addu       $s0, $a0, $zero
    /* A129C 800B2A8C 1800BFAF */  sw         $ra, 0x18($sp)
    /* A12A0 800B2A90 1400B1AF */  sw         $s1, 0x14($sp)
    /* A12A4 800B2A94 3C00028E */  lw         $v0, 0x3C($s0)
    /* A12A8 800B2A98 0F000324 */  addiu      $v1, $zero, 0xF
    /* A12AC 800B2A9C 00004290 */  lbu        $v0, 0x0($v0)
    /* A12B0 800B2AA0 E8001192 */  lbu        $s1, 0xE8($s0)
    /* A12B4 800B2AA4 02110200 */  srl        $v0, $v0, 4
    /* A12B8 800B2AA8 03004314 */  bne        $v0, $v1, .L800B2AB8
    /* A12BC 800B2AAC E80002A2 */   sb        $v0, 0xE8($s0)
    /* A12C0 800B2AB0 C6CA0208 */  j          .L800B2B18
    /* A12C4 800B2AB4 E80011A2 */   sb        $s1, 0xE8($s0)
  .L800B2AB8:
    /* A12C8 800B2AB8 3000028E */  lw         $v0, 0x30($s0)
    /* A12CC 800B2ABC 00000000 */  nop
    /* A12D0 800B2AC0 000040A0 */  sb         $zero, 0x0($v0)
    /* A12D4 800B2AC4 3C00028E */  lw         $v0, 0x3C($s0)
    /* A12D8 800B2AC8 3000038E */  lw         $v1, 0x30($s0)
    /* A12DC 800B2ACC 00004290 */  lbu        $v0, 0x0($v0)
    /* A12E0 800B2AD0 00000000 */  nop
    /* A12E4 800B2AD4 010062A0 */  sb         $v0, 0x1($v1)
    /* A12E8 800B2AD8 44000292 */  lbu        $v0, 0x44($s0)
    /* A12EC 800B2ADC 02000424 */  addiu      $a0, $zero, 0x2
    /* A12F0 800B2AE0 2A108200 */  slt        $v0, $a0, $v0
    /* A12F4 800B2AE4 0C004010 */  beqz       $v0, .L800B2B18
    /* A12F8 800B2AE8 00000000 */   nop
  .L800B2AEC:
    /* A12FC 800B2AEC 3C00028E */  lw         $v0, 0x3C($s0)
    /* A1300 800B2AF0 3000038E */  lw         $v1, 0x30($s0)
    /* A1304 800B2AF4 21104400 */  addu       $v0, $v0, $a0
    /* A1308 800B2AF8 00004290 */  lbu        $v0, 0x0($v0)
    /* A130C 800B2AFC 21186400 */  addu       $v1, $v1, $a0
    /* A1310 800B2B00 000062A0 */  sb         $v0, 0x0($v1)
    /* A1314 800B2B04 44000292 */  lbu        $v0, 0x44($s0)
    /* A1318 800B2B08 01008424 */  addiu      $a0, $a0, 0x1
    /* A131C 800B2B0C 2A108200 */  slt        $v0, $a0, $v0
    /* A1320 800B2B10 F6FF4014 */  bnez       $v0, .L800B2AEC
    /* A1324 800B2B14 00000000 */   nop
  .L800B2B18:
    /* A1328 800B2B18 3C00028E */  lw         $v0, 0x3C($s0)
    /* A132C 800B2B1C 00000000 */  nop
    /* A1330 800B2B20 01004290 */  lbu        $v0, 0x1($v0)
    /* A1334 800B2B24 00000000 */  nop
    /* A1338 800B2B28 0D004014 */  bnez       $v0, .L800B2B60
    /* A133C 800B2B2C 01000224 */   addiu     $v0, $zero, 0x1
    /* A1340 800B2B30 46000392 */  lbu        $v1, 0x46($s0)
    /* A1344 800B2B34 00000000 */  nop
    /* A1348 800B2B38 05006214 */  bne        $v1, $v0, .L800B2B50
    /* A134C 800B2B3C 00000000 */   nop
    /* A1350 800B2B40 1400028E */  lw         $v0, 0x14($s0)
    /* A1354 800B2B44 00000000 */  nop
    /* A1358 800B2B48 05004010 */  beqz       $v0, .L800B2B60
    /* A135C 800B2B4C 00000000 */   nop
  .L800B2B50:
    /* A1360 800B2B50 50000292 */  lbu        $v0, 0x50($s0)
    /* A1364 800B2B54 00000000 */  nop
    /* A1368 800B2B58 11004010 */  beqz       $v0, .L800B2BA0
    /* A136C 800B2B5C 00000000 */   nop
  .L800B2B60:
    /* A1370 800B2B60 6BCB020C */  jal        func_800B2DAC
    /* A1374 800B2B64 21200002 */   addu      $a0, $s0, $zero
    /* A1378 800B2B68 12004014 */  bnez       $v0, .L800B2BB4
    /* A137C 800B2B6C 00000000 */   nop
    /* A1380 800B2B70 37000292 */  lbu        $v0, 0x37($s0)
    /* A1384 800B2B74 00000000 */  nop
    /* A1388 800B2B78 0E004014 */  bnez       $v0, .L800B2BB4
    /* A138C 800B2B7C 00000000 */   nop
    /* A1390 800B2B80 4A000292 */  lbu        $v0, 0x4A($s0)
    /* A1394 800B2B84 00000000 */  nop
    /* A1398 800B2B88 0A004014 */  bnez       $v0, .L800B2BB4
    /* A139C 800B2B8C 00000000 */   nop
    /* A13A0 800B2B90 E8000292 */  lbu        $v0, 0xE8($s0)
    /* A13A4 800B2B94 00000000 */  nop
    /* A13A8 800B2B98 06005110 */  beq        $v0, $s1, .L800B2BB4
    /* A13AC 800B2B9C 00000000 */   nop
  .L800B2BA0:
    /* A13B0 800B2BA0 0C80023C */  lui        $v0, %hi(D_800C3C8C)
    /* A13B4 800B2BA4 8C3C428C */  lw         $v0, %lo(D_800C3C8C)($v0)
    /* A13B8 800B2BA8 00000000 */  nop
    /* A13BC 800B2BAC 09F84000 */  jalr       $v0
    /* A13C0 800B2BB0 21200002 */   addu      $a0, $s0, $zero
  .L800B2BB4:
    /* A13C4 800B2BB4 46000392 */  lbu        $v1, 0x46($s0)
    /* A13C8 800B2BB8 FF000224 */  addiu      $v0, $zero, 0xFF
    /* A13CC 800B2BBC 3F006210 */  beq        $v1, $v0, .L800B2CBC
    /* A13D0 800B2BC0 4A0000A2 */   sb        $zero, 0x4A($s0)
    /* A13D4 800B2BC4 FEFF6224 */  addiu      $v0, $v1, -0x2
    /* A13D8 800B2BC8 FF004230 */  andi       $v0, $v0, 0xFF
    /* A13DC 800B2BCC FC00422C */  sltiu      $v0, $v0, 0xFC
    /* A13E0 800B2BD0 0C004010 */  beqz       $v0, .L800B2C04
    /* A13E4 800B2BD4 00000000 */   nop
    /* A13E8 800B2BD8 3C00028E */  lw         $v0, 0x3C($s0)
    /* A13EC 800B2BDC 00000000 */  nop
    /* A13F0 800B2BE0 00004390 */  lbu        $v1, 0x0($v0)
    /* A13F4 800B2BE4 F3000224 */  addiu      $v0, $zero, 0xF3
    /* A13F8 800B2BE8 06006210 */  beq        $v1, $v0, .L800B2C04
    /* A13FC 800B2BEC 00000000 */   nop
    /* A1400 800B2BF0 0C80023C */  lui        $v0, %hi(D_800C3C8C)
    /* A1404 800B2BF4 8C3C428C */  lw         $v0, %lo(D_800C3C8C)($v0)
    /* A1408 800B2BF8 00000000 */  nop
    /* A140C 800B2BFC 09F84000 */  jalr       $v0
    /* A1410 800B2C00 21200002 */   addu      $a0, $s0, $zero
  .L800B2C04:
    /* A1414 800B2C04 46000292 */  lbu        $v0, 0x46($s0)
    /* A1418 800B2C08 00000000 */  nop
    /* A141C 800B2C0C 05004010 */  beqz       $v0, .L800B2C24
    /* A1420 800B2C10 00000000 */   nop
    /* A1424 800B2C14 36000292 */  lbu        $v0, 0x36($s0)
    /* A1428 800B2C18 00000000 */  nop
    /* A142C 800B2C1C 27004010 */  beqz       $v0, .L800B2CBC
    /* A1430 800B2C20 00000000 */   nop
  .L800B2C24:
    /* A1434 800B2C24 46000392 */  lbu        $v1, 0x46($s0)
    /* A1438 800B2C28 01000424 */  addiu      $a0, $zero, 0x1
    /* A143C 800B2C2C 0E006410 */  beq        $v1, $a0, .L800B2C68
    /* A1440 800B2C30 02006228 */   slti      $v0, $v1, 0x2
    /* A1444 800B2C34 05004010 */  beqz       $v0, .L800B2C4C
    /* A1448 800B2C38 FE000224 */   addiu     $v0, $zero, 0xFE
    /* A144C 800B2C3C 07006010 */  beqz       $v1, .L800B2C5C
    /* A1450 800B2C40 00000000 */   nop
    /* A1454 800B2C44 21CB0208 */  j          .L800B2C84
    /* A1458 800B2C48 00000000 */   nop
  .L800B2C4C:
    /* A145C 800B2C4C 0B006210 */  beq        $v1, $v0, .L800B2C7C
    /* A1460 800B2C50 FF000224 */   addiu     $v0, $zero, 0xFF
    /* A1464 800B2C54 21CB0208 */  j          .L800B2C84
    /* A1468 800B2C58 00000000 */   nop
  .L800B2C5C:
    /* A146C 800B2C5C 46000292 */  lbu        $v0, 0x46($s0)
    /* A1470 800B2C60 1CCB0208 */  j          .L800B2C70
    /* A1474 800B2C64 490004A2 */   sb        $a0, 0x49($s0)
  .L800B2C68:
    /* A1478 800B2C68 46000292 */  lbu        $v0, 0x46($s0)
    /* A147C 800B2C6C 470000A2 */  sb         $zero, 0x47($s0)
  .L800B2C70:
    /* A1480 800B2C70 01004224 */  addiu      $v0, $v0, 0x1
    /* A1484 800B2C74 2FCB0208 */  j          .L800B2CBC
    /* A1488 800B2C78 460002A2 */   sb        $v0, 0x46($s0)
  .L800B2C7C:
    /* A148C 800B2C7C 2FCB0208 */  j          .L800B2CBC
    /* A1490 800B2C80 460002A2 */   sb        $v0, 0x46($s0)
  .L800B2C84:
    /* A1494 800B2C84 1800028E */  lw         $v0, 0x18($s0)
    /* A1498 800B2C88 00000000 */  nop
    /* A149C 800B2C8C 05004010 */  beqz       $v0, .L800B2CA4
    /* A14A0 800B2C90 00000000 */   nop
    /* A14A4 800B2C94 09F84000 */  jalr       $v0
    /* A14A8 800B2C98 21200002 */   addu      $a0, $s0, $zero
    /* A14AC 800B2C9C 2BCB0208 */  j          .L800B2CAC
    /* A14B0 800B2CA0 00000000 */   nop
  .L800B2CA4:
    /* A14B4 800B2CA4 0FC5020C */  jal        func_800B143C
    /* A14B8 800B2CA8 21200002 */   addu      $a0, $s0, $zero
  .L800B2CAC:
    /* A14BC 800B2CAC 46000392 */  lbu        $v1, 0x46($s0)
    /* A14C0 800B2CB0 00000000 */  nop
    /* A14C4 800B2CB4 21186200 */  addu       $v1, $v1, $v0
    /* A14C8 800B2CB8 460003A2 */  sb         $v1, 0x46($s0)
  .L800B2CBC:
    /* A14CC 800B2CBC 1800BF8F */  lw         $ra, 0x18($sp)
    /* A14D0 800B2CC0 1400B18F */  lw         $s1, 0x14($sp)
    /* A14D4 800B2CC4 1000B08F */  lw         $s0, 0x10($sp)
    /* A14D8 800B2CC8 0800E003 */  jr         $ra
    /* A14DC 800B2CCC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B2A80
