/* Handwritten function */
nonmatching func_8007DBB8, 0x2B4

glabel func_8007DBB8
    /* 6C3C8 8007DBB8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6C3CC 8007DBBC 21408000 */  addu       $t0, $a0, $zero
    /* 6C3D0 8007DBC0 21C8A000 */  addu       $t9, $a1, $zero
    /* 6C3D4 8007DBC4 40180600 */  sll        $v1, $a2, 1
    /* 6C3D8 8007DBC8 21186600 */  addu       $v1, $v1, $a2
    /* 6C3DC 8007DBCC 0D80073C */  lui        $a3, %hi(D_800C8C70)
    /* 6C3E0 8007DBD0 708CE78C */  lw         $a3, %lo(D_800C8C70)($a3)
    /* 6C3E4 8007DBD4 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6C3E8 8007DBD8 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6C3EC 8007DBDC 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6C3F0 8007DBE0 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6C3F4 8007DBE4 40180300 */  sll        $v1, $v1, 1
    /* 6C3F8 8007DBE8 2800BEAF */  sw         $fp, 0x28($sp)
    /* 6C3FC 8007DBEC 2400B7AF */  sw         $s7, 0x24($sp)
    /* 6C400 8007DBF0 2000B6AF */  sw         $s6, 0x20($sp)
    /* 6C404 8007DBF4 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 6C408 8007DBF8 1800B4AF */  sw         $s4, 0x18($sp)
    /* 6C40C 8007DBFC 1400B3AF */  sw         $s3, 0x14($sp)
    /* 6C410 8007DC00 1000B2AF */  sw         $s2, 0x10($sp)
    /* 6C414 8007DC04 0C00B1AF */  sw         $s1, 0xC($sp)
    /* 6C418 8007DC08 2310E200 */  subu       $v0, $a3, $v0
    /* 6C41C 8007DC0C 0F004224 */  addiu      $v0, $v0, 0xF
    /* 6C420 8007DC10 21104300 */  addu       $v0, $v0, $v1
    /* 6C424 8007DC14 2A104400 */  slt        $v0, $v0, $a0
    /* 6C428 8007DC18 89004010 */  beqz       $v0, .L8007DE40
    /* 6C42C 8007DC1C 0800B0AF */   sw        $s0, 0x8($sp)
    /* 6C430 8007DC20 C77F123C */  lui        $s2, (0x7FC7E000 >> 16)
    /* 6C434 8007DC24 21780001 */  addu       $t7, $t0, $zero
    /* 6C438 8007DC28 00E05236 */  ori        $s2, $s2, (0x7FC7E000 & 0xFFFF)
    /* 6C43C 8007DC2C 0000E38D */  lw         $v1, 0x0($t7)
    /* 6C440 8007DC30 B475858F */  lw         $a1, %gp_rel(D_800CBCA4)($gp)
    /* 6C444 8007DC34 0D80043C */  lui        $a0, %hi(D_800CBDC4)
    /* 6C448 8007DC38 C4BD848C */  lw         $a0, %lo(D_800CBDC4)($a0)
    /* 6C44C 8007DC3C 0D80113C */  lui        $s1, %hi(D_800CBDC0)
    /* 6C450 8007DC40 C0BD318E */  lw         $s1, %lo(D_800CBDC0)($s1)
    /* 6C454 8007DC44 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6C458 8007DC48 C0100200 */  sll        $v0, $v0, 3
    /* 6C45C 8007DC4C 21702203 */  addu       $t6, $t9, $v0
    /* 6C460 8007DC50 021C0300 */  srl        $v1, $v1, 16
    /* 6C464 8007DC54 C0180300 */  sll        $v1, $v1, 3
    /* 6C468 8007DC58 21682303 */  addu       $t5, $t9, $v1
    /* 6C46C 8007DC5C 0400E295 */  lhu        $v0, 0x4($t7)
    /* 6C470 8007DC60 0600A394 */  lhu        $v1, 0x6($a1)
    /* 6C474 8007DC64 0400988C */  lw         $t8, 0x4($a0)
    /* 6C478 8007DC68 0200B494 */  lhu        $s4, 0x2($a1)
    /* 6C47C 8007DC6C C0100200 */  sll        $v0, $v0, 3
    /* 6C480 8007DC70 21602203 */  addu       $t4, $t9, $v0
    /* 6C484 8007DC74 20006324 */  addiu      $v1, $v1, 0x20
    /* 6C488 8007DC78 6F00C010 */  beqz       $a2, .L8007DE38
    /* 6C48C 8007DC7C FFFF7530 */   andi      $s5, $v1, 0xFFFF
    /* 6C490 8007DC80 00181E3C */  lui        $fp, (0x18000000 >> 16)
    /* 6C494 8007DC84 00C0173C */  lui        $s7, (0xC0000000 >> 16)
    /* 6C498 8007DC88 0007163C */  lui        $s6, (0x7000000 >> 16)
    /* 6C49C 8007DC8C 8026103C */  lui        $s0, (0x26808080 >> 16)
    /* 6C4A0 8007DC90 80801036 */  ori        $s0, $s0, (0x26808080 & 0xFFFF)
    /* 6C4A4 8007DC94 FBFF1327 */  addiu      $s3, $t8, -0x5
    /* 6C4A8 8007DC98 0000B3AF */  sw         $s3, 0x0($sp)
  .L8007DC9C:
    /* 6C4AC 8007DC9C 0000C0C9 */  lwc2       $0, 0x0($t6)
    /* 6C4B0 8007DCA0 0400C1C9 */  lwc2       $1, 0x4($t6)
    /* 6C4B4 8007DCA4 0000A2C9 */  lwc2       $2, 0x0($t5)
    /* 6C4B8 8007DCA8 0400A3C9 */  lwc2       $3, 0x4($t5)
    /* 6C4BC 8007DCAC 000084C9 */  lwc2       $4, 0x0($t4)
    /* 6C4C0 8007DCB0 040085C9 */  lwc2       $5, 0x4($t4)
    /* 6C4C4 8007DCB4 2140E001 */  addu       $t0, $t7, $zero
    /* 6C4C8 8007DCB8 1C000F25 */  addiu      $t7, $t0, 0x1C
    /* 6C4CC 8007DCBC 3000284A */  rtpt
    /* 6C4D0 8007DCC0 2150E000 */  addu       $t2, $a3, $zero
    /* 6C4D4 8007DCC4 0600C295 */  lhu        $v0, 0x6($t6)
    /* 6C4D8 8007DCC8 0600A495 */  lhu        $a0, 0x6($t5)
    /* 6C4DC 8007DCCC 06008595 */  lhu        $a1, 0x6($t4)
    /* 6C4E0 8007DCD0 2000E924 */  addiu      $t1, $a3, 0x20
    /* 6C4E4 8007DCD4 0C00E2A4 */  sh         $v0, 0xC($a3)
    /* 6C4E8 8007DCD8 1400E4A4 */  sh         $a0, 0x14($a3)
    /* 6C4EC 8007DCDC 1C00E5A4 */  sh         $a1, 0x1C($a3)
    /* 6C4F0 8007DCE0 1C00038D */  lw         $v1, 0x1C($t0)
    /* 6C4F4 8007DCE4 21582001 */  addu       $t3, $t1, $zero
    /* 6C4F8 8007DCE8 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6C4FC 8007DCEC C0100200 */  sll        $v0, $v0, 3
    /* 6C500 8007DCF0 21702203 */  addu       $t6, $t9, $v0
    /* 6C504 8007DCF4 021C0300 */  srl        $v1, $v1, 16
    /* 6C508 8007DCF8 C0180300 */  sll        $v1, $v1, 3
    /* 6C50C 8007DCFC 0400E295 */  lhu        $v0, 0x4($t7)
    /* 6C510 8007DD00 21682303 */  addu       $t5, $t9, $v1
    /* 6C514 8007DD04 C0100200 */  sll        $v0, $v0, 3
    /* 6C518 8007DD08 21602203 */  addu       $t4, $t9, $v0
    /* 6C51C 8007DD0C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6C520 8007DD10 00000000 */  nop
    /* 6C524 8007DD14 24105200 */  and        $v0, $v0, $s2
    /* 6C528 8007DD18 44004014 */  bnez       $v0, .L8007DE2C
    /* 6C52C 8007DD1C 00000000 */   nop
    /* 6C530 8007DD20 0600404B */  nclip
    /* 6C534 8007DD24 0800028D */  lw         $v0, 0x8($t0)
    /* 6C538 8007DD28 1800048D */  lw         $a0, 0x18($t0)
    /* 6C53C 8007DD2C 0000458C */  lw         $a1, 0x0($v0)
    /* 6C540 8007DD30 0400438C */  lw         $v1, 0x4($v0)
    /* 6C544 8007DD34 0800488C */  lw         $t0, 0x8($v0)
    /* 6C548 8007DD38 0006133C */  lui        $s3, (0x6000000 >> 16)
    /* 6C54C 8007DD3C 2000F3AC */  sw         $s3, 0x20($a3)
    /* 6C550 8007DD40 040025AD */  sw         $a1, 0x4($t1)
    /* 6C554 8007DD44 0C0023AD */  sw         $v1, 0xC($t1)
    /* 6C558 8007DD48 140028AD */  sw         $t0, 0x14($t1)
    /* 6C55C 8007DD4C 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6C560 8007DD50 00000000 */  nop
    /* 6C564 8007DD54 0D004104 */  bgez       $v0, .L8007DD8C
    /* 6C568 8007DD58 00000000 */   nop
    /* 6C56C 8007DD5C 83170400 */  sra        $v0, $a0, 30
    /* 6C570 8007DD60 01004230 */  andi       $v0, $v0, 0x1
    /* 6C574 8007DD64 31004010 */  beqz       $v0, .L8007DE2C
    /* 6C578 8007DD68 80008230 */   andi      $v0, $a0, 0x80
    /* 6C57C 8007DD6C 07004010 */  beqz       $v0, .L8007DD8C
    /* 6C580 8007DD70 42180300 */   srl       $v1, $v1, 1
    /* 6C584 8007DD74 42100500 */  srl        $v0, $a1, 1
    /* 6C588 8007DD78 21105E00 */  addu       $v0, $v0, $fp
    /* 6C58C 8007DD7C 040022AD */  sw         $v0, 0x4($t1)
    /* 6C590 8007DD80 42100800 */  srl        $v0, $t0, 1
    /* 6C594 8007DD84 0C0023AD */  sw         $v1, 0xC($t1)
    /* 6C598 8007DD88 140022AD */  sw         $v0, 0x14($t1)
  .L8007DD8C:
    /* 6C59C 8007DD8C 08006CE9 */  swc2       $12, 0x8($t3)
    /* 6C5A0 8007DD90 10006DE9 */  swc2       $13, 0x10($t3)
    /* 6C5A4 8007DD94 18006EE9 */  swc2       $14, 0x18($t3)
    /* 6C5A8 8007DD98 08004CE9 */  swc2       $12, 0x8($t2)
    /* 6C5AC 8007DD9C 10004DE9 */  swc2       $13, 0x10($t2)
    /* 6C5B0 8007DDA0 18004EE9 */  swc2       $14, 0x18($t2)
    /* 6C5B4 8007DDA4 2D00584B */  avsz3
    /* 6C5B8 8007DDA8 C0140400 */  sll        $v0, $a0, 19
    /* 6C5BC 8007DDAC 24105700 */  and        $v0, $v0, $s7
    /* 6C5C0 8007DDB0 432E0200 */  sra        $a1, $v0, 25
    /* 6C5C4 8007DDB4 0000F6AC */  sw         $s6, 0x0($a3)
    /* 6C5C8 8007DDB8 0400F0AC */  sw         $s0, 0x4($a3)
    /* 6C5CC 8007DDBC 0E00F4A4 */  sh         $s4, 0xE($a3)
    /* 6C5D0 8007DDC0 1600F5A4 */  sh         $s5, 0x16($a3)
    /* 6C5D4 8007DDC4 00380248 */  mfc2       $v0, $7 /* handwritten instruction */
    /* 6C5D8 8007DDC8 00000000 */  nop
    /* 6C5DC 8007DDCC 2128A200 */  addu       $a1, $a1, $v0
    /* 6C5E0 8007DDD0 0000B38F */  lw         $s3, 0x0($sp)
    /* 6C5E4 8007DDD4 00000000 */  nop
    /* 6C5E8 8007DDD8 2A40B300 */  slt        $t0, $a1, $s3
    /* 6C5EC 8007DDDC 02000015 */  bnez       $t0, .L8007DDE8
    /* 6C5F0 8007DDE0 2110A000 */   addu      $v0, $a1, $zero
    /* 6C5F4 8007DDE4 FAFF0227 */  addiu      $v0, $t8, -0x6
  .L8007DDE8:
    /* 6C5F8 8007DDE8 80100200 */  sll        $v0, $v0, 2
    /* 6C5FC 8007DDEC 21102202 */  addu       $v0, $s1, $v0
    /* 6C600 8007DDF0 02004488 */  lwl        $a0, 0x2($v0)
    /* 6C604 8007DDF4 001A0700 */  sll        $v1, $a3, 8
    /* 6C608 8007DDF8 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6C60C 8007DDFC 020043A8 */  swl        $v1, 0x2($v0)
    /* 6C610 8007DE00 21386001 */  addu       $a3, $t3, $zero
    /* 6C614 8007DE04 02000015 */  bnez       $t0, .L8007DE10
    /* 6C618 8007DE08 2110A000 */   addu      $v0, $a1, $zero
    /* 6C61C 8007DE0C FAFF0227 */  addiu      $v0, $t8, -0x6
  .L8007DE10:
    /* 6C620 8007DE10 80100200 */  sll        $v0, $v0, 2
    /* 6C624 8007DE14 21102202 */  addu       $v0, $s1, $v0
    /* 6C628 8007DE18 02004488 */  lwl        $a0, 0x2($v0)
    /* 6C62C 8007DE1C 001A0700 */  sll        $v1, $a3, 8
    /* 6C630 8007DE20 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6C634 8007DE24 020043A8 */  swl        $v1, 0x2($v0)
    /* 6C638 8007DE28 1C002725 */  addiu      $a3, $t1, 0x1C
  .L8007DE2C:
    /* 6C63C 8007DE2C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6C640 8007DE30 9AFFC014 */  bnez       $a2, .L8007DC9C
    /* 6C644 8007DE34 00000000 */   nop
  .L8007DE38:
    /* 6C648 8007DE38 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6C64C 8007DE3C 708C27AC */  sw         $a3, %lo(D_800C8C70)($at)
  .L8007DE40:
    /* 6C650 8007DE40 2800BE8F */  lw         $fp, 0x28($sp)
    /* 6C654 8007DE44 2400B78F */  lw         $s7, 0x24($sp)
    /* 6C658 8007DE48 2000B68F */  lw         $s6, 0x20($sp)
    /* 6C65C 8007DE4C 1C00B58F */  lw         $s5, 0x1C($sp)
    /* 6C660 8007DE50 1800B48F */  lw         $s4, 0x18($sp)
    /* 6C664 8007DE54 1400B38F */  lw         $s3, 0x14($sp)
    /* 6C668 8007DE58 1000B28F */  lw         $s2, 0x10($sp)
    /* 6C66C 8007DE5C 0C00B18F */  lw         $s1, 0xC($sp)
    /* 6C670 8007DE60 0800B08F */  lw         $s0, 0x8($sp)
    /* 6C674 8007DE64 0800E003 */  jr         $ra
    /* 6C678 8007DE68 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8007DBB8
