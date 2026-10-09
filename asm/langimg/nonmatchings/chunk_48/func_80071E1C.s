nonmatching func_80071E1C, 0xBC

glabel func_80071E1C
    /* 6062C 80071E1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 60630 80071E20 CDCD033C */  lui        $v1, (0xCDCDCDCD >> 16)
    /* 60634 80071E24 CDCD6334 */  ori        $v1, $v1, (0xCDCDCDCD & 0xFFFF)
    /* 60638 80071E28 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6063C 80071E2C 21808000 */  addu       $s0, $a0, $zero
    /* 60640 80071E30 4C000426 */  addiu      $a0, $s0, 0x4C
    /* 60644 80071E34 08000226 */  addiu      $v0, $s0, 0x8
    /* 60648 80071E38 00100524 */  addiu      $a1, $zero, 0x1000
    /* 6064C 80071E3C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 60650 80071E40 080040AC */  sw         $zero, 0x8($v0)
    /* 60654 80071E44 040040AC */  sw         $zero, 0x4($v0)
    /* 60658 80071E48 14000226 */  addiu      $v0, $s0, 0x14
    /* 6065C 80071E4C 080000AE */  sw         $zero, 0x8($s0)
    /* 60660 80071E50 000003AE */  sw         $v1, 0x0($s0)
    /* 60664 80071E54 040003AE */  sw         $v1, 0x4($s0)
    /* 60668 80071E58 140005A6 */  sh         $a1, 0x14($s0)
    /* 6066C 80071E5C 080045A4 */  sh         $a1, 0x8($v0)
    /* 60670 80071E60 100045A4 */  sh         $a1, 0x10($v0)
    /* 60674 80071E64 CD000524 */  addiu      $a1, $zero, 0xCD
    /* 60678 80071E68 2C000624 */  addiu      $a2, $zero, 0x2C
    /* 6067C 80071E6C 140040AC */  sw         $zero, 0x14($v0)
    /* 60680 80071E70 040040A4 */  sh         $zero, 0x4($v0)
    /* 60684 80071E74 020040A4 */  sh         $zero, 0x2($v0)
    /* 60688 80071E78 180040AC */  sw         $zero, 0x18($v0)
    /* 6068C 80071E7C 0A0040A4 */  sh         $zero, 0xA($v0)
    /* 60690 80071E80 060040A4 */  sh         $zero, 0x6($v0)
    /* 60694 80071E84 1C0040AC */  sw         $zero, 0x1C($v0)
    /* 60698 80071E88 0E0040A4 */  sh         $zero, 0xE($v0)
    /* 6069C 80071E8C 0C0040A4 */  sh         $zero, 0xC($v0)
    /* 606A0 80071E90 340003AE */  sw         $v1, 0x34($s0)
    /* 606A4 80071E94 380003AE */  sw         $v1, 0x38($s0)
    /* 606A8 80071E98 3C0003AE */  sw         $v1, 0x3C($s0)
    /* 606AC 80071E9C 480003AE */  sw         $v1, 0x48($s0)
    /* 606B0 80071EA0 56D8020C */  jal        func_800B6158
    /* 606B4 80071EA4 440003AE */   sw        $v1, 0x44($s0)
    /* 606B8 80071EA8 21200002 */  addu       $a0, $s0, $zero
    /* 606BC 80071EAC CDCD0234 */  ori        $v0, $zero, 0xCDCD
    /* 606C0 80071EB0 07000324 */  addiu      $v1, $zero, 0x7
    /* 606C4 80071EB4 780002AE */  sw         $v0, 0x78($s0)
    /* 606C8 80071EB8 7C0003AE */  sw         $v1, 0x7C($s0)
    /* 606CC 80071EBC 800000AE */  sw         $zero, 0x80($s0)
    /* 606D0 80071EC0 40CB010C */  jal        func_80072D00
    /* 606D4 80071EC4 400000AE */   sw        $zero, 0x40($s0)
    /* 606D8 80071EC8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 606DC 80071ECC 1000B08F */  lw         $s0, 0x10($sp)
    /* 606E0 80071ED0 0800E003 */  jr         $ra
    /* 606E4 80071ED4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80071E1C
