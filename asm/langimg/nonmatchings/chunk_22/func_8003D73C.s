nonmatching func_8003D73C, 0xB4

glabel func_8003D73C
    /* 2BF4C 8003D73C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2BF50 8003D740 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2BF54 8003D744 21808000 */  addu       $s0, $a0, $zero
    /* 2BF58 8003D748 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2BF5C 8003D74C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2BF60 8003D750 900A038E */  lw         $v1, 0xA90($s0)
    /* 2BF64 8003D754 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BF68 8003D758 03006210 */  beq        $v1, $v0, .L8003D768
    /* 2BF6C 8003D75C 04000224 */   addiu     $v0, $zero, 0x4
    /* 2BF70 8003D760 04006214 */  bne        $v1, $v0, .L8003D774
    /* 2BF74 8003D764 00000000 */   nop
  .L8003D768:
    /* 2BF78 8003D768 840A048E */  lw         $a0, 0xA84($s0)
    /* 2BF7C 8003D76C DEF50008 */  j          .L8003D778
    /* 2BF80 8003D770 00000000 */   nop
  .L8003D774:
    /* 2BF84 8003D774 800A048E */  lw         $a0, 0xA80($s0)
  .L8003D778:
    /* 2BF88 8003D778 940A068E */  lw         $a2, 0xA94($s0)
    /* 2BF8C 8003D77C F8FFA38C */  lw         $v1, -0x8($a1)
    /* 2BF90 8003D780 FCFFB18C */  lw         $s1, -0x4($a1)
    /* 2BF94 8003D784 0001C230 */  andi       $v0, $a2, 0x100
    /* 2BF98 8003D788 13004014 */  bnez       $v0, .L8003D7D8
    /* 2BF9C 8003D78C 00000000 */   nop
    /* 2BFA0 8003D790 11006010 */  beqz       $v1, .L8003D7D8
    /* 2BFA4 8003D794 0001C234 */   ori       $v0, $a2, 0x100
    /* 2BFA8 8003D798 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 2BFAC 8003D79C 04002316 */  bne        $s1, $v1, .L8003D7B0
    /* 2BFB0 8003D7A0 940A02AE */   sw        $v0, 0xA94($s0)
    /* 2BFB4 8003D7A4 0401C234 */  ori        $v0, $a2, 0x104
    /* 2BFB8 8003D7A8 F6F50008 */  j          .L8003D7D8
    /* 2BFBC 8003D7AC 940A02AE */   sw        $v0, 0xA94($s0)
  .L8003D7B0:
    /* 2BFC0 8003D7B0 0C80053C */  lui        $a1, %hi(D_800C4E20)
    /* 2BFC4 8003D7B4 A4EA000C */  jal        func_8003AA90
    /* 2BFC8 8003D7B8 204EA524 */   addiu     $a1, $a1, %lo(D_800C4E20)
    /* 2BFCC 8003D7BC 06004010 */  beqz       $v0, .L8003D7D8
    /* 2BFD0 8003D7C0 21200002 */   addu      $a0, $s0, $zero
    /* 2BFD4 8003D7C4 2800428C */  lw         $v0, 0x28($v0)
    /* 2BFD8 8003D7C8 40291100 */  sll        $a1, $s1, 5
    /* 2BFDC 8003D7CC 21300000 */  addu       $a2, $zero, $zero
    /* 2BFE0 8003D7D0 E8F2000C */  jal        func_8003CBA0
    /* 2BFE4 8003D7D4 21284500 */   addu      $a1, $v0, $a1
  .L8003D7D8:
    /* 2BFE8 8003D7D8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2BFEC 8003D7DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 2BFF0 8003D7E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2BFF4 8003D7E4 21100000 */  addu       $v0, $zero, $zero
    /* 2BFF8 8003D7E8 0800E003 */  jr         $ra
    /* 2BFFC 8003D7EC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8003D73C
