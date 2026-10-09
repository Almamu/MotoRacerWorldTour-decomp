nonmatching func_8001E1C8, 0x78

glabel func_8001E1C8
    /* C9D8 8001E1C8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C9DC 8001E1CC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* C9E0 8001E1D0 3800B38F */  lw         $s3, 0x38($sp)
    /* C9E4 8001E1D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* C9E8 8001E1D8 2180A000 */  addu       $s0, $a1, $zero
    /* C9EC 8001E1DC 1400B1AF */  sw         $s1, 0x14($sp)
    /* C9F0 8001E1E0 2188C000 */  addu       $s1, $a2, $zero
    /* C9F4 8001E1E4 1800B2AF */  sw         $s2, 0x18($sp)
    /* C9F8 8001E1E8 2190E000 */  addu       $s2, $a3, $zero
    /* C9FC 8001E1EC 2000B4AF */  sw         $s4, 0x20($sp)
    /* CA00 8001E1F0 21A08000 */  addu       $s4, $a0, $zero
    /* CA04 8001E1F4 0A002012 */  beqz       $s1, .L8001E220
    /* CA08 8001E1F8 2400BFAF */   sw        $ra, 0x24($sp)
  .L8001E1FC:
    /* CA0C 8001E1FC 21208002 */  addu       $a0, $s4, $zero
    /* CA10 8001E200 0C00068E */  lw         $a2, 0xC($s0)
    /* CA14 8001E204 4678000C */  jal        func_8001E118
    /* CA18 8001E208 21280002 */   addu      $a1, $s0, $zero
    /* CA1C 8001E20C 000042A2 */  sb         $v0, 0x0($s2)
    /* CA20 8001E210 01005226 */  addiu      $s2, $s2, 0x1
    /* CA24 8001E214 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* CA28 8001E218 F8FF2016 */  bnez       $s1, .L8001E1FC
    /* CA2C 8001E21C 21801302 */   addu      $s0, $s0, $s3
  .L8001E220:
    /* CA30 8001E220 2400BF8F */  lw         $ra, 0x24($sp)
    /* CA34 8001E224 2000B48F */  lw         $s4, 0x20($sp)
    /* CA38 8001E228 1C00B38F */  lw         $s3, 0x1C($sp)
    /* CA3C 8001E22C 1800B28F */  lw         $s2, 0x18($sp)
    /* CA40 8001E230 1400B18F */  lw         $s1, 0x14($sp)
    /* CA44 8001E234 1000B08F */  lw         $s0, 0x10($sp)
    /* CA48 8001E238 0800E003 */  jr         $ra
    /* CA4C 8001E23C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8001E1C8
