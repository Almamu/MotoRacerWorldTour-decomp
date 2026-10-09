nonmatching func_8013D16C, 0x20

glabel func_8013D16C
    /* A638 8013D16C 0200A010 */  beqz       $a1, .L8013D178
    /* A63C 8013D170 00E1033C */   lui       $v1, (0xE1000200 >> 16)
    /* A640 8013D174 00026334 */  ori        $v1, $v1, (0xE1000200 & 0xFFFF)
  .L8013D178:
    /* A644 8013D178 02008010 */  beqz       $a0, .L8013D184
    /* A648 8013D17C FF09C230 */   andi      $v0, $a2, 0x9FF
    /* A64C 8013D180 00044234 */  ori        $v0, $v0, 0x400
  .L8013D184:
    /* A650 8013D184 0800E003 */  jr         $ra
    /* A654 8013D188 25106200 */   or        $v0, $v1, $v0
endlabel func_8013D16C
