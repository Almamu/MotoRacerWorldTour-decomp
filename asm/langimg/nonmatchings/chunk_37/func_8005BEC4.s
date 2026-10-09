nonmatching func_8005BEC4, 0x128

glabel func_8005BEC4
    /* 4A6D4 8005BEC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4A6D8 8005BEC8 21288000 */  addu       $a1, $a0, $zero
    /* 4A6DC 8005BECC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4A6E0 8005BED0 7803A38C */  lw         $v1, 0x378($a1)
    /* 4A6E4 8005BED4 00000000 */  nop
    /* 4A6E8 8005BED8 0000628C */  lw         $v0, 0x0($v1)
    /* 4A6EC 8005BEDC 00000000 */  nop
    /* 4A6F0 8005BEE0 02014230 */  andi       $v0, $v0, 0x102
    /* 4A6F4 8005BEE4 39004010 */  beqz       $v0, .L8005BFCC
    /* 4A6F8 8005BEE8 00000000 */   nop
    /* 4A6FC 8005BEEC 0D80023C */  lui        $v0, %hi(D_800CAE90)
    /* 4A700 8005BEF0 90AE428C */  lw         $v0, %lo(D_800CAE90)($v0)
    /* 4A704 8005BEF4 00000000 */  nop
    /* 4A708 8005BEF8 1B004010 */  beqz       $v0, .L8005BF68
    /* 4A70C 8005BEFC 21200000 */   addu      $a0, $zero, $zero
  .L8005BF00:
    /* 4A710 8005BF00 7803A68C */  lw         $a2, 0x378($a1)
    /* 4A714 8005BF04 00000000 */  nop
    /* 4A718 8005BF08 2110C400 */  addu       $v0, $a2, $a0
    /* 4A71C 8005BF0C 2B1E4380 */  lb         $v1, 0x1E2B($v0)
    /* 4A720 8005BF10 00000000 */  nop
    /* 4A724 8005BF14 0C006004 */  bltz       $v1, .L8005BF48
    /* 4A728 8005BF18 21100000 */   addu      $v0, $zero, $zero
    /* 4A72C 8005BF1C 40100300 */  sll        $v0, $v1, 1
    /* 4A730 8005BF20 21104300 */  addu       $v0, $v0, $v1
    /* 4A734 8005BF24 80100200 */  sll        $v0, $v0, 2
    /* 4A738 8005BF28 23104300 */  subu       $v0, $v0, $v1
    /* 4A73C 8005BF2C 80100200 */  sll        $v0, $v0, 2
    /* 4A740 8005BF30 23104300 */  subu       $v0, $v0, $v1
    /* 4A744 8005BF34 80100200 */  sll        $v0, $v0, 2
    /* 4A748 8005BF38 21104300 */  addu       $v0, $v0, $v1
    /* 4A74C 8005BF3C C0100200 */  sll        $v0, $v0, 3
    /* 4A750 8005BF40 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4A754 8005BF44 2110C200 */  addu       $v0, $a2, $v0
  .L8005BF48:
    /* 4A758 8005BF48 21184000 */  addu       $v1, $v0, $zero
    /* 4A75C 8005BF4C 0000628C */  lw         $v0, 0x0($v1)
    /* 4A760 8005BF50 01008424 */  addiu      $a0, $a0, 0x1
    /* 4A764 8005BF54 40004234 */  ori        $v0, $v0, 0x40
    /* 4A768 8005BF58 E9FF8018 */  blez       $a0, .L8005BF00
    /* 4A76C 8005BF5C 000062AC */   sw        $v0, 0x0($v1)
    /* 4A770 8005BF60 F36F0108 */  j          .L8005BFCC
    /* 4A774 8005BF64 00000000 */   nop
  .L8005BF68:
    /* 4A778 8005BF68 BFFF0724 */  addiu      $a3, $zero, -0x41
  .L8005BF6C:
    /* 4A77C 8005BF6C 7803A68C */  lw         $a2, 0x378($a1)
    /* 4A780 8005BF70 00000000 */  nop
    /* 4A784 8005BF74 2110C400 */  addu       $v0, $a2, $a0
    /* 4A788 8005BF78 2B1E4380 */  lb         $v1, 0x1E2B($v0)
    /* 4A78C 8005BF7C 00000000 */  nop
    /* 4A790 8005BF80 0C006004 */  bltz       $v1, .L8005BFB4
    /* 4A794 8005BF84 21100000 */   addu      $v0, $zero, $zero
    /* 4A798 8005BF88 40100300 */  sll        $v0, $v1, 1
    /* 4A79C 8005BF8C 21104300 */  addu       $v0, $v0, $v1
    /* 4A7A0 8005BF90 80100200 */  sll        $v0, $v0, 2
    /* 4A7A4 8005BF94 23104300 */  subu       $v0, $v0, $v1
    /* 4A7A8 8005BF98 80100200 */  sll        $v0, $v0, 2
    /* 4A7AC 8005BF9C 23104300 */  subu       $v0, $v0, $v1
    /* 4A7B0 8005BFA0 80100200 */  sll        $v0, $v0, 2
    /* 4A7B4 8005BFA4 21104300 */  addu       $v0, $v0, $v1
    /* 4A7B8 8005BFA8 C0100200 */  sll        $v0, $v0, 3
    /* 4A7BC 8005BFAC E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4A7C0 8005BFB0 2110C200 */  addu       $v0, $a2, $v0
  .L8005BFB4:
    /* 4A7C4 8005BFB4 21184000 */  addu       $v1, $v0, $zero
    /* 4A7C8 8005BFB8 0000628C */  lw         $v0, 0x0($v1)
    /* 4A7CC 8005BFBC 01008424 */  addiu      $a0, $a0, 0x1
    /* 4A7D0 8005BFC0 24104700 */  and        $v0, $v0, $a3
    /* 4A7D4 8005BFC4 E9FF8018 */  blez       $a0, .L8005BF6C
    /* 4A7D8 8005BFC8 000062AC */   sw        $v0, 0x0($v1)
  .L8005BFCC:
    /* 4A7DC 8005BFCC 0D80043C */  lui        $a0, %hi(D_800C89F4)
    /* 4A7E0 8005BFD0 F489848C */  lw         $a0, %lo(D_800C89F4)($a0)
    /* 4A7E4 8005BFD4 A30A020C */  jal        func_80082A8C
    /* 4A7E8 8005BFD8 00000000 */   nop
    /* 4A7EC 8005BFDC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4A7F0 8005BFE0 00000000 */  nop
    /* 4A7F4 8005BFE4 0800E003 */  jr         $ra
    /* 4A7F8 8005BFE8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005BEC4
