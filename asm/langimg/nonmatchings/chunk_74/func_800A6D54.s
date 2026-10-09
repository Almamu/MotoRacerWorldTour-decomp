/* Handwritten function */
nonmatching func_800A6D54, 0x24C

glabel func_800A6D54
    /* 95564 800A6D54 0E000005 */  bltz       $t0, .L800A6D90
    /* 95568 800A6D58 40080800 */   sll       $at, $t0, 1
    /* 9556C 800A6D5C 07002104 */  bgez       $at, .L800A6D7C
    /* 95570 800A6D60 40080100 */   sll       $at, $at, 1
    /* 95574 800A6D64 06000934 */  ori        $t1, $zero, 0x6
    /* 95578 800A6D68 82470100 */  srl        $t0, $at, 30
    /* 9557C 800A6D6C 20002004 */  bltz       $at, .L800A6DF0
    /* 95580 800A6D70 20C82803 */   add       $t9, $t9, $t0 /* handwritten instruction */
    /* 95584 800A6D74 1E000104 */  bgez       $zero, .L800A6DF0
    /* 95588 800A6D78 FDFF3923 */   addi      $t9, $t9, -0x3 /* handwritten instruction */
  .L800A6D7C:
    /* 9558C 800A6D7C 05000934 */  ori        $t1, $zero, 0x5
    /* 95590 800A6D80 1B002004 */  bltz       $at, .L800A6DF0
    /* 95594 800A6D84 01003923 */   addi      $t9, $t9, 0x1 /* handwritten instruction */
    /* 95598 800A6D88 19000104 */  bgez       $zero, .L800A6DF0
    /* 9559C 800A6D8C FEFF3923 */   addi      $t9, $t9, -0x2 /* handwritten instruction */
  .L800A6D90:
    /* 955A0 800A6D90 00F08848 */  mtc2       $t0, $30 /* handwritten instruction */
    /* 955A4 800A6D94 0A002004 */  bltz       $at, .L800A6DC0
    /* 955A8 800A6D98 40700100 */   sll       $t6, $at, 1
    /* 955AC 800A6D9C 1400C105 */  bgez       $t6, .L800A6DF0
    /* 955B0 800A6DA0 05000934 */   ori       $t1, $zero, 0x5
    /* 955B4 800A6DA4 08000934 */  ori        $t1, $zero, 0x8
    /* 955B8 800A6DA8 C0080800 */  sll        $at, $t0, 3
    /* 955BC 800A6DAC 42470100 */  srl        $t0, $at, 29
    /* 955C0 800A6DB0 0F002004 */  bltz       $at, .L800A6DF0
    /* 955C4 800A6DB4 20C82803 */   add       $t9, $t9, $t0 /* handwritten instruction */
    /* 955C8 800A6DB8 0D000104 */  bgez       $zero, .L800A6DF0
    /* 955CC 800A6DBC F9FF3923 */   addi      $t9, $t9, -0x7 /* handwritten instruction */
  .L800A6DC0:
    /* 955D0 800A6DC0 00F80948 */  mfc2       $t1, $31 /* handwritten instruction */
    /* 955D4 800A6DC4 FEFF0E20 */  addi       $t6, $zero, -0x2 /* handwritten instruction */
    /* 955D8 800A6DC8 04082101 */  sllv       $at, $at, $t1
    /* 955DC 800A6DCC 2248C901 */  sub        $t1, $t6, $t1 /* handwritten instruction */
    /* 955E0 800A6DD0 03002004 */  bltz       $at, .L800A6DE0
    /* 955E4 800A6DD4 06402101 */   srlv      $t0, $at, $t1
    /* 955E8 800A6DD8 06082E01 */  srlv       $at, $t6, $t1
    /* 955EC 800A6DDC 22400101 */  sub        $t0, $t0, $at /* handwritten instruction */
  .L800A6DE0:
    /* 955F0 800A6DE0 22480900 */  neg        $t1, $t1 /* handwritten instruction */
    /* 955F4 800A6DE4 20482901 */  add        $t1, $t1, $t1 /* handwritten instruction */
    /* 955F8 800A6DE8 01002921 */  addi       $t1, $t1, 0x1 /* handwritten instruction */
    /* 955FC 800A6DEC 20C82803 */  add        $t9, $t9, $t0 /* handwritten instruction */
  .L800A6DF0:
    /* 95600 800A6DF0 80401900 */  sll        $t0, $t9, 2
    /* 95604 800A6DF4 FF030831 */  andi       $t0, $t0, 0x3FF
    /* 95608 800A6DF8 F69A0208 */  j          func_800A6BD8
    /* 9560C 800A6DFC 25400B01 */   or        $t0, $t0, $t3
  .L800A6E00:
    /* 95610 800A6E00 00F08248 */  mtc2       $v0, $30 /* handwritten instruction */
    /* 95614 800A6E04 09004004 */  bltz       $v0, .L800A6E2C
    /* 95618 800A6E08 40080200 */   sll       $at, $v0, 1
    /* 9561C 800A6E0C 12002104 */  bgez       $at, .L800A6E58
    /* 95620 800A6E10 02000934 */   ori       $t1, $zero, 0x2
    /* 95624 800A6E14 40080100 */  sll        $at, $at, 1
    /* 95628 800A6E18 03000934 */  ori        $t1, $zero, 0x3
    /* 9562C 800A6E1C 0E002004 */  bltz       $at, .L800A6E58
    /* 95630 800A6E20 0100EF21 */   addi      $t7, $t7, 0x1 /* handwritten instruction */
    /* 95634 800A6E24 0C000104 */  bgez       $zero, .L800A6E58
    /* 95638 800A6E28 FEFFEF21 */   addi      $t7, $t7, -0x2 /* handwritten instruction */
  .L800A6E2C:
    /* 9563C 800A6E2C 00F80948 */  mfc2       $t1, $31 /* handwritten instruction */
    /* 95640 800A6E30 FFFF0E20 */  addi       $t6, $zero, -0x1 /* handwritten instruction */
    /* 95644 800A6E34 04082101 */  sllv       $at, $at, $t1
    /* 95648 800A6E38 2248C901 */  sub        $t1, $t6, $t1 /* handwritten instruction */
    /* 9564C 800A6E3C 03002004 */  bltz       $at, .L800A6E4C
    /* 95650 800A6E40 06402101 */   srlv      $t0, $at, $t1
    /* 95654 800A6E44 06082E01 */  srlv       $at, $t6, $t1
    /* 95658 800A6E48 22400101 */  sub        $t0, $t0, $at /* handwritten instruction */
  .L800A6E4C:
    /* 9565C 800A6E4C 22480900 */  neg        $t1, $t1 /* handwritten instruction */
    /* 95660 800A6E50 20482901 */  add        $t1, $t1, $t1 /* handwritten instruction */
    /* 95664 800A6E54 2078E801 */  add        $t7, $t7, $t0 /* handwritten instruction */
  .L800A6E58:
    /* 95668 800A6E58 80400F00 */  sll        $t0, $t7, 2
    /* 9566C 800A6E5C FF030831 */  andi       $t0, $t0, 0x3FF
    /* 95670 800A6E60 F69A020C */  jal        func_800A6BD8
    /* 95674 800A6E64 25400B01 */   or        $t0, $t0, $t3
    /* 95678 800A6E68 00F08848 */  mtc2       $t0, $30 /* handwritten instruction */
    /* 9567C 800A6E6C 09000005 */  bltz       $t0, .L800A6E94
    /* 95680 800A6E70 40080800 */   sll       $at, $t0, 1
    /* 95684 800A6E74 13002104 */  bgez       $at, .L800A6EC4
    /* 95688 800A6E78 04000934 */   ori       $t1, $zero, 0x4
    /* 9568C 800A6E7C 40080100 */  sll        $at, $at, 1
    /* 95690 800A6E80 05000934 */  ori        $t1, $zero, 0x5
    /* 95694 800A6E84 0F002004 */  bltz       $at, .L800A6EC4
    /* 95698 800A6E88 01001823 */   addi      $t8, $t8, 0x1 /* handwritten instruction */
    /* 9569C 800A6E8C 0D000104 */  bgez       $zero, .L800A6EC4
    /* 956A0 800A6E90 FEFF1823 */   addi      $t8, $t8, -0x2 /* handwritten instruction */
  .L800A6E94:
    /* 956A4 800A6E94 00F80948 */  mfc2       $t1, $31 /* handwritten instruction */
    /* 956A8 800A6E98 FFFF0E20 */  addi       $t6, $zero, -0x1 /* handwritten instruction */
    /* 956AC 800A6E9C 04082101 */  sllv       $at, $at, $t1
    /* 956B0 800A6EA0 2248C901 */  sub        $t1, $t6, $t1 /* handwritten instruction */
    /* 956B4 800A6EA4 03002004 */  bltz       $at, .L800A6EB4
    /* 956B8 800A6EA8 06402101 */   srlv      $t0, $at, $t1
    /* 956BC 800A6EAC 06082E01 */  srlv       $at, $t6, $t1
    /* 956C0 800A6EB0 22400101 */  sub        $t0, $t0, $at /* handwritten instruction */
  .L800A6EB4:
    /* 956C4 800A6EB4 22480900 */  neg        $t1, $t1 /* handwritten instruction */
    /* 956C8 800A6EB8 20482901 */  add        $t1, $t1, $t1 /* handwritten instruction */
    /* 956CC 800A6EBC 02002921 */  addi       $t1, $t1, 0x2 /* handwritten instruction */
    /* 956D0 800A6EC0 20C00803 */  add        $t8, $t8, $t0 /* handwritten instruction */
  .L800A6EC4:
    /* 956D4 800A6EC4 80401800 */  sll        $t0, $t8, 2
    /* 956D8 800A6EC8 FF030831 */  andi       $t0, $t0, 0x3FF
    /* 956DC 800A6ECC F69A020C */  jal        func_800A6BD8
    /* 956E0 800A6ED0 25400B01 */   or        $t0, $t0, $t3
    /* 956E4 800A6ED4 559B020C */  jal        func_800A6D54
    /* 956E8 800A6ED8 00000000 */   nop
    /* 956EC 800A6EDC 559B020C */  jal        func_800A6D54
    /* 956F0 800A6EE0 00000000 */   nop
    /* 956F4 800A6EE4 559B020C */  jal        func_800A6D54
    /* 956F8 800A6EE8 00000000 */   nop
    /* 956FC 800A6EEC 559B020C */  jal        func_800A6D54
    /* 95700 800A6EF0 00000000 */   nop
    /* 95704 800A6EF4 2308AC00 */  subu       $at, $a1, $t4
    /* 95708 800A6EF8 15002104 */  bgez       $at, .L800A6F50
    /* 9570C 800A6EFC 82450800 */   srl       $t0, $t0, 22
  .L800A6F00:
    /* 95710 800A6F00 FF030839 */  xori       $t0, $t0, 0x3FF
    /* 95714 800A6F04 80100200 */  sll        $v0, $v0, 2
    /* 95718 800A6F08 820F0300 */  srl        $at, $v1, 30
    /* 9571C 800A6F0C 25104100 */  or         $v0, $v0, $at
    /* 95720 800A6F10 80180300 */  sll        $v1, $v1, 2
    /* 95724 800A6F14 BAFF0015 */  bnez       $t0, .L800A6E00
    /* 95728 800A6F18 02004A21 */   addi      $t2, $t2, 0x2 /* handwritten instruction */
  .L800A6F1C:
    /* 9572C 800A6F1C 00FE0834 */  ori        $t0, $zero, 0xFE00
    /* 95730 800A6F20 0000BF8F */  lw         $ra, 0x0($sp)
    /* 95734 800A6F24 0400BD23 */  addi       $sp, $sp, 0x4 /* handwritten instruction */
  .L800A6F28:
    /* 95738 800A6F28 2308AD00 */  subu       $at, $a1, $t5
    /* 9573C 800A6F2C 04002104 */  bgez       $at, .L800A6F40
    /* 95740 800A6F30 00000000 */   nop
    /* 95744 800A6F34 0000A8A4 */  sh         $t0, 0x0($a1)
    /* 95748 800A6F38 FBFF0104 */  bgez       $zero, .L800A6F28
    /* 9574C 800A6F3C 0200A520 */   addi      $a1, $a1, 0x2 /* handwritten instruction */
  .L800A6F40:
    /* 95750 800A6F40 0800E003 */  jr         $ra
    /* 95754 800A6F44 25100000 */   or        $v0, $zero, $zero
  .L800A6F48:
    /* 95758 800A6F48 02000104 */  bgez       $zero, .L800A6F54
    /* 9575C 800A6F4C 25081F00 */   or        $at, $zero, $ra
  .L800A6F50:
    /* 95760 800A6F50 25080000 */  or         $at, $zero, $zero
  .L800A6F54:
    /* 95764 800A6F54 0000BF8F */  lw         $ra, 0x0($sp)
    /* 95768 800A6F58 0400BD23 */  addi       $sp, $sp, 0x4 /* handwritten instruction */
    /* 9576C 800A6F5C 0C800E3C */  lui        $t6, %hi(D_800BCF20)
    /* 95770 800A6F60 20CFCE25 */  addiu      $t6, $t6, %lo(D_800BCF20)
    /* 95774 800A6F64 0000C2AD */  sw         $v0, 0x0($t6)
    /* 95778 800A6F68 0400C3AD */  sw         $v1, 0x4($t6)
    /* 9577C 800A6F6C 0800C8AD */  sw         $t0, 0x8($t6)
    /* 95780 800A6F70 0C00C4AD */  sw         $a0, 0xC($t6)
    /* 95784 800A6F74 1000C5AD */  sw         $a1, 0x10($t6)
    /* 95788 800A6F78 1400C6AD */  sw         $a2, 0x14($t6)
    /* 9578C 800A6F7C 1800CAAD */  sw         $t2, 0x18($t6)
    /* 95790 800A6F80 1C00CBAD */  sw         $t3, 0x1C($t6)
    /* 95794 800A6F84 2000CDAD */  sw         $t5, 0x20($t6)
    /* 95798 800A6F88 2400CFAD */  sw         $t7, 0x24($t6)
    /* 9579C 800A6F8C 2800D8AD */  sw         $t8, 0x28($t6)
    /* 957A0 800A6F90 2C00D9AD */  sw         $t9, 0x2C($t6)
    /* 957A4 800A6F94 3000C1AD */  sw         $at, 0x30($t6)
    /* 957A8 800A6F98 0800E003 */  jr         $ra
    /* 957AC 800A6F9C 01000234 */   ori       $v0, $zero, 0x1
endlabel func_800A6D54
