nonmatching func_8008E658, 0xB4

glabel func_8008E658
    /* 7CE68 8008E658 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7CE6C 8008E65C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7CE70 8008E660 21808000 */  addu       $s0, $a0, $zero
    /* 7CE74 8008E664 1400BFAF */  sw         $ra, 0x14($sp)
    /* 7CE78 8008E668 0000A684 */  lh         $a2, 0x0($a1)
    /* 7CE7C 8008E66C 2800A88C */  lw         $t0, 0x28($a1)
    /* 7CE80 8008E670 0C00078E */  lw         $a3, 0xC($s0)
    /* 7CE84 8008E674 0800028E */  lw         $v0, 0x8($s0)
    /* 7CE88 8008E678 1400C010 */  beqz       $a2, .L8008E6CC
    /* 7CE8C 8008E67C 040005AE */   sw        $a1, 0x4($s0)
    /* 7CE90 8008E680 801F0924 */  addiu      $t1, $zero, 0x1F80
    /* 7CE94 8008E684 10004524 */  addiu      $a1, $v0, 0x10
  .L8008E688:
    /* 7CE98 8008E688 0000038D */  lw         $v1, 0x0($t0)
    /* 7CE9C 8008E68C 00000000 */  nop
    /* 7CEA0 8008E690 2400648C */  lw         $a0, 0x24($v1)
    /* 7CEA4 8008E694 00000000 */  nop
    /* 7CEA8 8008E698 02140400 */  srl        $v0, $a0, 16
    /* 7CEAC 8008E69C 03004914 */  bne        $v0, $t1, .L8008E6AC
    /* 7CEB0 8008E6A0 2C00A3AC */   sw        $v1, 0x2C($a1)
    /* 7CEB4 8008E6A4 AF390208 */  j          .L8008E6BC
    /* 7CEB8 8008E6A8 0000A4AC */   sw        $a0, 0x0($a1)
  .L8008E6AC:
    /* 7CEBC 8008E6AC 03008010 */  beqz       $a0, .L8008E6BC
    /* 7CEC0 8008E6B0 00000000 */   nop
    /* 7CEC4 8008E6B4 0000A7AC */  sw         $a3, 0x0($a1)
    /* 7CEC8 8008E6B8 2000E724 */  addiu      $a3, $a3, 0x20
  .L8008E6BC:
    /* 7CECC 8008E6BC 8000A524 */  addiu      $a1, $a1, 0x80
    /* 7CED0 8008E6C0 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 7CED4 8008E6C4 F0FFC014 */  bnez       $a2, .L8008E688
    /* 7CED8 8008E6C8 04000825 */   addiu     $t0, $t0, 0x4
  .L8008E6CC:
    /* 7CEDC 8008E6CC F044020C */  jal        func_800913C0
    /* 7CEE0 8008E6D0 21200002 */   addu      $a0, $s0, $zero
    /* 7CEE4 8008E6D4 0D80033C */  lui        $v1, %hi(D_800C8D34)
    /* 7CEE8 8008E6D8 0400058E */  lw         $a1, 0x4($s0)
    /* 7CEEC 8008E6DC 348D6324 */  addiu      $v1, $v1, %lo(D_800C8D34)
    /* 7CEF0 8008E6E0 0A00A284 */  lh         $v0, 0xA($a1)
    /* 7CEF4 8008E6E4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 7CEF8 8008E6E8 C0100200 */  sll        $v0, $v0, 3
    /* 7CEFC 8008E6EC 21104300 */  addu       $v0, $v0, $v1
    /* 7CF00 8008E6F0 00004A8C */  lw         $t2, 0x0($v0)
    /* 7CF04 8008E6F4 04004B8C */  lw         $t3, 0x4($v0)
    /* 7CF08 8008E6F8 2C000AAE */  sw         $t2, 0x2C($s0)
    /* 7CF0C 8008E6FC 30000BAE */  sw         $t3, 0x30($s0)
    /* 7CF10 8008E700 1000B08F */  lw         $s0, 0x10($sp)
    /* 7CF14 8008E704 0800E003 */  jr         $ra
    /* 7CF18 8008E708 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8008E658
