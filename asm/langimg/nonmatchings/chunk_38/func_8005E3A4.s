nonmatching func_8005E3A4, 0xAA4

glabel func_8005E3A4
    /* 4CBB4 8005E3A4 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 4CBB8 8005E3A8 A000B6AF */  sw         $s6, 0xA0($sp)
    /* 4CBBC 8005E3AC 21B08000 */  addu       $s6, $a0, $zero
    /* 4CBC0 8005E3B0 A400B7AF */  sw         $s7, 0xA4($sp)
    /* 4CBC4 8005E3B4 21B8A000 */  addu       $s7, $a1, $zero
    /* 4CBC8 8005E3B8 AC00BFAF */  sw         $ra, 0xAC($sp)
    /* 4CBCC 8005E3BC A800BEAF */  sw         $fp, 0xA8($sp)
    /* 4CBD0 8005E3C0 9C00B5AF */  sw         $s5, 0x9C($sp)
    /* 4CBD4 8005E3C4 9800B4AF */  sw         $s4, 0x98($sp)
    /* 4CBD8 8005E3C8 9400B3AF */  sw         $s3, 0x94($sp)
    /* 4CBDC 8005E3CC 9000B2AF */  sw         $s2, 0x90($sp)
    /* 4CBE0 8005E3D0 8C00B1AF */  sw         $s1, 0x8C($sp)
    /* 4CBE4 8005E3D4 8800B0AF */  sw         $s0, 0x88($sp)
    /* 4CBE8 8005E3D8 0000E28E */  lw         $v0, 0x0($s7)
    /* 4CBEC 8005E3DC 03000324 */  addiu      $v1, $zero, 0x3
    /* 4CBF0 8005E3E0 80160200 */  sll        $v0, $v0, 26
    /* 4CBF4 8005E3E4 C32E0200 */  sra        $a1, $v0, 27
    /* 4CBF8 8005E3E8 AF00A314 */  bne        $a1, $v1, .L8005E6A8
    /* 4CBFC 8005E3EC 01000424 */   addiu     $a0, $zero, 0x1
    /* 4CC00 8005E3F0 7803C28E */  lw         $v0, 0x378($s6)
    /* 4CC04 8005E3F4 00000000 */  nop
    /* 4CC08 8005E3F8 0C1E438C */  lw         $v1, 0x1E0C($v0)
    /* 4CC0C 8005E3FC FBFF0424 */  addiu      $a0, $zero, -0x5
    /* 4CC10 8005E400 24186400 */  and        $v1, $v1, $a0
    /* 4CC14 8005E404 0C1E43AC */  sw         $v1, 0x1E0C($v0)
    /* 4CC18 8005E408 7803C48E */  lw         $a0, 0x378($s6)
    /* 4CC1C 8005E40C 00000000 */  nop
    /* 4CC20 8005E410 2B1E8380 */  lb         $v1, 0x1E2B($a0)
    /* 4CC24 8005E414 00000000 */  nop
    /* 4CC28 8005E418 0C006004 */  bltz       $v1, .L8005E44C
    /* 4CC2C 8005E41C 21100000 */   addu      $v0, $zero, $zero
    /* 4CC30 8005E420 40100300 */  sll        $v0, $v1, 1
    /* 4CC34 8005E424 21104300 */  addu       $v0, $v0, $v1
    /* 4CC38 8005E428 80100200 */  sll        $v0, $v0, 2
    /* 4CC3C 8005E42C 23104300 */  subu       $v0, $v0, $v1
    /* 4CC40 8005E430 80100200 */  sll        $v0, $v0, 2
    /* 4CC44 8005E434 23104300 */  subu       $v0, $v0, $v1
    /* 4CC48 8005E438 80100200 */  sll        $v0, $v0, 2
    /* 4CC4C 8005E43C 21104300 */  addu       $v0, $v0, $v1
    /* 4CC50 8005E440 C0100200 */  sll        $v0, $v0, 3
    /* 4CC54 8005E444 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4CC58 8005E448 21108200 */  addu       $v0, $a0, $v0
  .L8005E44C:
    /* 4CC5C 8005E44C 6E02E216 */  bne        $s7, $v0, .L8005EE08
    /* 4CC60 8005E450 00000000 */   nop
    /* 4CC64 8005E454 0000828C */  lw         $v0, 0x0($a0)
    /* 4CC68 8005E458 00000000 */  nop
    /* 4CC6C 8005E45C 02014230 */  andi       $v0, $v0, 0x102
    /* 4CC70 8005E460 69024010 */  beqz       $v0, .L8005EE08
    /* 4CC74 8005E464 00000000 */   nop
    /* 4CC78 8005E468 081E828C */  lw         $v0, 0x1E08($a0)
    /* 4CC7C 8005E46C 00000000 */  nop
    /* 4CC80 8005E470 65024514 */  bne        $v0, $a1, .L8005EE08
    /* 4CC84 8005E474 00000000 */   nop
    /* 4CC88 8005E478 0D80043C */  lui        $a0, %hi(D_800CAE90)
    /* 4CC8C 8005E47C 90AE8424 */  addiu      $a0, $a0, %lo(D_800CAE90)
    /* 4CC90 8005E480 66BF010C */  jal        func_8006FD98
    /* 4CC94 8005E484 00000000 */   nop
    /* 4CC98 8005E488 82004010 */  beqz       $v0, .L8005E694
    /* 4CC9C 8005E48C 02000224 */   addiu     $v0, $zero, 0x2
    /* 4CCA0 8005E490 7803C48E */  lw         $a0, 0x378($s6)
    /* 4CCA4 8005E494 00000000 */  nop
    /* 4CCA8 8005E498 0000838C */  lw         $v1, 0x0($a0)
    /* 4CCAC 8005E49C 00000000 */  nop
    /* 4CCB0 8005E4A0 14006214 */  bne        $v1, $v0, .L8005E4F4
    /* 4CCB4 8005E4A4 00000000 */   nop
    /* 4CCB8 8005E4A8 241E8380 */  lb         $v1, 0x1E24($a0)
    /* 4CCBC 8005E4AC 00000000 */  nop
    /* 4CCC0 8005E4B0 0C006004 */  bltz       $v1, .L8005E4E4
    /* 4CCC4 8005E4B4 21100000 */   addu      $v0, $zero, $zero
    /* 4CCC8 8005E4B8 40100300 */  sll        $v0, $v1, 1
    /* 4CCCC 8005E4BC 21104300 */  addu       $v0, $v0, $v1
    /* 4CCD0 8005E4C0 80100200 */  sll        $v0, $v0, 2
    /* 4CCD4 8005E4C4 23104300 */  subu       $v0, $v0, $v1
    /* 4CCD8 8005E4C8 80100200 */  sll        $v0, $v0, 2
    /* 4CCDC 8005E4CC 23104300 */  subu       $v0, $v0, $v1
    /* 4CCE0 8005E4D0 80100200 */  sll        $v0, $v0, 2
    /* 4CCE4 8005E4D4 21104300 */  addu       $v0, $v0, $v1
    /* 4CCE8 8005E4D8 C0100200 */  sll        $v0, $v0, 3
    /* 4CCEC 8005E4DC E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4CCF0 8005E4E0 21108200 */  addu       $v0, $a0, $v0
  .L8005E4E4:
    /* 4CCF4 8005E4E4 40004280 */  lb         $v0, 0x40($v0)
    /* 4CCF8 8005E4E8 00000000 */  nop
    /* 4CCFC 8005E4EC 46024004 */  bltz       $v0, .L8005EE08
    /* 4CD00 8005E4F0 00000000 */   nop
  .L8005E4F4:
    /* 4CD04 8005E4F4 0D80043C */  lui        $a0, %hi(D_800CAE90)
    /* 4CD08 8005E4F8 90AE8424 */  addiu      $a0, $a0, %lo(D_800CAE90)
    /* 4CD0C 8005E4FC 2000A627 */  addiu      $a2, $sp, 0x20
    /* 4CD10 8005E500 0D80143C */  lui        $s4, %hi(D_800D6100)
    /* 4CD14 8005E504 0061948E */  lw         $s4, %lo(D_800D6100)($s4)
    /* 4CD18 8005E508 3000B027 */  addiu      $s0, $sp, 0x30
    /* 4CD1C 8005E50C 21380002 */  addu       $a3, $s0, $zero
    /* 4CD20 8005E510 5FC1010C */  jal        func_8007057C
    /* 4CD24 8005E514 21288002 */   addu      $a1, $s4, $zero
    /* 4CD28 8005E518 3B024010 */  beqz       $v0, .L8005EE08
    /* 4CD2C 8005E51C 3800A427 */   addiu     $a0, $sp, 0x38
    /* 4CD30 8005E520 3400A297 */  lhu        $v0, 0x34($sp)
    /* 4CD34 8005E524 00000000 */  nop
    /* 4CD38 8005E528 23100200 */  negu       $v0, $v0
    /* 4CD3C 8005E52C 3400A2A7 */  sh         $v0, 0x34($sp)
    /* 4CD40 8005E530 3000F18E */  lw         $s1, 0x30($s7)
    /* 4CD44 8005E534 DA5F020C */  jal        func_80097F68
    /* 4CD48 8005E538 21280002 */   addu      $a1, $s0, $zero
    /* 4CD4C 8005E53C 2000A627 */  addiu      $a2, $sp, 0x20
    /* 4CD50 8005E540 2000A28F */  lw         $v0, 0x20($sp)
    /* 4CD54 8005E544 0400C38C */  lw         $v1, 0x4($a2)
    /* 4CD58 8005E548 0800C48C */  lw         $a0, 0x8($a2)
    /* 4CD5C 8005E54C 5800B027 */  addiu      $s0, $sp, 0x58
    /* 4CD60 8005E550 4C00A2AF */  sw         $v0, 0x4C($sp)
    /* 4CD64 8005E554 5000A3AF */  sw         $v1, 0x50($sp)
    /* 4CD68 8005E558 5400A4AF */  sw         $a0, 0x54($sp)
    /* 4CD6C 8005E55C 3300A98B */  lwl        $t1, 0x33($sp)
    /* 4CD70 8005E560 3000A99B */  lwr        $t1, 0x30($sp)
    /* 4CD74 8005E564 3700AA8B */  lwl        $t2, 0x37($sp)
    /* 4CD78 8005E568 3400AA9B */  lwr        $t2, 0x34($sp)
    /* 4CD7C 8005E56C 730029AA */  swl        $t1, 0x73($s1)
    /* 4CD80 8005E570 700029BA */  swr        $t1, 0x70($s1)
    /* 4CD84 8005E574 77002AAA */  swl        $t2, 0x77($s1)
    /* 4CD88 8005E578 74002ABA */  swr        $t2, 0x74($s1)
    /* 4CD8C 8005E57C 3000A297 */  lhu        $v0, 0x30($sp)
    /* 4CD90 8005E580 21200002 */  addu       $a0, $s0, $zero
    /* 4CD94 8005E584 700022A6 */  sh         $v0, 0x70($s1)
    /* 4CD98 8005E588 3200A397 */  lhu        $v1, 0x32($sp)
    /* 4CD9C 8005E58C 64003226 */  addiu      $s2, $s1, 0x64
    /* 4CDA0 8005E590 720023A6 */  sh         $v1, 0x72($s1)
    /* 4CDA4 8005E594 3400A297 */  lhu        $v0, 0x34($sp)
    /* 4CDA8 8005E598 21284002 */  addu       $a1, $s2, $zero
    /* 4CDAC 8005E59C 23100200 */  negu       $v0, $v0
    /* 4CDB0 8005E5A0 740022A6 */  sh         $v0, 0x74($s1)
    /* 4CDB4 8005E5A4 2000A38F */  lw         $v1, 0x20($sp)
    /* 4CDB8 8005E5A8 0400C28C */  lw         $v0, 0x4($a2)
    /* 4CDBC 8005E5AC 0800C78C */  lw         $a3, 0x8($a2)
    /* 4CDC0 8005E5B0 78003326 */  addiu      $s3, $s1, 0x78
    /* 4CDC4 8005E5B4 640023AE */  sw         $v1, 0x64($s1)
    /* 4CDC8 8005E5B8 040042AE */  sw         $v0, 0x4($s2)
    /* 4CDCC 8005E5BC 080047AE */  sw         $a3, 0x8($s2)
    /* 4CDD0 8005E5C0 3400228E */  lw         $v0, 0x34($s1)
    /* 4CDD4 8005E5C4 3800A98F */  lw         $t1, 0x38($sp)
    /* 4CDD8 8005E5C8 3C00AA8F */  lw         $t2, 0x3C($sp)
    /* 4CDDC 8005E5CC 4000AB8F */  lw         $t3, 0x40($sp)
    /* 4CDE0 8005E5D0 4400AC8F */  lw         $t4, 0x44($sp)
    /* 4CDE4 8005E5D4 000049AC */  sw         $t1, 0x0($v0)
    /* 4CDE8 8005E5D8 04004AAC */  sw         $t2, 0x4($v0)
    /* 4CDEC 8005E5DC 08004BAC */  sw         $t3, 0x8($v0)
    /* 4CDF0 8005E5E0 0C004CAC */  sw         $t4, 0xC($v0)
    /* 4CDF4 8005E5E4 4800A98F */  lw         $t1, 0x48($sp)
    /* 4CDF8 8005E5E8 4C00AA8F */  lw         $t2, 0x4C($sp)
    /* 4CDFC 8005E5EC 5000AB8F */  lw         $t3, 0x50($sp)
    /* 4CE00 8005E5F0 5400AC8F */  lw         $t4, 0x54($sp)
    /* 4CE04 8005E5F4 100049AC */  sw         $t1, 0x10($v0)
    /* 4CE08 8005E5F8 14004AAC */  sw         $t2, 0x14($v0)
    /* 4CE0C 8005E5FC 18004BAC */  sw         $t3, 0x18($v0)
    /* 4CE10 8005E600 1C004CAC */  sw         $t4, 0x1C($v0)
    /* 4CE14 8005E604 3466020C */  jal        func_800998D0
    /* 4CE18 8005E608 21306002 */   addu      $a2, $s3, $zero
    /* 4CE1C 8005E60C 8F64020C */  jal        func_8009923C
    /* 4CE20 8005E610 21200002 */   addu      $a0, $s0, $zero
    /* 4CE24 8005E614 40190200 */  sll        $v1, $v0, 5
    /* 4CE28 8005E618 23186200 */  subu       $v1, $v1, $v0
    /* 4CE2C 8005E61C 80180300 */  sll        $v1, $v1, 2
    /* 4CE30 8005E620 21186200 */  addu       $v1, $v1, $v0
    /* 4CE34 8005E624 C0100300 */  sll        $v0, $v1, 3
    /* 4CE38 8005E628 1A005400 */  div        $zero, $v0, $s4
    /* 4CE3C 8005E62C 12180000 */  mflo       $v1
    /* 4CE40 8005E630 1001228E */  lw         $v0, 0x110($s1)
    /* 4CE44 8005E634 00000000 */  nop
    /* 4CE48 8005E638 2A104300 */  slt        $v0, $v0, $v1
    /* 4CE4C 8005E63C 05004010 */  beqz       $v0, .L8005E654
    /* 4CE50 8005E640 00000000 */   nop
    /* 4CE54 8005E644 01000224 */  addiu      $v0, $zero, 0x1
    /* 4CE58 8005E648 4A0120A2 */  sb         $zero, 0x14A($s1)
    /* 4CE5C 8005E64C 98790108 */  j          .L8005E660
    /* 4CE60 8005E650 490122A2 */   sb        $v0, 0x149($s1)
  .L8005E654:
    /* 4CE64 8005E654 01000224 */  addiu      $v0, $zero, 0x1
    /* 4CE68 8005E658 4A0122A2 */  sb         $v0, 0x14A($s1)
    /* 4CE6C 8005E65C 490120A2 */  sb         $zero, 0x149($s1)
  .L8005E660:
    /* 4CE70 8005E660 6400228E */  lw         $v0, 0x64($s1)
    /* 4CE74 8005E664 100123AE */  sw         $v1, 0x110($s1)
    /* 4CE78 8005E668 0C0123AE */  sw         $v1, 0x10C($s1)
    /* 4CE7C 8005E66C 0400448E */  lw         $a0, 0x4($s2)
    /* 4CE80 8005E670 0800458E */  lw         $a1, 0x8($s2)
    /* 4CE84 8005E674 780022AE */  sw         $v0, 0x78($s1)
    /* 4CE88 8005E678 040064AE */  sw         $a0, 0x4($s3)
    /* 4CE8C 8005E67C 080065AE */  sw         $a1, 0x8($s3)
    /* 4CE90 8005E680 7803C38E */  lw         $v1, 0x378($s6)
    /* 4CE94 8005E684 00000000 */  nop
    /* 4CE98 8005E688 0C1E628C */  lw         $v0, 0x1E0C($v1)
    /* 4CE9C 8005E68C 817B0108 */  j          .L8005EE04
    /* 4CEA0 8005E690 04004234 */   ori       $v0, $v0, 0x4
  .L8005E694:
    /* 4CEA4 8005E694 2120E002 */  addu       $a0, $s7, $zero
    /* 4CEA8 8005E698 2344010C */  jal        func_8005108C
    /* 4CEAC 8005E69C 03000524 */   addiu     $a1, $zero, 0x3
    /* 4CEB0 8005E6A0 827B0108 */  j          .L8005EE08
    /* 4CEB4 8005E6A4 00000000 */   nop
  .L8005E6A8:
    /* 4CEB8 8005E6A8 D701A414 */  bne        $a1, $a0, .L8005EE08
    /* 4CEBC 8005E6AC 05000424 */   addiu     $a0, $zero, 0x5
    /* 4CEC0 8005E6B0 7803C28E */  lw         $v0, 0x378($s6)
    /* 4CEC4 8005E6B4 00000000 */  nop
    /* 4CEC8 8005E6B8 1000438C */  lw         $v1, 0x10($v0)
    /* 4CECC 8005E6BC 00000000 */  nop
    /* 4CED0 8005E6C0 2C05658C */  lw         $a1, 0x52C($v1)
    /* 4CED4 8005E6C4 00000000 */  nop
    /* 4CED8 8005E6C8 0300A414 */  bne        $a1, $a0, .L8005E6D8
    /* 4CEDC 8005E6CC 00000000 */   nop
    /* 4CEE0 8005E6D0 2146010C */  jal        func_80051884
    /* 4CEE4 8005E6D4 2120E002 */   addu      $a0, $s7, $zero
  .L8005E6D8:
    /* 4CEE8 8005E6D8 3000F28E */  lw         $s2, 0x30($s7)
    /* 4CEEC 8005E6DC 00000000 */  nop
    /* 4CEF0 8005E6E0 C9014012 */  beqz       $s2, .L8005EE08
    /* 4CEF4 8005E6E4 2120C002 */   addu      $a0, $s6, $zero
    /* 4CEF8 8005E6E8 CC05458E */  lw         $a1, 0x5CC($s2)
    /* 4CEFC 8005E6EC 8B77010C */  jal        func_8005DE2C
    /* 4CF00 8005E6F0 2130E002 */   addu      $a2, $s7, $zero
    /* 4CF04 8005E6F4 5D94000C */  jal        func_80025174
    /* 4CF08 8005E6F8 21204002 */   addu      $a0, $s2, $zero
    /* 4CF0C 8005E6FC 2800F48E */  lw         $s4, 0x28($s7)
    /* 4CF10 8005E700 21204002 */  addu       $a0, $s2, $zero
    /* 4CF14 8005E704 05008582 */  lb         $a1, 0x5($s4)
    /* 4CF18 8005E708 09008682 */  lb         $a2, 0x9($s4)
    /* 4CF1C 8005E70C F4A0000C */  jal        func_800283D0
    /* 4CF20 8005E710 23280500 */   negu      $a1, $a1
    /* 4CF24 8005E714 3C95000C */  jal        func_800254F0
    /* 4CF28 8005E718 21204002 */   addu      $a0, $s2, $zero
    /* 4CF2C 8005E71C 04008582 */  lb         $a1, 0x4($s4)
    /* 4CF30 8005E720 08008682 */  lb         $a2, 0x8($s4)
    /* 4CF34 8005E724 E5A8000C */  jal        func_8002A394
    /* 4CF38 8005E728 21204002 */   addu      $a0, $s2, $zero
    /* 4CF3C 8005E72C FAAA000C */  jal        func_8002ABE8
    /* 4CF40 8005E730 21204002 */   addu      $a0, $s2, $zero
    /* 4CF44 8005E734 75A5000C */  jal        func_800295D4
    /* 4CF48 8005E738 21204002 */   addu      $a0, $s2, $zero
    /* 4CF4C 8005E73C E3AB000C */  jal        func_8002AF8C
    /* 4CF50 8005E740 21204002 */   addu      $a0, $s2, $zero
    /* 4CF54 8005E744 4FA6000C */  jal        func_8002993C
    /* 4CF58 8005E748 21204002 */   addu      $a0, $s2, $zero
    /* 4CF5C 8005E74C FBB9000C */  jal        func_8002E7EC
    /* 4CF60 8005E750 21204002 */   addu      $a0, $s2, $zero
    /* 4CF64 8005E754 98A8000C */  jal        func_8002A260
    /* 4CF68 8005E758 21204002 */   addu      $a0, $s2, $zero
    /* 4CF6C 8005E75C D998000C */  jal        func_80026364
    /* 4CF70 8005E760 21204002 */   addu      $a0, $s2, $zero
    /* 4CF74 8005E764 F0BA000C */  jal        func_8002EBC0
    /* 4CF78 8005E768 21204002 */   addu      $a0, $s2, $zero
    /* 4CF7C 8005E76C FCA8000C */  jal        func_8002A3F0
    /* 4CF80 8005E770 21204002 */   addu      $a0, $s2, $zero
    /* 4CF84 8005E774 21204002 */  addu       $a0, $s2, $zero
    /* 4CF88 8005E778 07009E82 */  lb         $fp, 0x7($s4)
    /* 4CF8C 8005E77C 0A008682 */  lb         $a2, 0xA($s4)
    /* 4CF90 8005E780 E8A9000C */  jal        func_8002A7A0
    /* 4CF94 8005E784 2128C003 */   addu      $a1, $fp, $zero
    /* 4CF98 8005E788 CABC000C */  jal        func_8002F328
    /* 4CF9C 8005E78C 21204002 */   addu      $a0, $s2, $zero
    /* 4CFA0 8005E790 2000A427 */  addiu      $a0, $sp, 0x20
    /* 4CFA4 8005E794 3402498E */  lw         $t1, 0x234($s2)
    /* 4CFA8 8005E798 38024A8E */  lw         $t2, 0x238($s2)
    /* 4CFAC 8005E79C 3C024B8E */  lw         $t3, 0x23C($s2)
    /* 4CFB0 8005E7A0 2000A9AF */  sw         $t1, 0x20($sp)
    /* 4CFB4 8005E7A4 2400AAAF */  sw         $t2, 0x24($sp)
    /* 4CFB8 8005E7A8 2800ABAF */  sw         $t3, 0x28($sp)
    /* 4CFBC 8005E7AC 5267020C */  jal        func_80099D48
    /* 4CFC0 8005E7B0 05000524 */   addiu     $a1, $zero, 0x5
    /* 4CFC4 8005E7B4 3000A427 */  addiu      $a0, $sp, 0x30
    /* 4CFC8 8005E7B8 4002498E */  lw         $t1, 0x240($s2)
    /* 4CFCC 8005E7BC 44024A8E */  lw         $t2, 0x244($s2)
    /* 4CFD0 8005E7C0 48024B8E */  lw         $t3, 0x248($s2)
    /* 4CFD4 8005E7C4 3000A9AF */  sw         $t1, 0x30($sp)
    /* 4CFD8 8005E7C8 3400AAAF */  sw         $t2, 0x34($sp)
    /* 4CFDC 8005E7CC 3800ABAF */  sw         $t3, 0x38($sp)
    /* 4CFE0 8005E7D0 5267020C */  jal        func_80099D48
    /* 4CFE4 8005E7D4 05000524 */   addiu     $a1, $zero, 0x5
    /* 4CFE8 8005E7D8 2120C002 */  addu       $a0, $s6, $zero
    /* 4CFEC 8005E7DC 927B010C */  jal        func_8005EE48
    /* 4CFF0 8005E7E0 2128E002 */   addu      $a1, $s7, $zero
    /* 4CFF4 8005E7E4 61004382 */  lb         $v1, 0x61($s2)
    /* 4CFF8 8005E7E8 00000000 */  nop
    /* 4CFFC 8005E7EC 09006010 */  beqz       $v1, .L8005E814
    /* 4D000 8005E7F0 00000000 */   nop
    /* 4D004 8005E7F4 07004010 */  beqz       $v0, .L8005E814
    /* 4D008 8005E7F8 00000000 */   nop
    /* 4D00C 8005E7FC 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* 4D010 8005E800 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* 4D014 8005E804 00000000 */  nop
    /* 4D018 8005E808 6C0C458C */  lw         $a1, 0xC6C($v0)
    /* 4D01C 8005E80C 2F8D010C */  jal        func_800634BC
    /* 4D020 8005E810 21204002 */   addu      $a0, $s2, $zero
  .L8005E814:
    /* 4D024 8005E814 2C02448E */  lw         $a0, 0x22C($s2)
    /* 4D028 8005E818 D46C000C */  jal        func_8001B350
    /* 4D02C 8005E81C 2000A527 */   addiu     $a1, $sp, 0x20
    /* 4D030 8005E820 21204000 */  addu       $a0, $v0, $zero
    /* 4D034 8005E824 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 4D038 8005E828 31008310 */  beq        $a0, $v1, .L8005E8F0
    /* 4D03C 8005E82C 00000000 */   nop
    /* 4D040 8005E830 61004282 */  lb         $v0, 0x61($s2)
    /* 4D044 8005E834 00000000 */  nop
    /* 4D048 8005E838 19004010 */  beqz       $v0, .L8005E8A0
    /* 4D04C 8005E83C 2000A227 */   addiu     $v0, $sp, 0x20
    /* 4D050 8005E840 18008004 */  bltz       $a0, .L8005E8A4
    /* 4D054 8005E844 34024326 */   addiu     $v1, $s2, 0x234
    /* 4D058 8005E848 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* 4D05C 8005E84C 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* 4D060 8005E850 00000000 */  nop
    /* 4D064 8005E854 6C0C458C */  lw         $a1, 0xC6C($v0)
    /* 4D068 8005E858 2F8D010C */  jal        func_800634BC
    /* 4D06C 8005E85C 21204002 */   addu      $a0, $s2, $zero
    /* 4D070 8005E860 2000B027 */  addiu      $s0, $sp, 0x20
    /* 4D074 8005E864 21200002 */  addu       $a0, $s0, $zero
    /* 4D078 8005E868 34024226 */  addiu      $v0, $s2, 0x234
    /* 4D07C 8005E86C 3402438E */  lw         $v1, 0x234($s2)
    /* 4D080 8005E870 0400468C */  lw         $a2, 0x4($v0)
    /* 4D084 8005E874 0800478C */  lw         $a3, 0x8($v0)
    /* 4D088 8005E878 05000524 */  addiu      $a1, $zero, 0x5
    /* 4D08C 8005E87C 2000A3AF */  sw         $v1, 0x20($sp)
    /* 4D090 8005E880 040006AE */  sw         $a2, 0x4($s0)
    /* 4D094 8005E884 5267020C */  jal        func_80099D48
    /* 4D098 8005E888 080007AE */   sw        $a3, 0x8($s0)
    /* 4D09C 8005E88C 2C02448E */  lw         $a0, 0x22C($s2)
    /* 4D0A0 8005E890 D46C000C */  jal        func_8001B350
    /* 4D0A4 8005E894 21280002 */   addu      $a1, $s0, $zero
    /* 4D0A8 8005E898 3C7A0108 */  j          .L8005E8F0
    /* 4D0AC 8005E89C 00000000 */   nop
  .L8005E8A0:
    /* 4D0B0 8005E8A0 34024326 */  addiu      $v1, $s2, 0x234
  .L8005E8A4:
    /* 4D0B4 8005E8A4 3402458E */  lw         $a1, 0x234($s2)
    /* 4D0B8 8005E8A8 0400678C */  lw         $a3, 0x4($v1)
    /* 4D0BC 8005E8AC 0800688C */  lw         $t0, 0x8($v1)
    /* 4D0C0 8005E8B0 21204000 */  addu       $a0, $v0, $zero
    /* 4D0C4 8005E8B4 2000A5AF */  sw         $a1, 0x20($sp)
    /* 4D0C8 8005E8B8 040047AC */  sw         $a3, 0x4($v0)
    /* 4D0CC 8005E8BC 080048AC */  sw         $t0, 0x8($v0)
    /* 4D0D0 8005E8C0 4C02468E */  lw         $a2, 0x24C($s2)
    /* 4D0D4 8005E8C4 05000524 */  addiu      $a1, $zero, 0x5
    /* 4D0D8 8005E8C8 5267020C */  jal        func_80099D48
    /* 4D0DC 8005E8CC 2400A6AF */   sw        $a2, 0x24($sp)
    /* 4D0E0 8005E8D0 2400A38F */  lw         $v1, 0x24($sp)
    /* 4D0E4 8005E8D4 00000000 */  nop
    /* 4D0E8 8005E8D8 02006104 */  bgez       $v1, .L8005E8E4
    /* 4D0EC 8005E8DC 0004023C */   lui       $v0, (0x4000000 >> 16)
    /* 4D0F0 8005E8E0 2400A0AF */  sw         $zero, 0x24($sp)
  .L8005E8E4:
    /* 4D0F4 8005E8E4 4000A0AF */  sw         $zero, 0x40($sp)
    /* 4D0F8 8005E8E8 4400A2AF */  sw         $v0, 0x44($sp)
    /* 4D0FC 8005E8EC 4800A0AF */  sw         $zero, 0x48($sp)
  .L8005E8F0:
    /* 4D100 8005E8F0 28054282 */  lb         $v0, 0x528($s2)
    /* 4D104 8005E8F4 00000000 */  nop
    /* 4D108 8005E8F8 08004010 */  beqz       $v0, .L8005E91C
    /* 4D10C 8005E8FC 4000A727 */   addiu     $a3, $sp, 0x40
    /* 4D110 8005E900 2C02428E */  lw         $v0, 0x22C($s2)
    /* 4D114 8005E904 2000A527 */  addiu      $a1, $sp, 0x20
    /* 4D118 8005E908 0000448C */  lw         $a0, 0x0($v0)
    /* 4D11C 8005E90C FD6B000C */  jal        func_8001AFF4
    /* 4D120 8005E910 2130E000 */   addu      $a2, $a3, $zero
    /* 4D124 8005E914 4C7A0108 */  j          .L8005E930
    /* 4D128 8005E918 2400A2AF */   sw        $v0, 0x24($sp)
  .L8005E91C:
    /* 4D12C 8005E91C 2C02428E */  lw         $v0, 0x22C($s2)
    /* 4D130 8005E920 2000A527 */  addiu      $a1, $sp, 0x20
    /* 4D134 8005E924 0000448C */  lw         $a0, 0x0($v0)
    /* 4D138 8005E928 576C000C */  jal        func_8001B15C
    /* 4D13C 8005E92C 2130A000 */   addu      $a2, $a1, $zero
  .L8005E930:
    /* 4D140 8005E930 2C02428E */  lw         $v0, 0x22C($s2)
    /* 4D144 8005E934 00000000 */  nop
    /* 4D148 8005E938 0000448C */  lw         $a0, 0x0($v0)
    /* 4D14C 8005E93C 00000000 */  nop
    /* 4D150 8005E940 04008380 */  lb         $v1, 0x4($a0)
    /* 4D154 8005E944 640CC58E */  lw         $a1, 0xC64($s6)
    /* 4D158 8005E948 07006330 */  andi       $v1, $v1, 0x7
    /* 4D15C 8005E94C 2118A300 */  addu       $v1, $a1, $v1
    /* 4D160 8005E950 20006290 */  lbu        $v0, 0x20($v1)
    /* 4D164 8005E954 00000000 */  nop
    /* 4D168 8005E958 07004230 */  andi       $v0, $v0, 0x7
    /* 4D16C 8005E95C 80100200 */  sll        $v0, $v0, 2
    /* 4D170 8005E960 2128A200 */  addu       $a1, $a1, $v0
    /* 4D174 8005E964 0000A58C */  lw         $a1, 0x0($a1)
    /* 4D178 8005E968 00000000 */  nop
    /* 4D17C 8005E96C 0300A014 */  bnez       $a1, .L8005E97C
    /* 4D180 8005E970 2000A327 */   addiu     $v1, $sp, 0x20
    /* 4D184 8005E974 6B7A0108 */  j          .L8005E9AC
    /* 4D188 8005E978 21200000 */   addu      $a0, $zero, $zero
  .L8005E97C:
    /* 4D18C 8005E97C 2000A28F */  lw         $v0, 0x20($sp)
    /* 4D190 8005E980 0800638C */  lw         $v1, 0x8($v1)
    /* 4D194 8005E984 43120200 */  sra        $v0, $v0, 9
    /* 4D198 8005E988 3F004230 */  andi       $v0, $v0, 0x3F
    /* 4D19C 8005E98C C3180300 */  sra        $v1, $v1, 3
    /* 4D1A0 8005E990 C00F6330 */  andi       $v1, $v1, 0xFC0
    /* 4D1A4 8005E994 21186200 */  addu       $v1, $v1, $v0
    /* 4D1A8 8005E998 2118A300 */  addu       $v1, $a1, $v1
    /* 4D1AC 8005E99C 00006490 */  lbu        $a0, 0x0($v1)
    /* 4D1B0 8005E9A0 00000000 */  nop
    /* 4D1B4 8005E9A4 80FF8424 */  addiu      $a0, $a0, -0x80
    /* 4D1B8 8005E9A8 80200400 */  sll        $a0, $a0, 2
  .L8005E9AC:
    /* 4D1BC 8005E9AC 2400A28F */  lw         $v0, 0x24($sp)
    /* 4D1C0 8005E9B0 3000B127 */  addiu      $s1, $sp, 0x30
    /* 4D1C4 8005E9B4 21104400 */  addu       $v0, $v0, $a0
    /* 4D1C8 8005E9B8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 4D1CC 8005E9BC 3002448E */  lw         $a0, 0x230($s2)
    /* 4D1D0 8005E9C0 D46C000C */  jal        func_8001B350
    /* 4D1D4 8005E9C4 21282002 */   addu      $a1, $s1, $zero
    /* 4D1D8 8005E9C8 21204000 */  addu       $a0, $v0, $zero
    /* 4D1DC 8005E9CC FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 4D1E0 8005E9D0 3D008310 */  beq        $a0, $v1, .L8005EAC8
    /* 4D1E4 8005E9D4 00000000 */   nop
    /* 4D1E8 8005E9D8 61004282 */  lb         $v0, 0x61($s2)
    /* 4D1EC 8005E9DC 00000000 */  nop
    /* 4D1F0 8005E9E0 26004010 */  beqz       $v0, .L8005EA7C
    /* 4D1F4 8005E9E4 40024226 */   addiu     $v0, $s2, 0x240
    /* 4D1F8 8005E9E8 24008004 */  bltz       $a0, .L8005EA7C
    /* 4D1FC 8005E9EC 00000000 */   nop
    /* 4D200 8005E9F0 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* 4D204 8005E9F4 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* 4D208 8005E9F8 00000000 */  nop
    /* 4D20C 8005E9FC 6C0C458C */  lw         $a1, 0xC6C($v0)
    /* 4D210 8005EA00 2F8D010C */  jal        func_800634BC
    /* 4D214 8005EA04 21204002 */   addu      $a0, $s2, $zero
    /* 4D218 8005EA08 2000B027 */  addiu      $s0, $sp, 0x20
    /* 4D21C 8005EA0C 21200002 */  addu       $a0, $s0, $zero
    /* 4D220 8005EA10 34024226 */  addiu      $v0, $s2, 0x234
    /* 4D224 8005EA14 3402438E */  lw         $v1, 0x234($s2)
    /* 4D228 8005EA18 0400468C */  lw         $a2, 0x4($v0)
    /* 4D22C 8005EA1C 0800478C */  lw         $a3, 0x8($v0)
    /* 4D230 8005EA20 05000524 */  addiu      $a1, $zero, 0x5
    /* 4D234 8005EA24 2000A3AF */  sw         $v1, 0x20($sp)
    /* 4D238 8005EA28 040006AE */  sw         $a2, 0x4($s0)
    /* 4D23C 8005EA2C 5267020C */  jal        func_80099D48
    /* 4D240 8005EA30 080007AE */   sw        $a3, 0x8($s0)
    /* 4D244 8005EA34 21202002 */  addu       $a0, $s1, $zero
    /* 4D248 8005EA38 40024226 */  addiu      $v0, $s2, 0x240
    /* 4D24C 8005EA3C 4002438E */  lw         $v1, 0x240($s2)
    /* 4D250 8005EA40 0400468C */  lw         $a2, 0x4($v0)
    /* 4D254 8005EA44 0800478C */  lw         $a3, 0x8($v0)
    /* 4D258 8005EA48 05000524 */  addiu      $a1, $zero, 0x5
    /* 4D25C 8005EA4C 3000A3AF */  sw         $v1, 0x30($sp)
    /* 4D260 8005EA50 3400A6AF */  sw         $a2, 0x34($sp)
    /* 4D264 8005EA54 5267020C */  jal        func_80099D48
    /* 4D268 8005EA58 3800A7AF */   sw        $a3, 0x38($sp)
    /* 4D26C 8005EA5C 2C02448E */  lw         $a0, 0x22C($s2)
    /* 4D270 8005EA60 D46C000C */  jal        func_8001B350
    /* 4D274 8005EA64 21280002 */   addu      $a1, $s0, $zero
    /* 4D278 8005EA68 3002448E */  lw         $a0, 0x230($s2)
    /* 4D27C 8005EA6C D46C000C */  jal        func_8001B350
    /* 4D280 8005EA70 21282002 */   addu      $a1, $s1, $zero
    /* 4D284 8005EA74 B27A0108 */  j          .L8005EAC8
    /* 4D288 8005EA78 00000000 */   nop
  .L8005EA7C:
    /* 4D28C 8005EA7C 4002438E */  lw         $v1, 0x240($s2)
    /* 4D290 8005EA80 0400458C */  lw         $a1, 0x4($v0)
    /* 4D294 8005EA84 0800478C */  lw         $a3, 0x8($v0)
    /* 4D298 8005EA88 3000A427 */  addiu      $a0, $sp, 0x30
    /* 4D29C 8005EA8C 3000A3AF */  sw         $v1, 0x30($sp)
    /* 4D2A0 8005EA90 3400A5AF */  sw         $a1, 0x34($sp)
    /* 4D2A4 8005EA94 3800A7AF */  sw         $a3, 0x38($sp)
    /* 4D2A8 8005EA98 5002468E */  lw         $a2, 0x250($s2)
    /* 4D2AC 8005EA9C 05000524 */  addiu      $a1, $zero, 0x5
    /* 4D2B0 8005EAA0 5267020C */  jal        func_80099D48
    /* 4D2B4 8005EAA4 3400A6AF */   sw        $a2, 0x34($sp)
    /* 4D2B8 8005EAA8 3400A38F */  lw         $v1, 0x34($sp)
    /* 4D2BC 8005EAAC 00000000 */  nop
    /* 4D2C0 8005EAB0 02006104 */  bgez       $v1, .L8005EABC
    /* 4D2C4 8005EAB4 0004023C */   lui       $v0, (0x4000000 >> 16)
    /* 4D2C8 8005EAB8 3400A0AF */  sw         $zero, 0x34($sp)
  .L8005EABC:
    /* 4D2CC 8005EABC 5000A0AF */  sw         $zero, 0x50($sp)
    /* 4D2D0 8005EAC0 5400A2AF */  sw         $v0, 0x54($sp)
    /* 4D2D4 8005EAC4 5800A0AF */  sw         $zero, 0x58($sp)
  .L8005EAC8:
    /* 4D2D8 8005EAC8 28054282 */  lb         $v0, 0x528($s2)
    /* 4D2DC 8005EACC 00000000 */  nop
    /* 4D2E0 8005EAD0 08004010 */  beqz       $v0, .L8005EAF4
    /* 4D2E4 8005EAD4 5000A727 */   addiu     $a3, $sp, 0x50
    /* 4D2E8 8005EAD8 3002428E */  lw         $v0, 0x230($s2)
    /* 4D2EC 8005EADC 3000A527 */  addiu      $a1, $sp, 0x30
    /* 4D2F0 8005EAE0 0000448C */  lw         $a0, 0x0($v0)
    /* 4D2F4 8005EAE4 FD6B000C */  jal        func_8001AFF4
    /* 4D2F8 8005EAE8 2130E000 */   addu      $a2, $a3, $zero
    /* 4D2FC 8005EAEC C27A0108 */  j          .L8005EB08
    /* 4D300 8005EAF0 3400A2AF */   sw        $v0, 0x34($sp)
  .L8005EAF4:
    /* 4D304 8005EAF4 3002428E */  lw         $v0, 0x230($s2)
    /* 4D308 8005EAF8 3000A527 */  addiu      $a1, $sp, 0x30
    /* 4D30C 8005EAFC 0000448C */  lw         $a0, 0x0($v0)
    /* 4D310 8005EB00 576C000C */  jal        func_8001B15C
    /* 4D314 8005EB04 2130A000 */   addu      $a2, $a1, $zero
  .L8005EB08:
    /* 4D318 8005EB08 3002428E */  lw         $v0, 0x230($s2)
    /* 4D31C 8005EB0C 00000000 */  nop
    /* 4D320 8005EB10 0000448C */  lw         $a0, 0x0($v0)
    /* 4D324 8005EB14 00000000 */  nop
    /* 4D328 8005EB18 04008380 */  lb         $v1, 0x4($a0)
    /* 4D32C 8005EB1C 640CC58E */  lw         $a1, 0xC64($s6)
    /* 4D330 8005EB20 07006330 */  andi       $v1, $v1, 0x7
    /* 4D334 8005EB24 2118A300 */  addu       $v1, $a1, $v1
    /* 4D338 8005EB28 20006290 */  lbu        $v0, 0x20($v1)
    /* 4D33C 8005EB2C 00000000 */  nop
    /* 4D340 8005EB30 07004230 */  andi       $v0, $v0, 0x7
    /* 4D344 8005EB34 80100200 */  sll        $v0, $v0, 2
    /* 4D348 8005EB38 2128A200 */  addu       $a1, $a1, $v0
    /* 4D34C 8005EB3C 0000A58C */  lw         $a1, 0x0($a1)
    /* 4D350 8005EB40 00000000 */  nop
    /* 4D354 8005EB44 0D00A010 */  beqz       $a1, .L8005EB7C
    /* 4D358 8005EB48 21200000 */   addu      $a0, $zero, $zero
    /* 4D35C 8005EB4C 3000A28F */  lw         $v0, 0x30($sp)
    /* 4D360 8005EB50 3800A38F */  lw         $v1, 0x38($sp)
    /* 4D364 8005EB54 43120200 */  sra        $v0, $v0, 9
    /* 4D368 8005EB58 3F004230 */  andi       $v0, $v0, 0x3F
    /* 4D36C 8005EB5C C3180300 */  sra        $v1, $v1, 3
    /* 4D370 8005EB60 C00F6330 */  andi       $v1, $v1, 0xFC0
    /* 4D374 8005EB64 21186200 */  addu       $v1, $v1, $v0
    /* 4D378 8005EB68 2118A300 */  addu       $v1, $a1, $v1
    /* 4D37C 8005EB6C 00006490 */  lbu        $a0, 0x0($v1)
    /* 4D380 8005EB70 00000000 */  nop
    /* 4D384 8005EB74 80FF8424 */  addiu      $a0, $a0, -0x80
    /* 4D388 8005EB78 80200400 */  sll        $a0, $a0, 2
  .L8005EB7C:
    /* 4D38C 8005EB7C 3400A28F */  lw         $v0, 0x34($sp)
    /* 4D390 8005EB80 6800B527 */  addiu      $s5, $sp, 0x68
    /* 4D394 8005EB84 21104400 */  addu       $v0, $v0, $a0
    /* 4D398 8005EB88 3400A2AF */  sw         $v0, 0x34($sp)
    /* 4D39C 8005EB8C 6400498E */  lw         $t1, 0x64($s2)
    /* 4D3A0 8005EB90 68004A8E */  lw         $t2, 0x68($s2)
    /* 4D3A4 8005EB94 6C004B8E */  lw         $t3, 0x6C($s2)
    /* 4D3A8 8005EB98 6800A9AF */  sw         $t1, 0x68($sp)
    /* 4D3AC 8005EB9C 6C00AAAF */  sw         $t2, 0x6C($sp)
    /* 4D3B0 8005EBA0 7000ABAF */  sw         $t3, 0x70($sp)
    /* 4D3B4 8005EBA4 2002448E */  lw         $a0, 0x220($s2)
    /* 4D3B8 8005EBA8 D46C000C */  jal        func_8001B350
    /* 4D3BC 8005EBAC 2128A002 */   addu      $a1, $s5, $zero
    /* 4D3C0 8005EBB0 21204000 */  addu       $a0, $v0, $zero
    /* 4D3C4 8005EBB4 61004382 */  lb         $v1, 0x61($s2)
    /* 4D3C8 8005EBB8 00000000 */  nop
    /* 4D3CC 8005EBBC 2E006010 */  beqz       $v1, .L8005EC78
    /* 4D3D0 8005EBC0 64005326 */   addiu     $s3, $s2, 0x64
    /* 4D3D4 8005EBC4 2C008004 */  bltz       $a0, .L8005EC78
    /* 4D3D8 8005EBC8 00000000 */   nop
    /* 4D3DC 8005EBCC 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* 4D3E0 8005EBD0 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* 4D3E4 8005EBD4 00000000 */  nop
    /* 4D3E8 8005EBD8 6C0C458C */  lw         $a1, 0xC6C($v0)
    /* 4D3EC 8005EBDC 2F8D010C */  jal        func_800634BC
    /* 4D3F0 8005EBE0 21204002 */   addu      $a0, $s2, $zero
    /* 4D3F4 8005EBE4 2000B027 */  addiu      $s0, $sp, 0x20
    /* 4D3F8 8005EBE8 21200002 */  addu       $a0, $s0, $zero
    /* 4D3FC 8005EBEC 34024226 */  addiu      $v0, $s2, 0x234
    /* 4D400 8005EBF0 3402438E */  lw         $v1, 0x234($s2)
    /* 4D404 8005EBF4 0400468C */  lw         $a2, 0x4($v0)
    /* 4D408 8005EBF8 0800478C */  lw         $a3, 0x8($v0)
    /* 4D40C 8005EBFC 05000524 */  addiu      $a1, $zero, 0x5
    /* 4D410 8005EC00 2000A3AF */  sw         $v1, 0x20($sp)
    /* 4D414 8005EC04 040006AE */  sw         $a2, 0x4($s0)
    /* 4D418 8005EC08 5267020C */  jal        func_80099D48
    /* 4D41C 8005EC0C 080007AE */   sw        $a3, 0x8($s0)
    /* 4D420 8005EC10 3000B127 */  addiu      $s1, $sp, 0x30
    /* 4D424 8005EC14 21202002 */  addu       $a0, $s1, $zero
    /* 4D428 8005EC18 40024226 */  addiu      $v0, $s2, 0x240
    /* 4D42C 8005EC1C 4002438E */  lw         $v1, 0x240($s2)
    /* 4D430 8005EC20 0400468C */  lw         $a2, 0x4($v0)
    /* 4D434 8005EC24 0800478C */  lw         $a3, 0x8($v0)
    /* 4D438 8005EC28 05000524 */  addiu      $a1, $zero, 0x5
    /* 4D43C 8005EC2C 3000A3AF */  sw         $v1, 0x30($sp)
    /* 4D440 8005EC30 3400A6AF */  sw         $a2, 0x34($sp)
    /* 4D444 8005EC34 5267020C */  jal        func_80099D48
    /* 4D448 8005EC38 3800A7AF */   sw        $a3, 0x38($sp)
    /* 4D44C 8005EC3C 2C02448E */  lw         $a0, 0x22C($s2)
    /* 4D450 8005EC40 D46C000C */  jal        func_8001B350
    /* 4D454 8005EC44 21280002 */   addu      $a1, $s0, $zero
    /* 4D458 8005EC48 3002448E */  lw         $a0, 0x230($s2)
    /* 4D45C 8005EC4C D46C000C */  jal        func_8001B350
    /* 4D460 8005EC50 21282002 */   addu      $a1, $s1, $zero
    /* 4D464 8005EC54 6400438E */  lw         $v1, 0x64($s2)
    /* 4D468 8005EC58 0400628E */  lw         $v0, 0x4($s3)
    /* 4D46C 8005EC5C 0800658E */  lw         $a1, 0x8($s3)
    /* 4D470 8005EC60 6800A3AF */  sw         $v1, 0x68($sp)
    /* 4D474 8005EC64 6C00A2AF */  sw         $v0, 0x6C($sp)
    /* 4D478 8005EC68 7000A5AF */  sw         $a1, 0x70($sp)
    /* 4D47C 8005EC6C 2002448E */  lw         $a0, 0x220($s2)
    /* 4D480 8005EC70 D46C000C */  jal        func_8001B350
    /* 4D484 8005EC74 2128A002 */   addu      $a1, $s5, $zero
  .L8005EC78:
    /* 4D488 8005EC78 21204002 */  addu       $a0, $s2, $zero
    /* 4D48C 8005EC7C 2000A527 */  addiu      $a1, $sp, 0x20
    /* 4D490 8005EC80 4000A627 */  addiu      $a2, $sp, 0x40
    /* 4D494 8005EC84 3000A727 */  addiu      $a3, $sp, 0x30
    /* 4D498 8005EC88 5000A227 */  addiu      $v0, $sp, 0x50
    /* 4D49C 8005EC8C 610040A2 */  sb         $zero, 0x61($s2)
    /* 4D4A0 8005EC90 47AE000C */  jal        func_8002B91C
    /* 4D4A4 8005EC94 1000A2AF */   sw        $v0, 0x10($sp)
    /* 4D4A8 8005EC98 39BD000C */  jal        func_8002F4E4
    /* 4D4AC 8005EC9C 21204002 */   addu      $a0, $s2, $zero
    /* 4D4B0 8005ECA0 CDBF000C */  jal        func_8002FF34
    /* 4D4B4 8005ECA4 21204002 */   addu      $a0, $s2, $zero
    /* 4D4B8 8005ECA8 CFBF000C */  jal        func_8002FF3C
    /* 4D4BC 8005ECAC 21204002 */   addu      $a0, $s2, $zero
    /* 4D4C0 8005ECB0 21204002 */  addu       $a0, $s2, $zero
    /* 4D4C4 8005ECB4 0A008682 */  lb         $a2, 0xA($s4)
    /* 4D4C8 8005ECB8 1CB6000C */  jal        func_8002D870
    /* 4D4CC 8005ECBC 2128C003 */   addu      $a1, $fp, $zero
    /* 4D4D0 8005ECC0 C7C0000C */  jal        func_8003031C
    /* 4D4D4 8005ECC4 21204002 */   addu      $a0, $s2, $zero
    /* 4D4D8 8005ECC8 16C1000C */  jal        func_80030458
    /* 4D4DC 8005ECCC 21204002 */   addu      $a0, $s2, $zero
    /* 4D4E0 8005ECD0 859D000C */  jal        func_80027614
    /* 4D4E4 8005ECD4 21204002 */   addu      $a0, $s2, $zero
    /* 4D4E8 8005ECD8 21204002 */  addu       $a0, $s2, $zero
    /* 4D4EC 8005ECDC 2128E002 */  addu       $a1, $s7, $zero
    /* 4D4F0 8005ECE0 91C1000C */  jal        func_80030644
    /* 4D4F4 8005ECE4 01000624 */   addiu     $a2, $zero, 0x1
    /* 4D4F8 8005ECE8 FF94000C */  jal        func_800253FC
    /* 4D4FC 8005ECEC 21204002 */   addu      $a0, $s2, $zero
    /* 4D500 8005ECF0 7803C58E */  lw         $a1, 0x378($s6)
    /* 4D504 8005ECF4 00000000 */  nop
    /* 4D508 8005ECF8 0C1EA28C */  lw         $v0, 0x1E0C($a1)
    /* 4D50C 8005ECFC FEFF0324 */  addiu      $v1, $zero, -0x2
    /* 4D510 8005ED00 24104300 */  and        $v0, $v0, $v1
    /* 4D514 8005ED04 0C1EA2AC */  sw         $v0, 0x1E0C($a1)
    /* 4D518 8005ED08 7803C48E */  lw         $a0, 0x378($s6)
    /* 4D51C 8005ED0C 00000000 */  nop
    /* 4D520 8005ED10 081E838C */  lw         $v1, 0x1E08($a0)
    /* 4D524 8005ED14 03000224 */  addiu      $v0, $zero, 0x3
    /* 4D528 8005ED18 08006210 */  beq        $v1, $v0, .L8005ED3C
    /* 4D52C 8005ED1C FBFF6224 */   addiu     $v0, $v1, -0x5
    /* 4D530 8005ED20 0400422C */  sltiu      $v0, $v0, 0x4
    /* 4D534 8005ED24 38004010 */  beqz       $v0, .L8005EE08
    /* 4D538 8005ED28 00000000 */   nop
    /* 4D53C 8005ED2C 1001428E */  lw         $v0, 0x110($s2)
    /* 4D540 8005ED30 00000000 */  nop
    /* 4D544 8005ED34 34004018 */  blez       $v0, .L8005EE08
    /* 4D548 8005ED38 00000000 */   nop
  .L8005ED3C:
    /* 4D54C 8005ED3C 0000838C */  lw         $v1, 0x0($a0)
    /* 4D550 8005ED40 00000000 */  nop
    /* 4D554 8005ED44 00016230 */  andi       $v0, $v1, 0x100
    /* 4D558 8005ED48 07004014 */  bnez       $v0, .L8005ED68
    /* 4D55C 8005ED4C 02000224 */   addiu     $v0, $zero, 0x2
    /* 4D560 8005ED50 2D006214 */  bne        $v1, $v0, .L8005EE08
    /* 4D564 8005ED54 00000000 */   nop
    /* 4D568 8005ED58 4000E282 */  lb         $v0, 0x40($s7)
    /* 4D56C 8005ED5C 00000000 */  nop
    /* 4D570 8005ED60 29004004 */  bltz       $v0, .L8005EE08
    /* 4D574 8005ED64 00000000 */   nop
  .L8005ED68:
    /* 4D578 8005ED68 0D80043C */  lui        $a0, %hi(D_800CB0A0)
    /* 4D57C 8005ED6C A0B08424 */  addiu      $a0, $a0, %lo(D_800CB0A0)
    /* 4D580 8005ED70 5EBF010C */  jal        func_8006FD78
    /* 4D584 8005ED74 00000000 */   nop
    /* 4D588 8005ED78 1D004014 */  bnez       $v0, .L8005EDF0
    /* 4D58C 8005ED7C 00000000 */   nop
    /* 4D590 8005ED80 6400498E */  lw         $t1, 0x64($s2)
    /* 4D594 8005ED84 68004A8E */  lw         $t2, 0x68($s2)
    /* 4D598 8005ED88 6C004B8E */  lw         $t3, 0x6C($s2)
    /* 4D59C 8005ED8C 7800A9AF */  sw         $t1, 0x78($sp)
    /* 4D5A0 8005ED90 7C00AAAF */  sw         $t2, 0x7C($sp)
    /* 4D5A4 8005ED94 8000ABAF */  sw         $t3, 0x80($sp)
    /* 4D5A8 8005ED98 7800A68F */  lw         $a2, 0x78($sp)
    /* 4D5AC 8005ED9C 7C00A78F */  lw         $a3, 0x7C($sp)
    /* 4D5B0 8005EDA0 0D80053C */  lui        $a1, %hi(D_800D6100)
    /* 4D5B4 8005EDA4 0061A58C */  lw         $a1, %lo(D_800D6100)($a1)
    /* 4D5B8 8005EDA8 7300498A */  lwl        $t1, 0x73($s2)
    /* 4D5BC 8005EDAC 7000499A */  lwr        $t1, 0x70($s2)
    /* 4D5C0 8005EDB0 77004A8A */  lwl        $t2, 0x77($s2)
    /* 4D5C4 8005EDB4 74004A9A */  lwr        $t2, 0x74($s2)
    /* 4D5C8 8005EDB8 1700A9AB */  swl        $t1, 0x17($sp)
    /* 4D5CC 8005EDBC 1400A9BB */  swr        $t1, 0x14($sp)
    /* 4D5D0 8005EDC0 1B00AAAB */  swl        $t2, 0x1B($sp)
    /* 4D5D4 8005EDC4 1800AABB */  swr        $t2, 0x18($sp)
    /* 4D5D8 8005EDC8 8000A28F */  lw         $v0, 0x80($sp)
    /* 4D5DC 8005EDCC 0D80043C */  lui        $a0, %hi(D_800CB0A0)
    /* 4D5E0 8005EDD0 A0B08424 */  addiu      $a0, $a0, %lo(D_800CB0A0)
    /* 4D5E4 8005EDD4 C5C0010C */  jal        func_80070314
    /* 4D5E8 8005EDD8 1000A2AF */   sw        $v0, 0x10($sp)
    /* 4D5EC 8005EDDC 7803C38E */  lw         $v1, 0x378($s6)
    /* 4D5F0 8005EDE0 00000000 */  nop
    /* 4D5F4 8005EDE4 0C1E628C */  lw         $v0, 0x1E0C($v1)
    /* 4D5F8 8005EDE8 817B0108 */  j          .L8005EE04
    /* 4D5FC 8005EDEC 01004234 */   ori       $v0, $v0, 0x1
  .L8005EDF0:
    /* 4D600 8005EDF0 7803C38E */  lw         $v1, 0x378($s6)
    /* 4D604 8005EDF4 00000000 */  nop
    /* 4D608 8005EDF8 0C1E628C */  lw         $v0, 0x1E0C($v1)
    /* 4D60C 8005EDFC 00000000 */  nop
    /* 4D610 8005EE00 02004234 */  ori        $v0, $v0, 0x2
  .L8005EE04:
    /* 4D614 8005EE04 0C1E62AC */  sw         $v0, 0x1E0C($v1)
  .L8005EE08:
    /* 4D618 8005EE08 3000E48E */  lw         $a0, 0x30($s7)
    /* 4D61C 8005EE0C B490010C */  jal        func_800642D0
    /* 4D620 8005EE10 00000000 */   nop
    /* 4D624 8005EE14 AC00BF8F */  lw         $ra, 0xAC($sp)
    /* 4D628 8005EE18 A800BE8F */  lw         $fp, 0xA8($sp)
    /* 4D62C 8005EE1C A400B78F */  lw         $s7, 0xA4($sp)
    /* 4D630 8005EE20 A000B68F */  lw         $s6, 0xA0($sp)
    /* 4D634 8005EE24 9C00B58F */  lw         $s5, 0x9C($sp)
    /* 4D638 8005EE28 9800B48F */  lw         $s4, 0x98($sp)
    /* 4D63C 8005EE2C 9400B38F */  lw         $s3, 0x94($sp)
    /* 4D640 8005EE30 9000B28F */  lw         $s2, 0x90($sp)
    /* 4D644 8005EE34 8C00B18F */  lw         $s1, 0x8C($sp)
    /* 4D648 8005EE38 8800B08F */  lw         $s0, 0x88($sp)
    /* 4D64C 8005EE3C 01000224 */  addiu      $v0, $zero, 0x1
    /* 4D650 8005EE40 0800E003 */  jr         $ra
    /* 4D654 8005EE44 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_8005E3A4
