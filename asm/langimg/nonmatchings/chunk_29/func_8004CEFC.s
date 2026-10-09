nonmatching func_8004CEFC, 0x16C

glabel func_8004CEFC
    /* 3B70C 8004CEFC 58FFBD27 */  addiu      $sp, $sp, -0xA8
    /* 3B710 8004CF00 21388000 */  addu       $a3, $a0, $zero
    /* 3B714 8004CF04 80280500 */  sll        $a1, $a1, 2
    /* 3B718 8004CF08 2118E500 */  addu       $v1, $a3, $a1
    /* 3B71C 8004CF0C 21206000 */  addu       $a0, $v1, $zero
    /* 3B720 8004CF10 21306000 */  addu       $a2, $v1, $zero
    /* 3B724 8004CF14 21406000 */  addu       $t0, $v1, $zero
    /* 3B728 8004CF18 A000BFAF */  sw         $ra, 0xA0($sp)
    /* 3B72C 8004CF1C 9C00B3AF */  sw         $s3, 0x9C($sp)
    /* 3B730 8004CF20 9800B2AF */  sw         $s2, 0x98($sp)
    /* 3B734 8004CF24 9400B1AF */  sw         $s1, 0x94($sp)
    /* 3B738 8004CF28 9000B0AF */  sw         $s0, 0x90($sp)
    /* 3B73C 8004CF2C 3C04708C */  lw         $s0, 0x43C($v1)
    /* 3B740 8004CF30 0004828C */  lw         $v0, 0x400($a0)
    /* 3B744 8004CF34 2138C000 */  addu       $a3, $a2, $zero
    /* 3B748 8004CF38 400102AE */  sw         $v0, 0x140($s0)
    /* 3B74C 8004CF3C 0804648C */  lw         $a0, 0x408($v1)
    /* 3B750 8004CF40 1000B327 */  addiu      $s3, $sp, 0x10
    /* 3B754 8004CF44 440104AE */  sw         $a0, 0x144($s0)
    /* 3B758 8004CF48 F803C28C */  lw         $v0, 0x3F8($a2)
    /* 3B75C 8004CF4C 6000A527 */  addiu      $a1, $sp, 0x60
    /* 3B760 8004CF50 23100200 */  negu       $v0, $v0
    /* 3B764 8004CF54 500102AE */  sw         $v0, 0x150($s0)
    /* 3B768 8004CF58 1804C28C */  lw         $v0, 0x418($a2)
    /* 3B76C 8004CF5C 2004038D */  lw         $v1, 0x420($t0)
    /* 3B770 8004CF60 80100200 */  sll        $v0, $v0, 2
    /* 3B774 8004CF64 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3B778 8004CF68 2804E28C */  lw         $v0, 0x428($a3)
    /* 3B77C 8004CF6C 80180300 */  sll        $v1, $v1, 2
    /* 3B780 8004CF70 040063AE */  sw         $v1, 0x4($s3)
    /* 3B784 8004CF74 80100200 */  sll        $v0, $v0, 2
    /* 3B788 8004CF78 080062AE */  sw         $v0, 0x8($s3)
    /* 3B78C 8004CF7C 4401038E */  lw         $v1, 0x144($s0)
    /* 3B790 8004CF80 4000A427 */  addiu      $a0, $sp, 0x40
    /* 3B794 8004CF84 6000A0A7 */  sh         $zero, 0x60($sp)
    /* 3B798 8004CF88 6400A0A7 */  sh         $zero, 0x64($sp)
    /* 3B79C 8004CF8C 963F010C */  jal        func_8004FE58
    /* 3B7A0 8004CF90 6200A3A7 */   sh        $v1, 0x62($sp)
    /* 3B7A4 8004CF94 6800A427 */  addiu      $a0, $sp, 0x68
    /* 3B7A8 8004CF98 5C00A0AF */  sw         $zero, 0x5C($sp)
    /* 3B7AC 8004CF9C 5800A0AF */  sw         $zero, 0x58($sp)
    /* 3B7B0 8004CFA0 5400A0AF */  sw         $zero, 0x54($sp)
    /* 3B7B4 8004CFA4 4001028E */  lw         $v0, 0x140($s0)
    /* 3B7B8 8004CFA8 8800A527 */  addiu      $a1, $sp, 0x88
    /* 3B7BC 8004CFAC 8A00A0A7 */  sh         $zero, 0x8A($sp)
    /* 3B7C0 8004CFB0 8C00A0A7 */  sh         $zero, 0x8C($sp)
    /* 3B7C4 8004CFB4 963F010C */  jal        func_8004FE58
    /* 3B7C8 8004CFB8 8800A2A7 */   sh        $v0, 0x88($sp)
    /* 3B7CC 8004CFBC 4000A427 */  addiu      $a0, $sp, 0x40
    /* 3B7D0 8004CFC0 6800A527 */  addiu      $a1, $sp, 0x68
    /* 3B7D4 8004CFC4 2000A627 */  addiu      $a2, $sp, 0x20
    /* 3B7D8 8004CFC8 8400A0AF */  sw         $zero, 0x84($sp)
    /* 3B7DC 8004CFCC 8000A0AF */  sw         $zero, 0x80($sp)
    /* 3B7E0 8004CFD0 9D61020C */  jal        func_80098674
    /* 3B7E4 8004CFD4 7C00A0AF */   sw        $zero, 0x7C($sp)
    /* 3B7E8 8004CFD8 7C00A427 */  addiu      $a0, $sp, 0x7C
    /* 3B7EC 8004CFDC 1F62020C */  jal        func_8009887C
    /* 3B7F0 8004CFE0 3400A527 */   addiu     $a1, $sp, 0x34
    /* 3B7F4 8004CFE4 3400B227 */  addiu      $s2, $sp, 0x34
    /* 3B7F8 8004CFE8 21204002 */  addu       $a0, $s2, $zero
    /* 3B7FC 8004CFEC F465020C */  jal        func_800997D0
    /* 3B800 8004CFF0 5400A527 */   addiu     $a1, $sp, 0x54
    /* 3B804 8004CFF4 2000A427 */  addiu      $a0, $sp, 0x20
    /* 3B808 8004CFF8 48010526 */  addiu      $a1, $s0, 0x148
    /* 3B80C 8004CFFC 5000A627 */  addiu      $a2, $sp, 0x50
    /* 3B810 8004D000 DA61020C */  jal        func_80098768
    /* 3B814 8004D004 4000B127 */   addiu     $s1, $sp, 0x40
    /* 3B818 8004D008 5000A427 */  addiu      $a0, $sp, 0x50
    /* 3B81C 8004D00C F465020C */  jal        func_800997D0
    /* 3B820 8004D010 21284002 */   addu      $a1, $s2, $zero
    /* 3B824 8004D014 21202002 */  addu       $a0, $s1, $zero
    /* 3B828 8004D018 21286002 */  addu       $a1, $s3, $zero
    /* 3B82C 8004D01C 2666020C */  jal        func_80099898
    /* 3B830 8004D020 5000A627 */   addiu     $a2, $sp, 0x50
    /* 3B834 8004D024 21200002 */  addu       $a0, $s0, $zero
    /* 3B838 8004D028 4000A28F */  lw         $v0, 0x40($sp)
    /* 3B83C 8004D02C 4400A38F */  lw         $v1, 0x44($sp)
    /* 3B840 8004D030 4800A68F */  lw         $a2, 0x48($sp)
    /* 3B844 8004D034 21286002 */  addu       $a1, $s3, $zero
    /* 3B848 8004D038 F80002AE */  sw         $v0, 0xF8($s0)
    /* 3B84C 8004D03C F8001026 */  addiu      $s0, $s0, 0xF8
    /* 3B850 8004D040 040003AE */  sw         $v1, 0x4($s0)
    /* 3B854 8004D044 16E1010C */  jal        func_80078458
    /* 3B858 8004D048 080006AE */   sw        $a2, 0x8($s0)
    /* 3B85C 8004D04C A000BF8F */  lw         $ra, 0xA0($sp)
    /* 3B860 8004D050 9C00B38F */  lw         $s3, 0x9C($sp)
    /* 3B864 8004D054 9800B28F */  lw         $s2, 0x98($sp)
    /* 3B868 8004D058 9400B18F */  lw         $s1, 0x94($sp)
    /* 3B86C 8004D05C 9000B08F */  lw         $s0, 0x90($sp)
    /* 3B870 8004D060 0800E003 */  jr         $ra
    /* 3B874 8004D064 A800BD27 */   addiu     $sp, $sp, 0xA8
endlabel func_8004CEFC
