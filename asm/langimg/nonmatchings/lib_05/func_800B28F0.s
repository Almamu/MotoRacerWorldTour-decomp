nonmatching func_800B28F0, 0x38

glabel func_800B28F0
    /* A1100 800B28F0 21280000 */  addu       $a1, $zero, $zero
    /* A1104 800B28F4 10000624 */  addiu      $a2, $zero, 0x10
    /* A1108 800B28F8 0E80033C */  lui        $v1, %hi(D_800DE4E0)
    /* A110C 800B28FC E0E46324 */  addiu      $v1, $v1, %lo(D_800DE4E0)
  .L800B2900:
    /* A1110 800B2900 07008310 */  beq        $a0, $v1, .L800B2920
    /* A1114 800B2904 2110C000 */   addu      $v0, $a2, $zero
    /* A1118 800B2908 1000C624 */  addiu      $a2, $a2, 0x10
    /* A111C 800B290C 0100A524 */  addiu      $a1, $a1, 0x1
    /* A1120 800B2910 0200A228 */  slti       $v0, $a1, 0x2
    /* A1124 800B2914 FAFF4014 */  bnez       $v0, .L800B2900
    /* A1128 800B2918 F0006324 */   addiu     $v1, $v1, 0xF0
    /* A112C 800B291C FF000224 */  addiu      $v0, $zero, 0xFF
  .L800B2920:
    /* A1130 800B2920 0800E003 */  jr         $ra
    /* A1134 800B2924 00000000 */   nop
endlabel func_800B28F0
