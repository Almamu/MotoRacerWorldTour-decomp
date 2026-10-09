nonmatching func_8001D760, 0x23C

glabel func_8001D760
    /* BF70 8001D760 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* BF74 8001D764 0BB6023C */  lui        $v0, (0xB60B60B7 >> 16)
    /* BF78 8001D768 B7604234 */  ori        $v0, $v0, (0xB60B60B7 & 0xFFFF)
    /* BF7C 8001D76C 2000B2AF */  sw         $s2, 0x20($sp)
    /* BF80 8001D770 21908000 */  addu       $s2, $a0, $zero
    /* BF84 8001D774 003B0700 */  sll        $a3, $a3, 12
    /* BF88 8001D778 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* BF8C 8001D77C 2188A000 */  addu       $s1, $a1, $zero
    /* BF90 8001D780 1800B0AF */  sw         $s0, 0x18($sp)
    /* BF94 8001D784 2180C000 */  addu       $s0, $a2, $zero
    /* BF98 8001D788 4800A38F */  lw         $v1, 0x48($sp)
    /* BF9C 8001D78C 4000AA8F */  lw         $t2, 0x40($sp)
    /* BFA0 8001D790 4400A98F */  lw         $t1, 0x44($sp)
    /* BFA4 8001D794 4C00A88F */  lw         $t0, 0x4C($sp)
    /* BFA8 8001D798 2128E000 */  addu       $a1, $a3, $zero
    /* BFAC 8001D79C 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* BFB0 8001D7A0 001B0300 */  sll        $v1, $v1, 12
    /* BFB4 8001D7A4 18006200 */  mult       $v1, $v0
    /* BFB8 8001D7A8 2800B4AF */  sw         $s4, 0x28($sp)
    /* BFBC 8001D7AC 2400B3AF */  sw         $s3, 0x24($sp)
    /* BFC0 8001D7B0 680147AE */  sw         $a3, 0x168($s2)
    /* BFC4 8001D7B4 00080724 */  addiu      $a3, $zero, 0x800
    /* BFC8 8001D7B8 1000A0AF */  sw         $zero, 0x10($sp)
    /* BFCC 8001D7BC 640148AE */  sw         $t0, 0x164($s2)
    /* BFD0 8001D7C0 23404801 */  subu       $t0, $t2, $t0
    /* BFD4 8001D7C4 580149AE */  sw         $t1, 0x158($s2)
    /* BFD8 8001D7C8 7C0149AE */  sw         $t1, 0x17C($s2)
    /* BFDC 8001D7CC 540148AE */  sw         $t0, 0x154($s2)
    /* BFE0 8001D7D0 78014AAE */  sw         $t2, 0x178($s2)
    /* BFE4 8001D7D4 10100000 */  mfhi       $v0
    /* BFE8 8001D7D8 21104300 */  addu       $v0, $v0, $v1
    /* BFEC 8001D7DC 03120200 */  sra        $v0, $v0, 8
    /* BFF0 8001D7E0 C31F0300 */  sra        $v1, $v1, 31
    /* BFF4 8001D7E4 23104300 */  subu       $v0, $v0, $v1
    /* BFF8 8001D7E8 21304000 */  addu       $a2, $v0, $zero
    /* BFFC 8001D7EC 8F74000C */  jal        func_8001D23C
    /* C000 8001D7F0 740142AE */   sw        $v0, 0x174($s2)
    /* C004 8001D7F4 4401428E */  lw         $v0, 0x144($s2)
    /* C008 8001D7F8 21204002 */  addu       $a0, $s2, $zero
    /* C00C 8001D7FC 6776000C */  jal        func_8001D99C
    /* C010 8001D800 6C0142AE */   sw        $v0, 0x16C($s2)
    /* C014 8001D804 080051AE */  sw         $s1, 0x8($s2)
    /* C018 8001D808 04002012 */  beqz       $s1, .L8001D81C
    /* C01C 8001D80C 0C0050AE */   sw        $s0, 0xC($s2)
    /* C020 8001D810 959C020C */  jal        __builtin_vec_new
    /* C024 8001D814 80201100 */   sll       $a0, $s1, 2
    /* C028 8001D818 000042AE */  sw         $v0, 0x0($s2)
  .L8001D81C:
    /* C02C 8001D81C 0C00448E */  lw         $a0, 0xC($s2)
    /* C030 8001D820 00000000 */  nop
    /* C034 8001D824 04008010 */  beqz       $a0, .L8001D838
    /* C038 8001D828 00000000 */   nop
    /* C03C 8001D82C 959C020C */  jal        __builtin_vec_new
    /* C040 8001D830 80200400 */   sll       $a0, $a0, 2
    /* C044 8001D834 040042AE */  sw         $v0, 0x4($s2)
  .L8001D838:
    /* C048 8001D838 5000A28F */  lw         $v0, 0x50($sp)
    /* C04C 8001D83C 00000000 */  nop
    /* C050 8001D840 1C0042AE */  sw         $v0, 0x1C($s2)
    /* C054 8001D844 5400A38F */  lw         $v1, 0x54($sp)
    /* C058 8001D848 00000000 */  nop
    /* C05C 8001D84C 200043AE */  sw         $v1, 0x20($s2)
    /* C060 8001D850 5800A28F */  lw         $v0, 0x58($sp)
    /* C064 8001D854 21204002 */  addu       $a0, $s2, $zero
    /* C068 8001D858 8476000C */  jal        func_8001DA10
    /* C06C 8001D85C 240042AE */   sw        $v0, 0x24($s2)
    /* C070 8001D860 959C020C */  jal        __builtin_vec_new
    /* C074 8001D864 18000424 */   addiu     $a0, $zero, 0x18
    /* C078 8001D868 21984000 */  addu       $s3, $v0, $zero
    /* C07C 8001D86C 21886002 */  addu       $s1, $s3, $zero
    /* C080 8001D870 02001024 */  addiu      $s0, $zero, 0x2
    /* C084 8001D874 FFFF1424 */  addiu      $s4, $zero, -0x1
  .L8001D878:
    /* C088 8001D878 9F5B020C */  jal        func_80096E7C
    /* C08C 8001D87C 21202002 */   addu      $a0, $s1, $zero
    /* C090 8001D880 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* C094 8001D884 FCFF1416 */  bne        $s0, $s4, .L8001D878
    /* C098 8001D888 08003126 */   addiu     $s1, $s1, 0x8
    /* C09C 8001D88C B80053AE */  sw         $s3, 0xB8($s2)
    /* C0A0 8001D890 21200000 */  addu       $a0, $zero, $zero
    /* C0A4 8001D894 94004526 */  addiu      $a1, $s2, 0x94
  .L8001D898:
    /* C0A8 8001D898 C0100400 */  sll        $v0, $a0, 3
    /* C0AC 8001D89C B800438E */  lw         $v1, 0xB8($s2)
    /* C0B0 8001D8A0 01008424 */  addiu      $a0, $a0, 0x1
    /* C0B4 8001D8A4 21104300 */  addu       $v0, $v0, $v1
    /* C0B8 8001D8A8 000045AC */  sw         $a1, 0x0($v0)
    /* C0BC 8001D8AC 03008328 */  slti       $v1, $a0, 0x3
    /* C0C0 8001D8B0 F9FF6014 */  bnez       $v1, .L8001D898
    /* C0C4 8001D8B4 0C00A524 */   addiu     $a1, $a1, 0xC
    /* C0C8 8001D8B8 0C80063C */  lui        $a2, %hi(D_800BF3A0)
    /* C0CC 8001D8BC A0F3C624 */  addiu      $a2, $a2, %lo(D_800BF3A0)
    /* C0D0 8001D8C0 0200C724 */  addiu      $a3, $a2, 0x2
    /* C0D4 8001D8C4 40004526 */  addiu      $a1, $s2, 0x40
    /* C0D8 8001D8C8 5001428E */  lw         $v0, 0x150($s2)
    /* C0DC 8001D8CC 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* C0E0 8001D8D0 2800B48F */  lw         $s4, 0x28($sp)
    /* C0E4 8001D8D4 2400B38F */  lw         $s3, 0x24($sp)
    /* C0E8 8001D8D8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* C0EC 8001D8DC 1800B08F */  lw         $s0, 0x18($sp)
    /* C0F0 8001D8E0 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* C0F4 8001D8E4 80100200 */  sll        $v0, $v0, 2
    /* C0F8 8001D8E8 21204700 */  addu       $a0, $v0, $a3
    /* C0FC 8001D8EC 21104600 */  addu       $v0, $v0, $a2
    /* C100 8001D8F0 00008384 */  lh         $v1, 0x0($a0)
    /* C104 8001D8F4 00004484 */  lh         $a0, 0x0($v0)
    /* C108 8001D8F8 34004226 */  addiu      $v0, $s2, 0x34
    /* C10C 8001D8FC 23180300 */  negu       $v1, $v1
    /* C110 8001D900 801B0300 */  sll        $v1, $v1, 14
    /* C114 8001D904 23200400 */  negu       $a0, $a0
    /* C118 8001D908 80230400 */  sll        $a0, $a0, 14
    /* C11C 8001D90C 340043AE */  sw         $v1, 0x34($s2)
    /* C120 8001D910 00FC033C */  lui        $v1, (0xFC000000 >> 16)
    /* C124 8001D914 040040AC */  sw         $zero, 0x4($v0)
    /* C128 8001D918 080044AC */  sw         $a0, 0x8($v0)
    /* C12C 8001D91C 400040AE */  sw         $zero, 0x40($s2)
    /* C130 8001D920 0400A0AC */  sw         $zero, 0x4($a1)
    /* C134 8001D924 0800A3AC */  sw         $v1, 0x8($a1)
    /* C138 8001D928 5001428E */  lw         $v0, 0x150($s2)
    /* C13C 8001D92C 4C004526 */  addiu      $a1, $s2, 0x4C
    /* C140 8001D930 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* C144 8001D934 80100200 */  sll        $v0, $v0, 2
    /* C148 8001D938 21384700 */  addu       $a3, $v0, $a3
    /* C14C 8001D93C 21104600 */  addu       $v0, $v0, $a2
    /* C150 8001D940 0000E384 */  lh         $v1, 0x0($a3)
    /* C154 8001D944 00004484 */  lh         $a0, 0x0($v0)
    /* C158 8001D948 70004226 */  addiu      $v0, $s2, 0x70
    /* C15C 8001D94C 801B0300 */  sll        $v1, $v1, 14
    /* C160 8001D950 23200400 */  negu       $a0, $a0
    /* C164 8001D954 80230400 */  sll        $a0, $a0, 14
    /* C168 8001D958 4C0043AE */  sw         $v1, 0x4C($s2)
    /* C16C 8001D95C 7C004326 */  addiu      $v1, $s2, 0x7C
    /* C170 8001D960 0400A0AC */  sw         $zero, 0x4($a1)
    /* C174 8001D964 0800A4AC */  sw         $a0, 0x8($a1)
    /* C178 8001D968 700040AE */  sw         $zero, 0x70($s2)
    /* C17C 8001D96C 040040AC */  sw         $zero, 0x4($v0)
    /* C180 8001D970 080040AC */  sw         $zero, 0x8($v0)
    /* C184 8001D974 88004226 */  addiu      $v0, $s2, 0x88
    /* C188 8001D978 7C0040AE */  sw         $zero, 0x7C($s2)
    /* C18C 8001D97C 040060AC */  sw         $zero, 0x4($v1)
    /* C190 8001D980 080060AC */  sw         $zero, 0x8($v1)
    /* C194 8001D984 880040AE */  sw         $zero, 0x88($s2)
    /* C198 8001D988 2000B28F */  lw         $s2, 0x20($sp)
    /* C19C 8001D98C 040040AC */  sw         $zero, 0x4($v0)
    /* C1A0 8001D990 080040AC */  sw         $zero, 0x8($v0)
    /* C1A4 8001D994 0800E003 */  jr         $ra
    /* C1A8 8001D998 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8001D760
