/* Handwritten function */
nonmatching func_8007BD1C, 0x294

glabel func_8007BD1C
    /* 6A52C 8007BD1C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6A530 8007BD20 21388000 */  addu       $a3, $a0, $zero
    /* 6A534 8007BD24 2170C000 */  addu       $t6, $a2, $zero
    /* 6A538 8007BD28 0000B0AF */  sw         $s0, 0x0($sp)
    /* 6A53C 8007BD2C 2180A000 */  addu       $s0, $a1, $zero
    /* 6A540 8007BD30 C0180E00 */  sll        $v1, $t6, 3
    /* 6A544 8007BD34 0D80063C */  lui        $a2, %hi(D_800C8C70)
    /* 6A548 8007BD38 708CC68C */  lw         $a2, %lo(D_800C8C70)($a2)
    /* 6A54C 8007BD3C 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6A550 8007BD40 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6A554 8007BD44 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6A558 8007BD48 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6A55C 8007BD4C 21186E00 */  addu       $v1, $v1, $t6
    /* 6A560 8007BD50 2000BEAF */  sw         $fp, 0x20($sp)
    /* 6A564 8007BD54 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 6A568 8007BD58 1800B6AF */  sw         $s6, 0x18($sp)
    /* 6A56C 8007BD5C 1400B5AF */  sw         $s5, 0x14($sp)
    /* 6A570 8007BD60 1000B4AF */  sw         $s4, 0x10($sp)
    /* 6A574 8007BD64 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 6A578 8007BD68 0800B2AF */  sw         $s2, 0x8($sp)
    /* 6A57C 8007BD6C 2310C200 */  subu       $v0, $a2, $v0
    /* 6A580 8007BD70 04004224 */  addiu      $v0, $v0, 0x4
    /* 6A584 8007BD74 21104300 */  addu       $v0, $v0, $v1
    /* 6A588 8007BD78 2A104400 */  slt        $v0, $v0, $a0
    /* 6A58C 8007BD7C 81004010 */  beqz       $v0, .L8007BF84
    /* 6A590 8007BD80 0400B1AF */   sw        $s1, 0x4($sp)
    /* 6A594 8007BD84 2148C000 */  addu       $t1, $a2, $zero
    /* 6A598 8007BD88 C77F123C */  lui        $s2, (0x7FC7E000 >> 16)
    /* 6A59C 8007BD8C 2168E000 */  addu       $t5, $a3, $zero
    /* 6A5A0 8007BD90 00E05236 */  ori        $s2, $s2, (0x7FC7E000 & 0xFFFF)
    /* 6A5A4 8007BD94 0000A38D */  lw         $v1, 0x0($t5)
    /* 6A5A8 8007BD98 0400A48D */  lw         $a0, 0x4($t5)
    /* 6A5AC 8007BD9C 0D80163C */  lui        $s6, %hi(D_800CBDC0)
    /* 6A5B0 8007BDA0 C0BDD68E */  lw         $s6, %lo(D_800CBDC0)($s6)
    /* 6A5B4 8007BDA4 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6A5B8 8007BDA8 C0100200 */  sll        $v0, $v0, 3
    /* 6A5BC 8007BDAC 21880202 */  addu       $s1, $s0, $v0
    /* 6A5C0 8007BDB0 021C0300 */  srl        $v1, $v1, 16
    /* 6A5C4 8007BDB4 C0180300 */  sll        $v1, $v1, 3
    /* 6A5C8 8007BDB8 21C80302 */  addu       $t9, $s0, $v1
    /* 6A5CC 8007BDBC FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6A5D0 8007BDC0 C0100200 */  sll        $v0, $v0, 3
    /* 6A5D4 8007BDC4 21980202 */  addu       $s3, $s0, $v0
    /* 6A5D8 8007BDC8 02240400 */  srl        $a0, $a0, 16
    /* 6A5DC 8007BDCC C0200400 */  sll        $a0, $a0, 3
    /* 6A5E0 8007BDD0 0D80023C */  lui        $v0, %hi(D_800CBDC4)
    /* 6A5E4 8007BDD4 C4BD428C */  lw         $v0, %lo(D_800CBDC4)($v0)
    /* 6A5E8 8007BDD8 00000000 */  nop
    /* 6A5EC 8007BDDC 0400548C */  lw         $s4, 0x4($v0)
    /* 6A5F0 8007BDE0 6600C011 */  beqz       $t6, .L8007BF7C
    /* 6A5F4 8007BDE4 21780402 */   addu      $t7, $s0, $a0
    /* 6A5F8 8007BDE8 00091E3C */  lui        $fp, (0x9000000 >> 16)
    /* 6A5FC 8007BDEC 00C0173C */  lui        $s7, (0xC0000000 >> 16)
    /* 6A600 8007BDF0 FBFF9526 */  addiu      $s5, $s4, -0x5
    /* 6A604 8007BDF4 1C003825 */  addiu      $t8, $t1, 0x1C
    /* 6A608 8007BDF8 24002A25 */  addiu      $t2, $t1, 0x24
  .L8007BDFC:
    /* 6A60C 8007BDFC 000020CA */  lwc2       $0, 0x0($s1)
    /* 6A610 8007BE00 040021CA */  lwc2       $1, 0x4($s1)
    /* 6A614 8007BE04 000022CB */  lwc2       $2, 0x0($t9)
    /* 6A618 8007BE08 040023CB */  lwc2       $3, 0x4($t9)
    /* 6A61C 8007BE0C 0000E4C9 */  lwc2       $4, 0x0($t7)
    /* 6A620 8007BE10 0400E5C9 */  lwc2       $5, 0x4($t7)
    /* 6A624 8007BE14 2138A001 */  addu       $a3, $t5, $zero
    /* 6A628 8007BE18 1C00ED24 */  addiu      $t5, $a3, 0x1C
    /* 6A62C 8007BE1C 21286002 */  addu       $a1, $s3, $zero
    /* 6A630 8007BE20 3000284A */  rtpt
    /* 6A634 8007BE24 1C00E38C */  lw         $v1, 0x1C($a3)
    /* 6A638 8007BE28 0400A48D */  lw         $a0, 0x4($t5)
    /* 6A63C 8007BE2C 1800EC8C */  lw         $t4, 0x18($a3)
    /* 6A640 8007BE30 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6A644 8007BE34 C0100200 */  sll        $v0, $v0, 3
    /* 6A648 8007BE38 21880202 */  addu       $s1, $s0, $v0
    /* 6A64C 8007BE3C 021C0300 */  srl        $v1, $v1, 16
    /* 6A650 8007BE40 C0180300 */  sll        $v1, $v1, 3
    /* 6A654 8007BE44 21C80302 */  addu       $t9, $s0, $v1
    /* 6A658 8007BE48 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6A65C 8007BE4C C0100200 */  sll        $v0, $v0, 3
    /* 6A660 8007BE50 21980202 */  addu       $s3, $s0, $v0
    /* 6A664 8007BE54 02240400 */  srl        $a0, $a0, 16
    /* 6A668 8007BE58 C0200400 */  sll        $a0, $a0, 3
    /* 6A66C 8007BE5C 21780402 */  addu       $t7, $s0, $a0
    /* 6A670 8007BE60 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6A674 8007BE64 00000000 */  nop
    /* 6A678 8007BE68 24105200 */  and        $v0, $v0, $s2
    /* 6A67C 8007BE6C 40004014 */  bnez       $v0, .L8007BF70
    /* 6A680 8007BE70 00000000 */   nop
    /* 6A684 8007BE74 0600404B */  nclip
    /* 6A688 8007BE78 00003EAD */  sw         $fp, 0x0($t1)
    /* 6A68C 8007BE7C 0800E28C */  lw         $v0, 0x8($a3)
    /* 6A690 8007BE80 21402001 */  addu       $t0, $t1, $zero
    /* 6A694 8007BE84 E0FF42AD */  sw         $v0, -0x20($t2)
    /* 6A698 8007BE88 00C00B48 */  mfc2       $t3, $24 /* handwritten instruction */
    /* 6A69C 8007BE8C 08000CE9 */  swc2       $12, 0x8($t0)
    /* 6A6A0 8007BE90 10000DE9 */  swc2       $13, 0x10($t0)
    /* 6A6A4 8007BE94 18000EE9 */  swc2       $14, 0x18($t0)
    /* 6A6A8 8007BE98 0000A0C8 */  lwc2       $0, 0x0($a1)
    /* 6A6AC 8007BE9C 0400A1C8 */  lwc2       $1, 0x4($a1)
    /* 6A6B0 8007BEA0 00000000 */  nop
    /* 6A6B4 8007BEA4 00000000 */  nop
    /* 6A6B8 8007BEA8 0100184A */  rtps
    /* 6A6BC 8007BEAC 0C42828F */  lw         $v0, %gp_rel(D_800C88FC)($gp)
    /* 6A6C0 8007BEB0 0C00E38C */  lw         $v1, 0xC($a3)
    /* 6A6C4 8007BEB4 1000E48C */  lw         $a0, 0x10($a3)
    /* 6A6C8 8007BEB8 1400E594 */  lhu        $a1, 0x14($a3)
    /* 6A6CC 8007BEBC 1600E694 */  lhu        $a2, 0x16($a3)
    /* 6A6D0 8007BEC0 21104300 */  addu       $v0, $v0, $v1
    /* 6A6D4 8007BEC4 E8FF42AD */  sw         $v0, -0x18($t2)
    /* 6A6D8 8007BEC8 F0FF44AD */  sw         $a0, -0x10($t2)
    /* 6A6DC 8007BECC 000045A5 */  sh         $a1, 0x0($t2)
    /* 6A6E0 8007BED0 000006A7 */  sh         $a2, 0x0($t8)
    /* 6A6E4 8007BED4 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6A6E8 8007BED8 00000000 */  nop
    /* 6A6EC 8007BEDC 24105200 */  and        $v0, $v0, $s2
    /* 6A6F0 8007BEE0 23004014 */  bnez       $v0, .L8007BF70
    /* 6A6F4 8007BEE4 00000000 */   nop
    /* 6A6F8 8007BEE8 20000EE9 */  swc2       $14, 0x20($t0)
    /* 6A6FC 8007BEEC 82170C00 */  srl        $v0, $t4, 30
    /* 6A700 8007BEF0 01004238 */  xori       $v0, $v0, 0x1
    /* 6A704 8007BEF4 01004230 */  andi       $v0, $v0, 0x1
    /* 6A708 8007BEF8 09004010 */  beqz       $v0, .L8007BF20
    /* 6A70C 8007BEFC 00000000 */   nop
    /* 6A710 8007BF00 07006105 */  bgez       $t3, .L8007BF20
    /* 6A714 8007BF04 00000000 */   nop
    /* 6A718 8007BF08 0600404B */  nclip
    /* 6A71C 8007BF0C 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6A720 8007BF10 00000000 */  nop
    /* 6A724 8007BF14 F4FF4228 */  slti       $v0, $v0, -0xC
    /* 6A728 8007BF18 15004010 */  beqz       $v0, .L8007BF70
    /* 6A72C 8007BF1C 00000000 */   nop
  .L8007BF20:
    /* 6A730 8007BF20 2E00684B */  avsz4
    /* 6A734 8007BF24 C0140C00 */  sll        $v0, $t4, 19
    /* 6A738 8007BF28 24105700 */  and        $v0, $v0, $s7
    /* 6A73C 8007BF2C 43160200 */  sra        $v0, $v0, 25
    /* 6A740 8007BF30 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* 6A744 8007BF34 00000000 */  nop
    /* 6A748 8007BF38 21104300 */  addu       $v0, $v0, $v1
    /* 6A74C 8007BF3C 2A205500 */  slt        $a0, $v0, $s5
    /* 6A750 8007BF40 03008014 */  bnez       $a0, .L8007BF50
    /* 6A754 8007BF44 80100200 */   sll       $v0, $v0, 2
    /* 6A758 8007BF48 FAFF8226 */  addiu      $v0, $s4, -0x6
    /* 6A75C 8007BF4C 80100200 */  sll        $v0, $v0, 2
  .L8007BF50:
    /* 6A760 8007BF50 2110C202 */  addu       $v0, $s6, $v0
    /* 6A764 8007BF54 02004488 */  lwl        $a0, 0x2($v0)
    /* 6A768 8007BF58 001A0900 */  sll        $v1, $t1, 8
    /* 6A76C 8007BF5C 020024A9 */  swl        $a0, 0x2($t1)
    /* 6A770 8007BF60 020043A8 */  swl        $v1, 0x2($v0)
    /* 6A774 8007BF64 28004A25 */  addiu      $t2, $t2, 0x28
    /* 6A778 8007BF68 28001827 */  addiu      $t8, $t8, 0x28
    /* 6A77C 8007BF6C 28002925 */  addiu      $t1, $t1, 0x28
  .L8007BF70:
    /* 6A780 8007BF70 FFFFCE25 */  addiu      $t6, $t6, -0x1
    /* 6A784 8007BF74 A1FFC015 */  bnez       $t6, .L8007BDFC
    /* 6A788 8007BF78 00000000 */   nop
  .L8007BF7C:
    /* 6A78C 8007BF7C 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6A790 8007BF80 708C29AC */  sw         $t1, %lo(D_800C8C70)($at)
  .L8007BF84:
    /* 6A794 8007BF84 2000BE8F */  lw         $fp, 0x20($sp)
    /* 6A798 8007BF88 1C00B78F */  lw         $s7, 0x1C($sp)
    /* 6A79C 8007BF8C 1800B68F */  lw         $s6, 0x18($sp)
    /* 6A7A0 8007BF90 1400B58F */  lw         $s5, 0x14($sp)
    /* 6A7A4 8007BF94 1000B48F */  lw         $s4, 0x10($sp)
    /* 6A7A8 8007BF98 0C00B38F */  lw         $s3, 0xC($sp)
    /* 6A7AC 8007BF9C 0800B28F */  lw         $s2, 0x8($sp)
    /* 6A7B0 8007BFA0 0400B18F */  lw         $s1, 0x4($sp)
    /* 6A7B4 8007BFA4 0000B08F */  lw         $s0, 0x0($sp)
    /* 6A7B8 8007BFA8 0800E003 */  jr         $ra
    /* 6A7BC 8007BFAC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8007BD1C
