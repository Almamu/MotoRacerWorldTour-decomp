nonmatching func_8003A9F4, 0x9C

glabel func_8003A9F4
    /* 29204 8003A9F4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 29208 8003A9F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2920C 8003A9FC 21800000 */  addu       $s0, $zero, $zero
    /* 29210 8003AA00 1800B2AF */  sw         $s2, 0x18($sp)
    /* 29214 8003AA04 21908000 */  addu       $s2, $a0, $zero
    /* 29218 8003AA08 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2921C 8003AA0C 2198C000 */  addu       $s3, $a2, $zero
    /* 29220 8003AA10 2000B4AF */  sw         $s4, 0x20($sp)
    /* 29224 8003AA14 21A0E000 */  addu       $s4, $a3, $zero
    /* 29228 8003AA18 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2922C 8003AA1C 1BEA000C */  jal        func_8003A86C
    /* 29230 8003AA20 1400B1AF */   sw        $s1, 0x14($sp)
    /* 29234 8003AA24 21884000 */  addu       $s1, $v0, $zero
    /* 29238 8003AA28 10002012 */  beqz       $s1, .L8003AA6C
    /* 2923C 8003AA2C 05000224 */   addiu     $v0, $zero, 0x5
    /* 29240 8003AA30 00002386 */  lh         $v1, 0x0($s1)
    /* 29244 8003AA34 00000000 */  nop
    /* 29248 8003AA38 0D006214 */  bne        $v1, $v0, .L8003AA70
    /* 2924C 8003AA3C 21100002 */   addu      $v0, $s0, $zero
    /* 29250 8003AA40 02006016 */  bnez       $s3, .L8003AA4C
    /* 29254 8003AA44 21202002 */   addu      $a0, $s1, $zero
    /* 29258 8003AA48 FFFF1024 */  addiu      $s0, $zero, -0x1
  .L8003AA4C:
    /* 2925C 8003AA4C 21280002 */  addu       $a1, $s0, $zero
    /* 29260 8003AA50 4400468E */  lw         $a2, 0x44($s2)
    /* 29264 8003AA54 F6E0000C */  jal        func_800383D8
    /* 29268 8003AA58 21384002 */   addu      $a3, $s2, $zero
    /* 2926C 8003AA5C 02008012 */  beqz       $s4, .L8003AA68
    /* 29270 8003AA60 00000000 */   nop
    /* 29274 8003AA64 540030AE */  sw         $s0, 0x54($s1)
  .L8003AA68:
    /* 29278 8003AA68 01001024 */  addiu      $s0, $zero, 0x1
  .L8003AA6C:
    /* 2927C 8003AA6C 21100002 */  addu       $v0, $s0, $zero
  .L8003AA70:
    /* 29280 8003AA70 2400BF8F */  lw         $ra, 0x24($sp)
    /* 29284 8003AA74 2000B48F */  lw         $s4, 0x20($sp)
    /* 29288 8003AA78 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2928C 8003AA7C 1800B28F */  lw         $s2, 0x18($sp)
    /* 29290 8003AA80 1400B18F */  lw         $s1, 0x14($sp)
    /* 29294 8003AA84 1000B08F */  lw         $s0, 0x10($sp)
    /* 29298 8003AA88 0800E003 */  jr         $ra
    /* 2929C 8003AA8C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8003A9F4
