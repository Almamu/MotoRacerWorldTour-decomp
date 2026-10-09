/* Handwritten function */
nonmatching func_8007BFB0, 0x208

glabel func_8007BFB0
    /* 6A7C0 8007BFB0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6A7C4 8007BFB4 3000BEAF */  sw         $fp, 0x30($sp)
    /* 6A7C8 8007BFB8 0D801E3C */  lui        $fp, %hi(D_800C8C70)
    /* 6A7CC 8007BFBC 708CDE8F */  lw         $fp, %lo(D_800C8C70)($fp)
    /* 6A7D0 8007BFC0 3400BFAF */  sw         $ra, 0x34($sp)
    /* 6A7D4 8007BFC4 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 6A7D8 8007BFC8 2800B6AF */  sw         $s6, 0x28($sp)
    /* 6A7DC 8007BFCC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 6A7E0 8007BFD0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6A7E4 8007BFD4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6A7E8 8007BFD8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6A7EC 8007BFDC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6A7F0 8007BFE0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6A7F4 8007BFE4 00E85648 */  cfc2       $s6, $29 /* handwritten instruction */
    /* 6A7F8 8007BFE8 00F05748 */  cfc2       $s7, $30 /* handwritten instruction */
    /* 6A7FC 8007BFEC 0C008B94 */  lhu        $t3, 0xC($a0)
    /* 6A800 8007BFF0 00000000 */  nop
    /* 6A804 8007BFF4 00E8CB48 */  ctc2       $t3, $29 /* handwritten instruction */
    /* 6A808 8007BFF8 0E008C94 */  lhu        $t4, 0xE($a0)
    /* 6A80C 8007BFFC 00000000 */  nop
    /* 6A810 8007C000 00F0CC48 */  ctc2       $t4, $30 /* handwritten instruction */
    /* 6A814 8007C004 0400878C */  lw         $a3, 0x4($a0)
    /* 6A818 8007C008 00000000 */  nop
    /* 6A81C 8007C00C 1800F48C */  lw         $s4, 0x18($a3)
    /* 6A820 8007C010 0400E384 */  lh         $v1, 0x4($a3)
    /* 6A824 8007C014 1C00F38C */  lw         $s3, 0x1C($a3)
    /* 6A828 8007C018 C0400300 */  sll        $t0, $v1, 3
    /* 6A82C 8007C01C 78030229 */  slti       $v0, $t0, 0x378
    /* 6A830 8007C020 33004010 */  beqz       $v0, .L8007C0F0
    /* 6A834 8007C024 10008A24 */   addiu     $t2, $a0, 0x10
    /* 6A838 8007C028 21308002 */  addu       $a2, $s4, $zero
    /* 6A83C 8007C02C 801F053C */  lui        $a1, (0x1F800004 >> 16)
    /* 6A840 8007C030 1442828F */  lw         $v0, %gp_rel(D_800C8904)($gp)
    /* 6A844 8007C034 00000000 */  nop
    /* 6A848 8007C038 26104400 */  xor        $v0, $v0, $a0
    /* 6A84C 8007C03C 0100492C */  sltiu      $t1, $v0, 0x1
    /* 6A850 8007C040 0B002015 */  bnez       $t1, .L8007C070
    /* 6A854 8007C044 801F143C */   lui       $s4, (0x1F800000 >> 16)
    /* 6A858 8007C048 144284AF */  sw         $a0, %gp_rel(D_800C8904)($gp)
    /* 6A85C 8007C04C 21206000 */  addu       $a0, $v1, $zero
  .L8007C050:
    /* 6A860 8007C050 0000C28C */  lw         $v0, 0x0($a2)
    /* 6A864 8007C054 0400C38C */  lw         $v1, 0x4($a2)
    /* 6A868 8007C058 0800C624 */  addiu      $a2, $a2, 0x8
    /* 6A86C 8007C05C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 6A870 8007C060 0000A2AC */  sw         $v0, (0x1F800000 & 0xFFFF)($a1)
    /* 6A874 8007C064 0400A3AC */  sw         $v1, (0x1F800004 & 0xFFFF)($a1)
    /* 6A878 8007C068 F9FF8014 */  bnez       $a0, .L8007C050
    /* 6A87C 8007C06C 0800A524 */   addiu     $a1, $a1, %lo(D_1F800008)
  .L8007C070:
    /* 6A880 8007C070 0000E584 */  lh         $a1, 0x0($a3)
    /* 6A884 8007C074 00000000 */  nop
    /* 6A888 8007C078 C0100500 */  sll        $v0, $a1, 3
    /* 6A88C 8007C07C 23104500 */  subu       $v0, $v0, $a1
    /* 6A890 8007C080 80100200 */  sll        $v0, $v0, 2
    /* 6A894 8007C084 21104800 */  addu       $v0, $v0, $t0
    /* 6A898 8007C088 7803422C */  sltiu      $v0, $v0, 0x378
    /* 6A89C 8007C08C 18004010 */  beqz       $v0, .L8007C0F0
    /* 6A8A0 8007C090 801F023C */   lui       $v0, (0x1F800018 >> 16)
    /* 6A8A4 8007C094 21206002 */  addu       $a0, $s3, $zero
    /* 6A8A8 8007C098 21980201 */  addu       $s3, $t0, $v0
    /* 6A8AC 8007C09C 14002015 */  bnez       $t1, .L8007C0F0
    /* 6A8B0 8007C0A0 21186002 */   addu      $v1, $s3, $zero
    /* 6A8B4 8007C0A4 2110A000 */  addu       $v0, $a1, $zero
  .L8007C0A8:
    /* 6A8B8 8007C0A8 00008D8C */  lw         $t5, 0x0($a0)
    /* 6A8BC 8007C0AC 04008E8C */  lw         $t6, 0x4($a0)
    /* 6A8C0 8007C0B0 08008B8C */  lw         $t3, 0x8($a0)
    /* 6A8C4 8007C0B4 0C008C8C */  lw         $t4, 0xC($a0)
    /* 6A8C8 8007C0B8 00006DAC */  sw         $t5, (0x1F800000 & 0xFFFF)($v1)
    /* 6A8CC 8007C0BC 04006EAC */  sw         $t6, (0x1F800004 & 0xFFFF)($v1)
    /* 6A8D0 8007C0C0 08006BAC */  sw         $t3, (0x1F800008 & 0xFFFF)($v1)
    /* 6A8D4 8007C0C4 0C006CAC */  sw         $t4, (0x1F80000C & 0xFFFF)($v1)
    /* 6A8D8 8007C0C8 10008D8C */  lw         $t5, 0x10($a0)
    /* 6A8DC 8007C0CC 14008E8C */  lw         $t6, 0x14($a0)
    /* 6A8E0 8007C0D0 18008B8C */  lw         $t3, 0x18($a0)
    /* 6A8E4 8007C0D4 10006DAC */  sw         $t5, (0x1F800010 & 0xFFFF)($v1)
    /* 6A8E8 8007C0D8 14006EAC */  sw         $t6, (0x1F800014 & 0xFFFF)($v1)
    /* 6A8EC 8007C0DC 18006BAC */  sw         $t3, (0x1F800018 & 0xFFFF)($v1)
    /* 6A8F0 8007C0E0 1C008424 */  addiu      $a0, $a0, 0x1C
    /* 6A8F4 8007C0E4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 6A8F8 8007C0E8 EFFF4014 */  bnez       $v0, .L8007C0A8
    /* 6A8FC 8007C0EC 1C006324 */   addiu     $v1, $v1, %lo(D_1F80001C)
  .L8007C0F0:
    /* 6A900 8007C0F0 21884001 */  addu       $s1, $t2, $zero
    /* 6A904 8007C0F4 19001224 */  addiu      $s2, $zero, 0x19
    /* 6A908 8007C0F8 00003096 */  lhu        $s0, 0x0($s1)
    /* 6A90C 8007C0FC 00000000 */  nop
    /* 6A910 8007C100 18000012 */  beqz       $s0, .L8007C164
    /* 6A914 8007C104 02003126 */   addiu     $s1, $s1, 0x2
    /* 6A918 8007C108 0D80153C */  lui        $s5, %hi(D_800C8908)
    /* 6A91C 8007C10C 0889B526 */  addiu      $s5, $s5, %lo(D_800C8908)
  .L8007C110:
    /* 6A920 8007C110 3F000232 */  andi       $v0, $s0, 0x3F
    /* 6A924 8007C114 80100200 */  sll        $v0, $v0, 2
    /* 6A928 8007C118 21105500 */  addu       $v0, $v0, $s5
    /* 6A92C 8007C11C 0000428C */  lw         $v0, 0x0($v0)
    /* 6A930 8007C120 00000000 */  nop
    /* 6A934 8007C124 05004010 */  beqz       $v0, .L8007C13C
    /* 6A938 8007C128 83811000 */   sra       $s0, $s0, 6
    /* 6A93C 8007C12C 21206002 */  addu       $a0, $s3, $zero
    /* 6A940 8007C130 21288002 */  addu       $a1, $s4, $zero
    /* 6A944 8007C134 09F84000 */  jalr       $v0
    /* 6A948 8007C138 21300002 */   addu      $a2, $s0, $zero
  .L8007C13C:
    /* 6A94C 8007C13C C0101000 */  sll        $v0, $s0, 3
    /* 6A950 8007C140 23105000 */  subu       $v0, $v0, $s0
    /* 6A954 8007C144 80100200 */  sll        $v0, $v0, 2
    /* 6A958 8007C148 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* 6A95C 8007C14C 05004012 */  beqz       $s2, .L8007C164
    /* 6A960 8007C150 21986202 */   addu      $s3, $s3, $v0
    /* 6A964 8007C154 00003096 */  lhu        $s0, 0x0($s1)
    /* 6A968 8007C158 00000000 */  nop
    /* 6A96C 8007C15C ECFF0016 */  bnez       $s0, .L8007C110
    /* 6A970 8007C160 02003126 */   addiu     $s1, $s1, 0x2
  .L8007C164:
    /* 6A974 8007C164 00E8D648 */  ctc2       $s6, $29 /* handwritten instruction */
    /* 6A978 8007C168 00F0D748 */  ctc2       $s7, $30 /* handwritten instruction */
    /* 6A97C 8007C16C 8000023C */  lui        $v0, (0x808080 >> 16)
    /* 6A980 8007C170 1042858F */  lw         $a1, %gp_rel(D_800C8900)($gp)
    /* 6A984 8007C174 80804234 */  ori        $v0, $v0, (0x808080 & 0xFFFF)
    /* 6A988 8007C178 0300A210 */  beq        $a1, $v0, .L8007C188
    /* 6A98C 8007C17C 00000000 */   nop
    /* 6A990 8007C180 87FC010C */  jal        func_8007F21C
    /* 6A994 8007C184 2120C003 */   addu      $a0, $fp, $zero
  .L8007C188:
    /* 6A998 8007C188 3400BF8F */  lw         $ra, 0x34($sp)
    /* 6A99C 8007C18C 3000BE8F */  lw         $fp, 0x30($sp)
    /* 6A9A0 8007C190 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 6A9A4 8007C194 2800B68F */  lw         $s6, 0x28($sp)
    /* 6A9A8 8007C198 2400B58F */  lw         $s5, 0x24($sp)
    /* 6A9AC 8007C19C 2000B48F */  lw         $s4, 0x20($sp)
    /* 6A9B0 8007C1A0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6A9B4 8007C1A4 1800B28F */  lw         $s2, 0x18($sp)
    /* 6A9B8 8007C1A8 1400B18F */  lw         $s1, 0x14($sp)
    /* 6A9BC 8007C1AC 1000B08F */  lw         $s0, 0x10($sp)
    /* 6A9C0 8007C1B0 0800E003 */  jr         $ra
    /* 6A9C4 8007C1B4 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8007BFB0
