/* Handwritten function */
nonmatching func_8008B168, 0xA0

glabel func_8008B168
    /* 79978 8008B168 FEFFC624 */  addiu      $a2, $a2, -0x2
    /* 7997C 8008B16C 0000A984 */  lh         $t1, 0x0($a1)
    /* 79980 8008B170 0200A524 */  addiu      $a1, $a1, 0x2
    /* 79984 8008B174 C0100900 */  sll        $v0, $t1, 3
    /* 79988 8008B178 21388200 */  addu       $a3, $a0, $v0
    /* 7998C 8008B17C 0000E0C8 */  lwc2       $0, 0x0($a3)
    /* 79990 8008B180 0400E1C8 */  lwc2       $1, 0x4($a3)
    /* 79994 8008B184 0000A984 */  lh         $t1, 0x0($a1)
    /* 79998 8008B188 0200A524 */  addiu      $a1, $a1, 0x2
    /* 7999C 8008B18C 7F1F033C */  lui        $v1, (0x1F7FFFF8 >> 16)
    /* 799A0 8008B190 6B2C0208 */  j          .L8008B1AC
    /* 799A4 8008B194 F8FF6334 */   ori       $v1, $v1, (0x1F7FFFF8 & 0xFFFF)
  .L8008B198:
    /* 799A8 8008B198 00006EE8 */  swc2       $14, 0x0($v1)
    /* 799AC 8008B19C 04006224 */  addiu      $v0, $v1, 0x4
    /* 799B0 8008B1A0 000053E8 */  swc2       $19, 0x0($v0)
    /* 799B4 8008B1A4 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* 799B8 8008B1A8 00088748 */  mtc2       $a3, $1 /* handwritten instruction */
  .L8008B1AC:
    /* 799BC 8008B1AC C0100900 */  sll        $v0, $t1, 3
    /* 799C0 8008B1B0 21388200 */  addu       $a3, $a0, $v0
    /* 799C4 8008B1B4 0100184A */  rtps
    /* 799C8 8008B1B8 0000A984 */  lh         $t1, 0x0($a1)
    /* 799CC 8008B1BC 0200A524 */  addiu      $a1, $a1, 0x2
    /* 799D0 8008B1C0 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 799D4 8008B1C4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 799D8 8008B1C8 0000E88C */  lw         $t0, 0x0($a3)
    /* 799DC 8008B1CC 0400E794 */  lhu        $a3, 0x4($a3)
    /* 799E0 8008B1D0 F1FFC214 */  bne        $a2, $v0, .L8008B198
    /* 799E4 8008B1D4 08006324 */   addiu     $v1, $v1, 0x8
    /* 799E8 8008B1D8 00008848 */  mtc2       $t0, $0 /* handwritten instruction */
    /* 799EC 8008B1DC 00088748 */  mtc2       $a3, $1 /* handwritten instruction */
    /* 799F0 8008B1E0 00006EE8 */  swc2       $14, 0x0($v1)
    /* 799F4 8008B1E4 04006224 */  addiu      $v0, $v1, 0x4
    /* 799F8 8008B1E8 000053E8 */  swc2       $19, 0x0($v0)
    /* 799FC 8008B1EC 08006324 */  addiu      $v1, $v1, 0x8
    /* 79A00 8008B1F0 0100184A */  rtps
    /* 79A04 8008B1F4 00006EE8 */  swc2       $14, 0x0($v1)
    /* 79A08 8008B1F8 04006224 */  addiu      $v0, $v1, 0x4
    /* 79A0C 8008B1FC 000053E8 */  swc2       $19, 0x0($v0)
    /* 79A10 8008B200 0800E003 */  jr         $ra
    /* 79A14 8008B204 00000000 */   nop
endlabel func_8008B168
