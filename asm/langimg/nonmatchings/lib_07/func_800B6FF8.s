nonmatching func_800B6FF8, 0xFC

glabel func_800B6FF8
    /* A5808 800B6FF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A580C 800B6FFC 1000B0AF */  sw         $s0, 0x10($sp)
    /* A5810 800B7000 21808000 */  addu       $s0, $a0, $zero
    /* A5814 800B7004 00260400 */  sll        $a0, $a0, 24
    /* A5818 800B7008 03260400 */  sra        $a0, $a0, 24
    /* A581C 800B700C 09000224 */  addiu      $v0, $zero, 0x9
    /* A5820 800B7010 09008210 */  beq        $a0, $v0, .L800B7038
    /* A5824 800B7014 1400BFAF */   sw        $ra, 0x14($sp)
    /* A5828 800B7018 0A000224 */  addiu      $v0, $zero, 0xA
    /* A582C 800B701C 10008214 */  bne        $a0, $v0, .L800B7060
    /* A5830 800B7020 FF000232 */   andi      $v0, $s0, 0xFF
    /* A5834 800B7024 FEDB020C */  jal        func_800B6FF8
    /* A5838 800B7028 0D000424 */   addiu     $a0, $zero, 0xD
    /* A583C 800B702C 0C80013C */  lui        $at, %hi(D_800C46E0)
    /* A5840 800B7030 25DC0208 */  j          .L800B7094
    /* A5844 800B7034 E04620AC */   sw        $zero, %lo(D_800C46E0)($at)
  .L800B7038:
    /* A5848 800B7038 FEDB020C */  jal        func_800B6FF8
    /* A584C 800B703C 20000424 */   addiu     $a0, $zero, 0x20
    /* A5850 800B7040 0C80023C */  lui        $v0, %hi(D_800C46E0)
    /* A5854 800B7044 E046428C */  lw         $v0, %lo(D_800C46E0)($v0)
    /* A5858 800B7048 00000000 */  nop
    /* A585C 800B704C 07004230 */  andi       $v0, $v0, 0x7
    /* A5860 800B7050 24004010 */  beqz       $v0, .L800B70E4
    /* A5864 800B7054 00000000 */   nop
    /* A5868 800B7058 0EDC0208 */  j          .L800B7038
    /* A586C 800B705C 00000000 */   nop
  .L800B7060:
    /* A5870 800B7060 0C80013C */  lui        $at, %hi(D_800C4631)
    /* A5874 800B7064 21082200 */  addu       $at, $at, $v0
    /* A5878 800B7068 31462280 */  lb         $v0, %lo(D_800C4631)($at)
    /* A587C 800B706C 00000000 */  nop
    /* A5880 800B7070 97004230 */  andi       $v0, $v0, 0x97
    /* A5884 800B7074 07004010 */  beqz       $v0, .L800B7094
    /* A5888 800B7078 00000000 */   nop
    /* A588C 800B707C 0C80023C */  lui        $v0, %hi(D_800C46E0)
    /* A5890 800B7080 E046428C */  lw         $v0, %lo(D_800C46E0)($v0)
    /* A5894 800B7084 00000000 */  nop
    /* A5898 800B7088 01004224 */  addiu      $v0, $v0, 0x1
    /* A589C 800B708C 0C80013C */  lui        $at, %hi(D_800C46E0)
    /* A58A0 800B7090 E04622AC */  sw         $v0, %lo(D_800C46E0)($at)
  .L800B7094:
    /* A58A4 800B7094 0C80063C */  lui        $a2, %hi(D_800C46E4)
    /* A58A8 800B7098 E446C68C */  lw         $a2, %lo(D_800C46E4)($a2)
    /* A58AC 800B709C 00000000 */  nop
    /* A58B0 800B70A0 2000C228 */  slti       $v0, $a2, 0x20
    /* A58B4 800B70A4 07004014 */  bnez       $v0, .L800B70C4
    /* A58B8 800B70A8 00000000 */   nop
    /* A58BC 800B70AC 0E80053C */  lui        $a1, %hi(D_800DE790)
    /* A58C0 800B70B0 90E7A524 */  addiu      $a1, $a1, %lo(D_800DE790)
    /* A58C4 800B70B4 F8D6020C */  jal        func_800B5BE0
    /* A58C8 800B70B8 01000424 */   addiu     $a0, $zero, 0x1
    /* A58CC 800B70BC 0C80013C */  lui        $at, %hi(D_800C46E4)
    /* A58D0 800B70C0 E44620AC */  sw         $zero, %lo(D_800C46E4)($at)
  .L800B70C4:
    /* A58D4 800B70C4 0C80033C */  lui        $v1, %hi(D_800C46E4)
    /* A58D8 800B70C8 E4466324 */  addiu      $v1, $v1, %lo(D_800C46E4)
    /* A58DC 800B70CC 0000628C */  lw         $v0, 0x0($v1)
    /* A58E0 800B70D0 0E80013C */  lui        $at, %hi(D_800DE790)
    /* A58E4 800B70D4 21082200 */  addu       $at, $at, $v0
    /* A58E8 800B70D8 90E730A0 */  sb         $s0, %lo(D_800DE790)($at)
    /* A58EC 800B70DC 01004224 */  addiu      $v0, $v0, 0x1
    /* A58F0 800B70E0 000062AC */  sw         $v0, 0x0($v1)
  .L800B70E4:
    /* A58F4 800B70E4 1400BF8F */  lw         $ra, 0x14($sp)
    /* A58F8 800B70E8 1000B08F */  lw         $s0, 0x10($sp)
    /* A58FC 800B70EC 0800E003 */  jr         $ra
    /* A5900 800B70F0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B6FF8
