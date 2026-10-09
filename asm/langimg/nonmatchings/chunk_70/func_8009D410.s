nonmatching func_8009D410, 0x390

glabel func_8009D410
    /* 8BC20 8009D410 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8BC24 8009D414 A877828F */  lw         $v0, %gp_rel(D_800CBE98)($gp)
    /* 8BC28 8009D418 01000324 */  addiu      $v1, $zero, 0x1
    /* 8BC2C 8009D41C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8BC30 8009D420 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8BC34 8009D424 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8BC38 8009D428 01004224 */  addiu      $v0, $v0, 0x1
    /* 8BC3C 8009D42C A87782AF */  sw         $v0, %gp_rel(D_800CBE98)($gp)
    /* 8BC40 8009D430 D6004314 */  bne        $v0, $v1, .L8009D78C
    /* 8BC44 8009D434 1000A427 */   addiu     $a0, $sp, 0x10
    /* 8BC48 8009D438 21280000 */  addu       $a1, $zero, $zero
    /* 8BC4C 8009D43C 56D8020C */  jal        memset
    /* 8BC50 8009D440 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BC54 8009D444 1000B127 */  addiu      $s1, $sp, 0x10
    /* 8BC58 8009D448 21202002 */  addu       $a0, $s1, $zero
    /* 8BC5C 8009D44C 21280000 */  addu       $a1, $zero, $zero
    /* 8BC60 8009D450 0D80023C */  lui        $v0, %hi(D_800C9B6C)
    /* 8BC64 8009D454 6C9B4224 */  addiu      $v0, $v0, %lo(D_800C9B6C)
    /* 8BC68 8009D458 0D80033C */  lui        $v1, %hi(D_800C9C08)
    /* 8BC6C 8009D45C 089C638C */  lw         $v1, %lo(D_800C9C08)($v1)
    /* 8BC70 8009D460 0D80103C */  lui        $s0, %hi(D_800CBEA0)
    /* 8BC74 8009D464 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BC78 8009D468 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BC7C 8009D46C A0BE0A26 */  addiu      $t2, $s0, %lo(D_800CBEA0)
    /* 8BC80 8009D470 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BC84 8009D474 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BC88 8009D478 000047AD */  sw         $a3, 0x0($t2)
    /* 8BC8C 8009D47C 040048AD */  sw         $t0, 0x4($t2)
    /* 8BC90 8009D480 56D8020C */  jal        memset
    /* 8BC94 8009D484 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BC98 8009D488 21202002 */  addu       $a0, $s1, $zero
    /* 8BC9C 8009D48C 21280000 */  addu       $a1, $zero, $zero
    /* 8BCA0 8009D490 0D80023C */  lui        $v0, %hi(D_800C9B74)
    /* 8BCA4 8009D494 749B4224 */  addiu      $v0, $v0, %lo(D_800C9B74)
    /* 8BCA8 8009D498 0D80033C */  lui        $v1, %hi(D_800C9C0C)
    /* 8BCAC 8009D49C 0C9C638C */  lw         $v1, %lo(D_800C9C0C)($v1)
    /* 8BCB0 8009D4A0 A0BE1026 */  addiu      $s0, $s0, %lo(D_800CBEA0)
    /* 8BCB4 8009D4A4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BCB8 8009D4A8 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BCBC 8009D4AC 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BCC0 8009D4B0 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BCC4 8009D4B4 080007AE */  sw         $a3, 0x8($s0)
    /* 8BCC8 8009D4B8 0C0008AE */  sw         $t0, 0xC($s0)
    /* 8BCCC 8009D4BC 56D8020C */  jal        memset
    /* 8BCD0 8009D4C0 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BCD4 8009D4C4 21202002 */  addu       $a0, $s1, $zero
    /* 8BCD8 8009D4C8 21280000 */  addu       $a1, $zero, $zero
    /* 8BCDC 8009D4CC 0D80023C */  lui        $v0, %hi(D_800C9B7C)
    /* 8BCE0 8009D4D0 0D80033C */  lui        $v1, %hi(D_800C9CEC)
    /* 8BCE4 8009D4D4 EC9C638C */  lw         $v1, %lo(D_800C9CEC)($v1)
    /* 8BCE8 8009D4D8 7C9B4224 */  addiu      $v0, $v0, %lo(D_800C9B7C)
    /* 8BCEC 8009D4DC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BCF0 8009D4E0 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BCF4 8009D4E4 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BCF8 8009D4E8 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BCFC 8009D4EC 100007AE */  sw         $a3, 0x10($s0)
    /* 8BD00 8009D4F0 140008AE */  sw         $t0, 0x14($s0)
    /* 8BD04 8009D4F4 56D8020C */  jal        memset
    /* 8BD08 8009D4F8 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BD0C 8009D4FC 21202002 */  addu       $a0, $s1, $zero
    /* 8BD10 8009D500 21280000 */  addu       $a1, $zero, $zero
    /* 8BD14 8009D504 0D80023C */  lui        $v0, %hi(D_800C9B84)
    /* 8BD18 8009D508 0D80033C */  lui        $v1, %hi(D_800C9BF8)
    /* 8BD1C 8009D50C F89B638C */  lw         $v1, %lo(D_800C9BF8)($v1)
    /* 8BD20 8009D510 849B4224 */  addiu      $v0, $v0, %lo(D_800C9B84)
    /* 8BD24 8009D514 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BD28 8009D518 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BD2C 8009D51C 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BD30 8009D520 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BD34 8009D524 180007AE */  sw         $a3, 0x18($s0)
    /* 8BD38 8009D528 1C0008AE */  sw         $t0, 0x1C($s0)
    /* 8BD3C 8009D52C 56D8020C */  jal        memset
    /* 8BD40 8009D530 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BD44 8009D534 21202002 */  addu       $a0, $s1, $zero
    /* 8BD48 8009D538 21280000 */  addu       $a1, $zero, $zero
    /* 8BD4C 8009D53C 0D80023C */  lui        $v0, %hi(D_800C9B8C)
    /* 8BD50 8009D540 0D80033C */  lui        $v1, %hi(D_800C9C18)
    /* 8BD54 8009D544 189C638C */  lw         $v1, %lo(D_800C9C18)($v1)
    /* 8BD58 8009D548 8C9B4224 */  addiu      $v0, $v0, %lo(D_800C9B8C)
    /* 8BD5C 8009D54C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BD60 8009D550 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BD64 8009D554 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BD68 8009D558 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BD6C 8009D55C 200007AE */  sw         $a3, 0x20($s0)
    /* 8BD70 8009D560 240008AE */  sw         $t0, 0x24($s0)
    /* 8BD74 8009D564 56D8020C */  jal        memset
    /* 8BD78 8009D568 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BD7C 8009D56C 21202002 */  addu       $a0, $s1, $zero
    /* 8BD80 8009D570 21280000 */  addu       $a1, $zero, $zero
    /* 8BD84 8009D574 0D80023C */  lui        $v0, %hi(D_800C9B94)
    /* 8BD88 8009D578 0D80033C */  lui        $v1, %hi(D_800C8DCC)
    /* 8BD8C 8009D57C CC8D638C */  lw         $v1, %lo(D_800C8DCC)($v1)
    /* 8BD90 8009D580 949B4224 */  addiu      $v0, $v0, %lo(D_800C9B94)
    /* 8BD94 8009D584 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BD98 8009D588 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BD9C 8009D58C 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BDA0 8009D590 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BDA4 8009D594 280007AE */  sw         $a3, 0x28($s0)
    /* 8BDA8 8009D598 2C0008AE */  sw         $t0, 0x2C($s0)
    /* 8BDAC 8009D59C 56D8020C */  jal        memset
    /* 8BDB0 8009D5A0 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BDB4 8009D5A4 21202002 */  addu       $a0, $s1, $zero
    /* 8BDB8 8009D5A8 21280000 */  addu       $a1, $zero, $zero
    /* 8BDBC 8009D5AC 0D80023C */  lui        $v0, %hi(D_800C9BA4)
    /* 8BDC0 8009D5B0 0D80033C */  lui        $v1, %hi(D_800C92C4)
    /* 8BDC4 8009D5B4 C492638C */  lw         $v1, %lo(D_800C92C4)($v1)
    /* 8BDC8 8009D5B8 A49B4224 */  addiu      $v0, $v0, %lo(D_800C9BA4)
    /* 8BDCC 8009D5BC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BDD0 8009D5C0 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BDD4 8009D5C4 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BDD8 8009D5C8 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BDDC 8009D5CC 300007AE */  sw         $a3, 0x30($s0)
    /* 8BDE0 8009D5D0 340008AE */  sw         $t0, 0x34($s0)
    /* 8BDE4 8009D5D4 56D8020C */  jal        memset
    /* 8BDE8 8009D5D8 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BDEC 8009D5DC 21202002 */  addu       $a0, $s1, $zero
    /* 8BDF0 8009D5E0 21280000 */  addu       $a1, $zero, $zero
    /* 8BDF4 8009D5E4 0D80023C */  lui        $v0, %hi(D_800C9BB0)
    /* 8BDF8 8009D5E8 0D80033C */  lui        $v1, %hi(D_800C92C4)
    /* 8BDFC 8009D5EC C492638C */  lw         $v1, %lo(D_800C92C4)($v1)
    /* 8BE00 8009D5F0 B09B4224 */  addiu      $v0, $v0, %lo(D_800C9BB0)
    /* 8BE04 8009D5F4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BE08 8009D5F8 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BE0C 8009D5FC 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BE10 8009D600 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BE14 8009D604 380007AE */  sw         $a3, 0x38($s0)
    /* 8BE18 8009D608 3C0008AE */  sw         $t0, 0x3C($s0)
    /* 8BE1C 8009D60C 56D8020C */  jal        memset
    /* 8BE20 8009D610 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BE24 8009D614 21202002 */  addu       $a0, $s1, $zero
    /* 8BE28 8009D618 21280000 */  addu       $a1, $zero, $zero
    /* 8BE2C 8009D61C 0D80023C */  lui        $v0, %hi(D_800C9BB8)
    /* 8BE30 8009D620 0D80033C */  lui        $v1, %hi(D_800C92C4)
    /* 8BE34 8009D624 C492638C */  lw         $v1, %lo(D_800C92C4)($v1)
    /* 8BE38 8009D628 B89B4224 */  addiu      $v0, $v0, %lo(D_800C9BB8)
    /* 8BE3C 8009D62C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BE40 8009D630 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BE44 8009D634 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BE48 8009D638 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BE4C 8009D63C 400007AE */  sw         $a3, 0x40($s0)
    /* 8BE50 8009D640 440008AE */  sw         $t0, 0x44($s0)
    /* 8BE54 8009D644 56D8020C */  jal        memset
    /* 8BE58 8009D648 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BE5C 8009D64C 21202002 */  addu       $a0, $s1, $zero
    /* 8BE60 8009D650 21280000 */  addu       $a1, $zero, $zero
    /* 8BE64 8009D654 0D80023C */  lui        $v0, %hi(D_800C9BC0)
    /* 8BE68 8009D658 0D80033C */  lui        $v1, %hi(D_800C9BF8)
    /* 8BE6C 8009D65C F89B638C */  lw         $v1, %lo(D_800C9BF8)($v1)
    /* 8BE70 8009D660 C09B4224 */  addiu      $v0, $v0, %lo(D_800C9BC0)
    /* 8BE74 8009D664 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BE78 8009D668 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BE7C 8009D66C 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BE80 8009D670 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BE84 8009D674 480007AE */  sw         $a3, 0x48($s0)
    /* 8BE88 8009D678 4C0008AE */  sw         $t0, 0x4C($s0)
    /* 8BE8C 8009D67C 56D8020C */  jal        memset
    /* 8BE90 8009D680 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BE94 8009D684 21202002 */  addu       $a0, $s1, $zero
    /* 8BE98 8009D688 21280000 */  addu       $a1, $zero, $zero
    /* 8BE9C 8009D68C 0D80023C */  lui        $v0, %hi(D_800C9BC8)
    /* 8BEA0 8009D690 0D80033C */  lui        $v1, %hi(D_800C9CEC)
    /* 8BEA4 8009D694 EC9C638C */  lw         $v1, %lo(D_800C9CEC)($v1)
    /* 8BEA8 8009D698 C89B4224 */  addiu      $v0, $v0, %lo(D_800C9BC8)
    /* 8BEAC 8009D69C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BEB0 8009D6A0 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BEB4 8009D6A4 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BEB8 8009D6A8 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BEBC 8009D6AC 500007AE */  sw         $a3, 0x50($s0)
    /* 8BEC0 8009D6B0 540008AE */  sw         $t0, 0x54($s0)
    /* 8BEC4 8009D6B4 56D8020C */  jal        memset
    /* 8BEC8 8009D6B8 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BECC 8009D6BC 21202002 */  addu       $a0, $s1, $zero
    /* 8BED0 8009D6C0 21280000 */  addu       $a1, $zero, $zero
    /* 8BED4 8009D6C4 0D80023C */  lui        $v0, %hi(D_800C9BD0)
    /* 8BED8 8009D6C8 0D80033C */  lui        $v1, %hi(D_800C9CEC)
    /* 8BEDC 8009D6CC EC9C638C */  lw         $v1, %lo(D_800C9CEC)($v1)
    /* 8BEE0 8009D6D0 D09B4224 */  addiu      $v0, $v0, %lo(D_800C9BD0)
    /* 8BEE4 8009D6D4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BEE8 8009D6D8 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BEEC 8009D6DC 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BEF0 8009D6E0 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BEF4 8009D6E4 580007AE */  sw         $a3, 0x58($s0)
    /* 8BEF8 8009D6E8 5C0008AE */  sw         $t0, 0x5C($s0)
    /* 8BEFC 8009D6EC 56D8020C */  jal        memset
    /* 8BF00 8009D6F0 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BF04 8009D6F4 21202002 */  addu       $a0, $s1, $zero
    /* 8BF08 8009D6F8 21280000 */  addu       $a1, $zero, $zero
    /* 8BF0C 8009D6FC 0D80023C */  lui        $v0, %hi(D_800C9BDC)
    /* 8BF10 8009D700 0D80033C */  lui        $v1, %hi(D_800C9CEC)
    /* 8BF14 8009D704 EC9C638C */  lw         $v1, %lo(D_800C9CEC)($v1)
    /* 8BF18 8009D708 DC9B4224 */  addiu      $v0, $v0, %lo(D_800C9BDC)
    /* 8BF1C 8009D70C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BF20 8009D710 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BF24 8009D714 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BF28 8009D718 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BF2C 8009D71C 600007AE */  sw         $a3, 0x60($s0)
    /* 8BF30 8009D720 640008AE */  sw         $t0, 0x64($s0)
    /* 8BF34 8009D724 56D8020C */  jal        memset
    /* 8BF38 8009D728 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BF3C 8009D72C 21202002 */  addu       $a0, $s1, $zero
    /* 8BF40 8009D730 21280000 */  addu       $a1, $zero, $zero
    /* 8BF44 8009D734 0D80023C */  lui        $v0, %hi(D_800C9BE8)
    /* 8BF48 8009D738 0D80033C */  lui        $v1, %hi(D_800C9CEC)
    /* 8BF4C 8009D73C EC9C638C */  lw         $v1, %lo(D_800C9CEC)($v1)
    /* 8BF50 8009D740 E89B4224 */  addiu      $v0, $v0, %lo(D_800C9BE8)
    /* 8BF54 8009D744 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BF58 8009D748 1400A3AF */  sw         $v1, 0x14($sp)
    /* 8BF5C 8009D74C 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BF60 8009D750 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BF64 8009D754 680007AE */  sw         $a3, 0x68($s0)
    /* 8BF68 8009D758 6C0008AE */  sw         $t0, 0x6C($s0)
    /* 8BF6C 8009D75C 56D8020C */  jal        memset
    /* 8BF70 8009D760 08000624 */   addiu     $a2, $zero, 0x8
    /* 8BF74 8009D764 0D80033C */  lui        $v1, %hi(D_800C9BF0)
    /* 8BF78 8009D768 0D80023C */  lui        $v0, %hi(D_800C9CEC)
    /* 8BF7C 8009D76C EC9C428C */  lw         $v0, %lo(D_800C9CEC)($v0)
    /* 8BF80 8009D770 F09B6324 */  addiu      $v1, $v1, %lo(D_800C9BF0)
    /* 8BF84 8009D774 1000A3AF */  sw         $v1, 0x10($sp)
    /* 8BF88 8009D778 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8BF8C 8009D77C 1000A78F */  lw         $a3, 0x10($sp)
    /* 8BF90 8009D780 1400A88F */  lw         $t0, 0x14($sp)
    /* 8BF94 8009D784 700007AE */  sw         $a3, 0x70($s0)
    /* 8BF98 8009D788 740008AE */  sw         $t0, 0x74($s0)
  .L8009D78C:
    /* 8BF9C 8009D78C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8BFA0 8009D790 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8BFA4 8009D794 1800B08F */  lw         $s0, 0x18($sp)
    /* 8BFA8 8009D798 0800E003 */  jr         $ra
    /* 8BFAC 8009D79C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009D410
