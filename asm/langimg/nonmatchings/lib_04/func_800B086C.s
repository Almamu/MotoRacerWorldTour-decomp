nonmatching func_800B086C, 0x16C

glabel func_800B086C
    /* 9F07C 800B086C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9F080 800B0870 0C80033C */  lui        $v1, %hi(D_800C3CD8)
    /* 9F084 800B0874 D83C638C */  lw         $v1, %lo(D_800C3CD8)($v1)
    /* 9F088 800B0878 01000224 */  addiu      $v0, $zero, 0x1
    /* 9F08C 800B087C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9F090 800B0880 0C80013C */  lui        $at, %hi(D_800C3CF0)
    /* 9F094 800B0884 09006010 */  beqz       $v1, .L800B08AC
    /* 9F098 800B0888 F03C22AC */   sw        $v0, %lo(D_800C3CF0)($at)
    /* 9F09C 800B088C 0E80043C */  lui        $a0, %hi(D_800DE430)
    /* 9F0A0 800B0890 30E48424 */  addiu      $a0, $a0, %lo(D_800DE430)
    /* 9F0A4 800B0894 0000838C */  lw         $v1, 0x0($a0)
    /* 9F0A8 800B0898 00000000 */  nop
    /* 9F0AC 800B089C 96006228 */  slti       $v0, $v1, 0x96
    /* 9F0B0 800B08A0 02004010 */  beqz       $v0, .L800B08AC
    /* 9F0B4 800B08A4 01006224 */   addiu     $v0, $v1, 0x1
    /* 9F0B8 800B08A8 000082AC */  sw         $v0, 0x0($a0)
  .L800B08AC:
    /* 9F0BC 800B08AC 0C80023C */  lui        $v0, %hi(D_800C3CDC)
    /* 9F0C0 800B08B0 DC3C428C */  lw         $v0, %lo(D_800C3CDC)($v0)
    /* 9F0C4 800B08B4 00000000 */  nop
    /* 9F0C8 800B08B8 09004014 */  bnez       $v0, .L800B08E0
    /* 9F0CC 800B08BC 00000000 */   nop
    /* 9F0D0 800B08C0 0E80043C */  lui        $a0, %hi(D_800DE434)
    /* 9F0D4 800B08C4 34E48424 */  addiu      $a0, $a0, %lo(D_800DE434)
    /* 9F0D8 800B08C8 0000838C */  lw         $v1, 0x0($a0)
    /* 9F0DC 800B08CC 00000000 */  nop
    /* 9F0E0 800B08D0 96006228 */  slti       $v0, $v1, 0x96
    /* 9F0E4 800B08D4 02004010 */  beqz       $v0, .L800B08E0
    /* 9F0E8 800B08D8 01006224 */   addiu     $v0, $v1, 0x1
    /* 9F0EC 800B08DC 000082AC */  sw         $v0, 0x0($a0)
  .L800B08E0:
    /* 9F0F0 800B08E0 0C80023C */  lui        $v0, %hi(D_800C3CC0)
    /* 9F0F4 800B08E4 C03C428C */  lw         $v0, %lo(D_800C3CC0)($v0)
    /* 9F0F8 800B08E8 00000000 */  nop
    /* 9F0FC 800B08EC 36004010 */  beqz       $v0, .L800B09C8
    /* 9F100 800B08F0 00000000 */   nop
    /* 9F104 800B08F4 0C80033C */  lui        $v1, %hi(D_800C3CD8)
    /* 9F108 800B08F8 D83C638C */  lw         $v1, %lo(D_800C3CD8)($v1)
    /* 9F10C 800B08FC 0C80023C */  lui        $v0, %hi(D_800C3CDC)
    /* 9F110 800B0900 DC3C428C */  lw         $v0, %lo(D_800C3CDC)($v0)
    /* 9F114 800B0904 00000000 */  nop
    /* 9F118 800B0908 2A104300 */  slt        $v0, $v0, $v1
    /* 9F11C 800B090C 2E004014 */  bnez       $v0, .L800B09C8
    /* 9F120 800B0910 00210300 */   sll       $a0, $v1, 4
    /* 9F124 800B0914 23208300 */  subu       $a0, $a0, $v1
    /* 9F128 800B0918 0C80023C */  lui        $v0, %hi(D_800C3CBC)
    /* 9F12C 800B091C BC3C428C */  lw         $v0, %lo(D_800C3CBC)($v0)
    /* 9F130 800B0920 00210400 */  sll        $a0, $a0, 4
    /* 9F134 800B0924 0C80013C */  lui        $at, %hi(D_800C3CCC)
    /* 9F138 800B0928 CC3C20AC */  sw         $zero, %lo(D_800C3CCC)($at)
    /* 9F13C 800B092C 0C80013C */  lui        $at, %hi(D_800C3CC8)
    /* 9F140 800B0930 C83C23AC */  sw         $v1, %lo(D_800C3CC8)($at)
    /* 9F144 800B0934 BAC2020C */  jal        _padInitSioMode
    /* 9F148 800B0938 21204400 */   addu      $a0, $v0, $a0
    /* 9F14C 800B093C 06004014 */  bnez       $v0, .L800B0958
    /* 9F150 800B0940 00000000 */   nop
    /* 9F154 800B0944 0C80023C */  lui        $v0, %hi(D_800C3C88)
    /* 9F158 800B0948 883C428C */  lw         $v0, %lo(D_800C3C88)($v0)
    /* 9F15C 800B094C 00000000 */  nop
    /* 9F160 800B0950 09F84000 */  jalr       $v0
    /* 9F164 800B0954 FFFF0434 */   ori       $a0, $zero, 0xFFFF
  .L800B0958:
    /* 9F168 800B0958 0C80033C */  lui        $v1, %hi(D_800C3CC8)
    /* 9F16C 800B095C C83C638C */  lw         $v1, %lo(D_800C3CC8)($v1)
    /* 9F170 800B0960 0C80023C */  lui        $v0, %hi(D_800C3CDC)
    /* 9F174 800B0964 DC3C428C */  lw         $v0, %lo(D_800C3CDC)($v0)
    /* 9F178 800B0968 0C80013C */  lui        $at, %hi(D_800C3CD0)
    /* 9F17C 800B096C D03C20AC */  sw         $zero, %lo(D_800C3CD0)($at)
    /* 9F180 800B0970 2A104300 */  slt        $v0, $v0, $v1
    /* 9F184 800B0974 10004014 */  bnez       $v0, .L800B09B8
    /* 9F188 800B0978 00000000 */   nop
  .L800B097C:
    /* 9F18C 800B097C 00210300 */  sll        $a0, $v1, 4
    /* 9F190 800B0980 23208300 */  subu       $a0, $a0, $v1
    /* 9F194 800B0984 0C80023C */  lui        $v0, %hi(D_800C3CBC)
    /* 9F198 800B0988 BC3C428C */  lw         $v0, %lo(D_800C3CBC)($v0)
    /* 9F19C 800B098C 00210400 */  sll        $a0, $a0, 4
    /* 9F1A0 800B0990 87C3020C */  jal        func_800B0E1C
    /* 9F1A4 800B0994 21204400 */   addu      $a0, $v0, $a0
    /* 9F1A8 800B0998 0C80033C */  lui        $v1, %hi(D_800C3CC8)
    /* 9F1AC 800B099C C83C638C */  lw         $v1, %lo(D_800C3CC8)($v1)
    /* 9F1B0 800B09A0 0C80023C */  lui        $v0, %hi(D_800C3CDC)
    /* 9F1B4 800B09A4 DC3C428C */  lw         $v0, %lo(D_800C3CDC)($v0)
    /* 9F1B8 800B09A8 00000000 */  nop
    /* 9F1BC 800B09AC 2A104300 */  slt        $v0, $v0, $v1
    /* 9F1C0 800B09B0 F2FF4010 */  beqz       $v0, .L800B097C
    /* 9F1C4 800B09B4 00000000 */   nop
  .L800B09B8:
    /* 9F1C8 800B09B8 0C80033C */  lui        $v1, %hi(D_800C3CEC)
    /* 9F1CC 800B09BC EC3C638C */  lw         $v1, %lo(D_800C3CEC)($v1)
    /* 9F1D0 800B09C0 88000224 */  addiu      $v0, $zero, 0x88
    /* 9F1D4 800B09C4 0E0062A4 */  sh         $v0, 0xE($v1)
  .L800B09C8:
    /* 9F1D8 800B09C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9F1DC 800B09CC 21100000 */  addu       $v0, $zero, $zero
    /* 9F1E0 800B09D0 0800E003 */  jr         $ra
    /* 9F1E4 800B09D4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B086C
