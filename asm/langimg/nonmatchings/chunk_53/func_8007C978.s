/* Handwritten function */
nonmatching func_8007C978, 0x2C4

glabel func_8007C978
    /* 6B188 8007C978 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6B18C 8007C97C 2170C000 */  addu       $t6, $a2, $zero
    /* 6B190 8007C980 801F193C */  lui        $t9, (0x1F800008 >> 16)
    /* 6B194 8007C984 08003937 */  ori        $t9, $t9, (0x1F800008 & 0xFFFF)
    /* 6B198 8007C988 2000B6AF */  sw         $s6, 0x20($sp)
    /* 6B19C 8007C98C C77F163C */  lui        $s6, (0x7FC7E000 >> 16)
    /* 6B1A0 8007C990 00E0D636 */  ori        $s6, $s6, (0x7FC7E000 & 0xFFFF)
    /* 6B1A4 8007C994 21C08000 */  addu       $t8, $a0, $zero
    /* 6B1A8 8007C998 0D800D3C */  lui        $t5, %hi(D_800C8C70)
    /* 6B1AC 8007C99C 708CAD8D */  lw         $t5, %lo(D_800C8C70)($t5)
    /* 6B1B0 8007C9A0 FEFFE724 */  addiu      $a3, $a3, -0x2
    /* 6B1B4 8007C9A4 2800BEAF */  sw         $fp, 0x28($sp)
    /* 6B1B8 8007C9A8 2400B7AF */  sw         $s7, 0x24($sp)
    /* 6B1BC 8007C9AC 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 6B1C0 8007C9B0 1800B4AF */  sw         $s4, 0x18($sp)
    /* 6B1C4 8007C9B4 1400B3AF */  sw         $s3, 0x14($sp)
    /* 6B1C8 8007C9B8 1000B2AF */  sw         $s2, 0x10($sp)
    /* 6B1CC 8007C9BC 0C00B1AF */  sw         $s1, 0xC($sp)
    /* 6B1D0 8007C9C0 0800B0AF */  sw         $s0, 0x8($sp)
    /* 6B1D4 8007C9C4 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B1D8 8007C9C8 801F173C */  lui        $s7, (0x1F800004 >> 16)
    /* 6B1DC 8007C9CC 0400F78E */  lw         $s7, (0x1F800004 & 0xFFFF)($s7)
    /* 6B1E0 8007C9D0 21105900 */  addu       $v0, $v0, $t9
    /* 6B1E4 8007C9D4 00004380 */  lb         $v1, 0x0($v0)
    /* 6B1E8 8007C9D8 2188A000 */  addu       $s1, $a1, $zero
    /* 6B1EC 8007C9DC 0D006014 */  bnez       $v1, .L8007CA14
    /* 6B1F0 8007C9E0 0000B7AF */   sw        $s7, 0x0($sp)
  .L8007C9E4:
    /* 6B1F4 8007C9E4 1C001827 */  addiu      $t8, $t8, 0x1C
  .L8007C9E8:
    /* 6B1F8 8007C9E8 FFFFCE25 */  addiu      $t6, $t6, -0x1
    /* 6B1FC 8007C9EC 0900C011 */  beqz       $t6, .L8007CA14
    /* 6B200 8007C9F0 0200E724 */   addiu     $a3, $a3, 0x2
    /* 6B204 8007C9F4 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B208 8007C9F8 00000000 */  nop
    /* 6B20C 8007C9FC 21102203 */  addu       $v0, $t9, $v0
    /* 6B210 8007CA00 00004380 */  lb         $v1, 0x0($v0)
    /* 6B214 8007CA04 00000000 */  nop
    /* 6B218 8007CA08 F7FF6010 */  beqz       $v1, .L8007C9E8
    /* 6B21C 8007CA0C 1C001827 */   addiu     $t8, $t8, 0x1C
    /* 6B220 8007CA10 E4FF1827 */  addiu      $t8, $t8, -0x1C
  .L8007CA14:
    /* 6B224 8007CA14 0000038F */  lw         $v1, 0x0($t8)
    /* 6B228 8007CA18 0400048F */  lw         $a0, 0x4($t8)
    /* 6B22C 8007CA1C FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6B230 8007CA20 C0100200 */  sll        $v0, $v0, 3
    /* 6B234 8007CA24 21A02202 */  addu       $s4, $s1, $v0
    /* 6B238 8007CA28 021C0300 */  srl        $v1, $v1, 16
    /* 6B23C 8007CA2C C0180300 */  sll        $v1, $v1, 3
    /* 6B240 8007CA30 21902302 */  addu       $s2, $s1, $v1
    /* 6B244 8007CA34 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6B248 8007CA38 C0100200 */  sll        $v0, $v0, 3
    /* 6B24C 8007CA3C 21A82202 */  addu       $s5, $s1, $v0
    /* 6B250 8007CA40 02240400 */  srl        $a0, $a0, 16
    /* 6B254 8007CA44 C0200400 */  sll        $a0, $a0, 3
    /* 6B258 8007CA48 6F00C011 */  beqz       $t6, .L8007CC08
    /* 6B25C 8007CA4C 21802402 */   addu      $s0, $s1, $a0
    /* 6B260 8007CA50 00C01E3C */  lui        $fp, (0xC0000000 >> 16)
    /* 6B264 8007CA54 2400B325 */  addiu      $s3, $t5, 0x24
    /* 6B268 8007CA58 1C00AC25 */  addiu      $t4, $t5, 0x1C
  .L8007CA5C:
    /* 6B26C 8007CA5C 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B270 8007CA60 00000000 */  nop
    /* 6B274 8007CA64 21102203 */  addu       $v0, $t9, $v0
    /* 6B278 8007CA68 00004380 */  lb         $v1, 0x0($v0)
    /* 6B27C 8007CA6C 00000000 */  nop
    /* 6B280 8007CA70 DCFF6010 */  beqz       $v1, .L8007C9E4
    /* 6B284 8007CA74 00000000 */   nop
    /* 6B288 8007CA78 000080CA */  lwc2       $0, 0x0($s4)
    /* 6B28C 8007CA7C 040081CA */  lwc2       $1, 0x4($s4)
    /* 6B290 8007CA80 000042CA */  lwc2       $2, 0x0($s2)
    /* 6B294 8007CA84 040043CA */  lwc2       $3, 0x4($s2)
    /* 6B298 8007CA88 000004CA */  lwc2       $4, 0x0($s0)
    /* 6B29C 8007CA8C 040005CA */  lwc2       $5, 0x4($s0)
    /* 6B2A0 8007CA90 21280003 */  addu       $a1, $t8, $zero
    /* 6B2A4 8007CA94 1C00B824 */  addiu      $t8, $a1, 0x1C
    /* 6B2A8 8007CA98 2130A002 */  addu       $a2, $s5, $zero
    /* 6B2AC 8007CA9C 3000284A */  rtpt
    /* 6B2B0 8007CAA0 1C00A38C */  lw         $v1, 0x1C($a1)
    /* 6B2B4 8007CAA4 0400048F */  lw         $a0, 0x4($t8)
    /* 6B2B8 8007CAA8 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6B2BC 8007CAAC C0100200 */  sll        $v0, $v0, 3
    /* 6B2C0 8007CAB0 21A02202 */  addu       $s4, $s1, $v0
    /* 6B2C4 8007CAB4 021C0300 */  srl        $v1, $v1, 16
    /* 6B2C8 8007CAB8 C0180300 */  sll        $v1, $v1, 3
    /* 6B2CC 8007CABC 21902302 */  addu       $s2, $s1, $v1
    /* 6B2D0 8007CAC0 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6B2D4 8007CAC4 C0100200 */  sll        $v0, $v0, 3
    /* 6B2D8 8007CAC8 21A82202 */  addu       $s5, $s1, $v0
    /* 6B2DC 8007CACC 02240400 */  srl        $a0, $a0, 16
    /* 6B2E0 8007CAD0 C0200400 */  sll        $a0, $a0, 3
    /* 6B2E4 8007CAD4 21802402 */  addu       $s0, $s1, $a0
    /* 6B2E8 8007CAD8 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6B2EC 8007CADC 00000000 */  nop
    /* 6B2F0 8007CAE0 24105600 */  and        $v0, $v0, $s6
    /* 6B2F4 8007CAE4 45004014 */  bnez       $v0, .L8007CBFC
    /* 6B2F8 8007CAE8 0200E724 */   addiu     $a3, $a3, 0x2
    /* 6B2FC 8007CAEC 0009173C */  lui        $s7, (0x9000000 >> 16)
    /* 6B300 8007CAF0 1800AF8C */  lw         $t7, 0x18($a1)
    /* 6B304 8007CAF4 0800A28C */  lw         $v0, 0x8($a1)
    /* 6B308 8007CAF8 2118A001 */  addu       $v1, $t5, $zero
    /* 6B30C 8007CAFC 0000B7AD */  sw         $s7, 0x0($t5)
    /* 6B310 8007CB00 E8FF82AD */  sw         $v0, -0x18($t4)
    /* 6B314 8007CB04 2D00584B */  avsz3
    /* 6B318 8007CB08 0000C0C8 */  lwc2       $0, 0x0($a2)
    /* 6B31C 8007CB0C 0400C1C8 */  lwc2       $1, 0x4($a2)
    /* 6B320 8007CB10 0002E231 */  andi       $v0, $t7, 0x200
    /* 6B324 8007CB14 02004010 */  beqz       $v0, .L8007CB20
    /* 6B328 8007CB18 21400000 */   addu      $t0, $zero, $zero
    /* 6B32C 8007CB1C 00380848 */  mfc2       $t0, $7 /* handwritten instruction */
  .L8007CB20:
    /* 6B330 8007CB20 08006CE8 */  swc2       $12, 0x8($v1)
    /* 6B334 8007CB24 10006DE8 */  swc2       $13, 0x10($v1)
    /* 6B338 8007CB28 18006EE8 */  swc2       $14, 0x18($v1)
    /* 6B33C 8007CB2C 0100184A */  rtps
    /* 6B340 8007CB30 0C00A98C */  lw         $t1, 0xC($a1)
    /* 6B344 8007CB34 1000AA8C */  lw         $t2, 0x10($a1)
    /* 6B348 8007CB38 1400AB8C */  lw         $t3, 0x14($a1)
    /* 6B34C 8007CB3C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6B350 8007CB40 20006EE8 */  swc2       $14, 0x20($v1)
    /* 6B354 8007CB44 24105600 */  and        $v0, $v0, $s6
    /* 6B358 8007CB48 2C004014 */  bnez       $v0, .L8007CBFC
    /* 6B35C 8007CB4C 43420800 */   sra       $t0, $t0, 9
    /* 6B360 8007CB50 04000229 */  slti       $v0, $t0, 0x4
    /* 6B364 8007CB54 02004014 */  bnez       $v0, .L8007CB60
    /* 6B368 8007CB58 03340900 */   sra       $a2, $t1, 16
    /* 6B36C 8007CB5C 03000824 */  addiu      $t0, $zero, 0x3
  .L8007CB60:
    /* 6B370 8007CB60 07480901 */  srav       $t1, $t1, $t0
    /* 6B374 8007CB64 03240A00 */  sra        $a0, $t2, 16
    /* 6B378 8007CB68 07500A01 */  srav       $t2, $t2, $t0
    /* 6B37C 8007CB6C 07580B01 */  srav       $t3, $t3, $t0
    /* 6B380 8007CB70 032C0B00 */  sra        $a1, $t3, 16
    /* 6B384 8007CB74 F0F01734 */  ori        $s7, $zero, 0xF0F0
    /* 6B388 8007CB78 07181701 */  srav       $v1, $s7, $t0
    /* 6B38C 8007CB7C 0F0F6334 */  ori        $v1, $v1, 0xF0F
    /* 6B390 8007CB80 24482301 */  and        $t1, $t1, $v1
    /* 6B394 8007CB84 24504301 */  and        $t2, $t2, $v1
    /* 6B398 8007CB88 24586301 */  and        $t3, $t3, $v1
    /* 6B39C 8007CB8C 2428A300 */  and        $a1, $a1, $v1
    /* 6B3A0 8007CB90 C0140F00 */  sll        $v0, $t7, 19
    /* 6B3A4 8007CB94 24105E00 */  and        $v0, $v0, $fp
    /* 6B3A8 8007CB98 83170200 */  sra        $v0, $v0, 30
    /* 6B3AC 8007CB9C FAFF84A5 */  sh         $a0, -0x6($t4)
    /* 6B3B0 8007CBA0 02004424 */  addiu      $a0, $v0, 0x2
    /* 6B3B4 8007CBA4 F2FF86A5 */  sh         $a2, -0xE($t4)
    /* 6B3B8 8007CBA8 F0FF89A5 */  sh         $t1, -0x10($t4)
    /* 6B3BC 8007CBAC F8FF8AA5 */  sh         $t2, -0x8($t4)
    /* 6B3C0 8007CBB0 000085A5 */  sh         $a1, 0x0($t4)
    /* 6B3C4 8007CBB4 00006BA6 */  sh         $t3, 0x0($s3)
    /* 6B3C8 8007CBB8 801F023C */  lui        $v0, (0x1F800000 >> 16)
    /* 6B3CC 8007CBBC 0000428C */  lw         $v0, (0x1F800000 & 0xFFFF)($v0)
    /* 6B3D0 8007CBC0 0000E380 */  lb         $v1, 0x0($a3)
    /* 6B3D4 8007CBC4 0000B78F */  lw         $s7, 0x0($sp)
    /* 6B3D8 8007CBC8 04204400 */  sllv       $a0, $a0, $v0
    /* 6B3DC 8007CBCC 80180300 */  sll        $v1, $v1, 2
    /* 6B3E0 8007CBD0 21208300 */  addu       $a0, $a0, $v1
    /* 6B3E4 8007CBD4 21108800 */  addu       $v0, $a0, $t0
    /* 6B3E8 8007CBD8 80100200 */  sll        $v0, $v0, 2
    /* 6B3EC 8007CBDC 2110E202 */  addu       $v0, $s7, $v0
    /* 6B3F0 8007CBE0 02004488 */  lwl        $a0, 0x2($v0)
    /* 6B3F4 8007CBE4 001A0D00 */  sll        $v1, $t5, 8
    /* 6B3F8 8007CBE8 0200A4A9 */  swl        $a0, 0x2($t5)
    /* 6B3FC 8007CBEC 020043A8 */  swl        $v1, 0x2($v0)
    /* 6B400 8007CBF0 28008C25 */  addiu      $t4, $t4, 0x28
    /* 6B404 8007CBF4 28007326 */  addiu      $s3, $s3, 0x28
    /* 6B408 8007CBF8 2800AD25 */  addiu      $t5, $t5, 0x28
  .L8007CBFC:
    /* 6B40C 8007CBFC FFFFCE25 */  addiu      $t6, $t6, -0x1
    /* 6B410 8007CC00 96FFC015 */  bnez       $t6, .L8007CA5C
    /* 6B414 8007CC04 00000000 */   nop
  .L8007CC08:
    /* 6B418 8007CC08 2800BE8F */  lw         $fp, 0x28($sp)
    /* 6B41C 8007CC0C 2400B78F */  lw         $s7, 0x24($sp)
    /* 6B420 8007CC10 2000B68F */  lw         $s6, 0x20($sp)
    /* 6B424 8007CC14 1C00B58F */  lw         $s5, 0x1C($sp)
    /* 6B428 8007CC18 1800B48F */  lw         $s4, 0x18($sp)
    /* 6B42C 8007CC1C 1400B38F */  lw         $s3, 0x14($sp)
    /* 6B430 8007CC20 1000B28F */  lw         $s2, 0x10($sp)
    /* 6B434 8007CC24 0C00B18F */  lw         $s1, 0xC($sp)
    /* 6B438 8007CC28 0800B08F */  lw         $s0, 0x8($sp)
    /* 6B43C 8007CC2C 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6B440 8007CC30 708C2DAC */  sw         $t5, %lo(D_800C8C70)($at)
    /* 6B444 8007CC34 0800E003 */  jr         $ra
    /* 6B448 8007CC38 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8007C978
