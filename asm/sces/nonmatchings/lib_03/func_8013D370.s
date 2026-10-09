nonmatching func_8013D370, 0xE0

glabel func_8013D370
    /* A83C 8013D370 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A840 8013D374 1000B0AF */  sw         $s0, 0x10($sp)
    /* A844 8013D378 2180A000 */  addu       $s0, $a1, $zero
    /* A848 8013D37C 1C80053C */  lui        $a1, %hi(D_801BFD5C)
    /* A84C 8013D380 5CFDA58C */  lw         $a1, %lo(D_801BFD5C)($a1)
    /* A850 8013D384 1800BFAF */  sw         $ra, 0x18($sp)
    /* A854 8013D388 1400B1AF */  sw         $s1, 0x14($sp)
    /* A858 8013D38C 0000A28C */  lw         $v0, 0x0($a1)
    /* A85C 8013D390 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* A860 8013D394 25104300 */  or         $v0, $v0, $v1
    /* A864 8013D398 0000A2AC */  sw         $v0, 0x0($a1)
    /* A868 8013D39C 1C80023C */  lui        $v0, %hi(D_801BFD58)
    /* A86C 8013D3A0 58FD428C */  lw         $v0, %lo(D_801BFD58)($v0)
    /* A870 8013D3A4 00000000 */  nop
    /* A874 8013D3A8 000040AC */  sw         $zero, 0x0($v0)
    /* A878 8013D3AC 80101000 */  sll        $v0, $s0, 2
    /* A87C 8013D3B0 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* A880 8013D3B4 1C80033C */  lui        $v1, %hi(D_801BFD50)
    /* A884 8013D3B8 50FD638C */  lw         $v1, %lo(D_801BFD50)($v1)
    /* A888 8013D3BC 21208200 */  addu       $a0, $a0, $v0
    /* A88C 8013D3C0 000064AC */  sw         $a0, 0x0($v1)
    /* A890 8013D3C4 1C80023C */  lui        $v0, %hi(D_801BFD54)
    /* A894 8013D3C8 54FD428C */  lw         $v0, %lo(D_801BFD54)($v0)
    /* A898 8013D3CC 0011033C */  lui        $v1, (0x11000002 >> 16)
    /* A89C 8013D3D0 000050AC */  sw         $s0, 0x0($v0)
    /* A8A0 8013D3D4 1C80023C */  lui        $v0, %hi(D_801BFD58)
    /* A8A4 8013D3D8 58FD428C */  lw         $v0, %lo(D_801BFD58)($v0)
    /* A8A8 8013D3DC 02006334 */  ori        $v1, $v1, (0x11000002 & 0xFFFF)
    /* A8AC 8013D3E0 FBF8040C */  jal        func_8013E3EC
    /* A8B0 8013D3E4 000043AC */   sw        $v1, 0x0($v0)
    /* A8B4 8013D3E8 1C80023C */  lui        $v0, %hi(D_801BFD58)
    /* A8B8 8013D3EC 58FD428C */  lw         $v0, %lo(D_801BFD58)($v0)
    /* A8BC 8013D3F0 00000000 */  nop
    /* A8C0 8013D3F4 0000428C */  lw         $v0, 0x0($v0)
    /* A8C4 8013D3F8 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* A8C8 8013D3FC 24104300 */  and        $v0, $v0, $v1
    /* A8CC 8013D400 0E004010 */  beqz       $v0, .L8013D43C
    /* A8D0 8013D404 21100002 */   addu      $v0, $s0, $zero
    /* A8D4 8013D408 0001113C */  lui        $s1, (0x1000000 >> 16)
  .L8013D40C:
    /* A8D8 8013D40C 08F9040C */  jal        func_8013E420
    /* A8DC 8013D410 00000000 */   nop
    /* A8E0 8013D414 09004014 */  bnez       $v0, .L8013D43C
    /* A8E4 8013D418 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A8E8 8013D41C 1C80023C */  lui        $v0, %hi(D_801BFD58)
    /* A8EC 8013D420 58FD428C */  lw         $v0, %lo(D_801BFD58)($v0)
    /* A8F0 8013D424 00000000 */  nop
    /* A8F4 8013D428 0000428C */  lw         $v0, 0x0($v0)
    /* A8F8 8013D42C 00000000 */  nop
    /* A8FC 8013D430 24105100 */  and        $v0, $v0, $s1
    /* A900 8013D434 F5FF4014 */  bnez       $v0, .L8013D40C
    /* A904 8013D438 21100002 */   addu      $v0, $s0, $zero
  .L8013D43C:
    /* A908 8013D43C 1800BF8F */  lw         $ra, 0x18($sp)
    /* A90C 8013D440 1400B18F */  lw         $s1, 0x14($sp)
    /* A910 8013D444 1000B08F */  lw         $s0, 0x10($sp)
    /* A914 8013D448 0800E003 */  jr         $ra
    /* A918 8013D44C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8013D370
