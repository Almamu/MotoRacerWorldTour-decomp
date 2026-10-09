/* Handwritten function */
nonmatching func_8007C780, 0x1F8

glabel func_8007C780
    /* 6AF90 8007C780 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 6AF94 8007C784 21108000 */  addu       $v0, $a0, $zero
    /* 6AF98 8007C788 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 6AF9C 8007C78C 3800BEAF */  sw         $fp, 0x38($sp)
    /* 6AFA0 8007C790 3400B7AF */  sw         $s7, 0x34($sp)
    /* 6AFA4 8007C794 3000B6AF */  sw         $s6, 0x30($sp)
    /* 6AFA8 8007C798 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 6AFAC 8007C79C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 6AFB0 8007C7A0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 6AFB4 8007C7A4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 6AFB8 8007C7A8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 6AFBC 8007C7AC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 6AFC0 8007C7B0 00E85748 */  cfc2       $s7, $29 /* handwritten instruction */
    /* 6AFC4 8007C7B4 00F05E48 */  cfc2       $fp, $30 /* handwritten instruction */
    /* 6AFC8 8007C7B8 0D80043C */  lui        $a0, %hi(D_800CA7D8)
    /* 6AFCC 8007C7BC D8A78424 */  addiu      $a0, $a0, %lo(D_800CA7D8)
    /* 6AFD0 8007C7C0 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 6AFD4 8007C7C4 0400548C */  lw         $s4, 0x4($v0)
    /* 6AFD8 8007C7C8 00000000 */  nop
    /* 6AFDC 8007C7CC 1C00958E */  lw         $s5, 0x1C($s4)
    /* 6AFE0 8007C7D0 1800968E */  lw         $s6, 0x18($s4)
    /* 6AFE4 8007C7D4 F677000C */  jal        func_8001DFD8
    /* 6AFE8 8007C7D8 10005224 */   addiu     $s2, $v0, 0x10
    /* 6AFEC 8007C7DC 0D80043C */  lui        $a0, %hi(D_800CA7D8)
    /* 6AFF0 8007C7E0 D8A78424 */  addiu      $a0, $a0, %lo(D_800CA7D8)
    /* 6AFF4 8007C7E4 2800838E */  lw         $v1, 0x28($s4)
    /* 6AFF8 8007C7E8 801F073C */  lui        $a3, (0x1F800008 >> 16)
    /* 6AFFC 8007C7EC 0B006690 */  lbu        $a2, 0xB($v1)
    /* 6B000 8007C7F0 10000224 */  addiu      $v0, $zero, 0x10
    /* 6B004 8007C7F4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 6B008 8007C7F8 1000658C */  lw         $a1, 0x10($v1)
    /* 6B00C 8007C7FC 7278000C */  jal        func_8001E1C8
    /* 6B010 8007C800 0800E734 */   ori       $a3, $a3, (0x1F800008 & 0xFFFF)
    /* 6B014 8007C804 0D80043C */  lui        $a0, %hi(D_800CA7D8)
    /* 6B018 8007C808 D8A78424 */  addiu      $a0, $a0, %lo(D_800CA7D8)
    /* 6B01C 8007C80C 4478000C */  jal        func_8001E110
    /* 6B020 8007C810 00000000 */   nop
    /* 6B024 8007C814 2800828E */  lw         $v0, 0x28($s4)
    /* 6B028 8007C818 00000000 */  nop
    /* 6B02C 8007C81C 0A005090 */  lbu        $s0, 0xA($v0)
    /* 6B030 8007C820 00000000 */  nop
    /* 6B034 8007C824 04000012 */  beqz       $s0, .L8007C838
    /* 6B038 8007C828 21100000 */   addu      $v0, $zero, $zero
  .L8007C82C:
    /* 6B03C 8007C82C 43801000 */  sra        $s0, $s0, 1
    /* 6B040 8007C830 FEFF0016 */  bnez       $s0, .L8007C82C
    /* 6B044 8007C834 01004224 */   addiu     $v0, $v0, 0x1
  .L8007C838:
    /* 6B048 8007C838 04001124 */  addiu      $s1, $zero, 0x4
    /* 6B04C 8007C83C 04885100 */  sllv       $s1, $s1, $v0
    /* 6B050 8007C840 80281100 */  sll        $a1, $s1, 2
    /* 6B054 8007C844 02004224 */  addiu      $v0, $v0, 0x2
    /* 6B058 8007C848 0D80103C */  lui        $s0, %hi(D_800C8C70)
    /* 6B05C 8007C84C 708C108E */  lw         $s0, %lo(D_800C8C70)($s0)
    /* 6B060 8007C850 00891100 */  sll        $s1, $s1, 4
    /* 6B064 8007C854 801F013C */  lui        $at, (0x1F800000 >> 16)
    /* 6B068 8007C858 000022AC */  sw         $v0, (0x1F800000 & 0xFFFF)($at)
    /* 6B06C 8007C85C 21101102 */  addu       $v0, $s0, $s1
    /* 6B070 8007C860 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6B074 8007C864 708C22AC */  sw         $v0, %lo(D_800C8C70)($at)
    /* 6B078 8007C868 801F013C */  lui        $at, (0x1F800004 >> 16)
    /* 6B07C 8007C86C 040030AC */  sw         $s0, (0x1F800004 & 0xFFFF)($at)
    /* 6B080 8007C870 72B0020C */  jal        func_800AC1C8
    /* 6B084 8007C874 21200002 */   addu      $a0, $s0, $zero
    /* 6B088 8007C878 19001324 */  addiu      $s3, $zero, 0x19
    /* 6B08C 8007C87C FF00053C */  lui        $a1, (0xFFFFFF >> 16)
    /* 6B090 8007C880 0D80033C */  lui        $v1, %hi(D_800CBDC4)
    /* 6B094 8007C884 C4BD638C */  lw         $v1, %lo(D_800CBDC4)($v1)
    /* 6B098 8007C888 FFFFA534 */  ori        $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* 6B09C 8007C88C 0400628C */  lw         $v0, 0x4($v1)
    /* 6B0A0 8007C890 0800648C */  lw         $a0, 0x8($v1)
    /* 6B0A4 8007C894 0D80033C */  lui        $v1, %hi(D_800CBDC0)
    /* 6B0A8 8007C898 C0BD638C */  lw         $v1, %lo(D_800CBDC0)($v1)
    /* 6B0AC 8007C89C 21104400 */  addu       $v0, $v0, $a0
    /* 6B0B0 8007C8A0 80100200 */  sll        $v0, $v0, 2
    /* 6B0B4 8007C8A4 21186200 */  addu       $v1, $v1, $v0
    /* 6B0B8 8007C8A8 E8FF648C */  lw         $a0, -0x18($v1)
    /* 6B0BC 8007C8AC FCFF3126 */  addiu      $s1, $s1, -0x4
    /* 6B0C0 8007C8B0 000004AE */  sw         $a0, 0x0($s0)
    /* 6B0C4 8007C8B4 21801102 */  addu       $s0, $s0, $s1
    /* 6B0C8 8007C8B8 24800502 */  and        $s0, $s0, $a1
    /* 6B0CC 8007C8BC E8FF70AC */  sw         $s0, -0x18($v1)
    /* 6B0D0 8007C8C0 00005096 */  lhu        $s0, 0x0($s2)
    /* 6B0D4 8007C8C4 2800828E */  lw         $v0, 0x28($s4)
    /* 6B0D8 8007C8C8 00000000 */  nop
    /* 6B0DC 8007C8CC 0C00518C */  lw         $s1, 0xC($v0)
    /* 6B0E0 8007C8D0 1B000012 */  beqz       $s0, .L8007C940
    /* 6B0E4 8007C8D4 02005226 */   addiu     $s2, $s2, 0x2
    /* 6B0E8 8007C8D8 0D80143C */  lui        $s4, %hi(D_800C896C)
    /* 6B0EC 8007C8DC 6C899426 */  addiu      $s4, $s4, %lo(D_800C896C)
  .L8007C8E0:
    /* 6B0F0 8007C8E0 3F000232 */  andi       $v0, $s0, 0x3F
    /* 6B0F4 8007C8E4 80100200 */  sll        $v0, $v0, 2
    /* 6B0F8 8007C8E8 21105400 */  addu       $v0, $v0, $s4
    /* 6B0FC 8007C8EC 0000428C */  lw         $v0, 0x0($v0)
    /* 6B100 8007C8F0 00000000 */  nop
    /* 6B104 8007C8F4 06004010 */  beqz       $v0, .L8007C910
    /* 6B108 8007C8F8 83811000 */   sra       $s0, $s0, 6
    /* 6B10C 8007C8FC 2120A002 */  addu       $a0, $s5, $zero
    /* 6B110 8007C900 2128C002 */  addu       $a1, $s6, $zero
    /* 6B114 8007C904 21300002 */  addu       $a2, $s0, $zero
    /* 6B118 8007C908 09F84000 */  jalr       $v0
    /* 6B11C 8007C90C 21382002 */   addu      $a3, $s1, $zero
  .L8007C910:
    /* 6B120 8007C910 C0101000 */  sll        $v0, $s0, 3
    /* 6B124 8007C914 23105000 */  subu       $v0, $v0, $s0
    /* 6B128 8007C918 80100200 */  sll        $v0, $v0, 2
    /* 6B12C 8007C91C 21A8A202 */  addu       $s5, $s5, $v0
    /* 6B130 8007C920 40181000 */  sll        $v1, $s0, 1
    /* 6B134 8007C924 FFFF7326 */  addiu      $s3, $s3, -0x1
    /* 6B138 8007C928 05006012 */  beqz       $s3, .L8007C940
    /* 6B13C 8007C92C 21882302 */   addu      $s1, $s1, $v1
    /* 6B140 8007C930 00005096 */  lhu        $s0, 0x0($s2)
    /* 6B144 8007C934 00000000 */  nop
    /* 6B148 8007C938 E9FF0016 */  bnez       $s0, .L8007C8E0
    /* 6B14C 8007C93C 02005226 */   addiu     $s2, $s2, 0x2
  .L8007C940:
    /* 6B150 8007C940 00E8D748 */  ctc2       $s7, $29 /* handwritten instruction */
    /* 6B154 8007C944 00F0DE48 */  ctc2       $fp, $30 /* handwritten instruction */
    /* 6B158 8007C948 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 6B15C 8007C94C 3800BE8F */  lw         $fp, 0x38($sp)
    /* 6B160 8007C950 3400B78F */  lw         $s7, 0x34($sp)
    /* 6B164 8007C954 3000B68F */  lw         $s6, 0x30($sp)
    /* 6B168 8007C958 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 6B16C 8007C95C 2800B48F */  lw         $s4, 0x28($sp)
    /* 6B170 8007C960 2400B38F */  lw         $s3, 0x24($sp)
    /* 6B174 8007C964 2000B28F */  lw         $s2, 0x20($sp)
    /* 6B178 8007C968 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 6B17C 8007C96C 1800B08F */  lw         $s0, 0x18($sp)
    /* 6B180 8007C970 0800E003 */  jr         $ra
    /* 6B184 8007C974 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8007C780
