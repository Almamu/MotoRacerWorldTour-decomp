nonmatching func_80015438, 0x20

glabel func_80015438
    /* 3C48 80015438 04008018 */  blez       $a0, .L8001544C
    /* 3C4C 8001543C 0C80033C */   lui       $v1, %hi(D_800B877C)
    /* 3C50 80015440 0C80023C */  lui        $v0, %hi(D_800B877C)
    /* 3C54 80015444 0800E003 */  jr         $ra
    /* 3C58 80015448 7C8744AC */   sw        $a0, %lo(D_800B877C)($v0)
  .L8001544C:
    /* 3C5C 8001544C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3C60 80015450 0800E003 */  jr         $ra
    /* 3C64 80015454 7C8762AC */   sw        $v0, %lo(D_800B877C)($v1)
endlabel func_80015438
