/* Handwritten function */
nonmatching func_80136784, 0x17C

glabel func_80136784
    /* 3C50 80136784 0000A8A4 */  sh         $t0, 0x0($a1)
    /* 3C54 80136788 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
    /* 3C58 8013678C 04102201 */  sllv       $v0, $v0, $t1
    /* 3C5C 80136790 22080900 */  neg        $at, $t1 /* handwritten instruction */
    /* 3C60 80136794 06082300 */  srlv       $at, $v1, $at
    /* 3C64 80136798 25104100 */  or         $v0, $v0, $at
    /* 3C68 8013679C 20504901 */  add        $t2, $t2, $t1 /* handwritten instruction */
    /* 3C6C 801367A0 E0FF4121 */  addi       $at, $t2, -0x20 /* handwritten instruction */
    /* 3C70 801367A4 EAFF2004 */  bltz       $at, .L80136750
    /* 3C74 801367A8 04182301 */   sllv      $v1, $v1, $t1
    /* 3C78 801367AC E0FF4A21 */  addi       $t2, $t2, -0x20 /* handwritten instruction */
    /* 3C7C 801367B0 22080A00 */  neg        $at, $t2 /* handwritten instruction */
    /* 3C80 801367B4 00440600 */  sll        $t0, $a2, 16
    /* 3C84 801367B8 02340600 */  srl        $a2, $a2, 16
    /* 3C88 801367BC 2530C800 */  or         $a2, $a2, $t0
    /* 3C8C 801367C0 02002014 */  bnez       $at, .L801367CC
    /* 3C90 801367C4 06082600 */   srlv      $at, $a2, $at
    /* 3C94 801367C8 25080000 */  or         $at, $zero, $zero
  .L801367CC:
    /* 3C98 801367CC 04184601 */  sllv       $v1, $a2, $t2
    /* 3C9C 801367D0 0000868C */  lw         $a2, 0x0($a0)
    /* 3CA0 801367D4 25104100 */  or         $v0, $v0, $at
    /* 3CA4 801367D8 DDFF0104 */  bgez       $zero, .L80136750
    /* 3CA8 801367DC 04008420 */   addi      $a0, $a0, 0x4 /* handwritten instruction */
  .L801367E0:
    /* 3CAC 801367E0 13002104 */  bgez       $at, .L80136830
    /* 3CB0 801367E4 80080200 */   sll       $at, $v0, 2
    /* 3CB4 801367E8 06002104 */  bgez       $at, .L80136804
    /* 3CB8 801367EC C0080200 */   sll       $at, $v0, 3
    /* 3CBC 801367F0 04000934 */  ori        $t1, $zero, 0x4
    /* 3CC0 801367F4 E3FF2104 */  bgez       $at, func_80136784
    /* 3CC4 801367F8 01040834 */   ori       $t0, $zero, 0x401
    /* 3CC8 801367FC E1FF0104 */  bgez       $zero, func_80136784
    /* 3CCC 80136800 FF070834 */   ori       $t0, $zero, 0x7FF
  .L80136804:
    /* 3CD0 80136804 05000934 */  ori        $t1, $zero, 0x5
    /* 3CD4 80136808 05002004 */  bltz       $at, .L80136820
    /* 3CD8 8013680C 00090200 */   sll       $at, $v0, 4
    /* 3CDC 80136810 DCFF2104 */  bgez       $at, func_80136784
    /* 3CE0 80136814 02000834 */   ori       $t0, $zero, 0x2
    /* 3CE4 80136818 DAFF0104 */  bgez       $zero, func_80136784
    /* 3CE8 8013681C FE030834 */   ori       $t0, $zero, 0x3FE
  .L80136820:
    /* 3CEC 80136820 D8FF2104 */  bgez       $at, func_80136784
    /* 3CF0 80136824 01080834 */   ori       $t0, $zero, 0x801
    /* 3CF4 80136828 D6FF0104 */  bgez       $zero, func_80136784
    /* 3CF8 8013682C FF0B0834 */   ori       $t0, $zero, 0xBFF
  .L80136830:
    /* 3CFC 80136830 0F002104 */  bgez       $at, .L80136870
    /* 3D00 80136834 C0080200 */   sll       $at, $v0, 3
    /* 3D04 80136838 820F0100 */  srl        $at, $at, 30
    /* 3D08 8013683C 06002010 */  beqz       $at, .L80136858
    /* 3D0C 80136840 420E0200 */   srl       $at, $v0, 25
    /* 3D10 80136844 0E002130 */  andi       $at, $at, 0xE
    /* 3D14 80136848 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 3D18 8013684C 9C012884 */  lh         $t0, 0x19C($at)
    /* 3D1C 80136850 CCFF0104 */  bgez       $zero, func_80136784
    /* 3D20 80136854 06000934 */   ori       $t1, $zero, 0x6
  .L80136858:
    /* 3D24 80136858 820D0200 */  srl        $at, $v0, 22
    /* 3D28 8013685C 1E002130 */  andi       $at, $at, 0x1E
    /* 3D2C 80136860 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 3D30 80136864 80012884 */  lh         $t0, 0x180($at)
    /* 3D34 80136868 C6FF0104 */  bgez       $zero, func_80136784
    /* 3D38 8013686C 09000934 */   ori       $t1, $zero, 0x9
  .L80136870:
    /* 3D3C 80136870 00F08248 */  mtc2       $v0, $30 /* handwritten instruction */
    /* 3D40 80136874 820E0200 */  srl        $at, $v0, 26
    /* 3D44 80136878 FFFF2120 */  addi       $at, $at, -0x1 /* handwritten instruction */
    /* 3D48 8013687C 1C002010 */  beqz       $at, .L801368F0
    /* 3D4C 80136880 00F80948 */   mfc2      $t1, $31 /* handwritten instruction */
    /* 3D50 80136884 0A002004 */  bltz       $at, .L801368B0
    /* 3D54 80136888 04082201 */   sllv      $at, $v0, $t1
    /* 3D58 8013688C C20E0100 */  srl        $at, $at, 27
    /* 3D5C 80136890 0E002130 */  andi       $at, $at, 0xE
    /* 3D60 80136894 FDFF2821 */  addi       $t0, $t1, -0x3 /* handwritten instruction */
    /* 3D64 80136898 00410800 */  sll        $t0, $t0, 4
    /* 3D68 8013689C 20082800 */  add        $at, $at, $t0 /* handwritten instruction */
    /* 3D6C 801368A0 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 3D70 801368A4 00002884 */  lh         $t0, 0x0($at)
    /* 3D74 801368A8 B6FF0104 */  bgez       $zero, func_80136784
    /* 3D78 801368AC 04002921 */   addi      $t1, $t1, 0x4 /* handwritten instruction */
  .L801368B0:
    /* 3D7C 801368B0 FAFF2821 */  addi       $t0, $t1, -0x6 /* handwritten instruction */
    /* 3D80 801368B4 08000019 */  blez       $t0, .L801368D8
    /* 3D84 801368B8 80410800 */   sll       $t0, $t0, 6
    /* 3D88 801368BC 420E0100 */  srl        $at, $at, 25
    /* 3D8C 801368C0 3E002130 */  andi       $at, $at, 0x3E
    /* 3D90 801368C4 20082800 */  add        $at, $at, $t0 /* handwritten instruction */
    /* 3D94 801368C8 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 3D98 801368CC 00002884 */  lh         $t0, 0x0($at)
    /* 3D9C 801368D0 ACFF0104 */  bgez       $zero, func_80136784
    /* 3DA0 801368D4 06002921 */   addi      $t1, $t1, 0x6 /* handwritten instruction */
  .L801368D8:
    /* 3DA4 801368D8 820E0100 */  srl        $at, $at, 26
    /* 3DA8 801368DC 1E002130 */  andi       $at, $at, 0x1E
    /* 3DAC 801368E0 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 3DB0 801368E4 20002884 */  lh         $t0, 0x20($at)
    /* 3DB4 801368E8 A6FF0104 */  bgez       $zero, func_80136784
    /* 3DB8 801368EC 0B000920 */   addi      $t1, $zero, 0xB /* handwritten instruction */
  .L801368F0:
    /* 3DBC 801368F0 82420200 */  srl        $t0, $v0, 10
    /* 3DC0 801368F4 FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* 3DC4 801368F8 A2FF0104 */  bgez       $zero, func_80136784
    /* 3DC8 801368FC 16000920 */   addi      $t1, $zero, 0x16 /* handwritten instruction */
endlabel func_80136784
