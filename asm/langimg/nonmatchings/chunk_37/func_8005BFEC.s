nonmatching func_8005BFEC, 0xF8

glabel func_8005BFEC
    /* 4A7FC 8005BFEC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 4A800 8005BFF0 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 4A804 8005BFF4 3000BFAF */  sw         $ra, 0x30($sp)
    /* 4A808 8005BFF8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4A80C 8005BFFC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4A810 8005C000 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4A814 8005C004 4300B280 */  lb         $s2, 0x43($a1)
    /* 4A818 8005C008 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4A81C 8005C00C 2D004212 */  beq        $s2, $v0, .L8005C0C4
    /* 4A820 8005C010 21988000 */   addu      $s3, $a0, $zero
    /* 4A824 8005C014 04000224 */  addiu      $v0, $zero, 0x4
    /* 4A828 8005C018 0100A390 */  lbu        $v1, 0x1($a1)
    /* 4A82C 8005C01C 4100A580 */  lb         $a1, 0x41($a1)
    /* 4A830 8005C020 24006214 */  bne        $v1, $v0, .L8005C0B4
    /* 4A834 8005C024 03000224 */   addiu     $v0, $zero, 0x3
    /* 4A838 8005C028 0971010C */  jal        func_8005C424
    /* 4A83C 8005C02C 06000524 */   addiu     $a1, $zero, 0x6
    /* 4A840 8005C030 03005126 */  addiu      $s1, $s2, 0x3
    /* 4A844 8005C034 21282002 */  addu       $a1, $s1, $zero
    /* 4A848 8005C038 0D80043C */  lui        $a0, %hi(D_800CB478)
    /* 4A84C 8005C03C 78B4848C */  lw         $a0, %lo(D_800CB478)($a0)
    /* 4A850 8005C040 F5AA010C */  jal        func_8006ABD4
    /* 4A854 8005C044 21804000 */   addu      $s0, $v0, $zero
    /* 4A858 8005C048 FF00073C */  lui        $a3, (0xFFFFFF >> 16)
    /* 4A85C 8005C04C FFFFE734 */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
    /* 4A860 8005C050 21300002 */  addu       $a2, $s0, $zero
    /* 4A864 8005C054 80101200 */  sll        $v0, $s2, 2
    /* 4A868 8005C058 21106202 */  addu       $v0, $s3, $v0
    /* 4A86C 8005C05C C400458C */  lw         $a1, 0xC4($v0)
    /* 4A870 8005C060 0D80043C */  lui        $a0, %hi(D_800CB478)
    /* 4A874 8005C064 78B4848C */  lw         $a0, %lo(D_800CB478)($a0)
    /* 4A878 8005C068 50000324 */  addiu      $v1, $zero, 0x50
    /* 4A87C 8005C06C 1400A7AF */  sw         $a3, 0x14($sp)
    /* 4A880 8005C070 8000073C */  lui        $a3, (0x800000 >> 16)
    /* 4A884 8005C074 1000A3AF */  sw         $v1, 0x10($sp)
    /* 4A888 8005C078 8CAA010C */  jal        func_8006AA30
    /* 4A88C 8005C07C 1800B1AF */   sw        $s1, 0x18($sp)
    /* 4A890 8005C080 21204000 */  addu       $a0, $v0, $zero
    /* 4A894 8005C084 0F008010 */  beqz       $a0, .L8005C0C4
    /* 4A898 8005C088 11000224 */   addiu     $v0, $zero, 0x11
    /* 4A89C 8005C08C 08000324 */  addiu      $v1, $zero, 0x8
    /* 4A8A0 8005C090 4A0082A4 */  sh         $v0, 0x4A($a0)
    /* 4A8A4 8005C094 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4A8A8 8005C098 400083A4 */  sh         $v1, 0x40($a0)
    /* 4A8AC 8005C09C 10010324 */  addiu      $v1, $zero, 0x110
    /* 4A8B0 8005C0A0 420080A4 */  sh         $zero, 0x42($a0)
    /* 4A8B4 8005C0A4 440082AC */  sw         $v0, 0x44($a0)
    /* 4A8B8 8005C0A8 040080AC */  sw         $zero, 0x4($a0)
    /* 4A8BC 8005C0AC 31700108 */  j          .L8005C0C4
    /* 4A8C0 8005C0B0 3C0083AC */   sw        $v1, 0x3C($a0)
  .L8005C0B4:
    /* 4A8C4 8005C0B4 03006214 */  bne        $v1, $v0, .L8005C0C4
    /* 4A8C8 8005C0B8 21206002 */   addu      $a0, $s3, $zero
    /* 4A8CC 8005C0BC 4A70010C */  jal        func_8005C128
    /* 4A8D0 8005C0C0 21304002 */   addu      $a2, $s2, $zero
  .L8005C0C4:
    /* 4A8D4 8005C0C4 3000BF8F */  lw         $ra, 0x30($sp)
    /* 4A8D8 8005C0C8 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 4A8DC 8005C0CC 2800B28F */  lw         $s2, 0x28($sp)
    /* 4A8E0 8005C0D0 2400B18F */  lw         $s1, 0x24($sp)
    /* 4A8E4 8005C0D4 2000B08F */  lw         $s0, 0x20($sp)
    /* 4A8E8 8005C0D8 21100000 */  addu       $v0, $zero, $zero
    /* 4A8EC 8005C0DC 0800E003 */  jr         $ra
    /* 4A8F0 8005C0E0 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8005BFEC
