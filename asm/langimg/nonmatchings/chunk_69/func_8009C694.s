nonmatching func_8009C694, 0x1B8

glabel func_8009C694
    /* 8AEA4 8009C694 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8AEA8 8009C698 3000B4AF */  sw         $s4, 0x30($sp)
    /* 8AEAC 8009C69C 21A08000 */  addu       $s4, $a0, $zero
    /* 8AEB0 8009C6A0 0D80023C */  lui        $v0, %hi(D_800C9330)
    /* 8AEB4 8009C6A4 3400BFAF */  sw         $ra, 0x34($sp)
    /* 8AEB8 8009C6A8 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 8AEBC 8009C6AC 2800B2AF */  sw         $s2, 0x28($sp)
    /* 8AEC0 8009C6B0 2400B1AF */  sw         $s1, 0x24($sp)
    /* 8AEC4 8009C6B4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 8AEC8 8009C6B8 800A928E */  lw         $s2, 0xA80($s4)
    /* 8AECC 8009C6BC 9C0A848E */  lw         $a0, 0xA9C($s4)
    /* 8AED0 8009C6C0 6000518E */  lw         $s1, 0x60($s2)
    /* 8AED4 8009C6C4 1000A627 */  addiu      $a2, $sp, 0x10
    /* 8AED8 8009C6C8 30934A24 */  addiu      $t2, $v0, %lo(D_800C9330)
    /* 8AEDC 8009C6CC 0000478D */  lw         $a3, 0x0($t2)
    /* 8AEE0 8009C6D0 0400488D */  lw         $t0, 0x4($t2)
    /* 8AEE4 8009C6D4 0800498D */  lw         $t1, 0x8($t2)
    /* 8AEE8 8009C6D8 1000A7AF */  sw         $a3, 0x10($sp)
    /* 8AEEC 8009C6DC 1400A8AF */  sw         $t0, 0x14($sp)
    /* 8AEF0 8009C6E0 1800A9AF */  sw         $t1, 0x18($sp)
    /* 8AEF4 8009C6E4 0400238E */  lw         $v1, 0x4($s1)
    /* 8AEF8 8009C6E8 00000000 */  nop
    /* 8AEFC 8009C6EC 46006014 */  bnez       $v1, .L8009C808
    /* 8AF00 8009C6F0 08009324 */   addiu     $s3, $a0, 0x8
    /* 8AF04 8009C6F4 0D80023C */  lui        $v0, %hi(D_800D5F38)
    /* 8AF08 8009C6F8 385F428C */  lw         $v0, %lo(D_800D5F38)($v0)
    /* 8AF0C 8009C6FC 0C80043C */  lui        $a0, %hi(D_800C6710)
    /* 8AF10 8009C700 1067848C */  lw         $a0, %lo(D_800C6710)($a0)
    /* 8AF14 8009C704 C0180200 */  sll        $v1, $v0, 3
    /* 8AF18 8009C708 23186200 */  subu       $v1, $v1, $v0
    /* 8AF1C 8009C70C 0400858C */  lw         $a1, 0x4($a0)
    /* 8AF20 8009C710 80180300 */  sll        $v1, $v1, 2
    /* 8AF24 8009C714 21186500 */  addu       $v1, $v1, $a1
    /* 8AF28 8009C718 1800628C */  lw         $v0, 0x18($v1)
    /* 8AF2C 8009C71C 0000308E */  lw         $s0, 0x0($s1)
    /* 8AF30 8009C720 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8AF34 8009C724 80100200 */  sll        $v0, $v0, 2
    /* 8AF38 8009C728 2110C200 */  addu       $v0, $a2, $v0
    /* 8AF3C 8009C72C 0000458C */  lw         $a1, 0x0($v0)
    /* 8AF40 8009C730 0D80043C */  lui        $a0, %hi(D_800D4898)
    /* 8AF44 8009C734 98488424 */  addiu      $a0, $a0, %lo(D_800D4898)
    /* 8AF48 8009C738 140025AE */  sw         $a1, 0x14($s1)
    /* 8AF4C 8009C73C 00290500 */  sll        $a1, $a1, 4
    /* 8AF50 8009C740 0D80023C */  lui        $v0, %hi(D_800D5F34)
    /* 8AF54 8009C744 345F428C */  lw         $v0, %lo(D_800D5F34)($v0)
    /* 8AF58 8009C748 0D80033C */  lui        $v1, %hi(D_800D5F50)
    /* 8AF5C 8009C74C 505F638C */  lw         $v1, %lo(D_800D5F50)($v1)
    /* 8AF60 8009C750 C0100200 */  sll        $v0, $v0, 3
    /* 8AF64 8009C754 21186200 */  addu       $v1, $v1, $v0
    /* 8AF68 8009C758 21186500 */  addu       $v1, $v1, $a1
    /* 8AF6C 8009C75C 40100300 */  sll        $v0, $v1, 1
    /* 8AF70 8009C760 21104300 */  addu       $v0, $v0, $v1
    /* 8AF74 8009C764 00290200 */  sll        $a1, $v0, 4
    /* 8AF78 8009C768 21104500 */  addu       $v0, $v0, $a1
    /* 8AF7C 8009C76C C0100200 */  sll        $v0, $v0, 3
    /* 8AF80 8009C770 21800202 */  addu       $s0, $s0, $v0
    /* 8AF84 8009C774 7082020C */  jal        func_800A09C0
    /* 8AF88 8009C778 040030AE */   sw        $s0, 0x4($s1)
    /* 8AF8C 8009C77C 03004788 */  lwl        $a3, 0x3($v0)
    /* 8AF90 8009C780 00004798 */  lwr        $a3, 0x0($v0)
    /* 8AF94 8009C784 07004888 */  lwl        $t0, 0x7($v0)
    /* 8AF98 8009C788 04004898 */  lwr        $t0, 0x4($v0)
    /* 8AF9C 8009C78C 08004980 */  lb         $t1, 0x8($v0)
    /* 8AFA0 8009C790 09004A80 */  lb         $t2, 0x9($v0)
    /* 8AFA4 8009C794 8A0107AA */  swl        $a3, 0x18A($s0)
    /* 8AFA8 8009C798 870107BA */  swr        $a3, 0x187($s0)
    /* 8AFAC 8009C79C 8E0108AA */  swl        $t0, 0x18E($s0)
    /* 8AFB0 8009C7A0 8B0108BA */  swr        $t0, 0x18B($s0)
    /* 8AFB4 8009C7A4 8F0109A2 */  sb         $t1, 0x18F($s0)
    /* 8AFB8 8009C7A8 90010AA2 */  sb         $t2, 0x190($s0)
    /* 8AFBC 8009C7AC 0A004780 */  lb         $a3, 0xA($v0)
    /* 8AFC0 8009C7B0 00000000 */  nop
    /* 8AFC4 8009C7B4 910107A2 */  sb         $a3, 0x191($s0)
    /* 8AFC8 8009C7B8 0400238E */  lw         $v1, 0x4($s1)
    /* 8AFCC 8009C7BC 00000000 */  nop
    /* 8AFD0 8009C7C0 90016290 */  lbu        $v0, 0x190($v1)
    /* 8AFD4 8009C7C4 00000000 */  nop
    /* 8AFD8 8009C7C8 440062AE */  sw         $v0, 0x44($s3)
    /* 8AFDC 8009C7CC 0400268E */  lw         $a2, 0x4($s1)
    /* 8AFE0 8009C7D0 03000424 */  addiu      $a0, $zero, 0x3
    /* 8AFE4 8009C7D4 9101C390 */  lbu        $v1, 0x191($a2)
    /* 8AFE8 8009C7D8 01000524 */  addiu      $a1, $zero, 0x1
    /* 8AFEC 8009C7DC E299020C */  jal        func_800A6788
    /* 8AFF0 8009C7E0 480063AE */   sw        $v1, 0x48($s3)
    /* 8AFF4 8009C7E4 01000224 */  addiu      $v0, $zero, 0x1
    /* 8AFF8 8009C7E8 700102AE */  sw         $v0, 0x170($s0)
    /* 8AFFC 8009C7EC 4C00438E */  lw         $v1, 0x4C($s2)
    /* 8B000 8009C7F0 00000000 */  nop
    /* 8B004 8009C7F4 1400648C */  lw         $a0, 0x14($v1)
    /* 8B008 8009C7F8 00000000 */  nop
    /* 8B00C 8009C7FC 08008284 */  lh         $v0, 0x8($a0)
    /* 8B010 8009C800 00000000 */  nop
    /* 8B014 8009C804 D02122AE */  sw         $v0, 0x21D0($s1)
  .L8009C808:
    /* 8B018 8009C808 21204002 */  addu       $a0, $s2, $zero
    /* 8B01C 8009C80C 21280000 */  addu       $a1, $zero, $zero
    /* 8B020 8009C810 D42120AE */  sw         $zero, 0x21D4($s1)
    /* 8B024 8009C814 D82120AE */  sw         $zero, 0x21D8($s1)
    /* 8B028 8009C818 DC2120AE */  sw         $zero, 0x21DC($s1)
    /* 8B02C 8009C81C EF70020C */  jal        func_8009C3BC
    /* 8B030 8009C820 E02120AE */   sw        $zero, 0x21E0($s1)
    /* 8B034 8009C824 6E6F020C */  jal        func_8009BDB8
    /* 8B038 8009C828 21208002 */   addu      $a0, $s4, $zero
    /* 8B03C 8009C82C 3400BF8F */  lw         $ra, 0x34($sp)
    /* 8B040 8009C830 3000B48F */  lw         $s4, 0x30($sp)
    /* 8B044 8009C834 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 8B048 8009C838 2800B28F */  lw         $s2, 0x28($sp)
    /* 8B04C 8009C83C 2400B18F */  lw         $s1, 0x24($sp)
    /* 8B050 8009C840 2000B08F */  lw         $s0, 0x20($sp)
    /* 8B054 8009C844 0800E003 */  jr         $ra
    /* 8B058 8009C848 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8009C694
