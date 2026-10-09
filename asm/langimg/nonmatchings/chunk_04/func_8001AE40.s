nonmatching func_8001AE40, 0xFC

glabel func_8001AE40
    /* 9650 8001AE40 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 9654 8001AE44 2000B0AF */  sw         $s0, 0x20($sp)
    /* 9658 8001AE48 21808000 */  addu       $s0, $a0, $zero
    /* 965C 8001AE4C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 9660 8001AE50 2198A000 */  addu       $s3, $a1, $zero
    /* 9664 8001AE54 2400B1AF */  sw         $s1, 0x24($sp)
    /* 9668 8001AE58 2188C000 */  addu       $s1, $a2, $zero
    /* 966C 8001AE5C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 9670 8001AE60 21A0E000 */  addu       $s4, $a3, $zero
    /* 9674 8001AE64 2800B2AF */  sw         $s2, 0x28($sp)
    /* 9678 8001AE68 4800B28F */  lw         $s2, 0x48($sp)
    /* 967C 8001AE6C 1800A227 */  addiu      $v0, $sp, 0x18
    /* 9680 8001AE70 3400BFAF */  sw         $ra, 0x34($sp)
    /* 9684 8001AE74 396B000C */  jal        func_8001ACE4
    /* 9688 8001AE78 1000A2AF */   sw        $v0, 0x10($sp)
    /* 968C 8001AE7C 1800A78F */  lw         $a3, 0x18($sp)
    /* 9690 8001AE80 00000000 */  nop
    /* 9694 8001AE84 1B00E104 */  bgez       $a3, .L8001AEF4
    /* 9698 8001AE88 21200002 */   addu      $a0, $s0, $zero
    /* 969C 8001AE8C FF0F6332 */  andi       $v1, $s3, 0xFFF
    /* 96A0 8001AE90 0C80023C */  lui        $v0, %hi(D_800BF3A0)
    /* 96A4 8001AE94 A0F34224 */  addiu      $v0, $v0, %lo(D_800BF3A0)
    /* 96A8 8001AE98 80180300 */  sll        $v1, $v1, 2
    /* 96AC 8001AE9C 21186200 */  addu       $v1, $v1, $v0
    /* 96B0 8001AEA0 0000648C */  lw         $a0, 0x0($v1)
    /* 96B4 8001AEA4 00000000 */  nop
    /* 96B8 8001AEA8 032C0400 */  sra        $a1, $a0, 16
    /* 96BC 8001AEAC 1800E500 */  mult       $a3, $a1
    /* 96C0 8001AEB0 12280000 */  mflo       $a1
    /* 96C4 8001AEB4 00240400 */  sll        $a0, $a0, 16
    /* 96C8 8001AEB8 03240400 */  sra        $a0, $a0, 16
    /* 96CC 8001AEBC 1800E400 */  mult       $a3, $a0
    /* 96D0 8001AEC0 00002296 */  lhu        $v0, 0x0($s1)
    /* 96D4 8001AEC4 032B0500 */  sra        $a1, $a1, 12
    /* 96D8 8001AEC8 23104500 */  subu       $v0, $v0, $a1
    /* 96DC 8001AECC 000042A6 */  sh         $v0, 0x0($s2)
    /* 96E0 8001AED0 02002396 */  lhu        $v1, 0x2($s1)
    /* 96E4 8001AED4 00000000 */  nop
    /* 96E8 8001AED8 020043A6 */  sh         $v1, 0x2($s2)
    /* 96EC 8001AEDC 04002296 */  lhu        $v0, 0x4($s1)
    /* 96F0 8001AEE0 12200000 */  mflo       $a0
    /* 96F4 8001AEE4 03230400 */  sra        $a0, $a0, 12
    /* 96F8 8001AEE8 23104400 */  subu       $v0, $v0, $a0
    /* 96FC 8001AEEC C66B0008 */  j          .L8001AF18
    /* 9700 8001AEF0 040042A6 */   sh        $v0, 0x4($s2)
  .L8001AEF4:
    /* 9704 8001AEF4 1C00A68F */  lw         $a2, 0x1C($sp)
    /* 9708 8001AEF8 5E6B000C */  jal        func_8001AD78
    /* 970C 8001AEFC 2128E000 */   addu      $a1, $a3, $zero
    /* 9710 8001AF00 21200002 */  addu       $a0, $s0, $zero
    /* 9714 8001AF04 21284000 */  addu       $a1, $v0, $zero
    /* 9718 8001AF08 21302002 */  addu       $a2, $s1, $zero
    /* 971C 8001AF0C 21388002 */  addu       $a3, $s4, $zero
    /* 9720 8001AF10 676B000C */  jal        func_8001AD9C
    /* 9724 8001AF14 1000B2AF */   sw        $s2, 0x10($sp)
  .L8001AF18:
    /* 9728 8001AF18 3400BF8F */  lw         $ra, 0x34($sp)
    /* 972C 8001AF1C 3000B48F */  lw         $s4, 0x30($sp)
    /* 9730 8001AF20 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 9734 8001AF24 2800B28F */  lw         $s2, 0x28($sp)
    /* 9738 8001AF28 2400B18F */  lw         $s1, 0x24($sp)
    /* 973C 8001AF2C 2000B08F */  lw         $s0, 0x20($sp)
    /* 9740 8001AF30 01000224 */  addiu      $v0, $zero, 0x1
    /* 9744 8001AF34 0800E003 */  jr         $ra
    /* 9748 8001AF38 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8001AE40
