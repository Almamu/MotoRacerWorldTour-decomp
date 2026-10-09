nonmatching func_800ACDA0, 0x20

glabel func_800ACDA0
    /* 9B5B0 800ACDA0 0200A010 */  beqz       $a1, .L800ACDAC
    /* 9B5B4 800ACDA4 00E1033C */   lui       $v1, (0xE1000200 >> 16)
    /* 9B5B8 800ACDA8 00026334 */  ori        $v1, $v1, (0xE1000200 & 0xFFFF)
  .L800ACDAC:
    /* 9B5BC 800ACDAC 02008010 */  beqz       $a0, .L800ACDB8
    /* 9B5C0 800ACDB0 FF09C230 */   andi      $v0, $a2, 0x9FF
    /* 9B5C4 800ACDB4 00044234 */  ori        $v0, $v0, 0x400
  .L800ACDB8:
    /* 9B5C8 800ACDB8 0800E003 */  jr         $ra
    /* 9B5CC 800ACDBC 25106200 */   or        $v0, $v1, $v0
endlabel func_800ACDA0
