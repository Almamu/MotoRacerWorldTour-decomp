nonmatching func_8002D700, 0x170

glabel func_8002D700
    /* 1BF10 8002D700 0C80063C */  lui        $a2, %hi(D_800C5E14)
    /* 1BF14 8002D704 145EC68C */  lw         $a2, %lo(D_800C5E14)($a2)
    /* 1BF18 8002D708 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1BF1C 8002D70C 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 1BF20 8002D710 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1BF24 8002D714 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1BF28 8002D718 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1BF2C 8002D71C 0403C28C */  lw         $v0, 0x304($a2)
    /* 1BF30 8002D720 43009180 */  lb         $s1, 0x43($a0)
    /* 1BF34 8002D724 4C004014 */  bnez       $v0, .L8002D858
    /* 1BF38 8002D728 02000224 */   addiu     $v0, $zero, 0x2
    /* 1BF3C 8002D72C 0D80033C */  lui        $v1, %hi(D_800D5F40)
    /* 1BF40 8002D730 405F638C */  lw         $v1, %lo(D_800D5F40)($v1)
    /* 1BF44 8002D734 00000000 */  nop
    /* 1BF48 8002D738 47006210 */  beq        $v1, $v0, .L8002D858
    /* 1BF4C 8002D73C 00000000 */   nop
    /* 1BF50 8002D740 45006010 */  beqz       $v1, .L8002D858
    /* 1BF54 8002D744 00000000 */   nop
    /* 1BF58 8002D748 4300C010 */  beqz       $a2, .L8002D858
    /* 1BF5C 8002D74C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1BF60 8002D750 41002212 */  beq        $s1, $v0, .L8002D858
    /* 1BF64 8002D754 2B000224 */   addiu     $v0, $zero, 0x2B
    /* 1BF68 8002D758 0400A104 */  bgez       $a1, .L8002D76C
    /* 1BF6C 8002D75C 00FF1234 */   ori       $s2, $zero, 0xFF00
    /* 1BF70 8002D760 23280500 */  negu       $a1, $a1
    /* 1BF74 8002D764 FF001224 */  addiu      $s2, $zero, 0xFF
    /* 1BF78 8002D768 2D000224 */  addiu      $v0, $zero, 0x2D
  .L8002D76C:
    /* 1BF7C 8002D76C 0D80013C */  lui        $at, %hi(D_800D4798)
    /* 1BF80 8002D770 984722A0 */  sb         $v0, %lo(D_800D4798)($at)
    /* 1BF84 8002D774 149A020C */  jal        func_800A6850
    /* 1BF88 8002D778 2120A000 */   addu      $a0, $a1, $zero
    /* 1BF8C 8002D77C 0C80033C */  lui        $v1, %hi(D_800BC884)
    /* 1BF90 8002D780 84C8638C */  lw         $v1, %lo(D_800BC884)($v1)
    /* 1BF94 8002D784 00000000 */  nop
    /* 1BF98 8002D788 1001648C */  lw         $a0, 0x110($v1)
    /* 1BF9C 8002D78C 00000000 */  nop
    /* 1BFA0 8002D790 08008010 */  beqz       $a0, .L8002D7B4
    /* 1BFA4 8002D794 21804000 */   addu      $s0, $v0, $zero
    /* 1BFA8 8002D798 0600022A */  slti       $v0, $s0, 0x6
    /* 1BFAC 8002D79C 2E004014 */  bnez       $v0, .L8002D858
    /* 1BFB0 8002D7A0 0C80053C */   lui       $a1, %hi(D_800C4D4C)
    /* 1BFB4 8002D7A4 0D80043C */  lui        $a0, %hi(D_800D4799)
    /* 1BFB8 8002D7A8 99478424 */  addiu      $a0, $a0, %lo(D_800D4799)
    /* 1BFBC 8002D7AC F4B50008 */  j          .L8002D7D0
    /* 1BFC0 8002D7B0 4C4DA524 */   addiu     $a1, $a1, %lo(D_800C4D4C)
  .L8002D7B4:
    /* 1BFC4 8002D7B4 0400022A */  slti       $v0, $s0, 0x4
    /* 1BFC8 8002D7B8 08004014 */  bnez       $v0, .L8002D7DC
    /* 1BFCC 8002D7BC 0600022A */   slti      $v0, $s0, 0x6
    /* 1BFD0 8002D7C0 0D80043C */  lui        $a0, %hi(D_800D4799)
    /* 1BFD4 8002D7C4 99478424 */  addiu      $a0, $a0, %lo(D_800D4799)
    /* 1BFD8 8002D7C8 0C80053C */  lui        $a1, %hi(D_800C4D54)
    /* 1BFDC 8002D7CC 544DA524 */  addiu      $a1, $a1, %lo(D_800C4D54)
  .L8002D7D0:
    /* 1BFE0 8002D7D0 96D9020C */  jal        sprintf
    /* 1BFE4 8002D7D4 21300002 */   addu      $a2, $s0, $zero
    /* 1BFE8 8002D7D8 0600022A */  slti       $v0, $s0, 0x6
  .L8002D7DC:
    /* 1BFEC 8002D7DC 1E004014 */  bnez       $v0, .L8002D858
    /* 1BFF0 8002D7E0 01003026 */   addiu     $s0, $s1, 0x1
    /* 1BFF4 8002D7E4 0D80043C */  lui        $a0, %hi(D_800CB478)
    /* 1BFF8 8002D7E8 78B4848C */  lw         $a0, %lo(D_800CB478)($a0)
    /* 1BFFC 8002D7EC F5AA010C */  jal        func_8006ABD4
    /* 1C000 8002D7F0 21280002 */   addu      $a1, $s0, $zero
    /* 1C004 8002D7F4 0D80063C */  lui        $a2, %hi(D_800D4798)
    /* 1C008 8002D7F8 9847C624 */  addiu      $a2, $a2, %lo(D_800D4798)
    /* 1C00C 8002D7FC 0D80043C */  lui        $a0, %hi(D_800CB478)
    /* 1C010 8002D800 78B4848C */  lw         $a0, %lo(D_800CB478)($a0)
    /* 1C014 8002D804 38000224 */  addiu      $v0, $zero, 0x38
    /* 1C018 8002D808 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1C01C 8002D80C 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* 1C020 8002D810 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* 1C024 8002D814 80181100 */  sll        $v1, $s1, 2
    /* 1C028 8002D818 1400B2AF */  sw         $s2, 0x14($sp)
    /* 1C02C 8002D81C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1C030 8002D820 21104300 */  addu       $v0, $v0, $v1
    /* 1C034 8002D824 C400458C */  lw         $a1, 0xC4($v0)
    /* 1C038 8002D828 8CAA010C */  jal        func_8006AA30
    /* 1C03C 8002D82C 8000073C */   lui       $a3, (0x800000 >> 16)
    /* 1C040 8002D830 21204000 */  addu       $a0, $v0, $zero
    /* 1C044 8002D834 08008010 */  beqz       $a0, .L8002D858
    /* 1C048 8002D838 12000224 */   addiu     $v0, $zero, 0x12
    /* 1C04C 8002D83C 10000324 */  addiu      $v1, $zero, 0x10
    /* 1C050 8002D840 4A0082A4 */  sh         $v0, 0x4A($a0)
    /* 1C054 8002D844 D0070224 */  addiu      $v0, $zero, 0x7D0
    /* 1C058 8002D848 3C0083AC */  sw         $v1, 0x3C($a0)
    /* 1C05C 8002D84C 02000324 */  addiu      $v1, $zero, 0x2
    /* 1C060 8002D850 040082AC */  sw         $v0, 0x4($a0)
    /* 1C064 8002D854 440083AC */  sw         $v1, 0x44($a0)
  .L8002D858:
    /* 1C068 8002D858 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 1C06C 8002D85C 2800B28F */  lw         $s2, 0x28($sp)
    /* 1C070 8002D860 2400B18F */  lw         $s1, 0x24($sp)
    /* 1C074 8002D864 2000B08F */  lw         $s0, 0x20($sp)
    /* 1C078 8002D868 0800E003 */  jr         $ra
    /* 1C07C 8002D86C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8002D700
