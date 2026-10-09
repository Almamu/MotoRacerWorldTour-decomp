nonmatching func_8006FF78, 0x1C8

glabel func_8006FF78
    /* 5E788 8006FF78 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 5E78C 8006FF7C 3800B6AF */  sw         $s6, 0x38($sp)
    /* 5E790 8006FF80 21B08000 */  addu       $s6, $a0, $zero
    /* 5E794 8006FF84 3000B4AF */  sw         $s4, 0x30($sp)
    /* 5E798 8006FF88 0800D426 */  addiu      $s4, $s6, 0x8
    /* 5E79C 8006FF8C 21208002 */  addu       $a0, $s4, $zero
    /* 5E7A0 8006FF90 3400B5AF */  sw         $s5, 0x34($sp)
    /* 5E7A4 8006FF94 21A8A000 */  addu       $s5, $a1, $zero
    /* 5E7A8 8006FF98 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 5E7AC 8006FF9C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 5E7B0 8006FFA0 2800B2AF */  sw         $s2, 0x28($sp)
    /* 5E7B4 8006FFA4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 5E7B8 8006FFA8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 5E7BC 8006FFAC 0000A28E */  lw         $v0, 0x0($s5)
    /* 5E7C0 8006FFB0 01000524 */  addiu      $a1, $zero, 0x1
    /* 5E7C4 8006FFB4 2B800200 */  sltu       $s0, $zero, $v0
    /* 5E7C8 8006FFB8 B35A020C */  jal        func_80096ACC
    /* 5E7CC 8006FFBC 21300002 */   addu      $a2, $s0, $zero
    /* 5E7D0 8006FFC0 09000012 */  beqz       $s0, .L8006FFE8
    /* 5E7D4 8006FFC4 21208002 */   addu      $a0, $s4, $zero
    /* 5E7D8 8006FFC8 04000624 */  addiu      $a2, $zero, 0x4
    /* 5E7DC 8006FFCC 07000724 */  addiu      $a3, $zero, 0x7
    /* 5E7E0 8006FFD0 20000224 */  addiu      $v0, $zero, 0x20
    /* 5E7E4 8006FFD4 0000A58E */  lw         $a1, 0x0($s5)
    /* 5E7E8 8006FFD8 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 5E7EC 8006FFDC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5E7F0 8006FFE0 2A5B020C */  jal        func_80096CA8
    /* 5E7F4 8006FFE4 1400A3AF */   sw        $v1, 0x14($sp)
  .L8006FFE8:
    /* 5E7F8 8006FFE8 21208002 */  addu       $a0, $s4, $zero
    /* 5E7FC 8006FFEC 01000524 */  addiu      $a1, $zero, 0x1
    /* 5E800 8006FFF0 0400A28E */  lw         $v0, 0x4($s5)
    /* 5E804 8006FFF4 0800A38E */  lw         $v1, 0x8($s5)
    /* 5E808 8006FFF8 0C00A68E */  lw         $a2, 0xC($s5)
    /* 5E80C 8006FFFC 1000A786 */  lh         $a3, 0x10($s5)
    /* 5E810 80070000 25104300 */  or         $v0, $v0, $v1
    /* 5E814 80070004 25104600 */  or         $v0, $v0, $a2
    /* 5E818 80070008 25104700 */  or         $v0, $v0, $a3
    /* 5E81C 8007000C 1200A386 */  lh         $v1, 0x12($s5)
    /* 5E820 80070010 1400A686 */  lh         $a2, 0x14($s5)
    /* 5E824 80070014 25104300 */  or         $v0, $v0, $v1
    /* 5E828 80070018 25804600 */  or         $s0, $v0, $a2
    /* 5E82C 8007001C 2B801000 */  sltu       $s0, $zero, $s0
    /* 5E830 80070020 B35A020C */  jal        func_80096ACC
    /* 5E834 80070024 21300002 */   addu      $a2, $s0, $zero
    /* 5E838 80070028 38000012 */  beqz       $s0, .L8007010C
    /* 5E83C 8007002C 21208002 */   addu      $a0, $s4, $zero
    /* 5E840 80070030 04000624 */  addiu      $a2, $zero, 0x4
    /* 5E844 80070034 07000724 */  addiu      $a3, $zero, 0x7
    /* 5E848 80070038 0A001024 */  addiu      $s0, $zero, 0xA
    /* 5E84C 8007003C 20001324 */  addiu      $s3, $zero, 0x20
    /* 5E850 80070040 0400A58E */  lw         $a1, 0x4($s5)
    /* 5E854 80070044 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 5E858 80070048 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E85C 8007004C 1400B3AF */  sw         $s3, 0x14($sp)
    /* 5E860 80070050 2A5B020C */  jal        func_80096CA8
    /* 5E864 80070054 1800B2AF */   sw        $s2, 0x18($sp)
    /* 5E868 80070058 21208002 */  addu       $a0, $s4, $zero
    /* 5E86C 8007005C 04000624 */  addiu      $a2, $zero, 0x4
    /* 5E870 80070060 0800A58E */  lw         $a1, 0x8($s5)
    /* 5E874 80070064 07000724 */  addiu      $a3, $zero, 0x7
    /* 5E878 80070068 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E87C 8007006C 1400B3AF */  sw         $s3, 0x14($sp)
    /* 5E880 80070070 2A5B020C */  jal        func_80096CA8
    /* 5E884 80070074 1800B2AF */   sw        $s2, 0x18($sp)
    /* 5E888 80070078 21208002 */  addu       $a0, $s4, $zero
    /* 5E88C 8007007C 04000624 */  addiu      $a2, $zero, 0x4
    /* 5E890 80070080 0C00A58E */  lw         $a1, 0xC($s5)
    /* 5E894 80070084 07000724 */  addiu      $a3, $zero, 0x7
    /* 5E898 80070088 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E89C 8007008C 1400B3AF */  sw         $s3, 0x14($sp)
    /* 5E8A0 80070090 2A5B020C */  jal        func_80096CA8
    /* 5E8A4 80070094 1800B2AF */   sw        $s2, 0x18($sp)
    /* 5E8A8 80070098 21208002 */  addu       $a0, $s4, $zero
    /* 5E8AC 8007009C 03000624 */  addiu      $a2, $zero, 0x3
    /* 5E8B0 800700A0 05000724 */  addiu      $a3, $zero, 0x5
    /* 5E8B4 800700A4 07001124 */  addiu      $s1, $zero, 0x7
    /* 5E8B8 800700A8 1000B1AF */  sw         $s1, 0x10($sp)
    /* 5E8BC 800700AC 1000A586 */  lh         $a1, 0x10($s5)
    /* 5E8C0 800700B0 09001024 */  addiu      $s0, $zero, 0x9
    /* 5E8C4 800700B4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 5E8C8 800700B8 1800B3AF */  sw         $s3, 0x18($sp)
    /* 5E8CC 800700BC 2A5B020C */  jal        func_80096CA8
    /* 5E8D0 800700C0 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 5E8D4 800700C4 21208002 */  addu       $a0, $s4, $zero
    /* 5E8D8 800700C8 03000624 */  addiu      $a2, $zero, 0x3
    /* 5E8DC 800700CC 1200A586 */  lh         $a1, 0x12($s5)
    /* 5E8E0 800700D0 05000724 */  addiu      $a3, $zero, 0x5
    /* 5E8E4 800700D4 1000B1AF */  sw         $s1, 0x10($sp)
    /* 5E8E8 800700D8 1400B0AF */  sw         $s0, 0x14($sp)
    /* 5E8EC 800700DC 1800B3AF */  sw         $s3, 0x18($sp)
    /* 5E8F0 800700E0 2A5B020C */  jal        func_80096CA8
    /* 5E8F4 800700E4 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 5E8F8 800700E8 21208002 */  addu       $a0, $s4, $zero
    /* 5E8FC 800700EC 03000624 */  addiu      $a2, $zero, 0x3
    /* 5E900 800700F0 1400A586 */  lh         $a1, 0x14($s5)
    /* 5E904 800700F4 05000724 */  addiu      $a3, $zero, 0x5
    /* 5E908 800700F8 1000B1AF */  sw         $s1, 0x10($sp)
    /* 5E90C 800700FC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 5E910 80070100 1800B3AF */  sw         $s3, 0x18($sp)
    /* 5E914 80070104 2A5B020C */  jal        func_80096CA8
    /* 5E918 80070108 1C00B2AF */   sw        $s2, 0x1C($sp)
  .L8007010C:
    /* 5E91C 8007010C 0000C28E */  lw         $v0, 0x0($s6)
    /* 5E920 80070110 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 5E924 80070114 3400B58F */  lw         $s5, 0x34($sp)
    /* 5E928 80070118 3000B48F */  lw         $s4, 0x30($sp)
    /* 5E92C 8007011C 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 5E930 80070120 2800B28F */  lw         $s2, 0x28($sp)
    /* 5E934 80070124 2400B18F */  lw         $s1, 0x24($sp)
    /* 5E938 80070128 2000B08F */  lw         $s0, 0x20($sp)
    /* 5E93C 8007012C 01004224 */  addiu      $v0, $v0, 0x1
    /* 5E940 80070130 0000C2AE */  sw         $v0, 0x0($s6)
    /* 5E944 80070134 3800B68F */  lw         $s6, 0x38($sp)
    /* 5E948 80070138 0800E003 */  jr         $ra
    /* 5E94C 8007013C 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8006FF78
