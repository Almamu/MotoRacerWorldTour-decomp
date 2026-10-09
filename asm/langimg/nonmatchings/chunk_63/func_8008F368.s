/* Handwritten function */
nonmatching func_8008F368, 0xA0C

glabel func_8008F368
    /* 7DB78 8008F368 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* 7DB7C 8008F36C 2148A000 */  addu       $t1, $a1, $zero
    /* 7DB80 8008F370 6C00B7AF */  sw         $s7, 0x6C($sp)
    /* 7DB84 8008F374 21B88000 */  addu       $s7, $a0, $zero
    /* 7DB88 8008F378 7400BFAF */  sw         $ra, 0x74($sp)
    /* 7DB8C 8008F37C 7000BEAF */  sw         $fp, 0x70($sp)
    /* 7DB90 8008F380 6800B6AF */  sw         $s6, 0x68($sp)
    /* 7DB94 8008F384 6400B5AF */  sw         $s5, 0x64($sp)
    /* 7DB98 8008F388 6000B4AF */  sw         $s4, 0x60($sp)
    /* 7DB9C 8008F38C 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* 7DBA0 8008F390 5800B2AF */  sw         $s2, 0x58($sp)
    /* 7DBA4 8008F394 5400B1AF */  sw         $s1, 0x54($sp)
    /* 7DBA8 8008F398 5000B0AF */  sw         $s0, 0x50($sp)
    /* 7DBAC 8008F39C 00E84D48 */  cfc2       $t5, $29 /* handwritten instruction */
    /* 7DBB0 8008F3A0 00000000 */  nop
    /* 7DBB4 8008F3A4 2C00ADAF */  sw         $t5, 0x2C($sp)
    /* 7DBB8 8008F3A8 00F05848 */  cfc2       $t8, $30 /* handwritten instruction */
    /* 7DBBC 8008F3AC 21C80000 */  addu       $t9, $zero, $zero
    /* 7DBC0 8008F3B0 3000B8AF */  sw         $t8, 0x30($sp)
    /* 7DBC4 8008F3B4 00D8D948 */  ctc2       $t9, $27 /* handwritten instruction */
    /* 7DBC8 8008F3B8 21680000 */  addu       $t5, $zero, $zero
    /* 7DBCC 8008F3BC 00E0CD48 */  ctc2       $t5, $28 /* handwritten instruction */
    /* 7DBD0 8008F3C0 05002015 */  bnez       $t1, .L8008F3D8
    /* 7DBD4 8008F3C4 00000000 */   nop
    /* 7DBD8 8008F3C8 0D80023C */  lui        $v0, %hi(D_800C8864)
    /* 7DBDC 8008F3CC 6488428C */  lw         $v0, %lo(D_800C8864)($v0)
    /* 7DBE0 8008F3D0 00000000 */  nop
    /* 7DBE4 8008F3D4 40004924 */  addiu      $t1, $v0, 0x40
  .L8008F3D8:
    /* 7DBE8 8008F3D8 0000228D */  lw         $v0, 0x0($t1)
    /* 7DBEC 8008F3DC 0400238D */  lw         $v1, 0x4($t1)
    /* 7DBF0 8008F3E0 0040C248 */  ctc2       $v0, $8 /* handwritten instruction */
    /* 7DBF4 8008F3E4 0048C348 */  ctc2       $v1, $9 /* handwritten instruction */
    /* 7DBF8 8008F3E8 0800228D */  lw         $v0, 0x8($t1)
    /* 7DBFC 8008F3EC 0C00238D */  lw         $v1, 0xC($t1)
    /* 7DC00 8008F3F0 0050C248 */  ctc2       $v0, $10 /* handwritten instruction */
    /* 7DC04 8008F3F4 1000228D */  lw         $v0, 0x10($t1)
    /* 7DC08 8008F3F8 0058C348 */  ctc2       $v1, $11 /* handwritten instruction */
    /* 7DC0C 8008F3FC 0060C248 */  ctc2       $v0, $12 /* handwritten instruction */
    /* 7DC10 8008F400 1400388D */  lw         $t8, 0x14($t1)
    /* 7DC14 8008F404 00000000 */  nop
    /* 7DC18 8008F408 0068D848 */  ctc2       $t8, $13 /* handwritten instruction */
    /* 7DC1C 8008F40C 1800398D */  lw         $t9, 0x18($t1)
    /* 7DC20 8008F410 00000000 */  nop
    /* 7DC24 8008F414 0070D948 */  ctc2       $t9, $14 /* handwritten instruction */
    /* 7DC28 8008F418 1C002D8D */  lw         $t5, 0x1C($t1)
    /* 7DC2C 8008F41C 00000000 */  nop
    /* 7DC30 8008F420 0078CD48 */  ctc2       $t5, $15 /* handwritten instruction */
    /* 7DC34 8008F424 0400F68E */  lw         $s6, 0x4($s7)
    /* 7DC38 8008F428 0800F88E */  lw         $t8, 0x8($s7)
    /* 7DC3C 8008F42C 2400DE8E */  lw         $fp, 0x24($s6)
    /* 7DC40 8008F430 7000D48E */  lw         $s4, 0x70($s6)
    /* 7DC44 8008F434 801F053C */  lui        $a1, (0x1F8003F4 >> 16)
    /* 7DC48 8008F438 3400B8AF */  sw         $t8, 0x34($sp)
    /* 7DC4C 8008F43C 6C00D98E */  lw         $t9, 0x6C($s6)
    /* 7DC50 8008F440 0024033C */  lui        $v1, (0x24000000 >> 16)
    /* 7DC54 8008F444 FFFF3827 */  addiu      $t8, $t9, -0x1
    /* 7DC58 8008F448 3800B9AF */  sw         $t9, 0x38($sp)
    /* 7DC5C 8008F44C 0000E482 */  lb         $a0, 0x0($s7)
    /* 7DC60 8008F450 1C00C686 */  lh         $a2, 0x1C($s6)
    /* 7DC64 8008F454 2800E28E */  lw         $v0, 0x28($s7)
    /* 7DC68 8008F458 1400CD8E */  lw         $t5, 0x14($s6)
    /* 7DC6C 8008F45C 25104300 */  or         $v0, $v0, $v1
    /* 7DC70 8008F460 21A89800 */  addu       $s5, $a0, $t8
    /* 7DC74 8008F464 002C033C */  lui        $v1, (0x2C000000 >> 16)
    /* 7DC78 8008F468 00100424 */  addiu      $a0, $zero, 0x1000
    /* 7DC7C 8008F46C 0420C400 */  sllv       $a0, $a0, $a2
    /* 7DC80 8008F470 2800ADAF */  sw         $t5, 0x28($sp)
    /* 7DC84 8008F474 99110D24 */  addiu      $t5, $zero, 0x1199
    /* 7DC88 8008F478 F003A2AC */  sw         $v0, (0x1F8003F0 & 0xFFFF)($a1)
    /* 7DC8C 8008F47C 3C00B8AF */  sw         $t8, 0x3C($sp)
    /* 7DC90 8008F480 2800E28E */  lw         $v0, 0x28($s7)
    /* 7DC94 8008F484 0C001824 */  addiu      $t8, $zero, 0xC
    /* 7DC98 8008F488 25104300 */  or         $v0, $v0, $v1
    /* 7DC9C 8008F48C F403A2AC */  sw         $v0, (0x1F8003F4 & 0xFFFF)($a1)
    /* 7DCA0 8008F490 2400E786 */  lh         $a3, 0x24($s7)
    /* 7DCA4 8008F494 2000D98E */  lw         $t9, 0x20($s6)
    /* 7DCA8 8008F498 23380700 */  negu       $a3, $a3
    /* 7DCAC 8008F49C 18002D03 */  mult       $t9, $t5
    /* 7DCB0 8008F4A0 20000334 */  ori        $v1, $zero, 0x20
    /* 7DCB4 8008F4A4 22187800 */  sub        $v1, $v1, $t8 /* handwritten instruction */
    /* 7DCB8 8008F4A8 10400000 */  mfhi       $t0
    /* 7DCBC 8008F4AC 04406800 */  sllv       $t0, $t0, $v1
    /* 7DCC0 8008F4B0 12180000 */  mflo       $v1
    /* 7DCC4 8008F4B4 06180303 */  srlv       $v1, $v1, $t8
    /* 7DCC8 8008F4B8 25400301 */  or         $t0, $t0, $v1
    /* 7DCCC 8008F4BC 0D80023C */  lui        $v0, %hi(D_800C8864)
    /* 7DCD0 8008F4C0 6488428C */  lw         $v0, %lo(D_800C8864)($v0)
    /* 7DCD4 8008F4C4 00000000 */  nop
    /* 7DCD8 8008F4C8 3C01468C */  lw         $a2, 0x13C($v0)
    /* 7DCDC 8008F4CC 21508000 */  addu       $t2, $a0, $zero
    /* 7DCE0 8008F4D0 1400C58C */  lw         $a1, 0x14($a2)
    /* 7DCE4 8008F4D4 03120A00 */  sra        $v0, $t2, 8
    /* 7DCE8 8008F4D8 18004500 */  mult       $v0, $a1
    /* 7DCEC 8008F4DC 1C00C38C */  lw         $v1, 0x1C($a2)
    /* 7DCF0 8008F4E0 00000000 */  nop
    /* 7DCF4 8008F4E4 001C0300 */  sll        $v1, $v1, 16
    /* 7DCF8 8008F4E8 12100000 */  mflo       $v0
    /* 7DCFC 8008F4EC 40200200 */  sll        $a0, $v0, 1
    /* 7DD00 8008F4F0 21208200 */  addu       $a0, $a0, $v0
    /* 7DD04 8008F4F4 1A006400 */  div        $zero, $v1, $a0
    /* 7DD08 8008F4F8 12200000 */  mflo       $a0
    /* 7DD0C 8008F4FC 1000B127 */  addiu      $s1, $sp, 0x10
    /* 7DD10 8008F500 F4FFE724 */  addiu      $a3, $a3, -0xC
    /* 7DD14 8008F504 80100200 */  sll        $v0, $v0, 2
    /* 7DD18 8008F508 1A006200 */  div        $zero, $v1, $v0
    /* 7DD1C 8008F50C 12180000 */  mflo       $v1
    /* 7DD20 8008F510 00E8C448 */  ctc2       $a0, $29 /* handwritten instruction */
    /* 7DD24 8008F514 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* 7DD28 8008F518 0000228D */  lw         $v0, 0x0($t1)
    /* 7DD2C 8008F51C 0400238D */  lw         $v1, 0x4($t1)
    /* 7DD30 8008F520 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 7DD34 8008F524 0008C348 */  ctc2       $v1, $1 /* handwritten instruction */
    /* 7DD38 8008F528 0800228D */  lw         $v0, 0x8($t1)
    /* 7DD3C 8008F52C 0C00238D */  lw         $v1, 0xC($t1)
    /* 7DD40 8008F530 0010C248 */  ctc2       $v0, $2 /* handwritten instruction */
    /* 7DD44 8008F534 1000228D */  lw         $v0, 0x10($t1)
    /* 7DD48 8008F538 0018C348 */  ctc2       $v1, $3 /* handwritten instruction */
    /* 7DD4C 8008F53C 0020C248 */  ctc2       $v0, $4 /* handwritten instruction */
    /* 7DD50 8008F540 1400238D */  lw         $v1, 0x14($t1)
    /* 7DD54 8008F544 1800228D */  lw         $v0, 0x18($t1)
    /* 7DD58 8008F548 0028C348 */  ctc2       $v1, $5 /* handwritten instruction */
    /* 7DD5C 8008F54C 1C00238D */  lw         $v1, 0x1C($t1)
    /* 7DD60 8008F550 0030C248 */  ctc2       $v0, $6 /* handwritten instruction */
    /* 7DD64 8008F554 0038C348 */  ctc2       $v1, $7 /* handwritten instruction */
    /* 7DD68 8008F558 21680000 */  addu       $t5, $zero, $zero
    /* 7DD6C 8008F55C 00008D48 */  mtc2       $t5, $0 /* handwritten instruction */
    /* 7DD70 8008F560 21C00000 */  addu       $t8, $zero, $zero
    /* 7DD74 8008F564 00089848 */  mtc2       $t8, $1 /* handwritten instruction */
    /* 7DD78 8008F568 00000000 */  nop
    /* 7DD7C 8008F56C 00000000 */  nop
    /* 7DD80 8008F570 0100184A */  rtps
    /* 7DD84 8008F574 00981048 */  mfc2       $s0, $19 /* handwritten instruction */
    /* 7DD88 8008F578 00000000 */  nop
    /* 7DD8C 8008F57C 00889048 */  mtc2       $s0, $17 /* handwritten instruction */
    /* 7DD90 8008F580 00909048 */  mtc2       $s0, $18 /* handwritten instruction */
    /* 7DD94 8008F584 00000000 */  nop
    /* 7DD98 8008F588 00000000 */  nop
    /* 7DD9C 8008F58C 2D00584B */  avsz3
    /* 7DDA0 8008F590 00380248 */  mfc2       $v0, $7 /* handwritten instruction */
    /* 7DDA4 8008F594 00000000 */  nop
    /* 7DDA8 8008F598 21204700 */  addu       $a0, $v0, $a3
    /* 7DDAC 8008F59C 41FF8328 */  slti       $v1, $a0, -0xBF
    /* 7DDB0 8008F5A0 05006014 */  bnez       $v1, .L8008F5B8
    /* 7DDB4 8008F5A4 41FF1324 */   addiu     $s3, $zero, -0xBF
    /* 7DDB8 8008F5A8 FB078228 */  slti       $v0, $a0, 0x7FB
    /* 7DDBC 8008F5AC 02004010 */  beqz       $v0, .L8008F5B8
    /* 7DDC0 8008F5B0 FA071324 */   addiu     $s3, $zero, 0x7FA
    /* 7DDC4 8008F5B4 21988000 */  addu       $s3, $a0, $zero
  .L8008F5B8:
    /* 7DDC8 8008F5B8 18001924 */  addiu      $t9, $zero, 0x18
    /* 7DDCC 8008F5BC 18000A01 */  mult       $t0, $t2
    /* 7DDD0 8008F5C0 20000234 */  ori        $v0, $zero, 0x20
    /* 7DDD4 8008F5C4 22105900 */  sub        $v0, $v0, $t9 /* handwritten instruction */
    /* 7DDD8 8008F5C8 10380000 */  mfhi       $a3
    /* 7DDDC 8008F5CC 04384700 */  sllv       $a3, $a3, $v0
    /* 7DDE0 8008F5D0 12100000 */  mflo       $v0
    /* 7DDE4 8008F5D4 06102203 */  srlv       $v0, $v0, $t9
    /* 7DDE8 8008F5D8 2538E200 */  or         $a3, $a3, $v0
    /* 7DDEC 8008F5DC 1000043C */  lui        $a0, (0x100000 >> 16)
    /* 7DDF0 8008F5E0 40180700 */  sll        $v1, $a3, 1
    /* 7DDF4 8008F5E4 1A008300 */  div        $zero, $a0, $v1
    /* 7DDF8 8008F5E8 12300000 */  mflo       $a2
    /* 7DDFC 8008F5EC FF07023C */  lui        $v0, (0x7FFF000 >> 16)
    /* 7DE00 8008F5F0 00F04234 */  ori        $v0, $v0, (0x7FFF000 & 0xFFFF)
    /* 7DE04 8008F5F4 21180702 */  addu       $v1, $s0, $a3
    /* 7DE08 8008F5F8 1A004300 */  div        $zero, $v0, $v1
    /* 7DE0C 8008F5FC 12100000 */  mflo       $v0
    /* 7DE10 8008F600 00000000 */  nop
    /* 7DE14 8008F604 2A20C200 */  slt        $a0, $a2, $v0
    /* 7DE18 8008F608 02008010 */  beqz       $a0, .L8008F614
    /* 7DE1C 8008F60C 00000000 */   nop
    /* 7DE20 8008F610 2110C000 */  addu       $v0, $a2, $zero
  .L8008F614:
    /* 7DE24 8008F614 21304000 */  addu       $a2, $v0, $zero
    /* 7DE28 8008F618 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* 7DE2C 8008F61C 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 7DE30 8008F620 1800C200 */  mult       $a2, $v0
    /* 7DE34 8008F624 2120C000 */  addu       $a0, $a2, $zero
    /* 7DE38 8008F628 C31F0600 */  sra        $v1, $a2, 31
    /* 7DE3C 8008F62C 10100000 */  mfhi       $v0
    /* 7DE40 8008F630 0200C104 */  bgez       $a2, .L8008F63C
    /* 7DE44 8008F634 23184300 */   subu      $v1, $v0, $v1
    /* 7DE48 8008F638 0300C424 */  addiu      $a0, $a2, 0x3
  .L8008F63C:
    /* 7DE4C 8008F63C 83100400 */  sra        $v0, $a0, 2
    /* 7DE50 8008F640 00E8C348 */  ctc2       $v1, $29 /* handwritten instruction */
    /* 7DE54 8008F644 00F0C248 */  ctc2       $v0, $30 /* handwritten instruction */
    /* 7DE58 8008F648 23800702 */  subu       $s0, $s0, $a3
    /* 7DE5C 8008F64C 18000602 */  mult       $s0, $a2
    /* 7DE60 8008F650 00010224 */  addiu      $v0, $zero, 0x100
    /* 7DE64 8008F654 80000324 */  addiu      $v1, $zero, 0x80
    /* 7DE68 8008F658 0D80043C */  lui        $a0, %hi(D_800C8C70)
    /* 7DE6C 8008F65C 708C848C */  lw         $a0, %lo(D_800C8C70)($a0)
    /* 7DE70 8008F660 00020524 */  addiu      $a1, $zero, 0x200
    /* 7DE74 8008F664 080022AE */  sw         $v0, 0x8($s1)
    /* 7DE78 8008F668 0C0023AE */  sw         $v1, 0xC($s1)
    /* 7DE7C 8008F66C 00088224 */  addiu      $v0, $a0, 0x800
    /* 7DE80 8008F670 000024AE */  sw         $a0, 0x0($s1)
    /* 7DE84 8008F674 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7DE88 8008F678 708C22AC */  sw         $v0, %lo(D_800C8C70)($at)
    /* 7DE8C 8008F67C 12800000 */  mflo       $s0
    /* 7DE90 8008F680 72B0020C */  jal        ClearOTagR
    /* 7DE94 8008F684 03831000 */   sra       $s0, $s0, 12
    /* 7DE98 8008F688 FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* 7DE9C 8008F68C 80101300 */  sll        $v0, $s3, 2
    /* 7DEA0 8008F690 0D80043C */  lui        $a0, %hi(D_800CBDC0)
    /* 7DEA4 8008F694 C0BD848C */  lw         $a0, %lo(D_800CBDC0)($a0)
    /* 7DEA8 8008F698 0000258E */  lw         $a1, 0x0($s1)
    /* 7DEAC 8008F69C 21208200 */  addu       $a0, $a0, $v0
    /* 7DEB0 8008F6A0 0000838C */  lw         $v1, 0x0($a0)
    /* 7DEB4 8008F6A4 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* 7DEB8 8008F6A8 0000A3AC */  sw         $v1, 0x0($a1)
    /* 7DEBC 8008F6AC 0000228E */  lw         $v0, 0x0($s1)
    /* 7DEC0 8008F6B0 21980000 */  addu       $s3, $zero, $zero
    /* 7DEC4 8008F6B4 FC074224 */  addiu      $v0, $v0, 0x7FC
    /* 7DEC8 8008F6B8 24104600 */  and        $v0, $v0, $a2
    /* 7DECC 8008F6BC 000082AC */  sw         $v0, 0x0($a0)
    /* 7DED0 8008F6C0 0D800B3C */  lui        $t3, %hi(D_800C8C70)
    /* 7DED4 8008F6C4 708C6B8D */  lw         $t3, %lo(D_800C8C70)($t3)
    /* 7DED8 8008F6C8 0000238E */  lw         $v1, 0x0($s1)
    /* 7DEDC 8008F6CC 2700E282 */  lb         $v0, 0x27($s7)
    /* 7DEE0 8008F6D0 80FF1026 */  addiu      $s0, $s0, -0x80
    /* 7DEE4 8008F6D4 100030AE */  sw         $s0, 0x10($s1)
    /* 7DEE8 8008F6D8 040023AE */  sw         $v1, 0x4($s1)
    /* 7DEEC 8008F6DC 1400AD8F */  lw         $t5, 0x14($sp)
    /* 7DEF0 8008F6E0 00160200 */  sll        $v0, $v0, 24
    /* 7DEF4 8008F6E4 4800A2AF */  sw         $v0, 0x48($sp)
    /* 7DEF8 8008F6E8 8E01A012 */  beqz       $s5, .L8008FD24
    /* 7DEFC 8008F6EC 4000ADAF */   sw        $t5, 0x40($sp)
    /* 7DF00 8008F6F0 3C00B88F */  lw         $t8, 0x3C($sp)
    /* 7DF04 8008F6F4 00000000 */  nop
    /* 7DF08 8008F6F8 4400B8AF */  sw         $t8, 0x44($sp)
  .L8008F6FC:
    /* 7DF0C 8008F6FC 3800B98F */  lw         $t9, 0x38($sp)
    /* 7DF10 8008F700 00000000 */  nop
    /* 7DF14 8008F704 2A10B902 */  slt        $v0, $s5, $t9
    /* 7DF18 8008F708 C9004014 */  bnez       $v0, .L8008FA30
    /* 7DF1C 8008F70C 21500000 */   addu      $t2, $zero, $zero
    /* 7DF20 8008F710 0000C283 */  lb         $v0, 0x0($fp)
    /* 7DF24 8008F714 3400AD8F */  lw         $t5, 0x34($sp)
    /* 7DF28 8008F718 C0110200 */  sll        $v0, $v0, 7
    /* 7DF2C 8008F71C 2160A201 */  addu       $t4, $t5, $v0
    /* 7DF30 8008F720 36008495 */  lhu        $a0, 0x36($t4)
    /* 7DF34 8008F724 00000000 */  nop
    /* 7DF38 8008F728 30008230 */  andi       $v0, $a0, 0x30
    /* 7DF3C 8008F72C FA004014 */  bnez       $v0, .L8008FB18
    /* 7DF40 8008F730 0100DE27 */   addiu     $fp, $fp, 0x1
    /* 7DF44 8008F734 0200E396 */  lhu        $v1, 0x2($s7)
    /* 7DF48 8008F738 00000000 */  nop
    /* 7DF4C 8008F73C 24108300 */  and        $v0, $a0, $v1
    /* 7DF50 8008F740 F6004314 */  bne        $v0, $v1, .L8008FB1C
    /* 7DF54 8008F744 801F0F3C */   lui       $t7, (0x1F800004 >> 16)
    /* 7DF58 8008F748 1000868D */  lw         $a2, 0x10($t4)
    /* 7DF5C 8008F74C 00000000 */  nop
    /* 7DF60 8008F750 0000C78C */  lw         $a3, 0x0($a2)
    /* 7DF64 8008F754 0400C98C */  lw         $t1, 0x4($a2)
    /* 7DF68 8008F758 0C00CA8C */  lw         $t2, 0xC($a2)
    /* 7DF6C 8008F75C 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* 7DF70 8008F760 03140900 */  sra        $v0, $t1, 16
    /* 7DF74 8008F764 00508248 */  mtc2       $v0, $10 /* handwritten instruction */
    /* 7DF78 8008F768 00588A48 */  mtc2       $t2, $11 /* handwritten instruction */
    /* 7DF7C 8008F76C 023C0700 */  srl        $a3, $a3, 16
    /* 7DF80 8008F770 02540A00 */  srl        $t2, $t2, 16
    /* 7DF84 8008F774 12E04B4A */  mvmva      1, 1, 3, 3, 0
    /* 7DF88 8008F778 0800C88C */  lw         $t0, 0x8($a2)
    /* 7DF8C 8008F77C 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* 7DF90 8008F780 00140800 */  sll        $v0, $t0, 16
    /* 7DF94 8008F784 2538E200 */  or         $a3, $a3, $v0
    /* 7DF98 8008F788 00008748 */  mtc2       $a3, $0 /* handwritten instruction */
    /* 7DF9C 8008F78C 00480748 */  mfc2       $a3, $9 /* handwritten instruction */
    /* 7DFA0 8008F790 00500A48 */  mfc2       $t2, $10 /* handwritten instruction */
    /* 7DFA4 8008F794 00580548 */  mfc2       $a1, $11 /* handwritten instruction */
    /* 7DFA8 8008F798 12604A4A */  mvmva      1, 1, 0, 3, 0
    /* 7DFAC 8008F79C FFFF2331 */  andi       $v1, $t1, 0xFFFF
    /* 7DFB0 8008F7A0 FFFF183C */  lui        $t8, (0xFFFF0000 >> 16)
    /* 7DFB4 8008F7A4 24101801 */  and        $v0, $t0, $t8
    /* 7DFB8 8008F7A8 25406200 */  or         $t0, $v1, $v0
    /* 7DFBC 8008F7AC 00108848 */  mtc2       $t0, $2 /* handwritten instruction */
    /* 7DFC0 8008F7B0 1000C3C8 */  lwc2       $3, 0x10($a2)
    /* 7DFC4 8008F7B4 00480948 */  mfc2       $t1, $9 /* handwritten instruction */
    /* 7DFC8 8008F7B8 00500848 */  mfc2       $t0, $10 /* handwritten instruction */
    /* 7DFCC 8008F7BC 00580448 */  mfc2       $a0, $11 /* handwritten instruction */
    /* 7DFD0 8008F7C0 12E04A4A */  mvmva      1, 1, 1, 3, 0
    /* 7DFD4 8008F7C4 FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* 7DFD8 8008F7C8 001C0900 */  sll        $v1, $t1, 16
    /* 7DFDC 8008F7CC 25104300 */  or         $v0, $v0, $v1
    /* 7DFE0 8008F7D0 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 7DFE4 8008F7D4 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* 7DFE8 8008F7D8 00240400 */  sll        $a0, $a0, 16
    /* 7DFEC 8008F7DC 2528A400 */  or         $a1, $a1, $a0
    /* 7DFF0 8008F7E0 0018C548 */  ctc2       $a1, $3 /* handwritten instruction */
    /* 7DFF4 8008F7E4 00480748 */  mfc2       $a3, $9 /* handwritten instruction */
    /* 7DFF8 8008F7E8 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* 7DFFC 8008F7EC FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* 7E000 8008F7F0 001C0A00 */  sll        $v1, $t2, 16
    /* 7E004 8008F7F4 25104300 */  or         $v0, $v0, $v1
    /* 7E008 8008F7F8 0008C248 */  ctc2       $v0, $1 /* handwritten instruction */
    /* 7E00C 8008F7FC 00580748 */  mfc2       $a3, $11 /* handwritten instruction */
    /* 7E010 8008F800 FFFF0331 */  andi       $v1, $t0, 0xFFFF
    /* 7E014 8008F804 00140900 */  sll        $v0, $t1, 16
    /* 7E018 8008F808 25186200 */  or         $v1, $v1, $v0
    /* 7E01C 8008F80C 0010C348 */  ctc2       $v1, $2 /* handwritten instruction */
    /* 7E020 8008F810 0020C748 */  ctc2       $a3, $4 /* handwritten instruction */
    /* 7E024 8008F814 1400C58C */  lw         $a1, 0x14($a2)
    /* 7E028 8008F818 1400C624 */  addiu      $a2, $a2, 0x14
    /* 7E02C 8008F81C 0400C48C */  lw         $a0, 0x4($a2)
    /* 7E030 8008F820 0800C68C */  lw         $a2, 0x8($a2)
    /* 7E034 8008F824 0700A104 */  bgez       $a1, .L8008F844
    /* 7E038 8008F828 C3430500 */   sra       $t0, $a1, 15
    /* 7E03C 8008F82C 23280500 */  negu       $a1, $a1
    /* 7E040 8008F830 C3130500 */  sra        $v0, $a1, 15
    /* 7E044 8008F834 23400200 */  negu       $t0, $v0
    /* 7E048 8008F838 FF7FA330 */  andi       $v1, $a1, 0x7FFF
    /* 7E04C 8008F83C 123E0208 */  j          .L8008F848
    /* 7E050 8008F840 23280300 */   negu      $a1, $v1
  .L8008F844:
    /* 7E054 8008F844 FF7FA530 */  andi       $a1, $a1, 0x7FFF
  .L8008F848:
    /* 7E058 8008F848 07008104 */  bgez       $a0, .L8008F868
    /* 7E05C 8008F84C C33B0400 */   sra       $a3, $a0, 15
    /* 7E060 8008F850 23200400 */  negu       $a0, $a0
    /* 7E064 8008F854 C3130400 */  sra        $v0, $a0, 15
    /* 7E068 8008F858 23380200 */  negu       $a3, $v0
    /* 7E06C 8008F85C FF7F8330 */  andi       $v1, $a0, 0x7FFF
    /* 7E070 8008F860 1B3E0208 */  j          .L8008F86C
    /* 7E074 8008F864 23200300 */   negu      $a0, $v1
  .L8008F868:
    /* 7E078 8008F868 FF7F8430 */  andi       $a0, $a0, 0x7FFF
  .L8008F86C:
    /* 7E07C 8008F86C 0700C104 */  bgez       $a2, .L8008F88C
    /* 7E080 8008F870 C3130600 */   sra       $v0, $a2, 15
    /* 7E084 8008F874 23300600 */  negu       $a2, $a2
    /* 7E088 8008F878 C3130600 */  sra        $v0, $a2, 15
    /* 7E08C 8008F87C 23100200 */  negu       $v0, $v0
    /* 7E090 8008F880 FF7FC330 */  andi       $v1, $a2, 0x7FFF
    /* 7E094 8008F884 243E0208 */  j          .L8008F890
    /* 7E098 8008F888 23300300 */   negu      $a2, $v1
  .L8008F88C:
    /* 7E09C 8008F88C FF7FC630 */  andi       $a2, $a2, 0x7FFF
  .L8008F890:
    /* 7E0A0 8008F890 00488848 */  mtc2       $t0, $9 /* handwritten instruction */
    /* 7E0A4 8008F894 00508748 */  mtc2       $a3, $10 /* handwritten instruction */
    /* 7E0A8 8008F898 00588248 */  mtc2       $v0, $11 /* handwritten instruction */
    /* 7E0AC 8008F89C 00000000 */  nop
    /* 7E0B0 8008F8A0 00000000 */  nop
    /* 7E0B4 8008F8A4 12E0434A */  mvmva      0, 1, 3, 3, 0
    /* 7E0B8 8008F8A8 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 7E0BC 8008F8AC 001C0400 */  sll        $v1, $a0, 16
    /* 7E0C0 8008F8B0 25104300 */  or         $v0, $v0, $v1
    /* 7E0C4 8008F8B4 00008248 */  mtc2       $v0, $0 /* handwritten instruction */
    /* 7E0C8 8008F8B8 00088648 */  mtc2       $a2, $1 /* handwritten instruction */
    /* 7E0CC 8008F8BC 00C80848 */  mfc2       $t0, $25 /* handwritten instruction */
    /* 7E0D0 8008F8C0 00D00748 */  mfc2       $a3, $26 /* handwritten instruction */
    /* 7E0D4 8008F8C4 00D80248 */  mfc2       $v0, $27 /* handwritten instruction */
    /* 7E0D8 8008F8C8 12204A4A */  mvmva      1, 1, 0, 1, 0
    /* 7E0DC 8008F8CC C0400800 */  sll        $t0, $t0, 3
    /* 7E0E0 8008F8D0 C0380700 */  sll        $a3, $a3, 3
    /* 7E0E4 8008F8D4 C0100200 */  sll        $v0, $v0, 3
    /* 7E0E8 8008F8D8 00C80548 */  mfc2       $a1, $25 /* handwritten instruction */
    /* 7E0EC 8008F8DC 00D00448 */  mfc2       $a0, $26 /* handwritten instruction */
    /* 7E0F0 8008F8E0 00D80648 */  mfc2       $a2, $27 /* handwritten instruction */
    /* 7E0F4 8008F8E4 2128A800 */  addu       $a1, $a1, $t0
    /* 7E0F8 8008F8E8 21208700 */  addu       $a0, $a0, $a3
    /* 7E0FC 8008F8EC 2130C200 */  addu       $a2, $a2, $v0
    /* 7E100 8008F8F0 0028C548 */  ctc2       $a1, $5 /* handwritten instruction */
    /* 7E104 8008F8F4 0030C448 */  ctc2       $a0, $6 /* handwritten instruction */
    /* 7E108 8008F8F8 0038C648 */  ctc2       $a2, $7 /* handwritten instruction */
    /* 7E10C 8008F8FC 00184448 */  cfc2       $a0, $3 /* handwritten instruction */
    /* 7E110 8008F900 00000000 */  nop
    /* 7E114 8008F904 00140400 */  sll        $v0, $a0, 16
    /* 7E118 8008F908 C3250200 */  sra        $a0, $v0, 23
    /* 7E11C 8008F90C 40180400 */  sll        $v1, $a0, 1
    /* 7E120 8008F910 23100400 */  negu       $v0, $a0
    /* 7E124 8008F914 801F013C */  lui        $at, (0x1F8003D3 >> 16)
    /* 7E128 8008F918 D30322A0 */  sb         $v0, (0x1F8003D3 & 0xFFFF)($at)
    /* 7E12C 8008F91C 40100200 */  sll        $v0, $v0, 1
    /* 7E130 8008F920 801F013C */  lui        $at, (0x1F8003D0 >> 16)
    /* 7E134 8008F924 D00323A0 */  sb         $v1, (0x1F8003D0 & 0xFFFF)($at)
    /* 7E138 8008F928 801F013C */  lui        $at, (0x1F8003D1 >> 16)
    /* 7E13C 8008F92C D10324A0 */  sb         $a0, (0x1F8003D1 & 0xFFFF)($at)
    /* 7E140 8008F930 801F013C */  lui        $at, (0x1F8003D2 >> 16)
    /* 7E144 8008F934 D20320A0 */  sb         $zero, (0x1F8003D2 & 0xFFFF)($at)
    /* 7E148 8008F938 801F013C */  lui        $at, (0x1F8003D4 >> 16)
    /* 7E14C 8008F93C D40322A0 */  sb         $v0, (0x1F8003D4 & 0xFFFF)($at)
    /* 7E150 8008F940 00204448 */  cfc2       $a0, $4 /* handwritten instruction */
    /* 7E154 8008F944 00000000 */  nop
    /* 7E158 8008F948 C3210400 */  sra        $a0, $a0, 7
    /* 7E15C 8008F94C 40100400 */  sll        $v0, $a0, 1
    /* 7E160 8008F950 801F013C */  lui        $at, (0x1F8003D5 >> 16)
    /* 7E164 8008F954 D50322A0 */  sb         $v0, (0x1F8003D5 & 0xFFFF)($at)
    /* 7E168 8008F958 23100400 */  negu       $v0, $a0
    /* 7E16C 8008F95C 801F013C */  lui        $at, (0x1F8003D8 >> 16)
    /* 7E170 8008F960 D80322A0 */  sb         $v0, (0x1F8003D8 & 0xFFFF)($at)
    /* 7E174 8008F964 40100200 */  sll        $v0, $v0, 1
    /* 7E178 8008F968 801F013C */  lui        $at, (0x1F8003D6 >> 16)
    /* 7E17C 8008F96C D60324A0 */  sb         $a0, (0x1F8003D6 & 0xFFFF)($at)
    /* 7E180 8008F970 801F013C */  lui        $at, (0x1F8003D7 >> 16)
    /* 7E184 8008F974 D70320A0 */  sb         $zero, (0x1F8003D7 & 0xFFFF)($at)
    /* 7E188 8008F978 801F013C */  lui        $at, (0x1F8003D9 >> 16)
    /* 7E18C 8008F97C D90322A0 */  sb         $v0, (0x1F8003D9 & 0xFFFF)($at)
    /* 7E190 8008F980 3C00868D */  lw         $a2, 0x3C($t4)
    /* 7E194 8008F984 00000000 */  nop
    /* 7E198 8008F988 1A00C590 */  lbu        $a1, 0x1A($a2)
    /* 7E19C 8008F98C 00000000 */  nop
    /* 7E1A0 8008F990 2300A010 */  beqz       $a1, .L8008FA20
    /* 7E1A4 8008F994 801F0D3C */   lui       $t5, (0x1F800014 >> 16)
    /* 7E1A8 8008F998 1C00C284 */  lh         $v0, 0x1C($a2)
    /* 7E1AC 8008F99C 1E00C384 */  lh         $v1, 0x1E($a2)
    /* 7E1B0 8008F9A0 2800B98F */  lw         $t9, 0x28($sp)
    /* 7E1B4 8008F9A4 C0100200 */  sll        $v0, $v0, 3
    /* 7E1B8 8008F9A8 21202203 */  addu       $a0, $t9, $v0
    /* 7E1BC 8008F9AC 21186D00 */  addu       $v1, $v1, $t5
    /* 7E1C0 8008F9B0 000080C8 */  lwc2       $0, 0x0($a0)
    /* 7E1C4 8008F9B4 040081C8 */  lwc2       $1, 0x4($a0)
    /* 7E1C8 8008F9B8 080082C8 */  lwc2       $2, 0x8($a0)
    /* 7E1CC 8008F9BC 0C0083C8 */  lwc2       $3, 0xC($a0)
    /* 7E1D0 8008F9C0 763E0208 */  j          .L8008F9D8
    /* 7E1D4 8008F9C4 00000000 */   nop
  .L8008F9C8:
    /* 7E1D8 8008F9C8 00008748 */  mtc2       $a3, $0 /* handwritten instruction */
    /* 7E1DC 8008F9CC 00088948 */  mtc2       $t1, $1 /* handwritten instruction */
    /* 7E1E0 8008F9D0 00108848 */  mtc2       $t0, $2 /* handwritten instruction */
    /* 7E1E4 8008F9D4 00188A48 */  mtc2       $t2, $3 /* handwritten instruction */
  .L8008F9D8:
    /* 7E1E8 8008F9D8 100084C8 */  lwc2       $4, 0x10($a0)
    /* 7E1EC 8008F9DC 140085C8 */  lwc2       $5, 0x14($a0)
    /* 7E1F0 8008F9E0 18008424 */  addiu      $a0, $a0, 0x18
    /* 7E1F4 8008F9E4 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 7E1F8 8008F9E8 3000284A */  rtpt
    /* 7E1FC 8008F9EC 0000878C */  lw         $a3, 0x0($a0)
    /* 7E200 8008F9F0 04008984 */  lh         $t1, 0x4($a0)
    /* 7E204 8008F9F4 0800888C */  lw         $t0, 0x8($a0)
    /* 7E208 8008F9F8 0C008A84 */  lh         $t2, 0xC($a0)
    /* 7E20C 8008F9FC 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 7E210 8008FA00 00006CE8 */  swc2       $12, (0x1F800000 & 0xFFFF)($v1)
    /* 7E214 8008FA04 040071E8 */  swc2       $17, (0x1F800004 & 0xFFFF)($v1)
    /* 7E218 8008FA08 08006DE8 */  swc2       $13, (0x1F800008 & 0xFFFF)($v1)
    /* 7E21C 8008FA0C 0C0072E8 */  swc2       $18, (0x1F80000C & 0xFFFF)($v1)
    /* 7E220 8008FA10 10006EE8 */  swc2       $14, (0x1F800010 & 0xFFFF)($v1)
    /* 7E224 8008FA14 140073E8 */  swc2       $19, (0x1F800014 & 0xFFFF)($v1)
    /* 7E228 8008FA18 EBFFA014 */  bnez       $a1, .L8008F9C8
    /* 7E22C 8008FA1C 18006324 */   addiu     $v1, $v1, %lo(D_1F800018)
  .L8008FA20:
    /* 7E230 8008FA20 1400CA94 */  lhu        $t2, 0x14($a2)
    /* 7E234 8008FA24 2000D28C */  lw         $s2, 0x20($a2)
    /* 7E238 8008FA28 C73E0208 */  j          .L8008FB1C
    /* 7E23C 8008FA2C 801F0F3C */   lui       $t7, (0x1F800004 >> 16)
  .L8008FA30:
    /* 7E240 8008FA30 4400B88F */  lw         $t8, 0x44($sp)
    /* 7E244 8008FA34 0200E396 */  lhu        $v1, 0x2($s7)
    /* 7E248 8008FA38 0400B816 */  bne        $s5, $t8, .L8008FA4C
    /* 7E24C 8008FA3C 00000000 */   nop
    /* 7E250 8008FA40 0400E28E */  lw         $v0, 0x4($s7)
    /* 7E254 8008FA44 7000D48E */  lw         $s4, 0x70($s6)
    /* 7E258 8008FA48 4C00528C */  lw         $s2, 0x4C($v0)
  .L8008FA4C:
    /* 7E25C 8008FA4C 001C0300 */  sll        $v1, $v1, 16
    /* 7E260 8008FA50 031C0300 */  sra        $v1, $v1, 16
    /* 7E264 8008FA54 03008282 */  lb         $v0, 0x3($s4)
    /* 7E268 8008FA58 00008A86 */  lh         $t2, 0x0($s4)
    /* 7E26C 8008FA5C 24104300 */  and        $v0, $v0, $v1
    /* 7E270 8008FA60 06004310 */  beq        $v0, $v1, .L8008FA7C
    /* 7E274 8008FA64 C0100A00 */   sll       $v0, $t2, 3
    /* 7E278 8008FA68 23104A00 */  subu       $v0, $v0, $t2
    /* 7E27C 8008FA6C 80100200 */  sll        $v0, $v0, 2
    /* 7E280 8008FA70 21904202 */  addu       $s2, $s2, $v0
    /* 7E284 8008FA74 C53E0208 */  j          .L8008FB14
    /* 7E288 8008FA78 21500000 */   addu      $t2, $zero, $zero
  .L8008FA7C:
    /* 7E28C 8008FA7C 02008282 */  lb         $v0, 0x2($s4)
    /* 7E290 8008FA80 3400B98F */  lw         $t9, 0x34($sp)
    /* 7E294 8008FA84 C0110200 */  sll        $v0, $v0, 7
    /* 7E298 8008FA88 21105900 */  addu       $v0, $v0, $t9
    /* 7E29C 8008FA8C 1000458C */  lw         $a1, 0x10($v0)
    /* 7E2A0 8008FA90 00000000 */  nop
    /* 7E2A4 8008FA94 0C00A394 */  lhu        $v1, 0xC($a1)
    /* 7E2A8 8008FA98 801F013C */  lui        $at, (0x1F8003D2 >> 16)
    /* 7E2AC 8008FA9C D20320A0 */  sb         $zero, (0x1F8003D2 & 0xFFFF)($at)
    /* 7E2B0 8008FAA0 001C0300 */  sll        $v1, $v1, 16
    /* 7E2B4 8008FAA4 C3150300 */  sra        $v0, $v1, 23
    /* 7E2B8 8008FAA8 40200200 */  sll        $a0, $v0, 1
    /* 7E2BC 8008FAAC 801F013C */  lui        $at, (0x1F8003D1 >> 16)
    /* 7E2C0 8008FAB0 D10322A0 */  sb         $v0, (0x1F8003D1 & 0xFFFF)($at)
    /* 7E2C4 8008FAB4 23100200 */  negu       $v0, $v0
    /* 7E2C8 8008FAB8 801F013C */  lui        $at, (0x1F8003D3 >> 16)
    /* 7E2CC 8008FABC D30322A0 */  sb         $v0, (0x1F8003D3 & 0xFFFF)($at)
    /* 7E2D0 8008FAC0 40100200 */  sll        $v0, $v0, 1
    /* 7E2D4 8008FAC4 801F013C */  lui        $at, (0x1F8003D0 >> 16)
    /* 7E2D8 8008FAC8 D00324A0 */  sb         $a0, (0x1F8003D0 & 0xFFFF)($at)
    /* 7E2DC 8008FACC 801F013C */  lui        $at, (0x1F8003D4 >> 16)
    /* 7E2E0 8008FAD0 D40322A0 */  sb         $v0, (0x1F8003D4 & 0xFFFF)($at)
    /* 7E2E4 8008FAD4 1000A394 */  lhu        $v1, 0x10($a1)
    /* 7E2E8 8008FAD8 801F013C */  lui        $at, (0x1F8003D7 >> 16)
    /* 7E2EC 8008FADC D70320A0 */  sb         $zero, (0x1F8003D7 & 0xFFFF)($at)
    /* 7E2F0 8008FAE0 001C0300 */  sll        $v1, $v1, 16
    /* 7E2F4 8008FAE4 C3150300 */  sra        $v0, $v1, 23
    /* 7E2F8 8008FAE8 40200200 */  sll        $a0, $v0, 1
    /* 7E2FC 8008FAEC 801F013C */  lui        $at, (0x1F8003D6 >> 16)
    /* 7E300 8008FAF0 D60322A0 */  sb         $v0, (0x1F8003D6 & 0xFFFF)($at)
    /* 7E304 8008FAF4 23100200 */  negu       $v0, $v0
    /* 7E308 8008FAF8 801F013C */  lui        $at, (0x1F8003D8 >> 16)
    /* 7E30C 8008FAFC D80322A0 */  sb         $v0, (0x1F8003D8 & 0xFFFF)($at)
    /* 7E310 8008FB00 40100200 */  sll        $v0, $v0, 1
    /* 7E314 8008FB04 801F013C */  lui        $at, (0x1F8003D5 >> 16)
    /* 7E318 8008FB08 D50324A0 */  sb         $a0, (0x1F8003D5 & 0xFFFF)($at)
    /* 7E31C 8008FB0C 801F013C */  lui        $at, (0x1F8003D9 >> 16)
    /* 7E320 8008FB10 D90322A0 */  sb         $v0, (0x1F8003D9 & 0xFFFF)($at)
  .L8008FB14:
    /* 7E324 8008FB14 04009426 */  addiu      $s4, $s4, 0x4
  .L8008FB18:
    /* 7E328 8008FB18 801F0F3C */  lui        $t7, (0x1F800004 >> 16)
  .L8008FB1C:
    /* 7E32C 8008FB1C 7E004011 */  beqz       $t2, .L8008FD18
    /* 7E330 8008FB20 801F0D3C */   lui       $t5, (0x1F8003D5 >> 16)
    /* 7E334 8008FB24 0009113C */  lui        $s1, (0x9000000 >> 16)
    /* 7E338 8008FB28 801F0E3C */  lui        $t6, (0x1F8003D0 >> 16)
    /* 7E33C 8008FB2C D003CE35 */  ori        $t6, $t6, (0x1F8003D0 & 0xFFFF)
    /* 7E340 8008FB30 D503AD35 */  ori        $t5, $t5, (0x1F8003D5 & 0xFFFF)
    /* 7E344 8008FB34 4C00ADAF */  sw         $t5, 0x4C($sp)
    /* 7E348 8008FB38 00C0103C */  lui        $s0, (0xC0000000 >> 16)
    /* 7E34C 8008FB3C 18004C26 */  addiu      $t4, $s2, 0x18
    /* 7E350 8008FB40 14004926 */  addiu      $t1, $s2, 0x14
  .L8008FB44:
    /* 7E354 8008FB44 0000438E */  lw         $v1, 0x0($s2)
    /* 7E358 8008FB48 F0FF228D */  lw         $v0, -0x10($t1)
    /* 7E35C 8008FB4C FFFF6430 */  andi       $a0, $v1, 0xFFFF
    /* 7E360 8008FB50 021C0300 */  srl        $v1, $v1, 16
    /* 7E364 8008FB54 FFFF4530 */  andi       $a1, $v0, 0xFFFF
    /* 7E368 8008FB58 03140200 */  sra        $v0, $v0, 16
    /* 7E36C 8008FB5C 2130E401 */  addu       $a2, $t7, $a0
    /* 7E370 8008FB60 0000CCC8 */  lwc2       $12, (0x1F800000 & 0xFFFF)($a2)
    /* 7E374 8008FB64 2138E301 */  addu       $a3, $t7, $v1
    /* 7E378 8008FB68 0000EDC8 */  lwc2       $13, (0x1F800000 & 0xFFFF)($a3)
    /* 7E37C 8008FB6C 2140E501 */  addu       $t0, $t7, $a1
    /* 7E380 8008FB70 00000EC9 */  lwc2       $14, (0x1F800000 & 0xFFFF)($t0)
    /* 7E384 8008FB74 20004104 */  bgez       $v0, .L8008FBF8
    /* 7E388 8008FB78 00000000 */   nop
    /* 7E38C 8008FB7C 0600404B */  nclip
    /* 7E390 8008FB80 801F023C */  lui        $v0, (0x1F8003F0 >> 16)
    /* 7E394 8008FB84 F003428C */  lw         $v0, (0x1F8003F0 & 0xFFFF)($v0)
    /* 7E398 8008FB88 21286001 */  addu       $a1, $t3, $zero
    /* 7E39C 8008FB8C 040062AD */  sw         $v0, 0x4($t3)
    /* 7E3A0 8008FB90 00C00348 */  mfc2       $v1, $24 /* handwritten instruction */
    /* 7E3A4 8008FB94 00000000 */  nop
    /* 7E3A8 8008FB98 5A006018 */  blez       $v1, .L8008FD04
    /* 7E3AC 8008FB9C 00000000 */   nop
    /* 7E3B0 8008FBA0 0400D1C8 */  lwc2       $17, (0x1F800004 & 0xFFFF)($a2)
    /* 7E3B4 8008FBA4 0400F2C8 */  lwc2       $18, (0x1F800004 & 0xFFFF)($a3)
    /* 7E3B8 8008FBA8 040013C9 */  lwc2       $19, (0x1F800004 & 0xFFFF)($t0)
    /* 7E3BC 8008FBAC 00000000 */  nop
    /* 7E3C0 8008FBB0 00000000 */  nop
    /* 7E3C4 8008FBB4 2D00584B */  avsz3
    /* 7E3C8 8008FBB8 F8FF228D */  lw         $v0, -0x8($t1)
    /* 7E3CC 8008FBBC FCFF238D */  lw         $v1, -0x4($t1)
    /* 7E3D0 8008FBC0 00002495 */  lhu        $a0, 0x0($t1)
    /* 7E3D4 8008FBC4 0007183C */  lui        $t8, (0x7000000 >> 16)
    /* 7E3D8 8008FBC8 000078AD */  sw         $t8, 0x0($t3)
    /* 7E3DC 8008FBCC 4800B98F */  lw         $t9, 0x48($sp)
    /* 7E3E0 8008FBD0 00000000 */  nop
    /* 7E3E4 8008FBD4 21105900 */  addu       $v0, $v0, $t9
    /* 7E3E8 8008FBD8 0800ACE8 */  swc2       $12, 0x8($a1)
    /* 7E3EC 8008FBDC 1000ADE8 */  swc2       $13, 0x10($a1)
    /* 7E3F0 8008FBE0 1800AEE8 */  swc2       $14, 0x18($a1)
    /* 7E3F4 8008FBE4 20000824 */  addiu      $t0, $zero, 0x20
    /* 7E3F8 8008FBE8 0C0062AD */  sw         $v0, 0xC($t3)
    /* 7E3FC 8008FBEC 140063AD */  sw         $v1, 0x14($t3)
    /* 7E400 8008FBF0 243F0208 */  j          .L8008FC90
    /* 7E404 8008FBF4 1C0064A5 */   sh        $a0, 0x1C($t3)
  .L8008FBF8:
    /* 7E408 8008FBF8 0600404B */  nclip
    /* 7E40C 8008FBFC 21286001 */  addu       $a1, $t3, $zero
    /* 7E410 8008FC00 0800ACE8 */  swc2       $12, 0x8($a1)
    /* 7E414 8008FC04 1000ADE8 */  swc2       $13, 0x10($a1)
    /* 7E418 8008FC08 2000AEE8 */  swc2       $14, 0x20($a1)
    /* 7E41C 8008FC0C 00C00348 */  mfc2       $v1, $24 /* handwritten instruction */
    /* 7E420 8008FC10 2120E201 */  addu       $a0, $t7, $v0
    /* 7E424 8008FC14 00008DC8 */  lwc2       $13, (0x1F800000 & 0xFFFF)($a0)
    /* 7E428 8008FC18 00000000 */  nop
    /* 7E42C 8008FC1C 00000000 */  nop
    /* 7E430 8008FC20 0600404B */  nclip
    /* 7E434 8008FC24 801F023C */  lui        $v0, (0x1F8003F4 >> 16)
    /* 7E438 8008FC28 F403428C */  lw         $v0, (0x1F8003F4 & 0xFFFF)($v0)
    /* 7E43C 8008FC2C 0500601C */  bgtz       $v1, .L8008FC44
    /* 7E440 8008FC30 040062AD */   sw        $v0, 0x4($t3)
    /* 7E444 8008FC34 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 7E448 8008FC38 00000000 */  nop
    /* 7E44C 8008FC3C 31004104 */  bgez       $v0, .L8008FD04
    /* 7E450 8008FC40 00000000 */   nop
  .L8008FC44:
    /* 7E454 8008FC44 0400D1C8 */  lwc2       $17, (0x1F800004 & 0xFFFF)($a2)
    /* 7E458 8008FC48 0400F2C8 */  lwc2       $18, (0x1F800004 & 0xFFFF)($a3)
    /* 7E45C 8008FC4C 040013C9 */  lwc2       $19, (0x1F800004 & 0xFFFF)($t0)
    /* 7E460 8008FC50 040090C8 */  lwc2       $16, (0x1F800004 & 0xFFFF)($a0)
    /* 7E464 8008FC54 F8FF228D */  lw         $v0, -0x8($t1)
    /* 7E468 8008FC58 FCFF238D */  lw         $v1, -0x4($t1)
    /* 7E46C 8008FC5C 000071AD */  sw         $s1, 0x0($t3)
    /* 7E470 8008FC60 4800AD8F */  lw         $t5, 0x48($sp)
    /* 7E474 8008FC64 00000000 */  nop
    /* 7E478 8008FC68 21104D00 */  addu       $v0, $v0, $t5
    /* 7E47C 8008FC6C 0C0062AD */  sw         $v0, 0xC($t3)
    /* 7E480 8008FC70 140063AD */  sw         $v1, 0x14($t3)
    /* 7E484 8008FC74 1800ADE8 */  swc2       $13, 0x18($a1)
    /* 7E488 8008FC78 2E00684B */  avsz4
    /* 7E48C 8008FC7C 0000228D */  lw         $v0, 0x0($t1)
    /* 7E490 8008FC80 28000824 */  addiu      $t0, $zero, 0x28
    /* 7E494 8008FC84 240062A5 */  sh         $v0, 0x24($t3)
    /* 7E498 8008FC88 02140200 */  srl        $v0, $v0, 16
    /* 7E49C 8008FC8C 1C0062A5 */  sh         $v0, 0x1C($t3)
  .L8008FC90:
    /* 7E4A0 8008FC90 0000848D */  lw         $a0, 0x0($t4)
    /* 7E4A4 8008FC94 00380748 */  mfc2       $a3, $7 /* handwritten instruction */
    /* 7E4A8 8008FC98 83150400 */  sra        $v0, $a0, 22
    /* 7E4AC 8008FC9C 07004230 */  andi       $v0, $v0, 0x7
    /* 7E4B0 8008FCA0 4C00B88F */  lw         $t8, 0x4C($sp)
    /* 7E4B4 8008FCA4 4000B98F */  lw         $t9, 0x40($sp)
    /* 7E4B8 8008FCA8 831B0400 */  sra        $v1, $a0, 14
    /* 7E4BC 8008FCAC 07006330 */  andi       $v1, $v1, 0x7
    /* 7E4C0 8008FCB0 2118C301 */  addu       $v1, $t6, $v1
    /* 7E4C4 8008FCB4 21100203 */  addu       $v0, $t8, $v0
    /* 7E4C8 8008FCB8 C0240400 */  sll        $a0, $a0, 19
    /* 7E4CC 8008FCBC 24209000 */  and        $a0, $a0, $s0
    /* 7E4D0 8008FCC0 C3260400 */  sra        $a0, $a0, 27
    /* 7E4D4 8008FCC4 00006580 */  lb         $a1, 0x0($v1)
    /* 7E4D8 8008FCC8 00004680 */  lb         $a2, 0x0($v0)
    /* 7E4DC 8008FCCC 2000A38F */  lw         $v1, 0x20($sp)
    /* 7E4E0 8008FCD0 2138E500 */  addu       $a3, $a3, $a1
    /* 7E4E4 8008FCD4 2138E600 */  addu       $a3, $a3, $a2
    /* 7E4E8 8008FCD8 2110E400 */  addu       $v0, $a3, $a0
    /* 7E4EC 8008FCDC 23184300 */  subu       $v1, $v0, $v1
    /* 7E4F0 8008FCE0 FF016230 */  andi       $v0, $v1, 0x1FF
    /* 7E4F4 8008FCE4 80100200 */  sll        $v0, $v0, 2
    /* 7E4F8 8008FCE8 21102203 */  addu       $v0, $t9, $v0
    /* 7E4FC 8008FCEC 02004488 */  lwl        $a0, 0x2($v0)
    /* 7E500 8008FCF0 001A0B00 */  sll        $v1, $t3, 8
    /* 7E504 8008FCF4 020064A9 */  swl        $a0, 0x2($t3)
    /* 7E508 8008FCF8 020043A8 */  swl        $v1, 0x2($v0)
    /* 7E50C 8008FCFC 21586801 */  addu       $t3, $t3, $t0
    /* 7E510 8008FD00 01007326 */  addiu      $s3, $s3, 0x1
  .L8008FD04:
    /* 7E514 8008FD04 1C002925 */  addiu      $t1, $t1, 0x1C
    /* 7E518 8008FD08 1C008C25 */  addiu      $t4, $t4, 0x1C
    /* 7E51C 8008FD0C FFFF4A25 */  addiu      $t2, $t2, -0x1
    /* 7E520 8008FD10 8CFF4015 */  bnez       $t2, .L8008FB44
    /* 7E524 8008FD14 1C005226 */   addiu     $s2, $s2, 0x1C
  .L8008FD18:
    /* 7E528 8008FD18 FFFFB526 */  addiu      $s5, $s5, -0x1
    /* 7E52C 8008FD1C 77FEA106 */  bgez       $s5, .L8008F6FC
    /* 7E530 8008FD20 00000000 */   nop
  .L8008FD24:
    /* 7E534 8008FD24 3600F3A6 */  sh         $s3, 0x36($s7)
    /* 7E538 8008FD28 2C00AD8F */  lw         $t5, 0x2C($sp)
    /* 7E53C 8008FD2C 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7E540 8008FD30 708C2BAC */  sw         $t3, %lo(D_800C8C70)($at)
    /* 7E544 8008FD34 00E8CD48 */  ctc2       $t5, $29 /* handwritten instruction */
    /* 7E548 8008FD38 3000B88F */  lw         $t8, 0x30($sp)
    /* 7E54C 8008FD3C 00000000 */  nop
    /* 7E550 8008FD40 00F0D848 */  ctc2       $t8, $30 /* handwritten instruction */
    /* 7E554 8008FD44 7400BF8F */  lw         $ra, 0x74($sp)
    /* 7E558 8008FD48 7000BE8F */  lw         $fp, 0x70($sp)
    /* 7E55C 8008FD4C 6C00B78F */  lw         $s7, 0x6C($sp)
    /* 7E560 8008FD50 6800B68F */  lw         $s6, 0x68($sp)
    /* 7E564 8008FD54 6400B58F */  lw         $s5, 0x64($sp)
    /* 7E568 8008FD58 6000B48F */  lw         $s4, 0x60($sp)
    /* 7E56C 8008FD5C 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 7E570 8008FD60 5800B28F */  lw         $s2, 0x58($sp)
    /* 7E574 8008FD64 5400B18F */  lw         $s1, 0x54($sp)
    /* 7E578 8008FD68 5000B08F */  lw         $s0, 0x50($sp)
    /* 7E57C 8008FD6C 0800E003 */  jr         $ra
    /* 7E580 8008FD70 7800BD27 */   addiu     $sp, $sp, 0x78
endlabel func_8008F368
