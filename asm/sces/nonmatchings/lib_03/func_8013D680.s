nonmatching func_8013D680, 0x23C

glabel func_8013D680
    /* AB4C 8013D680 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* AB50 8013D684 1400B1AF */  sw         $s1, 0x14($sp)
    /* AB54 8013D688 21888000 */  addu       $s1, $a0, $zero
    /* AB58 8013D68C 1800B2AF */  sw         $s2, 0x18($sp)
    /* AB5C 8013D690 2190A000 */  addu       $s2, $a1, $zero
    /* AB60 8013D694 2800BFAF */  sw         $ra, 0x28($sp)
    /* AB64 8013D698 2400B5AF */  sw         $s5, 0x24($sp)
    /* AB68 8013D69C 2000B4AF */  sw         $s4, 0x20($sp)
    /* AB6C 8013D6A0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* AB70 8013D6A4 FBF8040C */  jal        func_8013E3EC
    /* AB74 8013D6A8 1000B0AF */   sw        $s0, 0x10($sp)
    /* AB78 8013D6AC 04002586 */  lh         $a1, 0x4($s1)
    /* AB7C 8013D6B0 04002396 */  lhu        $v1, 0x4($s1)
    /* AB80 8013D6B4 0B00A004 */  bltz       $a1, .L8013D6E4
    /* AB84 8013D6B8 21A80000 */   addu      $s5, $zero, $zero
    /* AB88 8013D6BC 21206000 */  addu       $a0, $v1, $zero
    /* AB8C 8013D6C0 1C80023C */  lui        $v0, %hi(D_801BFC3C)
    /* AB90 8013D6C4 3CFC4284 */  lh         $v0, %lo(D_801BFC3C)($v0)
    /* AB94 8013D6C8 1C80033C */  lui        $v1, %hi(D_801BFC3C)
    /* AB98 8013D6CC 3CFC6394 */  lhu        $v1, %lo(D_801BFC3C)($v1)
    /* AB9C 8013D6D0 2A104500 */  slt        $v0, $v0, $a1
    /* ABA0 8013D6D4 04004010 */  beqz       $v0, .L8013D6E8
    /* ABA4 8013D6D8 00000000 */   nop
    /* ABA8 8013D6DC BAF50408 */  j          .L8013D6E8
    /* ABAC 8013D6E0 21206000 */   addu      $a0, $v1, $zero
  .L8013D6E4:
    /* ABB0 8013D6E4 21200000 */  addu       $a0, $zero, $zero
  .L8013D6E8:
    /* ABB4 8013D6E8 06002586 */  lh         $a1, 0x6($s1)
    /* ABB8 8013D6EC 06002396 */  lhu        $v1, 0x6($s1)
    /* ABBC 8013D6F0 0B00A004 */  bltz       $a1, .L8013D720
    /* ABC0 8013D6F4 040024A6 */   sh        $a0, 0x4($s1)
    /* ABC4 8013D6F8 21206000 */  addu       $a0, $v1, $zero
    /* ABC8 8013D6FC 1C80023C */  lui        $v0, %hi(D_801BFC3E)
    /* ABCC 8013D700 3EFC4284 */  lh         $v0, %lo(D_801BFC3E)($v0)
    /* ABD0 8013D704 1C80033C */  lui        $v1, %hi(D_801BFC3E)
    /* ABD4 8013D708 3EFC6394 */  lhu        $v1, %lo(D_801BFC3E)($v1)
    /* ABD8 8013D70C 2A104500 */  slt        $v0, $v0, $a1
    /* ABDC 8013D710 05004010 */  beqz       $v0, .L8013D728
    /* ABE0 8013D714 00140400 */   sll       $v0, $a0, 16
    /* ABE4 8013D718 C9F50408 */  j          .L8013D724
    /* ABE8 8013D71C 21206000 */   addu      $a0, $v1, $zero
  .L8013D720:
    /* ABEC 8013D720 21200000 */  addu       $a0, $zero, $zero
  .L8013D724:
    /* ABF0 8013D724 00140400 */  sll        $v0, $a0, 16
  .L8013D728:
    /* ABF4 8013D728 04002386 */  lh         $v1, 0x4($s1)
    /* ABF8 8013D72C 03140200 */  sra        $v0, $v0, 16
    /* ABFC 8013D730 18006200 */  mult       $v1, $v0
    /* AC00 8013D734 060024A6 */  sh         $a0, 0x6($s1)
    /* AC04 8013D738 12300000 */  mflo       $a2
    /* AC08 8013D73C 0100C324 */  addiu      $v1, $a2, 0x1
    /* AC0C 8013D740 C2170300 */  srl        $v0, $v1, 31
    /* AC10 8013D744 21186200 */  addu       $v1, $v1, $v0
    /* AC14 8013D748 43200300 */  sra        $a0, $v1, 1
    /* AC18 8013D74C 0300801C */  bgtz       $a0, .L8013D75C
    /* AC1C 8013D750 43810300 */   sra       $s0, $v1, 5
    /* AC20 8013D754 26F60408 */  j          .L8013D898
    /* AC24 8013D758 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8013D75C:
    /* AC28 8013D75C 21180002 */  addu       $v1, $s0, $zero
    /* AC2C 8013D760 00110300 */  sll        $v0, $v1, 4
    /* AC30 8013D764 23808200 */  subu       $s0, $a0, $v0
    /* AC34 8013D768 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* AC38 8013D76C 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* AC3C 8013D770 21A06000 */  addu       $s4, $v1, $zero
    /* AC40 8013D774 0000428C */  lw         $v0, 0x0($v0)
    /* AC44 8013D778 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* AC48 8013D77C 24104300 */  and        $v0, $v0, $v1
    /* AC4C 8013D780 0E004014 */  bnez       $v0, .L8013D7BC
    /* AC50 8013D784 00A0043C */   lui       $a0, (0xA0000000 >> 16)
    /* AC54 8013D788 0004133C */  lui        $s3, (0x4000000 >> 16)
  .L8013D78C:
    /* AC58 8013D78C 08F9040C */  jal        func_8013E420
    /* AC5C 8013D790 00000000 */   nop
    /* AC60 8013D794 40004014 */  bnez       $v0, .L8013D898
    /* AC64 8013D798 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* AC68 8013D79C 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* AC6C 8013D7A0 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* AC70 8013D7A4 00000000 */  nop
    /* AC74 8013D7A8 0000428C */  lw         $v0, 0x0($v0)
    /* AC78 8013D7AC 00000000 */  nop
    /* AC7C 8013D7B0 24105300 */  and        $v0, $v0, $s3
    /* AC80 8013D7B4 F5FF4010 */  beqz       $v0, .L8013D78C
    /* AC84 8013D7B8 00A0043C */   lui       $a0, (0xA0000000 >> 16)
  .L8013D7BC:
    /* AC88 8013D7BC 1C80033C */  lui        $v1, %hi(D_801BFD40)
    /* AC8C 8013D7C0 40FD638C */  lw         $v1, %lo(D_801BFD40)($v1)
    /* AC90 8013D7C4 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* AC94 8013D7C8 000062AC */  sw         $v0, 0x0($v1)
    /* AC98 8013D7CC 1C80033C */  lui        $v1, %hi(D_801BFD3C)
    /* AC9C 8013D7D0 3CFD638C */  lw         $v1, %lo(D_801BFD3C)($v1)
    /* ACA0 8013D7D4 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* ACA4 8013D7D8 000062AC */  sw         $v0, 0x0($v1)
    /* ACA8 8013D7DC 1C80023C */  lui        $v0, %hi(D_801BFD3C)
    /* ACAC 8013D7E0 3CFD428C */  lw         $v0, %lo(D_801BFD3C)($v0)
    /* ACB0 8013D7E4 0200A012 */  beqz       $s5, .L8013D7F0
    /* ACB4 8013D7E8 00000000 */   nop
    /* ACB8 8013D7EC 00B0043C */  lui        $a0, (0xB0000000 >> 16)
  .L8013D7F0:
    /* ACBC 8013D7F0 000044AC */  sw         $a0, 0x0($v0)
    /* ACC0 8013D7F4 1C80033C */  lui        $v1, %hi(D_801BFD3C)
    /* ACC4 8013D7F8 3CFD638C */  lw         $v1, %lo(D_801BFD3C)($v1)
    /* ACC8 8013D7FC 0000228E */  lw         $v0, 0x0($s1)
    /* ACCC 8013D800 00000000 */  nop
    /* ACD0 8013D804 000062AC */  sw         $v0, 0x0($v1)
    /* ACD4 8013D808 1C80033C */  lui        $v1, %hi(D_801BFD3C)
    /* ACD8 8013D80C 3CFD638C */  lw         $v1, %lo(D_801BFD3C)($v1)
    /* ACDC 8013D810 0400228E */  lw         $v0, 0x4($s1)
    /* ACE0 8013D814 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* ACE4 8013D818 000062AC */  sw         $v0, 0x0($v1)
    /* ACE8 8013D81C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* ACEC 8013D820 09000212 */  beq        $s0, $v0, .L8013D848
    /* ACF0 8013D824 00000000 */   nop
    /* ACF4 8013D828 FFFF0424 */  addiu      $a0, $zero, -0x1
  .L8013D82C:
    /* ACF8 8013D82C 0000438E */  lw         $v1, 0x0($s2)
    /* ACFC 8013D830 04005226 */  addiu      $s2, $s2, 0x4
    /* AD00 8013D834 1C80023C */  lui        $v0, %hi(D_801BFD3C)
    /* AD04 8013D838 3CFD428C */  lw         $v0, %lo(D_801BFD3C)($v0)
    /* AD08 8013D83C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* AD0C 8013D840 FAFF0416 */  bne        $s0, $a0, .L8013D82C
    /* AD10 8013D844 000043AC */   sw        $v1, 0x0($v0)
  .L8013D848:
    /* AD14 8013D848 12008012 */  beqz       $s4, .L8013D894
    /* AD18 8013D84C 0004033C */   lui       $v1, (0x4000002 >> 16)
    /* AD1C 8013D850 1C80023C */  lui        $v0, %hi(D_801BFD40)
    /* AD20 8013D854 40FD428C */  lw         $v0, %lo(D_801BFD40)($v0)
    /* AD24 8013D858 02006334 */  ori        $v1, $v1, (0x4000002 & 0xFFFF)
    /* AD28 8013D85C 000043AC */  sw         $v1, 0x0($v0)
    /* AD2C 8013D860 1C80023C */  lui        $v0, %hi(D_801BFD44)
    /* AD30 8013D864 44FD428C */  lw         $v0, %lo(D_801BFD44)($v0)
    /* AD34 8013D868 0001043C */  lui        $a0, (0x1000201 >> 16)
    /* AD38 8013D86C 000052AC */  sw         $s2, 0x0($v0)
    /* AD3C 8013D870 00141400 */  sll        $v0, $s4, 16
    /* AD40 8013D874 1C80033C */  lui        $v1, %hi(D_801BFD48)
    /* AD44 8013D878 48FD638C */  lw         $v1, %lo(D_801BFD48)($v1)
    /* AD48 8013D87C 10004234 */  ori        $v0, $v0, 0x10
    /* AD4C 8013D880 000062AC */  sw         $v0, 0x0($v1)
    /* AD50 8013D884 1C80023C */  lui        $v0, %hi(D_801BFD4C)
    /* AD54 8013D888 4CFD428C */  lw         $v0, %lo(D_801BFD4C)($v0)
    /* AD58 8013D88C 01028434 */  ori        $a0, $a0, (0x1000201 & 0xFFFF)
    /* AD5C 8013D890 000044AC */  sw         $a0, 0x0($v0)
  .L8013D894:
    /* AD60 8013D894 21100000 */  addu       $v0, $zero, $zero
  .L8013D898:
    /* AD64 8013D898 2800BF8F */  lw         $ra, 0x28($sp)
    /* AD68 8013D89C 2400B58F */  lw         $s5, 0x24($sp)
    /* AD6C 8013D8A0 2000B48F */  lw         $s4, 0x20($sp)
    /* AD70 8013D8A4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* AD74 8013D8A8 1800B28F */  lw         $s2, 0x18($sp)
    /* AD78 8013D8AC 1400B18F */  lw         $s1, 0x14($sp)
    /* AD7C 8013D8B0 1000B08F */  lw         $s0, 0x10($sp)
    /* AD80 8013D8B4 0800E003 */  jr         $ra
    /* AD84 8013D8B8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8013D680
