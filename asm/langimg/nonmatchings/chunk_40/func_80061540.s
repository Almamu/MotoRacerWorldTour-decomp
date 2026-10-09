nonmatching func_80061540, 0x84

glabel func_80061540
    /* 4FD50 80061540 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4FD54 80061544 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4FD58 80061548 21888000 */  addu       $s1, $a0, $zero
    /* 4FD5C 8006154C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4FD60 80061550 2180A000 */  addu       $s0, $a1, $zero
    /* 4FD64 80061554 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4FD68 80061558 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4FD6C 8006155C 375E000C */  jal        func_800178DC
    /* 4FD70 80061560 2190C000 */   addu      $s2, $a2, $zero
    /* 4FD74 80061564 11004010 */  beqz       $v0, .L800615AC
    /* 4FD78 80061568 00000000 */   nop
    /* 4FD7C 8006156C 0B00001A */  blez       $s0, .L8006159C
    /* 4FD80 80061570 21380000 */   addu      $a3, $zero, $zero
    /* 4FD84 80061574 21304002 */  addu       $a2, $s2, $zero
  .L80061578:
    /* 4FD88 80061578 0000C594 */  lhu        $a1, 0x0($a2)
    /* 4FD8C 8006157C 0400C624 */  addiu      $a2, $a2, 0x4
    /* 4FD90 80061580 40180700 */  sll        $v1, $a3, 1
    /* 4FD94 80061584 0100E724 */  addiu      $a3, $a3, 0x1
    /* 4FD98 80061588 3800248E */  lw         $a0, 0x38($s1)
    /* 4FD9C 8006158C 2A10F000 */  slt        $v0, $a3, $s0
    /* 4FDA0 80061590 21186400 */  addu       $v1, $v1, $a0
    /* 4FDA4 80061594 F8FF4014 */  bnez       $v0, .L80061578
    /* 4FDA8 80061598 000065A4 */   sh        $a1, 0x0($v1)
  .L8006159C:
    /* 4FDAC 8006159C 0400228E */  lw         $v0, 0x4($s1)
    /* 4FDB0 800615A0 EDFF0324 */  addiu      $v1, $zero, -0x13
    /* 4FDB4 800615A4 24104300 */  and        $v0, $v0, $v1
    /* 4FDB8 800615A8 040022AE */  sw         $v0, 0x4($s1)
  .L800615AC:
    /* 4FDBC 800615AC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4FDC0 800615B0 1800B28F */  lw         $s2, 0x18($sp)
    /* 4FDC4 800615B4 1400B18F */  lw         $s1, 0x14($sp)
    /* 4FDC8 800615B8 1000B08F */  lw         $s0, 0x10($sp)
    /* 4FDCC 800615BC 0800E003 */  jr         $ra
    /* 4FDD0 800615C0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80061540
