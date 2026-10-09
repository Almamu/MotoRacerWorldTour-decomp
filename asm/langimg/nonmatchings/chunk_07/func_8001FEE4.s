/* Handwritten function */
nonmatching func_8001FEE4, 0x200

glabel func_8001FEE4
    /* E6F4 8001FEE4 0D80063C */  lui        $a2, %hi(D_800C8864)
    /* E6F8 8001FEE8 6488C68C */  lw         $a2, %lo(D_800C8864)($a2)
    /* E6FC 8001FEEC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E700 8001FEF0 0400B1AF */  sw         $s1, 0x4($sp)
    /* E704 8001FEF4 21888000 */  addu       $s1, $a0, $zero
    /* E708 8001FEF8 1000B4AF */  sw         $s4, 0x10($sp)
    /* E70C 8001FEFC 0C00B3AF */  sw         $s3, 0xC($sp)
    /* E710 8001FF00 0800B2AF */  sw         $s2, 0x8($sp)
    /* E714 8001FF04 0000B0AF */  sw         $s0, 0x0($sp)
    /* E718 8001FF08 80252C8E */  lw         $t4, 0x2580($s1)
    /* E71C 8001FF0C 6000C224 */  addiu      $v0, $a2, 0x60
    /* E720 8001FF10 0000438C */  lw         $v1, 0x0($v0)
    /* E724 8001FF14 0400448C */  lw         $a0, 0x4($v0)
    /* E728 8001FF18 0000C348 */  ctc2       $v1, $0 /* handwritten instruction */
    /* E72C 8001FF1C 0008C448 */  ctc2       $a0, $1 /* handwritten instruction */
    /* E730 8001FF20 0800438C */  lw         $v1, 0x8($v0)
    /* E734 8001FF24 0C00448C */  lw         $a0, 0xC($v0)
    /* E738 8001FF28 0010C348 */  ctc2       $v1, $2 /* handwritten instruction */
    /* E73C 8001FF2C 1000438C */  lw         $v1, 0x10($v0)
    /* E740 8001FF30 0018C448 */  ctc2       $a0, $3 /* handwritten instruction */
    /* E744 8001FF34 0020C348 */  ctc2       $v1, $4 /* handwritten instruction */
    /* E748 8001FF38 3C01C28C */  lw         $v0, 0x13C($a2)
    /* E74C 8001FF3C 00000000 */  nop
    /* E750 8001FF40 1C00438C */  lw         $v1, 0x1C($v0)
    /* E754 8001FF44 1400448C */  lw         $a0, 0x14($v0)
    /* E758 8001FF48 001C0300 */  sll        $v1, $v1, 16
    /* E75C 8001FF4C C02A0400 */  sll        $a1, $a0, 11
    /* E760 8001FF50 00130400 */  sll        $v0, $a0, 12
    /* E764 8001FF54 21104500 */  addu       $v0, $v0, $a1
    /* E768 8001FF58 1A006200 */  div        $zero, $v1, $v0
    /* E76C 8001FF5C 12100000 */  mflo       $v0
    /* E770 8001FF60 40230400 */  sll        $a0, $a0, 13
    /* E774 8001FF64 00000000 */  nop
    /* E778 8001FF68 1A006400 */  div        $zero, $v1, $a0
    /* E77C 8001FF6C 12180000 */  mflo       $v1
    /* E780 8001FF70 00E8C248 */  ctc2       $v0, $29 /* handwritten instruction */
    /* E784 8001FF74 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* E788 8001FF78 FF40183C */  lui        $t8, (0x40FFFFFF >> 16)
    /* E78C 8001FF7C FFFF1837 */  ori        $t8, $t8, (0x40FFFFFF & 0xFFFF)
    /* E790 8001FF80 21A00000 */  addu       $s4, $zero, $zero
    /* E794 8001FF84 0D80023C */  lui        $v0, %hi(D_800CBDC4)
    /* E798 8001FF88 C4BD428C */  lw         $v0, %lo(D_800CBDC4)($v0)
    /* E79C 8001FF8C 0D80083C */  lui        $t0, %hi(D_800C8C70)
    /* E7A0 8001FF90 708C088D */  lw         $t0, %lo(D_800C8C70)($t0)
    /* E7A4 8001FF94 0D80123C */  lui        $s2, %hi(D_800CBDC0)
    /* E7A8 8001FF98 C0BD528E */  lw         $s2, %lo(D_800CBDC0)($s2)
    /* E7AC 8001FF9C F800CF8C */  lw         $t7, 0xF8($a2)
    /* E7B0 8001FFA0 FC00CE8C */  lw         $t6, 0xFC($a2)
    /* E7B4 8001FFA4 0001CD8C */  lw         $t5, 0x100($a2)
    /* E7B8 8001FFA8 0400598C */  lw         $t9, 0x4($v0)
    /* E7BC 8001FFAC 0028D448 */  ctc2       $s4, $5 /* handwritten instruction */
    /* E7C0 8001FFB0 0030D448 */  ctc2       $s4, $6 /* handwritten instruction */
    /* E7C4 8001FFB4 0038D448 */  ctc2       $s4, $7 /* handwritten instruction */
    /* E7C8 8001FFB8 40008011 */  beqz       $t4, .L800200BC
    /* E7CC 8001FFBC 0003133C */   lui       $s3, (0x3000000 >> 16)
    /* E7D0 8001FFC0 FBFF3027 */  addiu      $s0, $t9, -0x5
    /* E7D4 8001FFC4 18002B26 */  addiu      $t3, $s1, 0x18
    /* E7D8 8001FFC8 14002926 */  addiu      $t1, $s1, 0x14
  .L8001FFCC:
    /* E7DC 8001FFCC 21500001 */  addu       $t2, $t0, $zero
    /* E7E0 8001FFD0 F0FF228D */  lw         $v0, -0x10($t1)
    /* E7E4 8001FFD4 F4FF248D */  lw         $a0, -0xC($t1)
    /* E7E8 8001FFD8 F8FF268D */  lw         $a2, -0x8($t1)
    /* E7EC 8001FFDC FCFF238D */  lw         $v1, -0x4($t1)
    /* E7F0 8001FFE0 0000258D */  lw         $a1, 0x0($t1)
    /* E7F4 8001FFE4 0000678D */  lw         $a3, 0x0($t3)
    /* E7F8 8001FFE8 23104F00 */  subu       $v0, $v0, $t7
    /* E7FC 8001FFEC 23208E00 */  subu       $a0, $a0, $t6
    /* E800 8001FFF0 2330CD00 */  subu       $a2, $a2, $t5
    /* E804 8001FFF4 23186F00 */  subu       $v1, $v1, $t7
    /* E808 8001FFF8 2328AE00 */  subu       $a1, $a1, $t6
    /* E80C 8001FFFC 2338ED00 */  subu       $a3, $a3, $t5
    /* E810 80020000 43110200 */  sra        $v0, $v0, 5
    /* E814 80020004 43210400 */  sra        $a0, $a0, 5
    /* E818 80020008 43310600 */  sra        $a2, $a2, 5
    /* E81C 8002000C 43190300 */  sra        $v1, $v1, 5
    /* E820 80020010 43290500 */  sra        $a1, $a1, 5
    /* E824 80020014 43390700 */  sra        $a3, $a3, 5
    /* E828 80020018 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* E82C 8002001C 00240400 */  sll        $a0, $a0, 16
    /* E830 80020020 25104400 */  or         $v0, $v0, $a0
    /* E834 80020024 00008248 */  mtc2       $v0, $0 /* handwritten instruction */
    /* E838 80020028 00088648 */  mtc2       $a2, $1 /* handwritten instruction */
    /* E83C 8002002C FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* E840 80020030 002C0500 */  sll        $a1, $a1, 16
    /* E844 80020034 25186500 */  or         $v1, $v1, $a1
    /* E848 80020038 00108348 */  mtc2       $v1, $2 /* handwritten instruction */
    /* E84C 8002003C 00188748 */  mtc2       $a3, $3 /* handwritten instruction */
    /* E850 80020040 00208348 */  mtc2       $v1, $4 /* handwritten instruction */
    /* E854 80020044 00288748 */  mtc2       $a3, $5 /* handwritten instruction */
    /* E858 80020048 00000000 */  nop
    /* E85C 8002004C 00000000 */  nop
    /* E860 80020050 3000284A */  rtpt
    /* E864 80020054 000013AD */  sw         $s3, 0x0($t0)
    /* E868 80020058 040018AD */  sw         $t8, 0x4($t0)
    /* E86C 8002005C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* E870 80020060 00000000 */  nop
    /* E874 80020064 11004014 */  bnez       $v0, .L800200AC
    /* E878 80020068 00000000 */   nop
    /* E87C 8002006C 2D00584B */  avsz3
    /* E880 80020070 08004CE9 */  swc2       $12, 0x8($t2)
    /* E884 80020074 0C004DE9 */  swc2       $13, 0xC($t2)
    /* E888 80020078 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* E88C 8002007C 00000000 */  nop
    /* E890 80020080 2A107000 */  slt        $v0, $v1, $s0
    /* E894 80020084 03004014 */  bnez       $v0, .L80020094
    /* E898 80020088 80100300 */   sll       $v0, $v1, 2
    /* E89C 8002008C FAFF2327 */  addiu      $v1, $t9, -0x6
    /* E8A0 80020090 80100300 */  sll        $v0, $v1, 2
  .L80020094:
    /* E8A4 80020094 21104202 */  addu       $v0, $s2, $v0
    /* E8A8 80020098 02004488 */  lwl        $a0, 0x2($v0)
    /* E8AC 8002009C 001A0800 */  sll        $v1, $t0, 8
    /* E8B0 800200A0 020004A9 */  swl        $a0, 0x2($t0)
    /* E8B4 800200A4 020043A8 */  swl        $v1, 0x2($v0)
    /* E8B8 800200A8 10000825 */  addiu      $t0, $t0, 0x10
  .L800200AC:
    /* E8BC 800200AC 60002925 */  addiu      $t1, $t1, 0x60
    /* E8C0 800200B0 FFFF8C25 */  addiu      $t4, $t4, -0x1
    /* E8C4 800200B4 C5FF8015 */  bnez       $t4, .L8001FFCC
    /* E8C8 800200B8 60006B25 */   addiu     $t3, $t3, 0x60
  .L800200BC:
    /* E8CC 800200BC 1000B48F */  lw         $s4, 0x10($sp)
    /* E8D0 800200C0 0C00B38F */  lw         $s3, 0xC($sp)
    /* E8D4 800200C4 0800B28F */  lw         $s2, 0x8($sp)
    /* E8D8 800200C8 802520AE */  sw         $zero, 0x2580($s1)
    /* E8DC 800200CC 0400B18F */  lw         $s1, 0x4($sp)
    /* E8E0 800200D0 0000B08F */  lw         $s0, 0x0($sp)
    /* E8E4 800200D4 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* E8E8 800200D8 708C28AC */  sw         $t0, %lo(D_800C8C70)($at)
    /* E8EC 800200DC 0800E003 */  jr         $ra
    /* E8F0 800200E0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001FEE4
