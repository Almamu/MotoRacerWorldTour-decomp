nonmatching func_800144B8, 0x78

glabel func_800144B8
    /* 2CC8 800144B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2CCC 800144BC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2CD0 800144C0 21908000 */  addu       $s2, $a0, $zero
    /* 2CD4 800144C4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2CD8 800144C8 2188C000 */  addu       $s1, $a2, $zero
    /* 2CDC 800144CC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2CE0 800144D0 9F50000C */  jal        func_8001427C
    /* 2CE4 800144D4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2CE8 800144D8 21804000 */  addu       $s0, $v0, $zero
    /* 2CEC 800144DC 0E000012 */  beqz       $s0, .L80014518
    /* 2CF0 800144E0 21200002 */   addu      $a0, $s0, $zero
    /* 2CF4 800144E4 F54E000C */  jal        func_80013BD4
    /* 2CF8 800144E8 21282002 */   addu      $a1, $s1, $zero
    /* 2CFC 800144EC 03004282 */  lb         $v0, 0x3($s2)
    /* 2D00 800144F0 1000038E */  lw         $v1, 0x10($s0)
    /* 2D04 800144F4 03004010 */  beqz       $v0, .L80014504
    /* 2D08 800144F8 1000023C */   lui       $v0, (0x100100 >> 16)
    /* 2D0C 800144FC 44510008 */  j          .L80014510
    /* 2D10 80014500 25186200 */   or        $v1, $v1, $v0
  .L80014504:
    /* 2D14 80014504 EFFF023C */  lui        $v0, (0xFFEFFFFF >> 16)
    /* 2D18 80014508 FFFF4234 */  ori        $v0, $v0, (0xFFEFFFFF & 0xFFFF)
    /* 2D1C 8001450C 24186200 */  and        $v1, $v1, $v0
  .L80014510:
    /* 2D20 80014510 00016234 */  ori        $v0, $v1, (0x100100 & 0xFFFF)
    /* 2D24 80014514 100002AE */  sw         $v0, 0x10($s0)
  .L80014518:
    /* 2D28 80014518 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2D2C 8001451C 1800B28F */  lw         $s2, 0x18($sp)
    /* 2D30 80014520 1400B18F */  lw         $s1, 0x14($sp)
    /* 2D34 80014524 1000B08F */  lw         $s0, 0x10($sp)
    /* 2D38 80014528 0800E003 */  jr         $ra
    /* 2D3C 8001452C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800144B8
