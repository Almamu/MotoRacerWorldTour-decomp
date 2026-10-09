nonmatching func_800ACFA4, 0xE0

glabel func_800ACFA4
    /* 9B7B4 800ACFA4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9B7B8 800ACFA8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9B7BC 800ACFAC 2180A000 */  addu       $s0, $a1, $zero
    /* 9B7C0 800ACFB0 0C80053C */  lui        $a1, %hi(D_800BF364)
    /* 9B7C4 800ACFB4 64F3A58C */  lw         $a1, %lo(D_800BF364)($a1)
    /* 9B7C8 800ACFB8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9B7CC 800ACFBC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9B7D0 800ACFC0 0000A28C */  lw         $v0, 0x0($a1)
    /* 9B7D4 800ACFC4 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 9B7D8 800ACFC8 25104300 */  or         $v0, $v0, $v1
    /* 9B7DC 800ACFCC 0000A2AC */  sw         $v0, 0x0($a1)
    /* 9B7E0 800ACFD0 0C80023C */  lui        $v0, %hi(D_800BF360)
    /* 9B7E4 800ACFD4 60F3428C */  lw         $v0, %lo(D_800BF360)($v0)
    /* 9B7E8 800ACFD8 00000000 */  nop
    /* 9B7EC 800ACFDC 000040AC */  sw         $zero, 0x0($v0)
    /* 9B7F0 800ACFE0 80101000 */  sll        $v0, $s0, 2
    /* 9B7F4 800ACFE4 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* 9B7F8 800ACFE8 0C80033C */  lui        $v1, %hi(D_800BF358)
    /* 9B7FC 800ACFEC 58F3638C */  lw         $v1, %lo(D_800BF358)($v1)
    /* 9B800 800ACFF0 21208200 */  addu       $a0, $a0, $v0
    /* 9B804 800ACFF4 000064AC */  sw         $a0, 0x0($v1)
    /* 9B808 800ACFF8 0C80023C */  lui        $v0, %hi(D_800BF35C)
    /* 9B80C 800ACFFC 5CF3428C */  lw         $v0, %lo(D_800BF35C)($v0)
    /* 9B810 800AD000 0011033C */  lui        $v1, (0x11000002 >> 16)
    /* 9B814 800AD004 000050AC */  sw         $s0, 0x0($v0)
    /* 9B818 800AD008 0C80023C */  lui        $v0, %hi(D_800BF360)
    /* 9B81C 800AD00C 60F3428C */  lw         $v0, %lo(D_800BF360)($v0)
    /* 9B820 800AD010 02006334 */  ori        $v1, $v1, (0x11000002 & 0xFFFF)
    /* 9B824 800AD014 08B8020C */  jal        func_800AE020
    /* 9B828 800AD018 000043AC */   sw        $v1, 0x0($v0)
    /* 9B82C 800AD01C 0C80023C */  lui        $v0, %hi(D_800BF360)
    /* 9B830 800AD020 60F3428C */  lw         $v0, %lo(D_800BF360)($v0)
    /* 9B834 800AD024 00000000 */  nop
    /* 9B838 800AD028 0000428C */  lw         $v0, 0x0($v0)
    /* 9B83C 800AD02C 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 9B840 800AD030 24104300 */  and        $v0, $v0, $v1
    /* 9B844 800AD034 0E004010 */  beqz       $v0, .L800AD070
    /* 9B848 800AD038 21100002 */   addu      $v0, $s0, $zero
    /* 9B84C 800AD03C 0001113C */  lui        $s1, (0x1000000 >> 16)
  .L800AD040:
    /* 9B850 800AD040 15B8020C */  jal        func_800AE054
    /* 9B854 800AD044 00000000 */   nop
    /* 9B858 800AD048 09004014 */  bnez       $v0, .L800AD070
    /* 9B85C 800AD04C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 9B860 800AD050 0C80023C */  lui        $v0, %hi(D_800BF360)
    /* 9B864 800AD054 60F3428C */  lw         $v0, %lo(D_800BF360)($v0)
    /* 9B868 800AD058 00000000 */  nop
    /* 9B86C 800AD05C 0000428C */  lw         $v0, 0x0($v0)
    /* 9B870 800AD060 00000000 */  nop
    /* 9B874 800AD064 24105100 */  and        $v0, $v0, $s1
    /* 9B878 800AD068 F5FF4014 */  bnez       $v0, .L800AD040
    /* 9B87C 800AD06C 21100002 */   addu      $v0, $s0, $zero
  .L800AD070:
    /* 9B880 800AD070 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9B884 800AD074 1400B18F */  lw         $s1, 0x14($sp)
    /* 9B888 800AD078 1000B08F */  lw         $s0, 0x10($sp)
    /* 9B88C 800AD07C 0800E003 */  jr         $ra
    /* 9B890 800AD080 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800ACFA4
