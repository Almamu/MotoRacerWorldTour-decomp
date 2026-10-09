nonmatching func_8005BDE4, 0xE0

glabel func_8005BDE4
    /* 4A5F4 8005BDE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4A5F8 8005BDE8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4A5FC 8005BDEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A600 8005BDF0 7803848C */  lw         $a0, 0x378($a0)
    /* 4A604 8005BDF4 00000000 */  nop
    /* 4A608 8005BDF8 0000828C */  lw         $v0, 0x0($a0)
    /* 4A60C 8005BDFC 00000000 */  nop
    /* 4A610 8005BE00 02014230 */  andi       $v0, $v0, 0x102
    /* 4A614 8005BE04 2B004010 */  beqz       $v0, .L8005BEB4
    /* 4A618 8005BE08 00000000 */   nop
    /* 4A61C 8005BE0C 241E8380 */  lb         $v1, 0x1E24($a0)
    /* 4A620 8005BE10 00000000 */  nop
    /* 4A624 8005BE14 0C006004 */  bltz       $v1, .L8005BE48
    /* 4A628 8005BE18 21280000 */   addu      $a1, $zero, $zero
    /* 4A62C 8005BE1C 40100300 */  sll        $v0, $v1, 1
    /* 4A630 8005BE20 21104300 */  addu       $v0, $v0, $v1
    /* 4A634 8005BE24 80100200 */  sll        $v0, $v0, 2
    /* 4A638 8005BE28 23104300 */  subu       $v0, $v0, $v1
    /* 4A63C 8005BE2C 80100200 */  sll        $v0, $v0, 2
    /* 4A640 8005BE30 23104300 */  subu       $v0, $v0, $v1
    /* 4A644 8005BE34 80100200 */  sll        $v0, $v0, 2
    /* 4A648 8005BE38 21104300 */  addu       $v0, $v0, $v1
    /* 4A64C 8005BE3C C0100200 */  sll        $v0, $v0, 3
    /* 4A650 8005BE40 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4A654 8005BE44 21288200 */  addu       $a1, $a0, $v0
  .L8005BE48:
    /* 4A658 8005BE48 2B1E8280 */  lb         $v0, 0x1E2B($a0)
    /* 4A65C 8005BE4C 0100A390 */  lbu        $v1, 0x1($a1)
    /* 4A660 8005BE50 80100200 */  sll        $v0, $v0, 2
    /* 4A664 8005BE54 21108200 */  addu       $v0, $a0, $v0
    /* 4A668 8005BE58 03000424 */  addiu      $a0, $zero, 0x3
    /* 4A66C 8005BE5C 4000508C */  lw         $s0, 0x40($v0)
    /* 4A670 8005BE60 14006414 */  bne        $v1, $a0, .L8005BEB4
    /* 4A674 8005BE64 00000000 */   nop
    /* 4A678 8005BE68 0D80023C */  lui        $v0, %hi(D_800CAE90)
    /* 4A67C 8005BE6C 90AE428C */  lw         $v0, %lo(D_800CAE90)($v0)
    /* 4A680 8005BE70 00000000 */  nop
    /* 4A684 8005BE74 09004010 */  beqz       $v0, .L8005BE9C
    /* 4A688 8005BE78 00000000 */   nop
    /* 4A68C 8005BE7C 0D80043C */  lui        $a0, %hi(D_800CAE90)
    /* 4A690 8005BE80 90AE8424 */  addiu      $a0, $a0, %lo(D_800CAE90)
    /* 4A694 8005BE84 5EBF010C */  jal        func_8006FD78
    /* 4A698 8005BE88 00000000 */   nop
    /* 4A69C 8005BE8C 03004014 */  bnez       $v0, .L8005BE9C
    /* 4A6A0 8005BE90 00000000 */   nop
    /* 4A6A4 8005BE94 0700001A */  blez       $s0, .L8005BEB4
    /* 4A6A8 8005BE98 00000000 */   nop
  .L8005BE9C:
    /* 4A6AC 8005BE9C 0D80043C */  lui        $a0, %hi(D_800CAE90)
    /* 4A6B0 8005BEA0 90AE8424 */  addiu      $a0, $a0, %lo(D_800CAE90)
    /* 4A6B4 8005BEA4 0D80053C */  lui        $a1, %hi(D_800CB0A0)
    /* 4A6B8 8005BEA8 A0B0A524 */  addiu      $a1, $a1, %lo(D_800CB0A0)
    /* 4A6BC 8005BEAC 6BBF010C */  jal        func_8006FDAC
    /* 4A6C0 8005BEB0 00000000 */   nop
  .L8005BEB4:
    /* 4A6C4 8005BEB4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4A6C8 8005BEB8 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A6CC 8005BEBC 0800E003 */  jr         $ra
    /* 4A6D0 8005BEC0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005BDE4
