/* Handwritten function */
nonmatching func_8007DE6C, 0x320

glabel func_8007DE6C
    /* 6C67C 8007DE6C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6C680 8007DE70 21388000 */  addu       $a3, $a0, $zero
    /* 6C684 8007DE74 0800B0AF */  sw         $s0, 0x8($sp)
    /* 6C688 8007DE78 2180A000 */  addu       $s0, $a1, $zero
    /* 6C68C 8007DE7C 0D80083C */  lui        $t0, %hi(D_800C8C70)
    /* 6C690 8007DE80 708C088D */  lw         $t0, %lo(D_800C8C70)($t0)
    /* 6C694 8007DE84 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6C698 8007DE88 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6C69C 8007DE8C 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6C6A0 8007DE90 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6C6A4 8007DE94 C0180600 */  sll        $v1, $a2, 3
    /* 6C6A8 8007DE98 2800BEAF */  sw         $fp, 0x28($sp)
    /* 6C6AC 8007DE9C 2400B7AF */  sw         $s7, 0x24($sp)
    /* 6C6B0 8007DEA0 2000B6AF */  sw         $s6, 0x20($sp)
    /* 6C6B4 8007DEA4 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 6C6B8 8007DEA8 1800B4AF */  sw         $s4, 0x18($sp)
    /* 6C6BC 8007DEAC 1400B3AF */  sw         $s3, 0x14($sp)
    /* 6C6C0 8007DEB0 1000B2AF */  sw         $s2, 0x10($sp)
    /* 6C6C4 8007DEB4 23100201 */  subu       $v0, $t0, $v0
    /* 6C6C8 8007DEB8 11004224 */  addiu      $v0, $v0, 0x11
    /* 6C6CC 8007DEBC 21104300 */  addu       $v0, $v0, $v1
    /* 6C6D0 8007DEC0 2A104400 */  slt        $v0, $v0, $a0
    /* 6C6D4 8007DEC4 A6004010 */  beqz       $v0, .L8007E160
    /* 6C6D8 8007DEC8 0C00B1AF */   sw        $s1, 0xC($sp)
    /* 6C6DC 8007DECC C77F123C */  lui        $s2, (0x7FC7E000 >> 16)
    /* 6C6E0 8007DED0 21C0E000 */  addu       $t8, $a3, $zero
    /* 6C6E4 8007DED4 00E05236 */  ori        $s2, $s2, (0x7FC7E000 & 0xFFFF)
    /* 6C6E8 8007DED8 0000038F */  lw         $v1, 0x0($t8)
    /* 6C6EC 8007DEDC 0400048F */  lw         $a0, 0x4($t8)
    /* 6C6F0 8007DEE0 B475858F */  lw         $a1, %gp_rel(D_800CBCA4)($gp)
    /* 6C6F4 8007DEE4 0D80153C */  lui        $s5, %hi(D_800CBDC0)
    /* 6C6F8 8007DEE8 C0BDB58E */  lw         $s5, %lo(D_800CBDC0)($s5)
    /* 6C6FC 8007DEEC FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6C700 8007DEF0 C0100200 */  sll        $v0, $v0, 3
    /* 6C704 8007DEF4 21780202 */  addu       $t7, $s0, $v0
    /* 6C708 8007DEF8 021C0300 */  srl        $v1, $v1, 16
    /* 6C70C 8007DEFC C0180300 */  sll        $v1, $v1, 3
    /* 6C710 8007DF00 21700302 */  addu       $t6, $s0, $v1
    /* 6C714 8007DF04 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6C718 8007DF08 C0100200 */  sll        $v0, $v0, 3
    /* 6C71C 8007DF0C 21980202 */  addu       $s3, $s0, $v0
    /* 6C720 8007DF10 02240400 */  srl        $a0, $a0, 16
    /* 6C724 8007DF14 C0200400 */  sll        $a0, $a0, 3
    /* 6C728 8007DF18 21680402 */  addu       $t5, $s0, $a0
    /* 6C72C 8007DF1C 0600A294 */  lhu        $v0, 0x6($a1)
    /* 6C730 8007DF20 0D80033C */  lui        $v1, %hi(D_800CBDC4)
    /* 6C734 8007DF24 C4BD638C */  lw         $v1, %lo(D_800CBDC4)($v1)
    /* 6C738 8007DF28 0200B794 */  lhu        $s7, 0x2($a1)
    /* 6C73C 8007DF2C 20004224 */  addiu      $v0, $v0, 0x20
    /* 6C740 8007DF30 0400718C */  lw         $s1, 0x4($v1)
    /* 6C744 8007DF34 8800C010 */  beqz       $a2, .L8007E158
    /* 6C748 8007DF38 FFFF5E30 */   andi      $fp, $v0, 0xFFFF
    /* 6C74C 8007DF3C 802E143C */  lui        $s4, (0x2E808080 >> 16)
    /* 6C750 8007DF40 80809436 */  ori        $s4, $s4, (0x2E808080 & 0xFFFF)
    /* 6C754 8007DF44 FBFF3626 */  addiu      $s6, $s1, -0x5
    /* 6C758 8007DF48 0000B6AF */  sw         $s6, 0x0($sp)
  .L8007DF4C:
    /* 6C75C 8007DF4C 0000E0C9 */  lwc2       $0, 0x0($t7)
    /* 6C760 8007DF50 0400E1C9 */  lwc2       $1, 0x4($t7)
    /* 6C764 8007DF54 0000C2C9 */  lwc2       $2, 0x0($t6)
    /* 6C768 8007DF58 0400C3C9 */  lwc2       $3, 0x4($t6)
    /* 6C76C 8007DF5C 0000A4C9 */  lwc2       $4, 0x0($t5)
    /* 6C770 8007DF60 0400A5C9 */  lwc2       $5, 0x4($t5)
    /* 6C774 8007DF64 21380003 */  addu       $a3, $t8, $zero
    /* 6C778 8007DF68 1C00F824 */  addiu      $t8, $a3, 0x1C
    /* 6C77C 8007DF6C 21506002 */  addu       $t2, $s3, $zero
    /* 6C780 8007DF70 3000284A */  rtpt
    /* 6C784 8007DF74 28001925 */  addiu      $t9, $t0, 0x28
    /* 6C788 8007DF78 0600E295 */  lhu        $v0, 0x6($t7)
    /* 6C78C 8007DF7C 0600C395 */  lhu        $v1, 0x6($t6)
    /* 6C790 8007DF80 06004495 */  lhu        $a0, 0x6($t2)
    /* 6C794 8007DF84 0600A595 */  lhu        $a1, 0x6($t5)
    /* 6C798 8007DF88 21482003 */  addu       $t1, $t9, $zero
    /* 6C79C 8007DF8C 0C0002A5 */  sh         $v0, 0xC($t0)
    /* 6C7A0 8007DF90 140003A5 */  sh         $v1, 0x14($t0)
    /* 6C7A4 8007DF94 240004A5 */  sh         $a0, 0x24($t0)
    /* 6C7A8 8007DF98 1C0005A5 */  sh         $a1, 0x1C($t0)
    /* 6C7AC 8007DF9C 1C00E38C */  lw         $v1, 0x1C($a3)
    /* 6C7B0 8007DFA0 0400048F */  lw         $a0, 0x4($t8)
    /* 6C7B4 8007DFA4 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6C7B8 8007DFA8 C0100200 */  sll        $v0, $v0, 3
    /* 6C7BC 8007DFAC 21780202 */  addu       $t7, $s0, $v0
    /* 6C7C0 8007DFB0 021C0300 */  srl        $v1, $v1, 16
    /* 6C7C4 8007DFB4 C0180300 */  sll        $v1, $v1, 3
    /* 6C7C8 8007DFB8 21700302 */  addu       $t6, $s0, $v1
    /* 6C7CC 8007DFBC FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6C7D0 8007DFC0 C0100200 */  sll        $v0, $v0, 3
    /* 6C7D4 8007DFC4 21980202 */  addu       $s3, $s0, $v0
    /* 6C7D8 8007DFC8 02240400 */  srl        $a0, $a0, 16
    /* 6C7DC 8007DFCC C0200400 */  sll        $a0, $a0, 3
    /* 6C7E0 8007DFD0 21680402 */  addu       $t5, $s0, $a0
    /* 6C7E4 8007DFD4 21200001 */  addu       $a0, $t0, $zero
    /* 6C7E8 8007DFD8 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6C7EC 8007DFDC 00000000 */  nop
    /* 6C7F0 8007DFE0 24105200 */  and        $v0, $v0, $s2
    /* 6C7F4 8007DFE4 59004014 */  bnez       $v0, .L8007E14C
    /* 6C7F8 8007DFE8 00000000 */   nop
    /* 6C7FC 8007DFEC 0600404B */  nclip
    /* 6C800 8007DFF0 1800E58C */  lw         $a1, 0x18($a3)
    /* 6C804 8007DFF4 0008163C */  lui        $s6, (0x8000000 >> 16)
    /* 6C808 8007DFF8 280016AD */  sw         $s6, 0x28($t0)
    /* 6C80C 8007DFFC 00C00C48 */  mfc2       $t4, $24 /* handwritten instruction */
    /* 6C810 8007E000 08002CE9 */  swc2       $12, 0x8($t1)
    /* 6C814 8007E004 10002DE9 */  swc2       $13, 0x10($t1)
    /* 6C818 8007E008 18002EE9 */  swc2       $14, 0x18($t1)
    /* 6C81C 8007E00C 08008CE8 */  swc2       $12, 0x8($a0)
    /* 6C820 8007E010 10008DE8 */  swc2       $13, 0x10($a0)
    /* 6C824 8007E014 18008EE8 */  swc2       $14, 0x18($a0)
    /* 6C828 8007E018 000040C9 */  lwc2       $0, 0x0($t2)
    /* 6C82C 8007E01C 040041C9 */  lwc2       $1, 0x4($t2)
    /* 6C830 8007E020 00000000 */  nop
    /* 6C834 8007E024 00000000 */  nop
    /* 6C838 8007E028 0100184A */  rtps
    /* 6C83C 8007E02C 0800E38C */  lw         $v1, 0x8($a3)
    /* 6C840 8007E030 00000000 */  nop
    /* 6C844 8007E034 0000678C */  lw         $a3, 0x0($v1)
    /* 6C848 8007E038 04006A8C */  lw         $t2, 0x4($v1)
    /* 6C84C 8007E03C 08006B8C */  lw         $t3, 0x8($v1)
    /* 6C850 8007E040 0C00638C */  lw         $v1, 0xC($v1)
    /* 6C854 8007E044 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6C858 8007E048 00000000 */  nop
    /* 6C85C 8007E04C 24105200 */  and        $v0, $v0, $s2
    /* 6C860 8007E050 3E004014 */  bnez       $v0, .L8007E14C
    /* 6C864 8007E054 00000000 */   nop
    /* 6C868 8007E058 20002EE9 */  swc2       $14, 0x20($t1)
    /* 6C86C 8007E05C 20008EE8 */  swc2       $14, 0x20($a0)
    /* 6C870 8007E060 12008105 */  bgez       $t4, .L8007E0AC
    /* 6C874 8007E064 00000000 */   nop
    /* 6C878 8007E068 0600404B */  nclip
    /* 6C87C 8007E06C 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6C880 8007E070 00000000 */  nop
    /* 6C884 8007E074 F4FF4228 */  slti       $v0, $v0, -0xC
    /* 6C888 8007E078 0C004014 */  bnez       $v0, .L8007E0AC
    /* 6C88C 8007E07C 00000000 */   nop
    /* 6C890 8007E080 83170500 */  sra        $v0, $a1, 30
    /* 6C894 8007E084 01004230 */  andi       $v0, $v0, 0x1
    /* 6C898 8007E088 30004010 */  beqz       $v0, .L8007E14C
    /* 6C89C 8007E08C 8000A230 */   andi      $v0, $a1, 0x80
    /* 6C8A0 8007E090 06004010 */  beqz       $v0, .L8007E0AC
    /* 6C8A4 8007E094 001C163C */   lui       $s6, (0x1C000000 >> 16)
    /* 6C8A8 8007E098 42100700 */  srl        $v0, $a3, 1
    /* 6C8AC 8007E09C 21385600 */  addu       $a3, $v0, $s6
    /* 6C8B0 8007E0A0 42500A00 */  srl        $t2, $t2, 1
    /* 6C8B4 8007E0A4 42580B00 */  srl        $t3, $t3, 1
    /* 6C8B8 8007E0A8 42180300 */  srl        $v1, $v1, 1
  .L8007E0AC:
    /* 6C8BC 8007E0AC 2E00684B */  avsz4
    /* 6C8C0 8007E0B0 C0140500 */  sll        $v0, $a1, 19
    /* 6C8C4 8007E0B4 00C0163C */  lui        $s6, (0xC0000000 >> 16)
    /* 6C8C8 8007E0B8 24105600 */  and        $v0, $v0, $s6
    /* 6C8CC 8007E0BC 432E0200 */  sra        $a1, $v0, 25
    /* 6C8D0 8007E0C0 0009163C */  lui        $s6, (0x9000000 >> 16)
    /* 6C8D4 8007E0C4 040027AD */  sw         $a3, 0x4($t1)
    /* 6C8D8 8007E0C8 0C002AAD */  sw         $t2, 0xC($t1)
    /* 6C8DC 8007E0CC 140023AD */  sw         $v1, 0x14($t1)
    /* 6C8E0 8007E0D0 1C002BAD */  sw         $t3, 0x1C($t1)
    /* 6C8E4 8007E0D4 000016AD */  sw         $s6, 0x0($t0)
    /* 6C8E8 8007E0D8 040014AD */  sw         $s4, 0x4($t0)
    /* 6C8EC 8007E0DC 0E0017A5 */  sh         $s7, 0xE($t0)
    /* 6C8F0 8007E0E0 16001EA5 */  sh         $fp, 0x16($t0)
    /* 6C8F4 8007E0E4 00380248 */  mfc2       $v0, $7 /* handwritten instruction */
    /* 6C8F8 8007E0E8 00000000 */  nop
    /* 6C8FC 8007E0EC 2128A200 */  addu       $a1, $a1, $v0
    /* 6C900 8007E0F0 0000B68F */  lw         $s6, 0x0($sp)
    /* 6C904 8007E0F4 00000000 */  nop
    /* 6C908 8007E0F8 2A38B600 */  slt        $a3, $a1, $s6
    /* 6C90C 8007E0FC 0200E014 */  bnez       $a3, .L8007E108
    /* 6C910 8007E100 2110A000 */   addu      $v0, $a1, $zero
    /* 6C914 8007E104 FAFF2226 */  addiu      $v0, $s1, -0x6
  .L8007E108:
    /* 6C918 8007E108 80100200 */  sll        $v0, $v0, 2
    /* 6C91C 8007E10C 2110A202 */  addu       $v0, $s5, $v0
    /* 6C920 8007E110 02004488 */  lwl        $a0, 0x2($v0)
    /* 6C924 8007E114 001A0800 */  sll        $v1, $t0, 8
    /* 6C928 8007E118 020004A9 */  swl        $a0, 0x2($t0)
    /* 6C92C 8007E11C 020043A8 */  swl        $v1, 0x2($v0)
    /* 6C930 8007E120 21402001 */  addu       $t0, $t1, $zero
    /* 6C934 8007E124 0200E014 */  bnez       $a3, .L8007E130
    /* 6C938 8007E128 2110A000 */   addu      $v0, $a1, $zero
    /* 6C93C 8007E12C FAFF2226 */  addiu      $v0, $s1, -0x6
  .L8007E130:
    /* 6C940 8007E130 80100200 */  sll        $v0, $v0, 2
    /* 6C944 8007E134 2110A202 */  addu       $v0, $s5, $v0
    /* 6C948 8007E138 02004488 */  lwl        $a0, 0x2($v0)
    /* 6C94C 8007E13C 001A0800 */  sll        $v1, $t0, 8
    /* 6C950 8007E140 020004A9 */  swl        $a0, 0x2($t0)
    /* 6C954 8007E144 020043A8 */  swl        $v1, 0x2($v0)
    /* 6C958 8007E148 24002827 */  addiu      $t0, $t9, 0x24
  .L8007E14C:
    /* 6C95C 8007E14C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6C960 8007E150 7EFFC014 */  bnez       $a2, .L8007DF4C
    /* 6C964 8007E154 00000000 */   nop
  .L8007E158:
    /* 6C968 8007E158 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6C96C 8007E15C 708C28AC */  sw         $t0, %lo(D_800C8C70)($at)
  .L8007E160:
    /* 6C970 8007E160 2800BE8F */  lw         $fp, 0x28($sp)
    /* 6C974 8007E164 2400B78F */  lw         $s7, 0x24($sp)
    /* 6C978 8007E168 2000B68F */  lw         $s6, 0x20($sp)
    /* 6C97C 8007E16C 1C00B58F */  lw         $s5, 0x1C($sp)
    /* 6C980 8007E170 1800B48F */  lw         $s4, 0x18($sp)
    /* 6C984 8007E174 1400B38F */  lw         $s3, 0x14($sp)
    /* 6C988 8007E178 1000B28F */  lw         $s2, 0x10($sp)
    /* 6C98C 8007E17C 0C00B18F */  lw         $s1, 0xC($sp)
    /* 6C990 8007E180 0800B08F */  lw         $s0, 0x8($sp)
    /* 6C994 8007E184 0800E003 */  jr         $ra
    /* 6C998 8007E188 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8007DE6C
