nonmatching func_8009E3C0, 0x364

glabel func_8009E3C0
    /* 8CBD0 8009E3C0 0D80083C */  lui        $t0, %hi(D_800C886C)
    /* 8CBD4 8009E3C4 6C88088D */  lw         $t0, %lo(D_800C886C)($t0)
    /* 8CBD8 8009E3C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8CBDC 8009E3CC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8CBE0 8009E3D0 2188A000 */  addu       $s1, $a1, $zero
    /* 8CBE4 8009E3D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8CBE8 8009E3D8 2180C000 */  addu       $s0, $a2, $zero
    /* 8CBEC 8009E3DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8CBF0 8009E3E0 2190E000 */  addu       $s2, $a3, $zero
    /* 8CBF4 8009E3E4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8CBF8 8009E3E8 6800038D */  lw         $v1, 0x68($t0)
    /* 8CBFC 8009E3EC 21280000 */  addu       $a1, $zero, $zero
    /* 8CC00 8009E3F0 70006484 */  lh         $a0, 0x70($v1)
    /* 8CC04 8009E3F4 7400628C */  lw         $v0, 0x74($v1)
    /* 8CC08 8009E3F8 00000000 */  nop
    /* 8CC0C 8009E3FC 09F84000 */  jalr       $v0
    /* 8CC10 8009E400 21200401 */   addu      $a0, $t0, $a0
    /* 8CC14 8009E404 5555063C */  lui        $a2, (0x55555555 >> 16)
    /* 8CC18 8009E408 5555C634 */  ori        $a2, $a2, (0x55555555 & 0xFFFF)
    /* 8CC1C 8009E40C 804E033C */  lui        $v1, (0x4E808000 >> 16)
    /* 8CC20 8009E410 00806334 */  ori        $v1, $v1, (0x4E808000 & 0xFFFF)
    /* 8CC24 8009E414 0006023C */  lui        $v0, (0x6000000 >> 16)
    /* 8CC28 8009E418 0D80043C */  lui        $a0, %hi(D_800C8C70)
    /* 8CC2C 8009E41C 708C848C */  lw         $a0, %lo(D_800C8C70)($a0)
    /* 8CC30 8009E420 FFFF2532 */  andi       $a1, $s1, 0xFFFF
    /* 8CC34 8009E424 000082AC */  sw         $v0, 0x0($a0)
    /* 8CC38 8009E428 F9FF0226 */  addiu      $v0, $s0, -0x7
    /* 8CC3C 8009E42C 005C0200 */  sll        $t3, $v0, 16
    /* 8CC40 8009E430 2548AB00 */  or         $t1, $a1, $t3
    /* 8CC44 8009E434 AE012226 */  addiu      $v0, $s1, 0x1AE
    /* 8CC48 8009E438 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 8CC4C 8009E43C 040083AC */  sw         $v1, 0x4($a0)
    /* 8CC50 8009E440 25184B00 */  or         $v1, $v0, $t3
    /* 8CC54 8009E444 05001026 */  addiu      $s0, $s0, 0x5
    /* 8CC58 8009E448 00841000 */  sll        $s0, $s0, 16
    /* 8CC5C 8009E44C 25105000 */  or         $v0, $v0, $s0
    /* 8CC60 8009E450 2550B000 */  or         $t2, $a1, $s0
    /* 8CC64 8009E454 180086AC */  sw         $a2, 0x18($a0)
    /* 8CC68 8009E458 080089AC */  sw         $t1, 0x8($a0)
    /* 8CC6C 8009E45C 0C0083AC */  sw         $v1, 0xC($a0)
    /* 8CC70 8009E460 100082AC */  sw         $v0, 0x10($a0)
    /* 8CC74 8009E464 14008AAC */  sw         $t2, 0x14($a0)
    /* 8CC78 8009E468 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8CC7C 8009E46C C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8CC80 8009E470 0D800D3C */  lui        $t5, %hi(D_800C8C70)
    /* 8CC84 8009E474 708CAD8D */  lw         $t5, %lo(D_800C8C70)($t5)
    /* 8CC88 8009E478 04004224 */  addiu      $v0, $v0, 0x4
    /* 8CC8C 8009E47C 02004588 */  lwl        $a1, 0x2($v0)
    /* 8CC90 8009E480 00220D00 */  sll        $a0, $t5, 8
    /* 8CC94 8009E484 0200A5A9 */  swl        $a1, 0x2($t5)
    /* 8CC98 8009E488 020044A8 */  swl        $a0, 0x2($v0)
    /* 8CC9C 8009E48C 00E1083C */  lui        $t0, (0xE1000220 >> 16)
    /* 8CCA0 8009E490 20020835 */  ori        $t0, $t0, (0xE1000220 & 0xFFFF)
    /* 8CCA4 8009E494 2118A001 */  addu       $v1, $t5, $zero
    /* 8CCA8 8009E498 00010C3C */  lui        $t4, (0x1000000 >> 16)
    /* 8CCAC 8009E49C 1C006CAC */  sw         $t4, 0x1C($v1)
    /* 8CCB0 8009E4A0 1C006324 */  addiu      $v1, $v1, 0x1C
    /* 8CCB4 8009E4A4 040068AC */  sw         $t0, 0x4($v1)
    /* 8CCB8 8009E4A8 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8CCBC 8009E4AC C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8CCC0 8009E4B0 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8CCC4 8009E4B4 708C23AC */  sw         $v1, %lo(D_800C8C70)($at)
    /* 8CCC8 8009E4B8 04004224 */  addiu      $v0, $v0, 0x4
    /* 8CCCC 8009E4BC 02004788 */  lwl        $a3, 0x2($v0)
    /* 8CCD0 8009E4C0 00320300 */  sll        $a2, $v1, 8
    /* 8CCD4 8009E4C4 020067A8 */  swl        $a3, 0x2($v1)
    /* 8CCD8 8009E4C8 020046A8 */  swl        $a2, 0x2($v0)
    /* 8CCDC 8009E4CC 0042043C */  lui        $a0, (0x42008000 >> 16)
    /* 8CCE0 8009E4D0 21286000 */  addu       $a1, $v1, $zero
    /* 8CCE4 8009E4D4 00808434 */  ori        $a0, $a0, (0x42008000 & 0xFFFF)
    /* 8CCE8 8009E4D8 0800A324 */  addiu      $v1, $a1, 0x8
    /* 8CCEC 8009E4DC 0003023C */  lui        $v0, (0x3000000 >> 16)
    /* 8CCF0 8009E4E0 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8CCF4 8009E4E4 708C23AC */  sw         $v1, %lo(D_800C8C70)($at)
    /* 8CCF8 8009E4E8 0800A2AC */  sw         $v0, 0x8($a1)
    /* 8CCFC 8009E4EC 040064AC */  sw         $a0, 0x4($v1)
    /* 8CD00 8009E4F0 080069AC */  sw         $t1, 0x8($v1)
    /* 8CD04 8009E4F4 0C006AAC */  sw         $t2, 0xC($v1)
    /* 8CD08 8009E4F8 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8CD0C 8009E4FC C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8CD10 8009E500 0D800D3C */  lui        $t5, %hi(D_800C8C70)
    /* 8CD14 8009E504 708CAD8D */  lw         $t5, %lo(D_800C8C70)($t5)
    /* 8CD18 8009E508 04004224 */  addiu      $v0, $v0, 0x4
    /* 8CD1C 8009E50C 02004588 */  lwl        $a1, 0x2($v0)
    /* 8CD20 8009E510 00220D00 */  sll        $a0, $t5, 8
    /* 8CD24 8009E514 0200A5A9 */  swl        $a1, 0x2($t5)
    /* 8CD28 8009E518 020044A8 */  swl        $a0, 0x2($v0)
    /* 8CD2C 8009E51C 2118A001 */  addu       $v1, $t5, $zero
    /* 8CD30 8009E520 10006CAC */  sw         $t4, 0x10($v1)
    /* 8CD34 8009E524 10006324 */  addiu      $v1, $v1, 0x10
    /* 8CD38 8009E528 040068AC */  sw         $t0, 0x4($v1)
    /* 8CD3C 8009E52C 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8CD40 8009E530 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8CD44 8009E534 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8CD48 8009E538 708C23AC */  sw         $v1, %lo(D_800C8C70)($at)
    /* 8CD4C 8009E53C 04004224 */  addiu      $v0, $v0, 0x4
    /* 8CD50 8009E540 02004588 */  lwl        $a1, 0x2($v0)
    /* 8CD54 8009E544 00220300 */  sll        $a0, $v1, 8
    /* 8CD58 8009E548 020065A8 */  swl        $a1, 0x2($v1)
    /* 8CD5C 8009E54C 020044A8 */  swl        $a0, 0x2($v0)
    /* 8CD60 8009E550 21286000 */  addu       $a1, $v1, $zero
    /* 8CD64 8009E554 0800A424 */  addiu      $a0, $a1, 0x8
    /* 8CD68 8009E558 AE01422A */  slti       $v0, $s2, 0x1AE
    /* 8CD6C 8009E55C 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8CD70 8009E560 708C24AC */  sw         $a0, %lo(D_800C8C70)($at)
    /* 8CD74 8009E564 25004010 */  beqz       $v0, .L8009E5FC
    /* 8CD78 8009E568 002A023C */   lui       $v0, (0x2A000040 >> 16)
    /* 8CD7C 8009E56C 40004234 */  ori        $v0, $v0, (0x2A000040 & 0xFFFF)
    /* 8CD80 8009E570 0005033C */  lui        $v1, (0x5000000 >> 16)
    /* 8CD84 8009E574 0800A3AC */  sw         $v1, 0x8($a1)
    /* 8CD88 8009E578 21183202 */  addu       $v1, $s1, $s2
    /* 8CD8C 8009E57C FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 8CD90 8009E580 040082AC */  sw         $v0, 0x4($a0)
    /* 8CD94 8009E584 25106B00 */  or         $v0, $v1, $t3
    /* 8CD98 8009E588 25187000 */  or         $v1, $v1, $s0
    /* 8CD9C 8009E58C 080089AC */  sw         $t1, 0x8($a0)
    /* 8CDA0 8009E590 0C0082AC */  sw         $v0, 0xC($a0)
    /* 8CDA4 8009E594 10008AAC */  sw         $t2, 0x10($a0)
    /* 8CDA8 8009E598 140083AC */  sw         $v1, 0x14($a0)
    /* 8CDAC 8009E59C 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8CDB0 8009E5A0 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8CDB4 8009E5A4 0D800D3C */  lui        $t5, %hi(D_800C8C70)
    /* 8CDB8 8009E5A8 708CAD8D */  lw         $t5, %lo(D_800C8C70)($t5)
    /* 8CDBC 8009E5AC 04004224 */  addiu      $v0, $v0, 0x4
    /* 8CDC0 8009E5B0 02004588 */  lwl        $a1, 0x2($v0)
    /* 8CDC4 8009E5B4 001A0D00 */  sll        $v1, $t5, 8
    /* 8CDC8 8009E5B8 0200A5A9 */  swl        $a1, 0x2($t5)
    /* 8CDCC 8009E5BC 020043A8 */  swl        $v1, 0x2($v0)
    /* 8CDD0 8009E5C0 2120A001 */  addu       $a0, $t5, $zero
    /* 8CDD4 8009E5C4 18008CAC */  sw         $t4, 0x18($a0)
    /* 8CDD8 8009E5C8 18008424 */  addiu      $a0, $a0, 0x18
    /* 8CDDC 8009E5CC 040088AC */  sw         $t0, 0x4($a0)
    /* 8CDE0 8009E5D0 0D80033C */  lui        $v1, %hi(D_800CBDC0)
    /* 8CDE4 8009E5D4 C0BD638C */  lw         $v1, %lo(D_800CBDC0)($v1)
    /* 8CDE8 8009E5D8 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8CDEC 8009E5DC 708C24AC */  sw         $a0, %lo(D_800C8C70)($at)
    /* 8CDF0 8009E5E0 04006324 */  addiu      $v1, $v1, 0x4
    /* 8CDF4 8009E5E4 02006688 */  lwl        $a2, 0x2($v1)
    /* 8CDF8 8009E5E8 002A0400 */  sll        $a1, $a0, 8
    /* 8CDFC 8009E5EC 020086A8 */  swl        $a2, 0x2($a0)
    /* 8CE00 8009E5F0 020065A8 */  swl        $a1, 0x2($v1)
    /* 8CE04 8009E5F4 A2790208 */  j          .L8009E688
    /* 8CE08 8009E5F8 21108000 */   addu      $v0, $a0, $zero
  .L8009E5FC:
    /* 8CE0C 8009E5FC 00204234 */  ori        $v0, $v0, (0x2A002000 & 0xFFFF)
    /* 8CE10 8009E600 0005033C */  lui        $v1, (0x5000000 >> 16)
    /* 8CE14 8009E604 0800A3AC */  sw         $v1, 0x8($a1)
    /* 8CE18 8009E608 21183202 */  addu       $v1, $s1, $s2
    /* 8CE1C 8009E60C FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 8CE20 8009E610 040082AC */  sw         $v0, 0x4($a0)
    /* 8CE24 8009E614 25106B00 */  or         $v0, $v1, $t3
    /* 8CE28 8009E618 25187000 */  or         $v1, $v1, $s0
    /* 8CE2C 8009E61C 080089AC */  sw         $t1, 0x8($a0)
    /* 8CE30 8009E620 0C0082AC */  sw         $v0, 0xC($a0)
    /* 8CE34 8009E624 10008AAC */  sw         $t2, 0x10($a0)
    /* 8CE38 8009E628 140083AC */  sw         $v1, 0x14($a0)
    /* 8CE3C 8009E62C 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8CE40 8009E630 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8CE44 8009E634 0D800D3C */  lui        $t5, %hi(D_800C8C70)
    /* 8CE48 8009E638 708CAD8D */  lw         $t5, %lo(D_800C8C70)($t5)
    /* 8CE4C 8009E63C 04004224 */  addiu      $v0, $v0, 0x4
    /* 8CE50 8009E640 02004588 */  lwl        $a1, 0x2($v0)
    /* 8CE54 8009E644 001A0D00 */  sll        $v1, $t5, 8
    /* 8CE58 8009E648 0200A5A9 */  swl        $a1, 0x2($t5)
    /* 8CE5C 8009E64C 020043A8 */  swl        $v1, 0x2($v0)
    /* 8CE60 8009E650 2120A001 */  addu       $a0, $t5, $zero
    /* 8CE64 8009E654 18008CAC */  sw         $t4, 0x18($a0)
    /* 8CE68 8009E658 18008424 */  addiu      $a0, $a0, 0x18
    /* 8CE6C 8009E65C 040088AC */  sw         $t0, 0x4($a0)
    /* 8CE70 8009E660 0D80033C */  lui        $v1, %hi(D_800CBDC0)
    /* 8CE74 8009E664 C0BD638C */  lw         $v1, %lo(D_800CBDC0)($v1)
    /* 8CE78 8009E668 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8CE7C 8009E66C 708C24AC */  sw         $a0, %lo(D_800C8C70)($at)
    /* 8CE80 8009E670 04006324 */  addiu      $v1, $v1, 0x4
    /* 8CE84 8009E674 02006688 */  lwl        $a2, 0x2($v1)
    /* 8CE88 8009E678 002A0400 */  sll        $a1, $a0, 8
    /* 8CE8C 8009E67C 020086A8 */  swl        $a2, 0x2($a0)
    /* 8CE90 8009E680 020065A8 */  swl        $a1, 0x2($v1)
    /* 8CE94 8009E684 21108000 */  addu       $v0, $a0, $zero
  .L8009E688:
    /* 8CE98 8009E688 08004224 */  addiu      $v0, $v0, 0x8
    /* 8CE9C 8009E68C 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8CEA0 8009E690 708C22AC */  sw         $v0, %lo(D_800C8C70)($at)
    /* 8CEA4 8009E694 00E1043C */  lui        $a0, (0xE1000220 >> 16)
    /* 8CEA8 8009E698 20028434 */  ori        $a0, $a0, (0xE1000220 & 0xFFFF)
    /* 8CEAC 8009E69C 0D80053C */  lui        $a1, %hi(D_800C8C70)
    /* 8CEB0 8009E6A0 708CA58C */  lw         $a1, %lo(D_800C8C70)($a1)
    /* 8CEB4 8009E6A4 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* 8CEB8 8009E6A8 0000A2AC */  sw         $v0, 0x0($a1)
    /* 8CEBC 8009E6AC 0400A4AC */  sw         $a0, 0x4($a1)
    /* 8CEC0 8009E6B0 0D80033C */  lui        $v1, %hi(D_800CBDC4)
    /* 8CEC4 8009E6B4 C4BD638C */  lw         $v1, %lo(D_800CBDC4)($v1)
    /* 8CEC8 8009E6B8 00000000 */  nop
    /* 8CECC 8009E6BC 0400638C */  lw         $v1, 0x4($v1)
    /* 8CED0 8009E6C0 01000424 */  addiu      $a0, $zero, 0x1
    /* 8CED4 8009E6C4 2A108300 */  slt        $v0, $a0, $v1
    /* 8CED8 8009E6C8 03004014 */  bnez       $v0, .L8009E6D8
    /* 8CEDC 8009E6CC 80200400 */   sll       $a0, $a0, 2
    /* 8CEE0 8009E6D0 FFFF6424 */  addiu      $a0, $v1, -0x1
    /* 8CEE4 8009E6D4 80200400 */  sll        $a0, $a0, 2
  .L8009E6D8:
    /* 8CEE8 8009E6D8 0D80033C */  lui        $v1, %hi(D_800CBDC0)
    /* 8CEEC 8009E6DC C0BD638C */  lw         $v1, %lo(D_800CBDC0)($v1)
    /* 8CEF0 8009E6E0 0D800D3C */  lui        $t5, %hi(D_800C8C70)
    /* 8CEF4 8009E6E4 708CAD8D */  lw         $t5, %lo(D_800C8C70)($t5)
    /* 8CEF8 8009E6E8 21186400 */  addu       $v1, $v1, $a0
    /* 8CEFC 8009E6EC 02006688 */  lwl        $a2, 0x2($v1)
    /* 8CF00 8009E6F0 002A0D00 */  sll        $a1, $t5, 8
    /* 8CF04 8009E6F4 0200A6A9 */  swl        $a2, 0x2($t5)
    /* 8CF08 8009E6F8 020065A8 */  swl        $a1, 0x2($v1)
    /* 8CF0C 8009E6FC 2110A001 */  addu       $v0, $t5, $zero
    /* 8CF10 8009E700 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8CF14 8009E704 1800B28F */  lw         $s2, 0x18($sp)
    /* 8CF18 8009E708 1400B18F */  lw         $s1, 0x14($sp)
    /* 8CF1C 8009E70C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8CF20 8009E710 08004224 */  addiu      $v0, $v0, 0x8
    /* 8CF24 8009E714 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8CF28 8009E718 708C22AC */  sw         $v0, %lo(D_800C8C70)($at)
    /* 8CF2C 8009E71C 0800E003 */  jr         $ra
    /* 8CF30 8009E720 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8009E3C0
