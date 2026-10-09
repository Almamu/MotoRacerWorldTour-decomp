nonmatching func_80142170, 0xF4

glabel func_80142170
    /* F63C 80142170 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* F640 80142174 21288000 */  addu       $a1, $a0, $zero
    /* F644 80142178 1400B1AF */  sw         $s1, 0x14($sp)
    /* F648 8014217C 1D80113C */  lui        $s1, %hi(D_801CE840)
    /* F64C 80142180 40E83126 */  addiu      $s1, $s1, %lo(D_801CE840)
    /* F650 80142184 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* F654 80142188 F7FF1324 */  addiu      $s3, $zero, -0x9
    /* F658 8014218C 1800B2AF */  sw         $s2, 0x18($sp)
    /* F65C 80142190 1C80123C */  lui        $s2, %hi(D_801BFEB4)
    /* F660 80142194 B4FE5226 */  addiu      $s2, $s2, %lo(D_801BFEB4)
    /* F664 80142198 2000BFAF */  sw         $ra, 0x20($sp)
    /* F668 8014219C 1000B0AF */  sw         $s0, 0x10($sp)
  .L801421A0:
    /* F66C 801421A0 1C80033C */  lui        $v1, %hi(D_801BFE9C)
    /* F670 801421A4 9CFE638C */  lw         $v1, %lo(D_801BFE9C)($v1)
    /* F674 801421A8 00000000 */  nop
    /* F678 801421AC 00110300 */  sll        $v0, $v1, 4
    /* F67C 801421B0 23104300 */  subu       $v0, $v0, $v1
    /* F680 801421B4 00110200 */  sll        $v0, $v0, 4
    /* F684 801421B8 0A00B310 */  beq        $a1, $s3, .L801421E4
    /* F688 801421BC 21805100 */   addu      $s0, $v0, $s1
    /* F68C 801421C0 0400A014 */  bnez       $a1, .L801421D4
    /* F690 801421C4 80100300 */   sll       $v0, $v1, 2
    /* F694 801421C8 21105200 */  addu       $v0, $v0, $s2
    /* F698 801421CC 79080508 */  j          .L801421E4
    /* F69C 801421D0 000040AC */   sw        $zero, 0x0($v0)
  .L801421D4:
    /* F6A0 801421D4 6C0A050C */  jal        _dirFailAuto
    /* F6A4 801421D8 21200002 */   addu      $a0, $s0, $zero
    /* F6A8 801421DC 9908050C */  jal        func_80142264
    /* F6AC 801421E0 21200002 */   addu      $a0, $s0, $zero
  .L801421E4:
    /* F6B0 801421E4 1C80023C */  lui        $v0, %hi(D_801BFF04)
    /* F6B4 801421E8 04FF428C */  lw         $v0, %lo(D_801BFF04)($v0)
    /* F6B8 801421EC 1C80033C */  lui        $v1, %hi(D_801BFE9C)
    /* F6BC 801421F0 9CFE638C */  lw         $v1, %lo(D_801BFE9C)($v1)
    /* F6C0 801421F4 1C80013C */  lui        $at, %hi(D_801BFEA0)
    /* F6C4 801421F8 A0FE20AC */  sw         $zero, %lo(D_801BFEA0)($at)
    /* F6C8 801421FC 0A0040A4 */  sh         $zero, 0xA($v0)
    /* F6CC 80142200 1C80023C */  lui        $v0, %hi(D_801BFEB0)
    /* F6D0 80142204 B0FE428C */  lw         $v0, %lo(D_801BFEB0)($v0)
    /* F6D4 80142208 01006324 */  addiu      $v1, $v1, 0x1
    /* F6D8 8014220C 1C80013C */  lui        $at, %hi(D_801BFE9C)
    /* F6DC 80142210 9CFE23AC */  sw         $v1, %lo(D_801BFE9C)($at)
    /* F6E0 80142214 2A104300 */  slt        $v0, $v0, $v1
    /* F6E4 80142218 08004014 */  bnez       $v0, .L8014223C
    /* F6E8 8014221C 01000224 */   addiu     $v0, $zero, 0x1
    /* F6EC 80142220 00210300 */  sll        $a0, $v1, 4
    /* F6F0 80142224 23208300 */  subu       $a0, $a0, $v1
    /* F6F4 80142228 00210400 */  sll        $a0, $a0, 4
    /* F6F8 8014222C 0601050C */  jal        _padInitSioMode
    /* F6FC 80142230 21209100 */   addu      $a0, $a0, $s1
    /* F700 80142234 90080508 */  j          .L80142240
    /* F704 80142238 FFFF0534 */   ori       $a1, $zero, 0xFFFF
  .L8014223C:
    /* F708 8014223C FFFF0534 */  ori        $a1, $zero, 0xFFFF
  .L80142240:
    /* F70C 80142240 D7FF4010 */  beqz       $v0, .L801421A0
    /* F710 80142244 00000000 */   nop
    /* F714 80142248 2000BF8F */  lw         $ra, 0x20($sp)
    /* F718 8014224C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* F71C 80142250 1800B28F */  lw         $s2, 0x18($sp)
    /* F720 80142254 1400B18F */  lw         $s1, 0x14($sp)
    /* F724 80142258 1000B08F */  lw         $s0, 0x10($sp)
    /* F728 8014225C 0800E003 */  jr         $ra
    /* F72C 80142260 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80142170
