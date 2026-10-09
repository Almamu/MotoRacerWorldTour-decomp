nonmatching func_8007F33C, 0x2AC

glabel func_8007F33C
    /* 6DB4C 8007F33C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6DB50 8007F340 21380000 */  addu       $a3, $zero, $zero
    /* 6DB54 8007F344 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6DB58 8007F348 21800000 */  addu       $s0, $zero, $zero
    /* 6DB5C 8007F34C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6DB60 8007F350 21A0A000 */  addu       $s4, $a1, $zero
    /* 6DB64 8007F354 3400BFAF */  sw         $ra, 0x34($sp)
    /* 6DB68 8007F358 3000BEAF */  sw         $fp, 0x30($sp)
    /* 6DB6C 8007F35C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 6DB70 8007F360 2800B6AF */  sw         $s6, 0x28($sp)
    /* 6DB74 8007F364 2400B5AF */  sw         $s5, 0x24($sp)
    /* 6DB78 8007F368 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6DB7C 8007F36C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6DB80 8007F370 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6DB84 8007F374 00009292 */  lbu        $s2, 0x0($s4)
    /* 6DB88 8007F378 01009426 */  addiu      $s4, $s4, 0x1
    /* 6DB8C 8007F37C 8D004012 */  beqz       $s2, .L8007F5B4
    /* 6DB90 8007F380 21888000 */   addu      $s1, $a0, $zero
    /* 6DB94 8007F384 FFFF1524 */  addiu      $s5, $zero, -0x1
    /* 6DB98 8007F388 FCFF1E24 */  addiu      $fp, $zero, -0x4
    /* 6DB9C 8007F38C 18003626 */  addiu      $s6, $s1, 0x18
    /* 6DBA0 8007F390 FFFF1734 */  ori        $s7, $zero, 0xFFFF
  .L8007F394:
    /* 6DBA4 8007F394 20000824 */  addiu      $t0, $zero, 0x20
    /* 6DBA8 8007F398 0E004812 */  beq        $s2, $t0, .L8007F3D4
    /* 6DBAC 8007F39C 2100422A */   slti      $v0, $s2, 0x21
    /* 6DBB0 8007F3A0 22004010 */  beqz       $v0, .L8007F42C
    /* 6DBB4 8007F3A4 09000824 */   addiu     $t0, $zero, 0x9
    /* 6DBB8 8007F3A8 05004812 */  beq        $s2, $t0, .L8007F3C0
    /* 6DBBC 8007F3AC 0A000824 */   addiu     $t0, $zero, 0xA
    /* 6DBC0 8007F3B0 1E004816 */  bne        $s2, $t0, .L8007F42C
    /* 6DBC4 8007F3B4 21100002 */   addu      $v0, $s0, $zero
    /* 6DBC8 8007F3B8 6EFD0108 */  j          .L8007F5B8
    /* 6DBCC 8007F3BC 00000000 */   nop
  .L8007F3C0:
    /* 6DBD0 8007F3C0 06002292 */  lbu        $v0, 0x6($s1)
    /* 6DBD4 8007F3C4 00000000 */  nop
    /* 6DBD8 8007F3C8 40100200 */  sll        $v0, $v0, 1
    /* 6DBDC 8007F3CC 69FD0108 */  j          .L8007F5A4
    /* 6DBE0 8007F3D0 21800202 */   addu      $s0, $s0, $v0
  .L8007F3D4:
    /* 6DBE4 8007F3D4 02002292 */  lbu        $v0, 0x2($s1)
    /* 6DBE8 8007F3D8 00000000 */  nop
    /* 6DBEC 8007F3DC 2100422C */  sltiu      $v0, $v0, 0x21
    /* 6DBF0 8007F3E0 0F004010 */  beqz       $v0, .L8007F420
    /* 6DBF4 8007F3E4 00000000 */   nop
    /* 6DBF8 8007F3E8 02002292 */  lbu        $v0, 0x2($s1)
    /* 6DBFC 8007F3EC F042858F */  lw         $a1, %gp_rel(D_800C89E0)($gp)
    /* 6DC00 8007F3F0 23104202 */  subu       $v0, $s2, $v0
    /* 6DC04 8007F3F4 80100200 */  sll        $v0, $v0, 2
    /* 6DC08 8007F3F8 21105100 */  addu       $v0, $v0, $s1
    /* 6DC0C 8007F3FC 1A004390 */  lbu        $v1, 0x1A($v0)
    /* 6DC10 8007F400 0400B514 */  bne        $a1, $s5, .L8007F414
    /* 6DC14 8007F404 21106500 */   addu      $v0, $v1, $a1
    /* 6DC18 8007F408 04002282 */  lb         $v0, 0x4($s1)
    /* 6DC1C 8007F40C 00000000 */  nop
    /* 6DC20 8007F410 21106200 */  addu       $v0, $v1, $v0
  .L8007F414:
    /* 6DC24 8007F414 21100202 */  addu       $v0, $s0, $v0
    /* 6DC28 8007F418 69FD0108 */  j          .L8007F5A4
    /* 6DC2C 8007F41C 21804000 */   addu      $s0, $v0, $zero
  .L8007F420:
    /* 6DC30 8007F420 06002292 */  lbu        $v0, 0x6($s1)
    /* 6DC34 8007F424 69FD0108 */  j          .L8007F5A4
    /* 6DC38 8007F428 21800202 */   addu      $s0, $s0, $v0
  .L8007F42C:
    /* 6DC3C 8007F42C 02002292 */  lbu        $v0, 0x2($s1)
    /* 6DC40 8007F430 01002392 */  lbu        $v1, 0x1($s1)
    /* 6DC44 8007F434 23104202 */  subu       $v0, $s2, $v0
    /* 6DC48 8007F438 FF005330 */  andi       $s3, $v0, 0xFF
    /* 6DC4C 8007F43C 2B186302 */  sltu       $v1, $s3, $v1
    /* 6DC50 8007F440 57006010 */  beqz       $v1, .L8007F5A0
    /* 6DC54 8007F444 00000000 */   nop
    /* 6DC58 8007F448 08002296 */  lhu        $v0, 0x8($s1)
    /* 6DC5C 8007F44C 00000000 */  nop
    /* 6DC60 8007F450 2A004010 */  beqz       $v0, .L8007F4FC
    /* 6DC64 8007F454 00000000 */   nop
    /* 6DC68 8007F458 07002292 */  lbu        $v0, 0x7($s1)
    /* 6DC6C 8007F45C 00000000 */  nop
    /* 6DC70 8007F460 18004010 */  beqz       $v0, .L8007F4C4
    /* 6DC74 8007F464 00000000 */   nop
    /* 6DC78 8007F468 01002492 */  lbu        $a0, 0x1($s1)
    /* 6DC7C 8007F46C 00000000 */  nop
    /* 6DC80 8007F470 18008400 */  mult       $a0, $a0
    /* 6DC84 8007F474 F042858F */  lw         $a1, %gp_rel(D_800C89E0)($gp)
    /* 6DC88 8007F478 12100000 */  mflo       $v0
    /* 6DC8C 8007F47C 24105E00 */  and        $v0, $v0, $fp
    /* 6DC90 8007F480 0B00E010 */  beqz       $a3, .L8007F4B0
    /* 6DC94 8007F484 04004624 */   addiu     $a2, $v0, 0x4
    /* 6DC98 8007F488 18009300 */  mult       $a0, $s3
    /* 6DC9C 8007F48C 02002292 */  lbu        $v0, 0x2($s1)
    /* 6DCA0 8007F490 00000000 */  nop
    /* 6DCA4 8007F494 2310E200 */  subu       $v0, $a3, $v0
    /* 6DCA8 8007F498 12200000 */  mflo       $a0
    /* 6DCAC 8007F49C 21104400 */  addu       $v0, $v0, $a0
    /* 6DCB0 8007F4A0 2110C202 */  addu       $v0, $s6, $v0
    /* 6DCB4 8007F4A4 00004380 */  lb         $v1, 0x0($v0)
    /* 6DCB8 8007F4A8 00000000 */  nop
    /* 6DCBC 8007F4AC 21800302 */  addu       $s0, $s0, $v1
  .L8007F4B0:
    /* 6DCC0 8007F4B0 80101300 */  sll        $v0, $s3, 2
    /* 6DCC4 8007F4B4 18004224 */  addiu      $v0, $v0, 0x18
    /* 6DCC8 8007F4B8 21102202 */  addu       $v0, $s1, $v0
    /* 6DCCC 8007F4BC 60FD0108 */  j          .L8007F580
    /* 6DCD0 8007F4C0 21104600 */   addu      $v0, $v0, $a2
  .L8007F4C4:
    /* 6DCD4 8007F4C4 0500E010 */  beqz       $a3, .L8007F4DC
    /* 6DCD8 8007F4C8 21202002 */   addu      $a0, $s1, $zero
    /* 6DCDC 8007F4CC 2128E000 */  addu       $a1, $a3, $zero
    /* 6DCE0 8007F4D0 B2FC010C */  jal        func_8007F2C8
    /* 6DCE4 8007F4D4 21304002 */   addu      $a2, $s2, $zero
    /* 6DCE8 8007F4D8 21800202 */  addu       $s0, $s0, $v0
  .L8007F4DC:
    /* 6DCEC 8007F4DC 80181300 */  sll        $v1, $s3, 2
    /* 6DCF0 8007F4E0 18006324 */  addiu      $v1, $v1, 0x18
    /* 6DCF4 8007F4E4 21182302 */  addu       $v1, $s1, $v1
    /* 6DCF8 8007F4E8 08002296 */  lhu        $v0, 0x8($s1)
    /* 6DCFC 8007F4EC F042858F */  lw         $a1, %gp_rel(D_800C89E0)($gp)
    /* 6DD00 8007F4F0 80100200 */  sll        $v0, $v0, 2
    /* 6DD04 8007F4F4 60FD0108 */  j          .L8007F580
    /* 6DD08 8007F4F8 21106200 */   addu      $v0, $v1, $v0
  .L8007F4FC:
    /* 6DD0C 8007F4FC 0A002296 */  lhu        $v0, 0xA($s1)
    /* 6DD10 8007F500 00000000 */  nop
    /* 6DD14 8007F504 1B005710 */  beq        $v0, $s7, .L8007F574
    /* 6DD18 8007F508 80101300 */   sll       $v0, $s3, 2
    /* 6DD1C 8007F50C 1900E010 */  beqz       $a3, .L8007F574
    /* 6DD20 8007F510 2128E000 */   addu      $a1, $a3, $zero
    /* 6DD24 8007F514 0D80023C */  lui        $v0, %hi(D_800C8D8C)
    /* 6DD28 8007F518 8C8D428C */  lw         $v0, %lo(D_800C8D8C)($v0)
    /* 6DD2C 8007F51C 07002392 */  lbu        $v1, 0x7($s1)
    /* 6DD30 8007F520 0000468C */  lw         $a2, 0x0($v0)
    /* 6DD34 8007F524 80180300 */  sll        $v1, $v1, 2
    /* 6DD38 8007F528 21186600 */  addu       $v1, $v1, $a2
    /* 6DD3C 8007F52C 0000648C */  lw         $a0, 0x0($v1)
    /* 6DD40 8007F530 CC04020C */  jal        func_80081330
    /* 6DD44 8007F534 21304002 */   addu      $a2, $s2, $zero
    /* 6DD48 8007F538 21184000 */  addu       $v1, $v0, $zero
    /* 6DD4C 8007F53C 0D006010 */  beqz       $v1, .L8007F574
    /* 6DD50 8007F540 80101300 */   sll       $v0, $s3, 2
    /* 6DD54 8007F544 00002292 */  lbu        $v0, 0x0($s1)
    /* 6DD58 8007F548 00000000 */  nop
    /* 6DD5C 8007F54C 18006200 */  mult       $v1, $v0
    /* 6DD60 8007F550 0A002396 */  lhu        $v1, 0xA($s1)
    /* 6DD64 8007F554 12100000 */  mflo       $v0
    /* 6DD68 8007F558 00140200 */  sll        $v0, $v0, 16
    /* 6DD6C 8007F55C 03140200 */  sra        $v0, $v0, 16
    /* 6DD70 8007F560 1A004300 */  div        $zero, $v0, $v1
    /* 6DD74 8007F564 12100000 */  mflo       $v0
    /* 6DD78 8007F568 00000000 */  nop
    /* 6DD7C 8007F56C 21800202 */  addu       $s0, $s0, $v0
    /* 6DD80 8007F570 80101300 */  sll        $v0, $s3, 2
  .L8007F574:
    /* 6DD84 8007F574 18004224 */  addiu      $v0, $v0, 0x18
    /* 6DD88 8007F578 21102202 */  addu       $v0, $s1, $v0
    /* 6DD8C 8007F57C F042858F */  lw         $a1, %gp_rel(D_800C89E0)($gp)
  .L8007F580:
    /* 6DD90 8007F580 02004390 */  lbu        $v1, 0x2($v0)
    /* 6DD94 8007F584 0400B514 */  bne        $a1, $s5, .L8007F598
    /* 6DD98 8007F588 21106500 */   addu      $v0, $v1, $a1
    /* 6DD9C 8007F58C 04002282 */  lb         $v0, 0x4($s1)
    /* 6DDA0 8007F590 00000000 */  nop
    /* 6DDA4 8007F594 21106200 */  addu       $v0, $v1, $v0
  .L8007F598:
    /* 6DDA8 8007F598 21100202 */  addu       $v0, $s0, $v0
    /* 6DDAC 8007F59C 21804000 */  addu       $s0, $v0, $zero
  .L8007F5A0:
    /* 6DDB0 8007F5A0 21384002 */  addu       $a3, $s2, $zero
  .L8007F5A4:
    /* 6DDB4 8007F5A4 00009292 */  lbu        $s2, 0x0($s4)
    /* 6DDB8 8007F5A8 00000000 */  nop
    /* 6DDBC 8007F5AC 79FF4016 */  bnez       $s2, .L8007F394
    /* 6DDC0 8007F5B0 01009426 */   addiu     $s4, $s4, 0x1
  .L8007F5B4:
    /* 6DDC4 8007F5B4 21100002 */  addu       $v0, $s0, $zero
  .L8007F5B8:
    /* 6DDC8 8007F5B8 3400BF8F */  lw         $ra, 0x34($sp)
    /* 6DDCC 8007F5BC 3000BE8F */  lw         $fp, 0x30($sp)
    /* 6DDD0 8007F5C0 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 6DDD4 8007F5C4 2800B68F */  lw         $s6, 0x28($sp)
    /* 6DDD8 8007F5C8 2400B58F */  lw         $s5, 0x24($sp)
    /* 6DDDC 8007F5CC 2000B48F */  lw         $s4, 0x20($sp)
    /* 6DDE0 8007F5D0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6DDE4 8007F5D4 1800B28F */  lw         $s2, 0x18($sp)
    /* 6DDE8 8007F5D8 1400B18F */  lw         $s1, 0x14($sp)
    /* 6DDEC 8007F5DC 1000B08F */  lw         $s0, 0x10($sp)
    /* 6DDF0 8007F5E0 0800E003 */  jr         $ra
    /* 6DDF4 8007F5E4 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8007F33C
