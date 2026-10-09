nonmatching memcpy, 0x40

glabel memcpy
    /* A4928 800B6118 0A008010 */  beqz       $a0, .L800B6144
    /* A492C 800B611C 21100000 */   addu      $v0, $zero, $zero
    /* A4930 800B6120 0700C018 */  blez       $a2, .L800B6140
    /* A4934 800B6124 21188000 */   addu      $v1, $a0, $zero
  .L800B6128:
    /* A4938 800B6128 0000A290 */  lbu        $v0, 0x0($a1)
    /* A493C 800B612C 0100A524 */  addiu      $a1, $a1, 0x1
    /* A4940 800B6130 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A4944 800B6134 000082A0 */  sb         $v0, 0x0($a0)
    /* A4948 800B6138 FBFFC01C */  bgtz       $a2, .L800B6128
    /* A494C 800B613C 01008424 */   addiu     $a0, $a0, 0x1
  .L800B6140:
    /* A4950 800B6140 21106000 */  addu       $v0, $v1, $zero
  .L800B6144:
    /* A4954 800B6144 0800E003 */  jr         $ra
    /* A4958 800B6148 00000000 */   nop
    /* A495C 800B614C 00000000 */  nop
    /* A4960 800B6150 00000000 */  nop
    /* A4964 800B6154 00000000 */  nop
endlabel memcpy
