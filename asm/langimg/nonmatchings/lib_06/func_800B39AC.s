nonmatching func_800B39AC, 0x5C

glabel func_800B39AC
    /* A21BC 800B39AC F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* A21C0 800B39B0 0D000224 */  addiu      $v0, $zero, 0xD
    /* A21C4 800B39B4 0400A2AF */  sw         $v0, 0x4($sp)
    /* A21C8 800B39B8 7BCE0208 */  j          .L800B39EC
    /* A21CC 800B39BC 0000A0AF */   sw        $zero, 0x0($sp)
  .L800B39C0:
    /* A21D0 800B39C0 0400A38F */  lw         $v1, 0x4($sp)
    /* A21D4 800B39C4 00000000 */  nop
    /* A21D8 800B39C8 40100300 */  sll        $v0, $v1, 1
    /* A21DC 800B39CC 21104300 */  addu       $v0, $v0, $v1
    /* A21E0 800B39D0 80100200 */  sll        $v0, $v0, 2
    /* A21E4 800B39D4 21104300 */  addu       $v0, $v0, $v1
    /* A21E8 800B39D8 0400A2AF */  sw         $v0, 0x4($sp)
    /* A21EC 800B39DC 0000A28F */  lw         $v0, 0x0($sp)
    /* A21F0 800B39E0 00000000 */  nop
    /* A21F4 800B39E4 01004224 */  addiu      $v0, $v0, 0x1
    /* A21F8 800B39E8 0000A2AF */  sw         $v0, 0x0($sp)
  .L800B39EC:
    /* A21FC 800B39EC 0000A28F */  lw         $v0, 0x0($sp)
    /* A2200 800B39F0 00000000 */  nop
    /* A2204 800B39F4 3C004228 */  slti       $v0, $v0, 0x3C
    /* A2208 800B39F8 F1FF4014 */  bnez       $v0, .L800B39C0
    /* A220C 800B39FC 00000000 */   nop
    /* A2210 800B3A00 0800E003 */  jr         $ra
    /* A2214 800B3A04 0800BD27 */   addiu     $sp, $sp, 0x8
endlabel func_800B39AC
    /* A2218 800B3A08 00000000 */  nop
    /* A221C 800B3A0C 00000000 */  nop
    /* A2220 800B3A10 00000000 */  nop
