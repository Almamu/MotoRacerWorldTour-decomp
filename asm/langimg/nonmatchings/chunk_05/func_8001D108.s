nonmatching func_8001D108, 0x78

glabel func_8001D108
    /* B918 8001D108 04000224 */  addiu      $v0, $zero, 0x4
    /* B91C 8001D10C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* B920 8001D110 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8001D114:
    /* B924 8001D114 FFFF4314 */  bne        $v0, $v1, .L8001D114
    /* B928 8001D118 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* B92C 8001D11C 02000224 */  addiu      $v0, $zero, 0x2
    /* B930 8001D120 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* B934 8001D124 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8001D128:
    /* B938 8001D128 FFFF4314 */  bne        $v0, $v1, .L8001D128
    /* B93C 8001D12C FFFF4224 */   addiu     $v0, $v0, -0x1
    /* B940 8001D130 02000224 */  addiu      $v0, $zero, 0x2
    /* B944 8001D134 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* B948 8001D138 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8001D13C:
    /* B94C 8001D13C FFFF4314 */  bne        $v0, $v1, .L8001D13C
    /* B950 8001D140 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* B954 8001D144 0600033C */  lui        $v1, (0x64000 >> 16)
    /* B958 8001D148 00406334 */  ori        $v1, $v1, (0x64000 & 0xFFFF)
    /* B95C 8001D14C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B960 8001D150 200082AC */  sw         $v0, 0x20($a0)
    /* B964 8001D154 240082AC */  sw         $v0, 0x24($a0)
    /* B968 8001D158 21108000 */  addu       $v0, $a0, $zero
    /* B96C 8001D15C 000080AC */  sw         $zero, 0x0($a0)
    /* B970 8001D160 040080AC */  sw         $zero, 0x4($a0)
    /* B974 8001D164 080080AC */  sw         $zero, 0x8($a0)
    /* B978 8001D168 0C0080AC */  sw         $zero, 0xC($a0)
    /* B97C 8001D16C B80080AC */  sw         $zero, 0xB8($a0)
    /* B980 8001D170 5C0183AC */  sw         $v1, 0x15C($a0)
    /* B984 8001D174 1C0080AC */  sw         $zero, 0x1C($a0)
    /* B988 8001D178 0800E003 */  jr         $ra
    /* B98C 8001D17C 800180AC */   sw        $zero, 0x180($a0)
endlabel func_8001D108
