nonmatching func_8001B84C, 0x128

glabel func_8001B84C
    /* A05C 8001B84C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A060 8001B850 1800B2AF */  sw         $s2, 0x18($sp)
    /* A064 8001B854 21908000 */  addu       $s2, $a0, $zero
    /* A068 8001B858 2000BFAF */  sw         $ra, 0x20($sp)
    /* A06C 8001B85C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A070 8001B860 1400B1AF */  sw         $s1, 0x14($sp)
    /* A074 8001B864 1000B0AF */  sw         $s0, 0x10($sp)
    /* A078 8001B868 3400428E */  lw         $v0, 0x34($s2)
    /* A07C 8001B86C 00000000 */  nop
    /* A080 8001B870 39004010 */  beqz       $v0, .L8001B958
    /* A084 8001B874 2198A000 */   addu      $s3, $a1, $zero
    /* A088 8001B878 0573000C */  jal        func_8001CC14
    /* A08C 8001B87C 21880000 */   addu      $s1, $zero, $zero
    /* A090 8001B880 7803638E */  lw         $v1, 0x378($s3)
    /* A094 8001B884 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A098 8001B888 800042AE */  sw         $v0, 0x80($s2)
    /* A09C 8001B88C E8027024 */  addiu      $s0, $v1, 0x2E8
  .L8001B890:
    /* A0A0 8001B890 0000028E */  lw         $v0, 0x0($s0)
    /* A0A4 8001B894 00000000 */  nop
    /* A0A8 8001B898 82110200 */  srl        $v0, $v0, 6
    /* A0AC 8001B89C 01004230 */  andi       $v0, $v0, 0x1
    /* A0B0 8001B8A0 05004010 */  beqz       $v0, .L8001B8B8
    /* A0B4 8001B8A4 21204002 */   addu      $a0, $s2, $zero
    /* A0B8 8001B8A8 21282002 */  addu       $a1, $s1, $zero
    /* A0BC 8001B8AC 21306002 */  addu       $a2, $s3, $zero
    /* A0C0 8001B8B0 5D6E000C */  jal        func_8001B974
    /* A0C4 8001B8B4 21380000 */   addu      $a3, $zero, $zero
  .L8001B8B8:
    /* A0C8 8001B8B8 01003126 */  addiu      $s1, $s1, 0x1
    /* A0CC 8001B8BC 0500222A */  slti       $v0, $s1, 0x5
    /* A0D0 8001B8C0 F3FF4014 */  bnez       $v0, .L8001B890
    /* A0D4 8001B8C4 68051026 */   addiu     $s0, $s0, 0x568
    /* A0D8 8001B8C8 7400458E */  lw         $a1, 0x74($s2)
    /* A0DC 8001B8CC E872000C */  jal        func_8001CBA0
    /* A0E0 8001B8D0 21204002 */   addu      $a0, $s2, $zero
    /* A0E4 8001B8D4 CD73000C */  jal        func_8001CF34
    /* A0E8 8001B8D8 21204002 */   addu      $a0, $s2, $zero
    /* A0EC 8001B8DC 0D80013C */  lui        $at, %hi(D_800CB42C)
    /* A0F0 8001B8E0 2CB420AC */  sw         $zero, %lo(D_800CB42C)($at)
    /* A0F4 8001B8E4 7400508E */  lw         $s0, 0x74($s2)
    /* A0F8 8001B8E8 00000000 */  nop
    /* A0FC 8001B8EC 3000028E */  lw         $v0, 0x30($s0)
    /* A100 8001B8F0 00000000 */  nop
    /* A104 8001B8F4 B401438C */  lw         $v1, 0x1B4($v0)
    /* A108 8001B8F8 00000000 */  nop
    /* A10C 8001B8FC 16006010 */  beqz       $v1, .L8001B958
    /* A110 8001B900 00000000 */   nop
    /* A114 8001B904 00100524 */  addiu      $a1, $zero, 0x1000
  .L8001B908:
    /* A118 8001B908 3000048E */  lw         $a0, 0x30($s0)
    /* A11C 8001B90C 00000000 */  nop
    /* A120 8001B910 74018224 */  addiu      $v0, $a0, 0x174
    /* A124 8001B914 8C018324 */  addiu      $v1, $a0, 0x18C
    /* A128 8001B918 080040AC */  sw         $zero, 0x8($v0)
    /* A12C 8001B91C 040040AC */  sw         $zero, 0x4($v0)
    /* A130 8001B920 80018224 */  addiu      $v0, $a0, 0x180
    /* A134 8001B924 740180AC */  sw         $zero, 0x174($a0)
    /* A138 8001B928 080060AC */  sw         $zero, 0x8($v1)
    /* A13C 8001B92C 040060AC */  sw         $zero, 0x4($v1)
    /* A140 8001B930 8C0180AC */  sw         $zero, 0x18C($a0)
    /* A144 8001B934 080040AC */  sw         $zero, 0x8($v0)
    /* A148 8001B938 040040AC */  sw         $zero, 0x4($v0)
    /* A14C 8001B93C B401908C */  lw         $s0, 0x1B4($a0)
    /* A150 8001B940 800180AC */  sw         $zero, 0x180($a0)
    /* A154 8001B944 980185AC */  sw         $a1, 0x198($a0)
    /* A158 8001B948 7400428E */  lw         $v0, 0x74($s2)
    /* A15C 8001B94C 00000000 */  nop
    /* A160 8001B950 EDFF0216 */  bne        $s0, $v0, .L8001B908
    /* A164 8001B954 00000000 */   nop
  .L8001B958:
    /* A168 8001B958 2000BF8F */  lw         $ra, 0x20($sp)
    /* A16C 8001B95C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A170 8001B960 1800B28F */  lw         $s2, 0x18($sp)
    /* A174 8001B964 1400B18F */  lw         $s1, 0x14($sp)
    /* A178 8001B968 1000B08F */  lw         $s0, 0x10($sp)
    /* A17C 8001B96C 0800E003 */  jr         $ra
    /* A180 8001B970 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8001B84C
