/* Handwritten function */
nonmatching func_8007D8B4, 0x304

glabel func_8007D8B4
    /* 6C0C4 8007D8B4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6C0C8 8007D8B8 21408000 */  addu       $t0, $a0, $zero
    /* 6C0CC 8007D8BC 0800B0AF */  sw         $s0, 0x8($sp)
    /* 6C0D0 8007D8C0 2180A000 */  addu       $s0, $a1, $zero
    /* 6C0D4 8007D8C4 80180600 */  sll        $v1, $a2, 2
    /* 6C0D8 8007D8C8 0D80073C */  lui        $a3, %hi(D_800C8C70)
    /* 6C0DC 8007D8CC 708CE78C */  lw         $a3, %lo(D_800C8C70)($a3)
    /* 6C0E0 8007D8D0 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6C0E4 8007D8D4 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6C0E8 8007D8D8 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6C0EC 8007D8DC 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6C0F0 8007D8E0 21186600 */  addu       $v1, $v1, $a2
    /* 6C0F4 8007D8E4 2800BEAF */  sw         $fp, 0x28($sp)
    /* 6C0F8 8007D8E8 2400B7AF */  sw         $s7, 0x24($sp)
    /* 6C0FC 8007D8EC 2000B6AF */  sw         $s6, 0x20($sp)
    /* 6C100 8007D8F0 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 6C104 8007D8F4 1800B4AF */  sw         $s4, 0x18($sp)
    /* 6C108 8007D8F8 1400B3AF */  sw         $s3, 0x14($sp)
    /* 6C10C 8007D8FC 1000B2AF */  sw         $s2, 0x10($sp)
    /* 6C110 8007D900 2310E200 */  subu       $v0, $a3, $v0
    /* 6C114 8007D904 11004224 */  addiu      $v0, $v0, 0x11
    /* 6C118 8007D908 21104300 */  addu       $v0, $v0, $v1
    /* 6C11C 8007D90C 2A104400 */  slt        $v0, $v0, $a0
    /* 6C120 8007D910 9E004010 */  beqz       $v0, .L8007DB8C
    /* 6C124 8007D914 0C00B1AF */   sw        $s1, 0xC($sp)
    /* 6C128 8007D918 C77F123C */  lui        $s2, (0x7FC7E000 >> 16)
    /* 6C12C 8007D91C 21C00001 */  addu       $t8, $t0, $zero
    /* 6C130 8007D920 00E05236 */  ori        $s2, $s2, (0x7FC7E000 & 0xFFFF)
    /* 6C134 8007D924 0000038F */  lw         $v1, 0x0($t8)
    /* 6C138 8007D928 0400048F */  lw         $a0, 0x4($t8)
    /* 6C13C 8007D92C B475858F */  lw         $a1, %gp_rel(D_800CBCA4)($gp)
    /* 6C140 8007D930 0D80153C */  lui        $s5, %hi(D_800CBDC0)
    /* 6C144 8007D934 C0BDB58E */  lw         $s5, %lo(D_800CBDC0)($s5)
    /* 6C148 8007D938 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6C14C 8007D93C C0100200 */  sll        $v0, $v0, 3
    /* 6C150 8007D940 21780202 */  addu       $t7, $s0, $v0
    /* 6C154 8007D944 021C0300 */  srl        $v1, $v1, 16
    /* 6C158 8007D948 C0180300 */  sll        $v1, $v1, 3
    /* 6C15C 8007D94C 21700302 */  addu       $t6, $s0, $v1
    /* 6C160 8007D950 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6C164 8007D954 C0100200 */  sll        $v0, $v0, 3
    /* 6C168 8007D958 21980202 */  addu       $s3, $s0, $v0
    /* 6C16C 8007D95C 02240400 */  srl        $a0, $a0, 16
    /* 6C170 8007D960 C0200400 */  sll        $a0, $a0, 3
    /* 6C174 8007D964 21680402 */  addu       $t5, $s0, $a0
    /* 6C178 8007D968 0600A294 */  lhu        $v0, 0x6($a1)
    /* 6C17C 8007D96C 0D80033C */  lui        $v1, %hi(D_800CBDC4)
    /* 6C180 8007D970 C4BD638C */  lw         $v1, %lo(D_800CBDC4)($v1)
    /* 6C184 8007D974 0200B794 */  lhu        $s7, 0x2($a1)
    /* 6C188 8007D978 20004224 */  addiu      $v0, $v0, 0x20
    /* 6C18C 8007D97C 0400718C */  lw         $s1, 0x4($v1)
    /* 6C190 8007D980 8000C010 */  beqz       $a2, .L8007DB84
    /* 6C194 8007D984 FFFF5E30 */   andi      $fp, $v0, 0xFFFF
    /* 6C198 8007D988 802E143C */  lui        $s4, (0x2E808080 >> 16)
    /* 6C19C 8007D98C 80809436 */  ori        $s4, $s4, (0x2E808080 & 0xFFFF)
    /* 6C1A0 8007D990 FBFF3626 */  addiu      $s6, $s1, -0x5
    /* 6C1A4 8007D994 0000B6AF */  sw         $s6, 0x0($sp)
  .L8007D998:
    /* 6C1A8 8007D998 0000E0C9 */  lwc2       $0, 0x0($t7)
    /* 6C1AC 8007D99C 0400E1C9 */  lwc2       $1, 0x4($t7)
    /* 6C1B0 8007D9A0 0000C2C9 */  lwc2       $2, 0x0($t6)
    /* 6C1B4 8007D9A4 0400C3C9 */  lwc2       $3, 0x4($t6)
    /* 6C1B8 8007D9A8 0000A4C9 */  lwc2       $4, 0x0($t5)
    /* 6C1BC 8007D9AC 0400A5C9 */  lwc2       $5, 0x4($t5)
    /* 6C1C0 8007D9B0 21400003 */  addu       $t0, $t8, $zero
    /* 6C1C4 8007D9B4 1C001825 */  addiu      $t8, $t0, 0x1C
    /* 6C1C8 8007D9B8 21586002 */  addu       $t3, $s3, $zero
    /* 6C1CC 8007D9BC 3000284A */  rtpt
    /* 6C1D0 8007D9C0 2800EA24 */  addiu      $t2, $a3, 0x28
    /* 6C1D4 8007D9C4 0600E295 */  lhu        $v0, 0x6($t7)
    /* 6C1D8 8007D9C8 0600C395 */  lhu        $v1, 0x6($t6)
    /* 6C1DC 8007D9CC 06006495 */  lhu        $a0, 0x6($t3)
    /* 6C1E0 8007D9D0 0600A595 */  lhu        $a1, 0x6($t5)
    /* 6C1E4 8007D9D4 21C84001 */  addu       $t9, $t2, $zero
    /* 6C1E8 8007D9D8 1C00E5A4 */  sh         $a1, 0x1C($a3)
    /* 6C1EC 8007D9DC 2128E000 */  addu       $a1, $a3, $zero
    /* 6C1F0 8007D9E0 0C00E2A4 */  sh         $v0, 0xC($a3)
    /* 6C1F4 8007D9E4 1400E3A4 */  sh         $v1, 0x14($a3)
    /* 6C1F8 8007D9E8 2400E4A4 */  sh         $a0, 0x24($a3)
    /* 6C1FC 8007D9EC 1C00038D */  lw         $v1, 0x1C($t0)
    /* 6C200 8007D9F0 0400048F */  lw         $a0, 0x4($t8)
    /* 6C204 8007D9F4 1800098D */  lw         $t1, 0x18($t0)
    /* 6C208 8007D9F8 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6C20C 8007D9FC C0100200 */  sll        $v0, $v0, 3
    /* 6C210 8007DA00 21780202 */  addu       $t7, $s0, $v0
    /* 6C214 8007DA04 021C0300 */  srl        $v1, $v1, 16
    /* 6C218 8007DA08 C0180300 */  sll        $v1, $v1, 3
    /* 6C21C 8007DA0C 21700302 */  addu       $t6, $s0, $v1
    /* 6C220 8007DA10 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6C224 8007DA14 C0100200 */  sll        $v0, $v0, 3
    /* 6C228 8007DA18 21980202 */  addu       $s3, $s0, $v0
    /* 6C22C 8007DA1C 02240400 */  srl        $a0, $a0, 16
    /* 6C230 8007DA20 C0200400 */  sll        $a0, $a0, 3
    /* 6C234 8007DA24 21680402 */  addu       $t5, $s0, $a0
    /* 6C238 8007DA28 21184001 */  addu       $v1, $t2, $zero
    /* 6C23C 8007DA2C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6C240 8007DA30 00000000 */  nop
    /* 6C244 8007DA34 24105200 */  and        $v0, $v0, $s2
    /* 6C248 8007DA38 4F004014 */  bnez       $v0, .L8007DB78
    /* 6C24C 8007DA3C 00000000 */   nop
    /* 6C250 8007DA40 0600404B */  nclip
    /* 6C254 8007DA44 0005163C */  lui        $s6, (0x5000000 >> 16)
    /* 6C258 8007DA48 2800F6AC */  sw         $s6, 0x28($a3)
    /* 6C25C 8007DA4C 00C00C48 */  mfc2       $t4, $24 /* handwritten instruction */
    /* 6C260 8007DA50 08006CE8 */  swc2       $12, 0x8($v1)
    /* 6C264 8007DA54 0C006DE8 */  swc2       $13, 0xC($v1)
    /* 6C268 8007DA58 10006EE8 */  swc2       $14, 0x10($v1)
    /* 6C26C 8007DA5C 0800ACE8 */  swc2       $12, 0x8($a1)
    /* 6C270 8007DA60 1000ADE8 */  swc2       $13, 0x10($a1)
    /* 6C274 8007DA64 1800AEE8 */  swc2       $14, 0x18($a1)
    /* 6C278 8007DA68 000060C9 */  lwc2       $0, 0x0($t3)
    /* 6C27C 8007DA6C 040061C9 */  lwc2       $1, 0x4($t3)
    /* 6C280 8007DA70 00000000 */  nop
    /* 6C284 8007DA74 00000000 */  nop
    /* 6C288 8007DA78 0100184A */  rtps
    /* 6C28C 8007DA7C 0800048D */  lw         $a0, 0x8($t0)
    /* 6C290 8007DA80 00000000 */  nop
    /* 6C294 8007DA84 040044AD */  sw         $a0, 0x4($t2)
    /* 6C298 8007DA88 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6C29C 8007DA8C 00000000 */  nop
    /* 6C2A0 8007DA90 24105200 */  and        $v0, $v0, $s2
    /* 6C2A4 8007DA94 38004014 */  bnez       $v0, .L8007DB78
    /* 6C2A8 8007DA98 00000000 */   nop
    /* 6C2AC 8007DA9C 14006EE8 */  swc2       $14, 0x14($v1)
    /* 6C2B0 8007DAA0 2000AEE8 */  swc2       $14, 0x20($a1)
    /* 6C2B4 8007DAA4 10008105 */  bgez       $t4, .L8007DAE8
    /* 6C2B8 8007DAA8 00000000 */   nop
    /* 6C2BC 8007DAAC 0600404B */  nclip
    /* 6C2C0 8007DAB0 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6C2C4 8007DAB4 00000000 */  nop
    /* 6C2C8 8007DAB8 F4FF4228 */  slti       $v0, $v0, -0xC
    /* 6C2CC 8007DABC 0A004014 */  bnez       $v0, .L8007DAE8
    /* 6C2D0 8007DAC0 00000000 */   nop
    /* 6C2D4 8007DAC4 83170900 */  sra        $v0, $t1, 30
    /* 6C2D8 8007DAC8 01004230 */  andi       $v0, $v0, 0x1
    /* 6C2DC 8007DACC 2A004010 */  beqz       $v0, .L8007DB78
    /* 6C2E0 8007DAD0 80002231 */   andi      $v0, $t1, 0x80
    /* 6C2E4 8007DAD4 04004010 */  beqz       $v0, .L8007DAE8
    /* 6C2E8 8007DAD8 0014163C */   lui       $s6, (0x14000000 >> 16)
    /* 6C2EC 8007DADC 42100400 */  srl        $v0, $a0, 1
    /* 6C2F0 8007DAE0 21105600 */  addu       $v0, $v0, $s6
    /* 6C2F4 8007DAE4 040042AD */  sw         $v0, 0x4($t2)
  .L8007DAE8:
    /* 6C2F8 8007DAE8 2E00684B */  avsz4
    /* 6C2FC 8007DAEC 0009163C */  lui        $s6, (0x9000000 >> 16)
    /* 6C300 8007DAF0 C0140900 */  sll        $v0, $t1, 19
    /* 6C304 8007DAF4 0000F6AC */  sw         $s6, 0x0($a3)
    /* 6C308 8007DAF8 00C0163C */  lui        $s6, (0xC0000000 >> 16)
    /* 6C30C 8007DAFC 24105600 */  and        $v0, $v0, $s6
    /* 6C310 8007DB00 43160200 */  sra        $v0, $v0, 25
    /* 6C314 8007DB04 0400F4AC */  sw         $s4, 0x4($a3)
    /* 6C318 8007DB08 0E00F7A4 */  sh         $s7, 0xE($a3)
    /* 6C31C 8007DB0C 1600FEA4 */  sh         $fp, 0x16($a3)
    /* 6C320 8007DB10 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* 6C324 8007DB14 00000000 */  nop
    /* 6C328 8007DB18 21284300 */  addu       $a1, $v0, $v1
    /* 6C32C 8007DB1C 0000B68F */  lw         $s6, 0x0($sp)
    /* 6C330 8007DB20 00000000 */  nop
    /* 6C334 8007DB24 2A40B600 */  slt        $t0, $a1, $s6
    /* 6C338 8007DB28 02000015 */  bnez       $t0, .L8007DB34
    /* 6C33C 8007DB2C 2110A000 */   addu      $v0, $a1, $zero
    /* 6C340 8007DB30 FAFF2226 */  addiu      $v0, $s1, -0x6
  .L8007DB34:
    /* 6C344 8007DB34 80100200 */  sll        $v0, $v0, 2
    /* 6C348 8007DB38 2110A202 */  addu       $v0, $s5, $v0
    /* 6C34C 8007DB3C 02004488 */  lwl        $a0, 0x2($v0)
    /* 6C350 8007DB40 001A0700 */  sll        $v1, $a3, 8
    /* 6C354 8007DB44 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6C358 8007DB48 020043A8 */  swl        $v1, 0x2($v0)
    /* 6C35C 8007DB4C 21382003 */  addu       $a3, $t9, $zero
    /* 6C360 8007DB50 02000015 */  bnez       $t0, .L8007DB5C
    /* 6C364 8007DB54 2110A000 */   addu      $v0, $a1, $zero
    /* 6C368 8007DB58 FAFF2226 */  addiu      $v0, $s1, -0x6
  .L8007DB5C:
    /* 6C36C 8007DB5C 80100200 */  sll        $v0, $v0, 2
    /* 6C370 8007DB60 2110A202 */  addu       $v0, $s5, $v0
    /* 6C374 8007DB64 02004488 */  lwl        $a0, 0x2($v0)
    /* 6C378 8007DB68 001A0700 */  sll        $v1, $a3, 8
    /* 6C37C 8007DB6C 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6C380 8007DB70 020043A8 */  swl        $v1, 0x2($v0)
    /* 6C384 8007DB74 18004725 */  addiu      $a3, $t2, 0x18
  .L8007DB78:
    /* 6C388 8007DB78 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6C38C 8007DB7C 86FFC014 */  bnez       $a2, .L8007D998
    /* 6C390 8007DB80 00000000 */   nop
  .L8007DB84:
    /* 6C394 8007DB84 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6C398 8007DB88 708C27AC */  sw         $a3, %lo(D_800C8C70)($at)
  .L8007DB8C:
    /* 6C39C 8007DB8C 2800BE8F */  lw         $fp, 0x28($sp)
    /* 6C3A0 8007DB90 2400B78F */  lw         $s7, 0x24($sp)
    /* 6C3A4 8007DB94 2000B68F */  lw         $s6, 0x20($sp)
    /* 6C3A8 8007DB98 1C00B58F */  lw         $s5, 0x1C($sp)
    /* 6C3AC 8007DB9C 1800B48F */  lw         $s4, 0x18($sp)
    /* 6C3B0 8007DBA0 1400B38F */  lw         $s3, 0x14($sp)
    /* 6C3B4 8007DBA4 1000B28F */  lw         $s2, 0x10($sp)
    /* 6C3B8 8007DBA8 0C00B18F */  lw         $s1, 0xC($sp)
    /* 6C3BC 8007DBAC 0800B08F */  lw         $s0, 0x8($sp)
    /* 6C3C0 8007DBB0 0800E003 */  jr         $ra
    /* 6C3C4 8007DBB4 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8007D8B4
