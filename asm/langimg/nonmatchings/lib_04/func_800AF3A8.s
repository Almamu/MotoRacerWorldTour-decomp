nonmatching func_800AF3A8, 0x260

glabel func_800AF3A8
    /* 9DBB8 800AF3A8 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 9DBBC 800AF3AC 2000B0AF */  sw         $s0, 0x20($sp)
    /* 9DBC0 800AF3B0 21808000 */  addu       $s0, $a0, $zero
    /* 9DBC4 800AF3B4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 9DBC8 800AF3B8 21980000 */  addu       $s3, $zero, $zero
    /* 9DBCC 800AF3BC 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 9DBD0 800AF3C0 21B8A000 */  addu       $s7, $a1, $zero
    /* 9DBD4 800AF3C4 01000524 */  addiu      $a1, $zero, 0x1
    /* 9DBD8 800AF3C8 4000BEAF */  sw         $fp, 0x40($sp)
    /* 9DBDC 800AF3CC 0C80023C */  lui        $v0, %hi(D_800C3C68)
    /* 9DBE0 800AF3D0 683C4224 */  addiu      $v0, $v0, %lo(D_800C3C68)
    /* 9DBE4 800AF3D4 40181000 */  sll        $v1, $s0, 1
    /* 9DBE8 800AF3D8 21186200 */  addu       $v1, $v1, $v0
    /* 9DBEC 800AF3DC 4400BFAF */  sw         $ra, 0x44($sp)
    /* 9DBF0 800AF3E0 3800B6AF */  sw         $s6, 0x38($sp)
    /* 9DBF4 800AF3E4 3400B5AF */  sw         $s5, 0x34($sp)
    /* 9DBF8 800AF3E8 3000B4AF */  sw         $s4, 0x30($sp)
    /* 9DBFC 800AF3EC 2800B2AF */  sw         $s2, 0x28($sp)
    /* 9DC00 800AF3F0 2400B1AF */  sw         $s1, 0x24($sp)
    /* 9DC04 800AF3F4 5400A7AF */  sw         $a3, 0x54($sp)
    /* 9DC08 800AF3F8 00007594 */  lhu        $s5, 0x0($v1)
    /* 9DC0C 800AF3FC 68C0020C */  jal        func_800B01A0
    /* 9DC10 800AF400 21F0C000 */   addu      $fp, $a2, $zero
    /* 9DC14 800AF404 00005494 */  lhu        $s4, 0x0($v0)
    /* 9DC18 800AF408 0F001032 */  andi       $s0, $s0, 0xF
    /* 9DC1C 800AF40C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 9DC20 800AF410 2618B402 */  xor        $v1, $s5, $s4
    /* 9DC24 800AF414 24208302 */  and        $a0, $s4, $v1
    /* 9DC28 800AF418 2418A302 */  and        $v1, $s5, $v1
    /* 9DC2C 800AF41C 1800B4A7 */  sh         $s4, 0x18($sp)
    /* 9DC30 800AF420 1A00A4A7 */  sh         $a0, 0x1A($sp)
    /* 9DC34 800AF424 1C00A3A7 */  sh         $v1, 0x1C($sp)
    /* 9DC38 800AF428 66004010 */  beqz       $v0, .L800AF5C4
    /* 9DC3C 800AF42C 1E00B5A7 */   sh        $s5, 0x1E($sp)
    /* 9DC40 800AF430 5400A88F */  lw         $t0, 0x54($sp)
    /* 9DC44 800AF434 00000000 */  nop
    /* 9DC48 800AF438 0A000015 */  bnez       $t0, .L800AF464
    /* 9DC4C 800AF43C 0C80023C */   lui       $v0, %hi(D_800C3C68)
    /* 9DC50 800AF440 4000E28E */  lw         $v0, 0x40($s7)
    /* 9DC54 800AF444 00000000 */  nop
    /* 9DC58 800AF448 05004010 */  beqz       $v0, .L800AF460
    /* 9DC5C 800AF44C 0800F226 */   addiu     $s2, $s7, 0x8
    /* 9DC60 800AF450 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9DC64 800AF454 0000E68E */  lw         $a2, 0x0($s7)
    /* 9DC68 800AF458 09F84000 */  jalr       $v0
    /* 9DC6C 800AF45C 2128C003 */   addu      $a1, $fp, $zero
  .L800AF460:
    /* 9DC70 800AF460 0C80023C */  lui        $v0, %hi(D_800C3C68)
  .L800AF464:
    /* 9DC74 800AF464 683C4224 */  addiu      $v0, $v0, %lo(D_800C3C68)
    /* 9DC78 800AF468 40181000 */  sll        $v1, $s0, 1
    /* 9DC7C 800AF46C 21886200 */  addu       $s1, $v1, $v0
    /* 9DC80 800AF470 0C80103C */  lui        $s0, %hi(D_800C3BC4)
    /* 9DC84 800AF474 C43B1026 */  addiu      $s0, $s0, %lo(D_800C3BC4)
    /* 9DC88 800AF478 21B00000 */  addu       $s6, $zero, $zero
  .L800AF47C:
    /* 9DC8C 800AF47C 5400A88F */  lw         $t0, 0x54($sp)
    /* 9DC90 800AF480 00000000 */  nop
    /* 9DC94 800AF484 3F000015 */  bnez       $t0, .L800AF584
    /* 9DC98 800AF488 00000000 */   nop
    /* 9DC9C 800AF48C 0000478E */  lw         $a3, 0x0($s2)
    /* 9DCA0 800AF490 00000000 */  nop
    /* 9DCA4 800AF494 3200E010 */  beqz       $a3, .L800AF560
    /* 9DCA8 800AF498 00000000 */   nop
    /* 9DCAC 800AF49C 0000038E */  lw         $v1, 0x0($s0)
    /* 9DCB0 800AF4A0 00000000 */  nop
    /* 9DCB4 800AF4A4 24108302 */  and        $v0, $s4, $v1
    /* 9DCB8 800AF4A8 1A004010 */  beqz       $v0, .L800AF514
    /* 9DCBC 800AF4AC 2410A302 */   and       $v0, $s5, $v1
    /* 9DCC0 800AF4B0 0A004010 */  beqz       $v0, .L800AF4DC
    /* 9DCC4 800AF4B4 0C80133C */   lui       $s3, %hi(D_800C3BB8)
    /* 9DCC8 800AF4B8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9DCCC 800AF4BC 2128C003 */  addu       $a1, $fp, $zero
    /* 9DCD0 800AF4C0 0000E68E */  lw         $a2, 0x0($s7)
    /* 9DCD4 800AF4C4 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 9DCD8 800AF4C8 09F8E000 */  jalr       $a3
    /* 9DCDC 800AF4CC 1000A2AF */   sw        $v0, 0x10($sp)
    /* 9DCE0 800AF4D0 B83B638E */  lw         $v1, %lo(D_800C3BB8)($s3)
    /* 9DCE4 800AF4D4 54BD0208 */  j          .L800AF550
    /* 9DCE8 800AF4D8 01001324 */   addiu     $s3, $zero, 0x1
  .L800AF4DC:
    /* 9DCEC 800AF4DC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9DCF0 800AF4E0 00002296 */  lhu        $v0, 0x0($s1)
    /* 9DCF4 800AF4E4 00000396 */  lhu        $v1, 0x0($s0)
    /* 9DCF8 800AF4E8 2128C003 */  addu       $a1, $fp, $zero
    /* 9DCFC 800AF4EC 25104300 */  or         $v0, $v0, $v1
    /* 9DD00 800AF4F0 000022A6 */  sh         $v0, 0x0($s1)
    /* 9DD04 800AF4F4 0000E68E */  lw         $a2, 0x0($s7)
    /* 9DD08 800AF4F8 0000478E */  lw         $a3, 0x0($s2)
    /* 9DD0C 800AF4FC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 9DD10 800AF500 09F8E000 */  jalr       $a3
    /* 9DD14 800AF504 1000A2AF */   sw        $v0, 0x10($sp)
    /* 9DD18 800AF508 B83B638E */  lw         $v1, %lo(D_800C3BB8)($s3)
    /* 9DD1C 800AF50C 54BD0208 */  j          .L800AF550
    /* 9DD20 800AF510 01001324 */   addiu     $s3, $zero, 0x1
  .L800AF514:
    /* 9DD24 800AF514 21004010 */  beqz       $v0, .L800AF59C
    /* 9DD28 800AF518 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9DD2C 800AF51C 00000296 */  lhu        $v0, 0x0($s0)
    /* 9DD30 800AF520 00002396 */  lhu        $v1, 0x0($s1)
    /* 9DD34 800AF524 27100200 */  nor        $v0, $zero, $v0
    /* 9DD38 800AF528 24186200 */  and        $v1, $v1, $v0
    /* 9DD3C 800AF52C 000023A6 */  sh         $v1, 0x0($s1)
    /* 9DD40 800AF530 0000E68E */  lw         $a2, 0x0($s7)
    /* 9DD44 800AF534 0000478E */  lw         $a3, 0x0($s2)
    /* 9DD48 800AF538 2128C003 */  addu       $a1, $fp, $zero
    /* 9DD4C 800AF53C 09F8E000 */  jalr       $a3
    /* 9DD50 800AF540 1000A0AF */   sw        $zero, 0x10($sp)
    /* 9DD54 800AF544 0C80023C */  lui        $v0, %hi(D_800C3BB8)
    /* 9DD58 800AF548 B83B438C */  lw         $v1, %lo(D_800C3BB8)($v0)
    /* 9DD5C 800AF54C 01001324 */  addiu      $s3, $zero, 0x1
  .L800AF550:
    /* 9DD60 800AF550 20006014 */  bnez       $v1, .L800AF5D4
    /* 9DD64 800AF554 04001026 */   addiu     $s0, $s0, 0x4
    /* 9DD68 800AF558 69BD0208 */  j          .L800AF5A4
    /* 9DD6C 800AF55C 0400D626 */   addiu     $s6, $s6, 0x4
  .L800AF560:
    /* 9DD70 800AF560 0C80083C */  lui        $t0, %hi(D_800C3BC4)
    /* 9DD74 800AF564 C43B0825 */  addiu      $t0, $t0, %lo(D_800C3BC4)
    /* 9DD78 800AF568 2110C802 */  addu       $v0, $s6, $t0
    /* 9DD7C 800AF56C 00004394 */  lhu        $v1, 0x0($v0)
    /* 9DD80 800AF570 00002496 */  lhu        $a0, 0x0($s1)
    /* 9DD84 800AF574 24188302 */  and        $v1, $s4, $v1
    /* 9DD88 800AF578 25208300 */  or         $a0, $a0, $v1
    /* 9DD8C 800AF57C 67BD0208 */  j          .L800AF59C
    /* 9DD90 800AF580 000024A6 */   sh        $a0, 0x0($s1)
  .L800AF584:
    /* 9DD94 800AF584 0000028E */  lw         $v0, 0x0($s0)
    /* 9DD98 800AF588 00000000 */  nop
    /* 9DD9C 800AF58C 24108202 */  and        $v0, $s4, $v0
    /* 9DDA0 800AF590 02004010 */  beqz       $v0, .L800AF59C
    /* 9DDA4 800AF594 00000000 */   nop
    /* 9DDA8 800AF598 01001324 */  addiu      $s3, $zero, 0x1
  .L800AF59C:
    /* 9DDAC 800AF59C 04001026 */  addiu      $s0, $s0, 0x4
    /* 9DDB0 800AF5A0 0400D626 */  addiu      $s6, $s6, 0x4
  .L800AF5A4:
    /* 9DDB4 800AF5A4 0C80083C */  lui        $t0, %hi(D_800C3BC4)
    /* 9DDB8 800AF5A8 C43B0825 */  addiu      $t0, $t0, %lo(D_800C3BC4)
    /* 9DDBC 800AF5AC 3C000225 */  addiu      $v0, $t0, 0x3C
    /* 9DDC0 800AF5B0 2B100202 */  sltu       $v0, $s0, $v0
    /* 9DDC4 800AF5B4 B1FF4014 */  bnez       $v0, .L800AF47C
    /* 9DDC8 800AF5B8 04005226 */   addiu     $s2, $s2, 0x4
    /* 9DDCC 800AF5BC 76BD0208 */  j          .L800AF5D8
    /* 9DDD0 800AF5C0 21106002 */   addu      $v0, $s3, $zero
  .L800AF5C4:
    /* 9DDD4 800AF5C4 59BA020C */  jal        func_800AE964
    /* 9DDD8 800AF5C8 21200002 */   addu      $a0, $s0, $zero
    /* 9DDDC 800AF5CC 0E80033C */  lui        $v1, %hi(D_800DE410)
    /* 9DDE0 800AF5D0 10E462AC */  sw         $v0, %lo(D_800DE410)($v1)
  .L800AF5D4:
    /* 9DDE4 800AF5D4 21106002 */  addu       $v0, $s3, $zero
  .L800AF5D8:
    /* 9DDE8 800AF5D8 4400BF8F */  lw         $ra, 0x44($sp)
    /* 9DDEC 800AF5DC 4000BE8F */  lw         $fp, 0x40($sp)
    /* 9DDF0 800AF5E0 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 9DDF4 800AF5E4 3800B68F */  lw         $s6, 0x38($sp)
    /* 9DDF8 800AF5E8 3400B58F */  lw         $s5, 0x34($sp)
    /* 9DDFC 800AF5EC 3000B48F */  lw         $s4, 0x30($sp)
    /* 9DE00 800AF5F0 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 9DE04 800AF5F4 2800B28F */  lw         $s2, 0x28($sp)
    /* 9DE08 800AF5F8 2400B18F */  lw         $s1, 0x24($sp)
    /* 9DE0C 800AF5FC 2000B08F */  lw         $s0, 0x20($sp)
    /* 9DE10 800AF600 0800E003 */  jr         $ra
    /* 9DE14 800AF604 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel func_800AF3A8
