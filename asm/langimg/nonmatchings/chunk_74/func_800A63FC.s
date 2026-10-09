nonmatching func_800A63FC, 0x4C

glabel func_800A63FC
    /* 94C0C 800A63FC F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 94C10 800A6400 031C1D00 */  sra        $v1, $sp, 16
    /* 94C14 800A6404 00180224 */  addiu      $v0, $zero, 0x1800
    /* 94C18 800A6408 0D006210 */  beq        $v1, $v0, .L800A6440
    /* 94C1C 800A640C 0C80023C */   lui       $v0, %hi(D_800BCA3C)
    /* 94C20 800A6410 3CCA4524 */  addiu      $a1, $v0, %lo(D_800BCA3C)
    /* 94C24 800A6414 801F043C */  lui        $a0, (0x1F800000 >> 16)
    /* 94C28 800A6418 0C80033C */  lui        $v1, %hi(D_800BCE3C)
    /* 94C2C 800A641C 3CCE64AC */  sw         $a0, %lo(D_800BCE3C)($v1)
    /* 94C30 800A6420 FF000324 */  addiu      $v1, $zero, 0xFF
    /* 94C34 800A6424 FFFF0624 */  addiu      $a2, $zero, -0x1
  .L800A6428:
    /* 94C38 800A6428 0000A28C */  lw         $v0, 0x0($a1)
    /* 94C3C 800A642C 0400A524 */  addiu      $a1, $a1, 0x4
    /* 94C40 800A6430 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 94C44 800A6434 000082AC */  sw         $v0, (0x1F800000 & 0xFFFF)($a0)
    /* 94C48 800A6438 FBFF6614 */  bne        $v1, $a2, .L800A6428
    /* 94C4C 800A643C 04008424 */   addiu     $a0, $a0, %lo(D_1F800004)
  .L800A6440:
    /* 94C50 800A6440 0800E003 */  jr         $ra
    /* 94C54 800A6444 0800BD27 */   addiu     $sp, $sp, 0x8
endlabel func_800A63FC
