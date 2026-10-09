nonmatching func_80014368, 0x78

glabel func_80014368
    /* 2B78 80014368 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2B7C 8001436C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2B80 80014370 21908000 */  addu       $s2, $a0, $zero
    /* 2B84 80014374 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2B88 80014378 2188C000 */  addu       $s1, $a2, $zero
    /* 2B8C 8001437C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2B90 80014380 9F50000C */  jal        func_8001427C
    /* 2B94 80014384 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2B98 80014388 21804000 */  addu       $s0, $v0, $zero
    /* 2B9C 8001438C 0E000012 */  beqz       $s0, .L800143C8
    /* 2BA0 80014390 21200002 */   addu      $a0, $s0, $zero
    /* 2BA4 80014394 E84E000C */  jal        func_80013BA0
    /* 2BA8 80014398 21282002 */   addu      $a1, $s1, $zero
    /* 2BAC 8001439C 03004282 */  lb         $v0, 0x3($s2)
    /* 2BB0 800143A0 1000038E */  lw         $v1, 0x10($s0)
    /* 2BB4 800143A4 03004010 */  beqz       $v0, .L800143B4
    /* 2BB8 800143A8 1000023C */   lui       $v0, (0x100100 >> 16)
    /* 2BBC 800143AC F0500008 */  j          .L800143C0
    /* 2BC0 800143B0 25186200 */   or        $v1, $v1, $v0
  .L800143B4:
    /* 2BC4 800143B4 EFFF023C */  lui        $v0, (0xFFEFFFFF >> 16)
    /* 2BC8 800143B8 FFFF4234 */  ori        $v0, $v0, (0xFFEFFFFF & 0xFFFF)
    /* 2BCC 800143BC 24186200 */  and        $v1, $v1, $v0
  .L800143C0:
    /* 2BD0 800143C0 00016234 */  ori        $v0, $v1, (0x100100 & 0xFFFF)
    /* 2BD4 800143C4 100002AE */  sw         $v0, 0x10($s0)
  .L800143C8:
    /* 2BD8 800143C8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2BDC 800143CC 1800B28F */  lw         $s2, 0x18($sp)
    /* 2BE0 800143D0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2BE4 800143D4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2BE8 800143D8 0800E003 */  jr         $ra
    /* 2BEC 800143DC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80014368
