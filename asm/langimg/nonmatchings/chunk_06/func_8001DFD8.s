/* Handwritten function */
nonmatching func_8001DFD8, 0x138

glabel func_8001DFD8
    /* C7E8 8001DFD8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C7EC 8001DFDC 01000224 */  addiu      $v0, $zero, 0x1
    /* C7F0 8001DFE0 0300A010 */  beqz       $a1, .L8001DFF0
    /* C7F4 8001DFE4 3C0182AC */   sw        $v0, 0x13C($a0)
    /* C7F8 8001DFE8 FF770008 */  j          .L8001DFFC
    /* C7FC 8001DFEC 03120500 */   sra       $v0, $a1, 8
  .L8001DFF0:
    /* C800 8001DFF0 5C01828C */  lw         $v0, 0x15C($a0)
    /* C804 8001DFF4 00000000 */  nop
    /* C808 8001DFF8 03120200 */  sra        $v0, $v0, 8
  .L8001DFFC:
    /* C80C 8001DFFC 400182AC */  sw         $v0, 0x140($a0)
    /* C810 8001E000 B800858C */  lw         $a1, 0xB8($a0)
    /* C814 8001E004 00000000 */  nop
    /* C818 8001E008 0000A38C */  lw         $v1, 0x0($a1)
    /* C81C 8001E00C 00000000 */  nop
    /* C820 8001E010 0000628C */  lw         $v0, 0x0($v1)
    /* C824 8001E014 00000000 */  nop
    /* C828 8001E018 83130200 */  sra        $v0, $v0, 14
    /* C82C 8001E01C 0000A2A7 */  sh         $v0, 0x0($sp)
    /* C830 8001E020 0000A48C */  lw         $a0, 0x0($a1)
    /* C834 8001E024 00000000 */  nop
    /* C838 8001E028 0400838C */  lw         $v1, 0x4($a0)
    /* C83C 8001E02C 00000000 */  nop
    /* C840 8001E030 831B0300 */  sra        $v1, $v1, 14
    /* C844 8001E034 0200A3A7 */  sh         $v1, 0x2($sp)
    /* C848 8001E038 0000A48C */  lw         $a0, 0x0($a1)
    /* C84C 8001E03C 00000000 */  nop
    /* C850 8001E040 0800828C */  lw         $v0, 0x8($a0)
    /* C854 8001E044 00000000 */  nop
    /* C858 8001E048 83130200 */  sra        $v0, $v0, 14
    /* C85C 8001E04C 0400A2A7 */  sh         $v0, 0x4($sp)
    /* C860 8001E050 0800A48C */  lw         $a0, 0x8($a1)
    /* C864 8001E054 00000000 */  nop
    /* C868 8001E058 0000838C */  lw         $v1, 0x0($a0)
    /* C86C 8001E05C 00000000 */  nop
    /* C870 8001E060 831B0300 */  sra        $v1, $v1, 14
    /* C874 8001E064 0600A3A7 */  sh         $v1, 0x6($sp)
    /* C878 8001E068 0800A48C */  lw         $a0, 0x8($a1)
    /* C87C 8001E06C 00000000 */  nop
    /* C880 8001E070 0400828C */  lw         $v0, 0x4($a0)
    /* C884 8001E074 00000000 */  nop
    /* C888 8001E078 83130200 */  sra        $v0, $v0, 14
    /* C88C 8001E07C 0800A2A7 */  sh         $v0, 0x8($sp)
    /* C890 8001E080 0800A48C */  lw         $a0, 0x8($a1)
    /* C894 8001E084 00000000 */  nop
    /* C898 8001E088 0800838C */  lw         $v1, 0x8($a0)
    /* C89C 8001E08C 00000000 */  nop
    /* C8A0 8001E090 831B0300 */  sra        $v1, $v1, 14
    /* C8A4 8001E094 0A00A3A7 */  sh         $v1, 0xA($sp)
    /* C8A8 8001E098 1000A48C */  lw         $a0, 0x10($a1)
    /* C8AC 8001E09C 00000000 */  nop
    /* C8B0 8001E0A0 0000828C */  lw         $v0, 0x0($a0)
    /* C8B4 8001E0A4 00000000 */  nop
    /* C8B8 8001E0A8 83130200 */  sra        $v0, $v0, 14
    /* C8BC 8001E0AC 0C00A2A7 */  sh         $v0, 0xC($sp)
    /* C8C0 8001E0B0 1000A48C */  lw         $a0, 0x10($a1)
    /* C8C4 8001E0B4 00000000 */  nop
    /* C8C8 8001E0B8 0400838C */  lw         $v1, 0x4($a0)
    /* C8CC 8001E0BC 00000000 */  nop
    /* C8D0 8001E0C0 831B0300 */  sra        $v1, $v1, 14
    /* C8D4 8001E0C4 0E00A3A7 */  sh         $v1, 0xE($sp)
    /* C8D8 8001E0C8 1000A48C */  lw         $a0, 0x10($a1)
    /* C8DC 8001E0CC 00000000 */  nop
    /* C8E0 8001E0D0 0800828C */  lw         $v0, 0x8($a0)
    /* C8E4 8001E0D4 00000000 */  nop
    /* C8E8 8001E0D8 83130200 */  sra        $v0, $v0, 14
    /* C8EC 8001E0DC 1000A2A7 */  sh         $v0, 0x10($sp)
    /* C8F0 8001E0E0 0000A28F */  lw         $v0, 0x0($sp)
    /* C8F4 8001E0E4 0400A38F */  lw         $v1, 0x4($sp)
    /* C8F8 8001E0E8 0040C248 */  ctc2       $v0, $8 /* handwritten instruction */
    /* C8FC 8001E0EC 0048C348 */  ctc2       $v1, $9 /* handwritten instruction */
    /* C900 8001E0F0 0800A28F */  lw         $v0, 0x8($sp)
    /* C904 8001E0F4 0C00A38F */  lw         $v1, 0xC($sp)
    /* C908 8001E0F8 0050C248 */  ctc2       $v0, $10 /* handwritten instruction */
    /* C90C 8001E0FC 1000A28F */  lw         $v0, 0x10($sp)
    /* C910 8001E100 0058C348 */  ctc2       $v1, $11 /* handwritten instruction */
    /* C914 8001E104 0060C248 */  ctc2       $v0, $12 /* handwritten instruction */
    /* C918 8001E108 0800E003 */  jr         $ra
    /* C91C 8001E10C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8001DFD8
