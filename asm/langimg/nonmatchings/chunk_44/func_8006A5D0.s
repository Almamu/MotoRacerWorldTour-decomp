nonmatching func_8006A5D0, 0xE0

glabel func_8006A5D0
    /* 58DE0 8006A5D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 58DE4 8006A5D4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 58DE8 8006A5D8 2190C000 */  addu       $s2, $a2, $zero
    /* 58DEC 8006A5DC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 58DF0 8006A5E0 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 58DF4 8006A5E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 58DF8 8006A5E8 21808000 */  addu       $s0, $a0, $zero
    /* 58DFC 8006A5EC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 58E00 8006A5F0 21A0A000 */  addu       $s4, $a1, $zero
    /* 58E04 8006A5F4 2400BFAF */  sw         $ra, 0x24($sp)
    /* 58E08 8006A5F8 24008012 */  beqz       $s4, .L8006A68C
    /* 58E0C 8006A5FC 1C00B3AF */   sw        $s3, 0x1C($sp)
    /* 58E10 8006A600 0800028E */  lw         $v0, 0x8($s0)
    /* 58E14 8006A604 00000000 */  nop
    /* 58E18 8006A608 21004010 */  beqz       $v0, .L8006A690
    /* 58E1C 8006A60C 21102002 */   addu      $v0, $s1, $zero
    /* 58E20 8006A610 0400048E */  lw         $a0, 0x4($s0)
    /* 58E24 8006A614 00000586 */  lh         $a1, 0x0($s0)
    /* 58E28 8006A618 7EAE010C */  jal        func_8006B9F8
    /* 58E2C 8006A61C FFFF1324 */   addiu     $s3, $zero, -0x1
    /* 58E30 8006A620 04005316 */  bne        $s2, $s3, .L8006A634
    /* 58E34 8006A624 21884000 */   addu      $s1, $v0, $zero
    /* 58E38 8006A628 2ED9020C */  jal        strlen
    /* 58E3C 8006A62C 21208002 */   addu      $a0, $s4, $zero
    /* 58E40 8006A630 21904000 */  addu       $s2, $v0, $zero
  .L8006A634:
    /* 58E44 8006A634 16003312 */  beq        $s1, $s3, .L8006A690
    /* 58E48 8006A638 21102002 */   addu      $v0, $s1, $zero
    /* 58E4C 8006A63C 02000386 */  lh         $v1, 0x2($s0)
    /* 58E50 8006A640 0800028E */  lw         $v0, 0x8($s0)
    /* 58E54 8006A644 0C00048E */  lw         $a0, 0xC($s0)
    /* 58E58 8006A648 21104300 */  addu       $v0, $v0, $v1
    /* 58E5C 8006A64C 23104400 */  subu       $v0, $v0, $a0
    /* 58E60 8006A650 2A104202 */  slt        $v0, $s2, $v0
    /* 58E64 8006A654 0D004010 */  beqz       $v0, .L8006A68C
    /* 58E68 8006A658 80101100 */   sll       $v0, $s1, 2
    /* 58E6C 8006A65C 21105100 */  addu       $v0, $v0, $s1
    /* 58E70 8006A660 0400038E */  lw         $v1, 0x4($s0)
    /* 58E74 8006A664 00110200 */  sll        $v0, $v0, 4
    /* 58E78 8006A668 21186200 */  addu       $v1, $v1, $v0
    /* 58E7C 8006A66C 4C0064AC */  sw         $a0, 0x4C($v1)
    /* 58E80 8006A670 0C00048E */  lw         $a0, 0xC($s0)
    /* 58E84 8006A674 1AD9020C */  jal        func_800B6468
    /* 58E88 8006A678 21288002 */   addu      $a1, $s4, $zero
    /* 58E8C 8006A67C 0C00038E */  lw         $v1, 0xC($s0)
    /* 58E90 8006A680 01004226 */  addiu      $v0, $s2, 0x1
    /* 58E94 8006A684 21186200 */  addu       $v1, $v1, $v0
    /* 58E98 8006A688 0C0003AE */  sw         $v1, 0xC($s0)
  .L8006A68C:
    /* 58E9C 8006A68C 21102002 */  addu       $v0, $s1, $zero
  .L8006A690:
    /* 58EA0 8006A690 2400BF8F */  lw         $ra, 0x24($sp)
    /* 58EA4 8006A694 2000B48F */  lw         $s4, 0x20($sp)
    /* 58EA8 8006A698 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 58EAC 8006A69C 1800B28F */  lw         $s2, 0x18($sp)
    /* 58EB0 8006A6A0 1400B18F */  lw         $s1, 0x14($sp)
    /* 58EB4 8006A6A4 1000B08F */  lw         $s0, 0x10($sp)
    /* 58EB8 8006A6A8 0800E003 */  jr         $ra
    /* 58EBC 8006A6AC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8006A5D0
