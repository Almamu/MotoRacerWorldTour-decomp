nonmatching func_8001F10C, 0x30

glabel func_8001F10C
    /* D91C 8001F10C 64000324 */  addiu      $v1, $zero, 0x64
    /* D920 8001F110 84258224 */  addiu      $v0, $a0, 0x2584
    /* D924 8001F114 044B80A4 */  sh         $zero, 0x4B04($a0)
    /* D928 8001F118 0C4B80A4 */  sh         $zero, 0x4B0C($a0)
    /* D92C 8001F11C 0E4B80A4 */  sh         $zero, 0x4B0E($a0)
    /* D930 8001F120 084B80AC */  sw         $zero, 0x4B08($a0)
  .L8001F124:
    /* D934 8001F124 2A0040A4 */  sh         $zero, 0x2A($v0)
    /* D938 8001F128 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* D93C 8001F12C FDFF6014 */  bnez       $v1, .L8001F124
    /* D940 8001F130 60004224 */   addiu     $v0, $v0, 0x60
    /* D944 8001F134 0800E003 */  jr         $ra
    /* D948 8001F138 802580AC */   sw        $zero, 0x2580($a0)
endlabel func_8001F10C
