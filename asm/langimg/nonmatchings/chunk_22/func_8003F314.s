nonmatching func_8003F314, 0x3A4

glabel func_8003F314
    /* 2DB24 8003F314 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 2DB28 8003F318 7000B6AF */  sw         $s6, 0x70($sp)
    /* 2DB2C 8003F31C 21B08000 */  addu       $s6, $a0, $zero
    /* 2DB30 8003F320 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 2DB34 8003F324 7800BEAF */  sw         $fp, 0x78($sp)
    /* 2DB38 8003F328 7400B7AF */  sw         $s7, 0x74($sp)
    /* 2DB3C 8003F32C 6C00B5AF */  sw         $s5, 0x6C($sp)
    /* 2DB40 8003F330 6800B4AF */  sw         $s4, 0x68($sp)
    /* 2DB44 8003F334 6400B3AF */  sw         $s3, 0x64($sp)
    /* 2DB48 8003F338 6000B2AF */  sw         $s2, 0x60($sp)
    /* 2DB4C 8003F33C 5C00B1AF */  sw         $s1, 0x5C($sp)
    /* 2DB50 8003F340 5800B0AF */  sw         $s0, 0x58($sp)
    /* 2DB54 8003F344 5C00C28E */  lw         $v0, 0x5C($s6)
    /* 2DB58 8003F348 00000000 */  nop
    /* 2DB5C 8003F34C CE004010 */  beqz       $v0, .L8003F688
    /* 2DB60 8003F350 00000000 */   nop
    /* 2DB64 8003F354 700AC28E */  lw         $v0, 0xA70($s6)
    /* 2DB68 8003F358 00000000 */  nop
    /* 2DB6C 8003F35C CA004018 */  blez       $v0, .L8003F688
    /* 2DB70 8003F360 21B80000 */   addu      $s7, $zero, $zero
    /* 2DB74 8003F364 5000BE27 */  addiu      $fp, $sp, 0x50
    /* 2DB78 8003F368 21A80000 */  addu       $s5, $zero, $zero
  .L8003F36C:
    /* 2DB7C 8003F36C 5000A0AF */  sw         $zero, 0x50($sp)
    /* 2DB80 8003F370 7C0AC28E */  lw         $v0, 0xA7C($s6)
    /* 2DB84 8003F374 5C00D18E */  lw         $s1, 0x5C($s6)
    /* 2DB88 8003F378 2110A202 */  addu       $v0, $s5, $v0
    /* 2DB8C 8003F37C 1C00238E */  lw         $v1, 0x1C($s1)
    /* 2DB90 8003F380 0000538C */  lw         $s3, 0x0($v0)
    /* 2DB94 8003F384 13006018 */  blez       $v1, .L8003F3D4
    /* 2DB98 8003F388 21900000 */   addu      $s2, $zero, $zero
  .L8003F38C:
    /* 2DB9C 8003F38C 1800228E */  lw         $v0, 0x18($s1)
    /* 2DBA0 8003F390 C0801200 */  sll        $s0, $s2, 3
    /* 2DBA4 8003F394 21100202 */  addu       $v0, $s0, $v0
    /* 2DBA8 8003F398 0000448C */  lw         $a0, 0x0($v0)
    /* 2DBAC 8003F39C 2B98020C */  jal        func_800A60AC
    /* 2DBB0 8003F3A0 21286002 */   addu      $a1, $s3, $zero
    /* 2DBB4 8003F3A4 06004014 */  bnez       $v0, .L8003F3C0
    /* 2DBB8 8003F3A8 01005226 */   addiu     $s2, $s2, 0x1
    /* 2DBBC 8003F3AC 1800228E */  lw         $v0, 0x18($s1)
    /* 2DBC0 8003F3B0 00000000 */  nop
    /* 2DBC4 8003F3B4 21105000 */  addu       $v0, $v0, $s0
    /* 2DBC8 8003F3B8 F5FC0008 */  j          .L8003F3D4
    /* 2DBCC 8003F3BC 0000C2AF */   sw        $v0, 0x0($fp)
  .L8003F3C0:
    /* 2DBD0 8003F3C0 1C00228E */  lw         $v0, 0x1C($s1)
    /* 2DBD4 8003F3C4 00000000 */  nop
    /* 2DBD8 8003F3C8 2A104202 */  slt        $v0, $s2, $v0
    /* 2DBDC 8003F3CC EFFF4014 */  bnez       $v0, .L8003F38C
    /* 2DBE0 8003F3D0 00000000 */   nop
  .L8003F3D4:
    /* 2DBE4 8003F3D4 5000A38F */  lw         $v1, 0x50($sp)
    /* 2DBE8 8003F3D8 00000000 */  nop
    /* 2DBEC 8003F3DC 05006010 */  beqz       $v1, .L8003F3F4
    /* 2DBF0 8003F3E0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 2DBF4 8003F3E4 7C0AC28E */  lw         $v0, 0xA7C($s6)
    /* 2DBF8 8003F3E8 0400638C */  lw         $v1, 0x4($v1)
    /* 2DBFC 8003F3EC 2110A202 */  addu       $v0, $s5, $v0
    /* 2DC00 8003F3F0 600043AC */  sw         $v1, 0x60($v0)
  .L8003F3F4:
    /* 2DC04 8003F3F4 0C80073C */  lui        $a3, %hi(D_800C4E2C)
    /* 2DC08 8003F3F8 7C0AC28E */  lw         $v0, 0xA7C($s6)
    /* 2DC0C 8003F3FC 2C4EE524 */  addiu      $a1, $a3, %lo(D_800C4E2C)
    /* 2DC10 8003F400 2110A202 */  addu       $v0, $s5, $v0
    /* 2DC14 8003F404 0000468C */  lw         $a2, 0x0($v0)
    /* 2DC18 8003F408 96D9020C */  jal        sprintf
    /* 2DC1C 8003F40C 21900000 */   addu      $s2, $zero, $zero
    /* 2DC20 8003F410 5400A0AF */  sw         $zero, 0x54($sp)
    /* 2DC24 8003F414 5C00D18E */  lw         $s1, 0x5C($s6)
    /* 2DC28 8003F418 1000B327 */  addiu      $s3, $sp, 0x10
    /* 2DC2C 8003F41C 1400228E */  lw         $v0, 0x14($s1)
    /* 2DC30 8003F420 00000000 */  nop
    /* 2DC34 8003F424 13004018 */  blez       $v0, .L8003F474
    /* 2DC38 8003F428 5400B427 */   addiu     $s4, $sp, 0x54
  .L8003F42C:
    /* 2DC3C 8003F42C 1000228E */  lw         $v0, 0x10($s1)
    /* 2DC40 8003F430 C0801200 */  sll        $s0, $s2, 3
    /* 2DC44 8003F434 21100202 */  addu       $v0, $s0, $v0
    /* 2DC48 8003F438 0000448C */  lw         $a0, 0x0($v0)
    /* 2DC4C 8003F43C 2B98020C */  jal        func_800A60AC
    /* 2DC50 8003F440 21286002 */   addu      $a1, $s3, $zero
    /* 2DC54 8003F444 06004014 */  bnez       $v0, .L8003F460
    /* 2DC58 8003F448 01005226 */   addiu     $s2, $s2, 0x1
    /* 2DC5C 8003F44C 1000228E */  lw         $v0, 0x10($s1)
    /* 2DC60 8003F450 00000000 */  nop
    /* 2DC64 8003F454 21105000 */  addu       $v0, $v0, $s0
    /* 2DC68 8003F458 1DFD0008 */  j          .L8003F474
    /* 2DC6C 8003F45C 000082AE */   sw        $v0, 0x0($s4)
  .L8003F460:
    /* 2DC70 8003F460 1400228E */  lw         $v0, 0x14($s1)
    /* 2DC74 8003F464 00000000 */  nop
    /* 2DC78 8003F468 2A104202 */  slt        $v0, $s2, $v0
    /* 2DC7C 8003F46C EFFF4014 */  bnez       $v0, .L8003F42C
    /* 2DC80 8003F470 00000000 */   nop
  .L8003F474:
    /* 2DC84 8003F474 5400A38F */  lw         $v1, 0x54($sp)
    /* 2DC88 8003F478 00000000 */  nop
    /* 2DC8C 8003F47C 05006010 */  beqz       $v1, .L8003F494
    /* 2DC90 8003F480 1000A427 */   addiu     $a0, $sp, 0x10
    /* 2DC94 8003F484 7C0AC28E */  lw         $v0, 0xA7C($s6)
    /* 2DC98 8003F488 0400638C */  lw         $v1, 0x4($v1)
    /* 2DC9C 8003F48C 2110A202 */  addu       $v0, $s5, $v0
    /* 2DCA0 8003F490 640043AC */  sw         $v1, 0x64($v0)
  .L8003F494:
    /* 2DCA4 8003F494 0C80073C */  lui        $a3, %hi(D_800C4E38)
    /* 2DCA8 8003F498 7C0AC28E */  lw         $v0, 0xA7C($s6)
    /* 2DCAC 8003F49C 384EE524 */  addiu      $a1, $a3, %lo(D_800C4E38)
    /* 2DCB0 8003F4A0 2110A202 */  addu       $v0, $s5, $v0
    /* 2DCB4 8003F4A4 0000468C */  lw         $a2, 0x0($v0)
    /* 2DCB8 8003F4A8 96D9020C */  jal        sprintf
    /* 2DCBC 8003F4AC 21900000 */   addu      $s2, $zero, $zero
    /* 2DCC0 8003F4B0 5400A0AF */  sw         $zero, 0x54($sp)
    /* 2DCC4 8003F4B4 5C00D18E */  lw         $s1, 0x5C($s6)
    /* 2DCC8 8003F4B8 1000B327 */  addiu      $s3, $sp, 0x10
    /* 2DCCC 8003F4BC 1400228E */  lw         $v0, 0x14($s1)
    /* 2DCD0 8003F4C0 00000000 */  nop
    /* 2DCD4 8003F4C4 13004018 */  blez       $v0, .L8003F514
    /* 2DCD8 8003F4C8 5400B427 */   addiu     $s4, $sp, 0x54
  .L8003F4CC:
    /* 2DCDC 8003F4CC 1000228E */  lw         $v0, 0x10($s1)
    /* 2DCE0 8003F4D0 C0801200 */  sll        $s0, $s2, 3
    /* 2DCE4 8003F4D4 21100202 */  addu       $v0, $s0, $v0
    /* 2DCE8 8003F4D8 0000448C */  lw         $a0, 0x0($v0)
    /* 2DCEC 8003F4DC 2B98020C */  jal        func_800A60AC
    /* 2DCF0 8003F4E0 21286002 */   addu      $a1, $s3, $zero
    /* 2DCF4 8003F4E4 06004014 */  bnez       $v0, .L8003F500
    /* 2DCF8 8003F4E8 01005226 */   addiu     $s2, $s2, 0x1
    /* 2DCFC 8003F4EC 1000228E */  lw         $v0, 0x10($s1)
    /* 2DD00 8003F4F0 00000000 */  nop
    /* 2DD04 8003F4F4 21105000 */  addu       $v0, $v0, $s0
    /* 2DD08 8003F4F8 45FD0008 */  j          .L8003F514
    /* 2DD0C 8003F4FC 000082AE */   sw        $v0, 0x0($s4)
  .L8003F500:
    /* 2DD10 8003F500 1400228E */  lw         $v0, 0x14($s1)
    /* 2DD14 8003F504 00000000 */  nop
    /* 2DD18 8003F508 2A104202 */  slt        $v0, $s2, $v0
    /* 2DD1C 8003F50C EFFF4014 */  bnez       $v0, .L8003F4CC
    /* 2DD20 8003F510 00000000 */   nop
  .L8003F514:
    /* 2DD24 8003F514 5400A38F */  lw         $v1, 0x54($sp)
    /* 2DD28 8003F518 00000000 */  nop
    /* 2DD2C 8003F51C 05006010 */  beqz       $v1, .L8003F534
    /* 2DD30 8003F520 1000A427 */   addiu     $a0, $sp, 0x10
    /* 2DD34 8003F524 7C0AC28E */  lw         $v0, 0xA7C($s6)
    /* 2DD38 8003F528 0400638C */  lw         $v1, 0x4($v1)
    /* 2DD3C 8003F52C 2110A202 */  addu       $v0, $s5, $v0
    /* 2DD40 8003F530 680043AC */  sw         $v1, 0x68($v0)
  .L8003F534:
    /* 2DD44 8003F534 0C80073C */  lui        $a3, %hi(D_800C4E40)
    /* 2DD48 8003F538 7C0AC28E */  lw         $v0, 0xA7C($s6)
    /* 2DD4C 8003F53C 404EE524 */  addiu      $a1, $a3, %lo(D_800C4E40)
    /* 2DD50 8003F540 2110A202 */  addu       $v0, $s5, $v0
    /* 2DD54 8003F544 0000468C */  lw         $a2, 0x0($v0)
    /* 2DD58 8003F548 96D9020C */  jal        sprintf
    /* 2DD5C 8003F54C 21900000 */   addu      $s2, $zero, $zero
    /* 2DD60 8003F550 5400A0AF */  sw         $zero, 0x54($sp)
    /* 2DD64 8003F554 5C00D18E */  lw         $s1, 0x5C($s6)
    /* 2DD68 8003F558 1000B327 */  addiu      $s3, $sp, 0x10
    /* 2DD6C 8003F55C 1400228E */  lw         $v0, 0x14($s1)
    /* 2DD70 8003F560 00000000 */  nop
    /* 2DD74 8003F564 13004018 */  blez       $v0, .L8003F5B4
    /* 2DD78 8003F568 5400B427 */   addiu     $s4, $sp, 0x54
  .L8003F56C:
    /* 2DD7C 8003F56C 1000228E */  lw         $v0, 0x10($s1)
    /* 2DD80 8003F570 C0801200 */  sll        $s0, $s2, 3
    /* 2DD84 8003F574 21100202 */  addu       $v0, $s0, $v0
    /* 2DD88 8003F578 0000448C */  lw         $a0, 0x0($v0)
    /* 2DD8C 8003F57C 2B98020C */  jal        func_800A60AC
    /* 2DD90 8003F580 21286002 */   addu      $a1, $s3, $zero
    /* 2DD94 8003F584 06004014 */  bnez       $v0, .L8003F5A0
    /* 2DD98 8003F588 01005226 */   addiu     $s2, $s2, 0x1
    /* 2DD9C 8003F58C 1000228E */  lw         $v0, 0x10($s1)
    /* 2DDA0 8003F590 00000000 */  nop
    /* 2DDA4 8003F594 21105000 */  addu       $v0, $v0, $s0
    /* 2DDA8 8003F598 6DFD0008 */  j          .L8003F5B4
    /* 2DDAC 8003F59C 000082AE */   sw        $v0, 0x0($s4)
  .L8003F5A0:
    /* 2DDB0 8003F5A0 1400228E */  lw         $v0, 0x14($s1)
    /* 2DDB4 8003F5A4 00000000 */  nop
    /* 2DDB8 8003F5A8 2A104202 */  slt        $v0, $s2, $v0
    /* 2DDBC 8003F5AC EFFF4014 */  bnez       $v0, .L8003F56C
    /* 2DDC0 8003F5B0 00000000 */   nop
  .L8003F5B4:
    /* 2DDC4 8003F5B4 5400A38F */  lw         $v1, 0x54($sp)
    /* 2DDC8 8003F5B8 00000000 */  nop
    /* 2DDCC 8003F5BC 05006010 */  beqz       $v1, .L8003F5D4
    /* 2DDD0 8003F5C0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 2DDD4 8003F5C4 7C0AC28E */  lw         $v0, 0xA7C($s6)
    /* 2DDD8 8003F5C8 0400638C */  lw         $v1, 0x4($v1)
    /* 2DDDC 8003F5CC 2110A202 */  addu       $v0, $s5, $v0
    /* 2DDE0 8003F5D0 6C0043AC */  sw         $v1, 0x6C($v0)
  .L8003F5D4:
    /* 2DDE4 8003F5D4 0C80073C */  lui        $a3, %hi(D_800C4E4C)
    /* 2DDE8 8003F5D8 7C0AC28E */  lw         $v0, 0xA7C($s6)
    /* 2DDEC 8003F5DC 4C4EE524 */  addiu      $a1, $a3, %lo(D_800C4E4C)
    /* 2DDF0 8003F5E0 2110A202 */  addu       $v0, $s5, $v0
    /* 2DDF4 8003F5E4 0000468C */  lw         $a2, 0x0($v0)
    /* 2DDF8 8003F5E8 96D9020C */  jal        sprintf
    /* 2DDFC 8003F5EC 21900000 */   addu      $s2, $zero, $zero
    /* 2DE00 8003F5F0 5400A0AF */  sw         $zero, 0x54($sp)
    /* 2DE04 8003F5F4 5C00D18E */  lw         $s1, 0x5C($s6)
    /* 2DE08 8003F5F8 1000B327 */  addiu      $s3, $sp, 0x10
    /* 2DE0C 8003F5FC 1400228E */  lw         $v0, 0x14($s1)
    /* 2DE10 8003F600 00000000 */  nop
    /* 2DE14 8003F604 13004018 */  blez       $v0, .L8003F654
    /* 2DE18 8003F608 5400B427 */   addiu     $s4, $sp, 0x54
  .L8003F60C:
    /* 2DE1C 8003F60C 1000228E */  lw         $v0, 0x10($s1)
    /* 2DE20 8003F610 C0801200 */  sll        $s0, $s2, 3
    /* 2DE24 8003F614 21100202 */  addu       $v0, $s0, $v0
    /* 2DE28 8003F618 0000448C */  lw         $a0, 0x0($v0)
    /* 2DE2C 8003F61C 2B98020C */  jal        func_800A60AC
    /* 2DE30 8003F620 21286002 */   addu      $a1, $s3, $zero
    /* 2DE34 8003F624 06004014 */  bnez       $v0, .L8003F640
    /* 2DE38 8003F628 00000000 */   nop
    /* 2DE3C 8003F62C 1000228E */  lw         $v0, 0x10($s1)
    /* 2DE40 8003F630 00000000 */  nop
    /* 2DE44 8003F634 21105000 */  addu       $v0, $v0, $s0
    /* 2DE48 8003F638 95FD0008 */  j          .L8003F654
    /* 2DE4C 8003F63C 000082AE */   sw        $v0, 0x0($s4)
  .L8003F640:
    /* 2DE50 8003F640 1400228E */  lw         $v0, 0x14($s1)
    /* 2DE54 8003F644 01005226 */  addiu      $s2, $s2, 0x1
    /* 2DE58 8003F648 2A104202 */  slt        $v0, $s2, $v0
    /* 2DE5C 8003F64C EFFF4014 */  bnez       $v0, .L8003F60C
    /* 2DE60 8003F650 00000000 */   nop
  .L8003F654:
    /* 2DE64 8003F654 5400A38F */  lw         $v1, 0x54($sp)
    /* 2DE68 8003F658 00000000 */  nop
    /* 2DE6C 8003F65C 05006010 */  beqz       $v1, .L8003F674
    /* 2DE70 8003F660 00000000 */   nop
    /* 2DE74 8003F664 7C0AC28E */  lw         $v0, 0xA7C($s6)
    /* 2DE78 8003F668 0400638C */  lw         $v1, 0x4($v1)
    /* 2DE7C 8003F66C 2110A202 */  addu       $v0, $s5, $v0
    /* 2DE80 8003F670 700043AC */  sw         $v1, 0x70($v0)
  .L8003F674:
    /* 2DE84 8003F674 700AC28E */  lw         $v0, 0xA70($s6)
    /* 2DE88 8003F678 0100F726 */  addiu      $s7, $s7, 0x1
    /* 2DE8C 8003F67C 2A10E202 */  slt        $v0, $s7, $v0
    /* 2DE90 8003F680 3AFF4014 */  bnez       $v0, .L8003F36C
    /* 2DE94 8003F684 7400B526 */   addiu     $s5, $s5, 0x74
  .L8003F688:
    /* 2DE98 8003F688 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* 2DE9C 8003F68C 7800BE8F */  lw         $fp, 0x78($sp)
    /* 2DEA0 8003F690 7400B78F */  lw         $s7, 0x74($sp)
    /* 2DEA4 8003F694 7000B68F */  lw         $s6, 0x70($sp)
    /* 2DEA8 8003F698 6C00B58F */  lw         $s5, 0x6C($sp)
    /* 2DEAC 8003F69C 6800B48F */  lw         $s4, 0x68($sp)
    /* 2DEB0 8003F6A0 6400B38F */  lw         $s3, 0x64($sp)
    /* 2DEB4 8003F6A4 6000B28F */  lw         $s2, 0x60($sp)
    /* 2DEB8 8003F6A8 5C00B18F */  lw         $s1, 0x5C($sp)
    /* 2DEBC 8003F6AC 5800B08F */  lw         $s0, 0x58($sp)
    /* 2DEC0 8003F6B0 0800E003 */  jr         $ra
    /* 2DEC4 8003F6B4 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_8003F314
