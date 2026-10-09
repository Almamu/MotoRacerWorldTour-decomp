nonmatching func_800789C4, 0x70

glabel func_800789C4
    /* 671D4 800789C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 671D8 800789C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 671DC 800789CC 21808000 */  addu       $s0, $a0, $zero
    /* 671E0 800789D0 0D80023C */  lui        $v0, %hi(D_800C8884)
    /* 671E4 800789D4 84884224 */  addiu      $v0, $v0, %lo(D_800C8884)
    /* 671E8 800789D8 00080324 */  addiu      $v1, $zero, 0x800
    /* 671EC 800789DC 30000426 */  addiu      $a0, $s0, 0x30
    /* 671F0 800789E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 671F4 800789E4 680002AE */  sw         $v0, 0x68($s0)
    /* 671F8 800789E8 751E020C */  jal        func_800879D4
    /* 671FC 800789EC 2C0003AE */   sw        $v1, 0x2C($s0)
    /* 67200 800789F0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 67204 800789F4 21100002 */  addu       $v0, $s0, $zero
    /* 67208 800789F8 1C0000AE */  sw         $zero, 0x1C($s0)
    /* 6720C 800789FC 180000AE */  sw         $zero, 0x18($s0)
    /* 67210 80078A00 080000AE */  sw         $zero, 0x8($s0)
    /* 67214 80078A04 0C0000AE */  sw         $zero, 0xC($s0)
    /* 67218 80078A08 100000AE */  sw         $zero, 0x10($s0)
    /* 6721C 80078A0C 140000AE */  sw         $zero, 0x14($s0)
    /* 67220 80078A10 000000AE */  sw         $zero, 0x0($s0)
    /* 67224 80078A14 040000AE */  sw         $zero, 0x4($s0)
    /* 67228 80078A18 280000AE */  sw         $zero, 0x28($s0)
    /* 6722C 80078A1C 240000AE */  sw         $zero, 0x24($s0)
    /* 67230 80078A20 200000AE */  sw         $zero, 0x20($s0)
    /* 67234 80078A24 1000B08F */  lw         $s0, 0x10($sp)
    /* 67238 80078A28 804180AF */  sw         $zero, %gp_rel(D_800C8870)($gp)
    /* 6723C 80078A2C 0800E003 */  jr         $ra
    /* 67240 80078A30 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800789C4
