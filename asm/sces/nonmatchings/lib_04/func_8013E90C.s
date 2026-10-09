nonmatching func_8013E90C, 0x9C

glabel func_8013E90C
    /* BDD8 8013E90C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* BDDC 8013E910 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* BDE0 8013E914 2198A000 */  addu       $s3, $a1, $zero
    /* BDE4 8013E918 1400B1AF */  sw         $s1, 0x14($sp)
    /* BDE8 8013E91C 64001124 */  addiu      $s1, $zero, 0x64
    /* BDEC 8013E920 1D80023C */  lui        $v0, %hi(D_801CE6D8)
    /* BDF0 8013E924 D8E64224 */  addiu      $v0, $v0, %lo(D_801CE6D8)
    /* BDF4 8013E928 80200400 */  sll        $a0, $a0, 2
    /* BDF8 8013E92C 1800B2AF */  sw         $s2, 0x18($sp)
    /* BDFC 8013E930 21908200 */  addu       $s2, $a0, $v0
    /* BE00 8013E934 02000524 */  addiu      $a1, $zero, 0x2
    /* BE04 8013E938 2000BFAF */  sw         $ra, 0x20($sp)
    /* BE08 8013E93C 1000B0AF */  sw         $s0, 0x10($sp)
    /* BE0C 8013E940 0000448E */  lw         $a0, 0x0($s2)
    /* BE10 8013E944 91FF040C */  jal        func_8013FE44
    /* BE14 8013E948 21300000 */   addu      $a2, $zero, $zero
    /* BE18 8013E94C 21804000 */  addu       $s0, $v0, $zero
    /* BE1C 8013E950 0E000012 */  beqz       $s0, .L8013E98C
    /* BE20 8013E954 21100002 */   addu      $v0, $s0, $zero
  .L8013E958:
    /* BE24 8013E958 0000448E */  lw         $a0, 0x0($s2)
    /* BE28 8013E95C 21286002 */  addu       $a1, $s3, $zero
    /* BE2C 8013E960 1200050C */  jal        func_80140048
    /* BE30 8013E964 21300000 */   addu      $a2, $zero, $zero
    /* BE34 8013E968 08004014 */  bnez       $v0, .L8013E98C
    /* BE38 8013E96C 21100002 */   addu      $v0, $s0, $zero
    /* BE3C 8013E970 22EC040C */  jal        func_8013B088
    /* BE40 8013E974 0A000424 */   addiu     $a0, $zero, 0xA
    /* BE44 8013E978 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* BE48 8013E97C F6FF2106 */  bgez       $s1, .L8013E958
    /* BE4C 8013E980 00000000 */   nop
    /* BE50 8013E984 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* BE54 8013E988 21100002 */  addu       $v0, $s0, $zero
  .L8013E98C:
    /* BE58 8013E98C 2000BF8F */  lw         $ra, 0x20($sp)
    /* BE5C 8013E990 1C00B38F */  lw         $s3, 0x1C($sp)
    /* BE60 8013E994 1800B28F */  lw         $s2, 0x18($sp)
    /* BE64 8013E998 1400B18F */  lw         $s1, 0x14($sp)
    /* BE68 8013E99C 1000B08F */  lw         $s0, 0x10($sp)
    /* BE6C 8013E9A0 0800E003 */  jr         $ra
    /* BE70 8013E9A4 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8013E90C
