nonmatching func_80133AE4, 0x1E8

glabel func_80133AE4
    /* FB0 80133AE4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* FB4 80133AE8 3000B4AF */  sw         $s4, 0x30($sp)
    /* FB8 80133AEC 21A08000 */  addu       $s4, $a0, $zero
    /* FBC 80133AF0 03000424 */  addiu      $a0, $zero, 0x3
    /* FC0 80133AF4 2400B1AF */  sw         $s1, 0x24($sp)
    /* FC4 80133AF8 2188A000 */  addu       $s1, $a1, $zero
    /* FC8 80133AFC 3400BFAF */  sw         $ra, 0x34($sp)
    /* FCC 80133B00 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* FD0 80133B04 2800B2AF */  sw         $s2, 0x28($sp)
    /* FD4 80133B08 27F0040C */  jal        ResetGraph
    /* FD8 80133B0C 2000B0AF */   sw        $s0, 0x20($sp)
    /* FDC 80133B10 84F0040C */  jal        SetGraphDebug
    /* FE0 80133B14 21200000 */   addu      $a0, $zero, $zero
    /* FE4 80133B18 1580103C */  lui        $s0, %hi(D_8014D260)
    /* FE8 80133B1C 60D21026 */  addiu      $s0, $s0, %lo(D_8014D260)
    /* FEC 80133B20 21200002 */  addu       $a0, $s0, $zero
    /* FF0 80133B24 21280000 */  addu       $a1, $zero, $zero
    /* FF4 80133B28 21300000 */  addu       $a2, $zero, $zero
    /* FF8 80133B2C 21388002 */  addu       $a3, $s4, $zero
    /* FFC 80133B30 C5F9040C */  jal        SetDefDispEnv
    /* 1000 80133B34 1000B1AF */   sw        $s1, 0x10($sp)
    /* 1004 80133B38 14000426 */  addiu      $a0, $s0, 0x14
    /* 1008 80133B3C 21280000 */  addu       $a1, $zero, $zero
    /* 100C 80133B40 00010624 */  addiu      $a2, $zero, 0x100
    /* 1010 80133B44 21388002 */  addu       $a3, $s4, $zero
    /* 1014 80133B48 C5F9040C */  jal        SetDefDispEnv
    /* 1018 80133B4C 1000B1AF */   sw        $s1, 0x10($sp)
    /* 101C 80133B50 28EF040C */  jal        SetVideoMode
    /* 1020 80133B54 01000424 */   addiu     $a0, $zero, 0x1
    /* 1024 80133B58 1580123C */  lui        $s2, %hi(D_8014D288)
    /* 1028 80133B5C 88D25226 */  addiu      $s2, $s2, %lo(D_8014D288)
    /* 102C 80133B60 21204002 */  addu       $a0, $s2, $zero
    /* 1030 80133B64 21280000 */  addu       $a1, $zero, $zero
    /* 1034 80133B68 21300000 */  addu       $a2, $zero, $zero
    /* 1038 80133B6C 21388002 */  addu       $a3, $s4, $zero
    /* 103C 80133B70 0E000224 */  addiu      $v0, $zero, 0xE
    /* 1040 80133B74 1C0000A6 */  sh         $zero, 0x1C($s0)
    /* 1044 80133B78 080000A6 */  sh         $zero, 0x8($s0)
    /* 1048 80133B7C 1E0002A6 */  sh         $v0, 0x1E($s0)
    /* 104C 80133B80 0A0002A6 */  sh         $v0, 0xA($s0)
    /* 1050 80133B84 95F9040C */  jal        SetDefDrawEnv
    /* 1054 80133B88 1000B1AF */   sw        $s1, 0x10($sp)
    /* 1058 80133B8C 5C005326 */  addiu      $s3, $s2, 0x5C
    /* 105C 80133B90 21206002 */  addu       $a0, $s3, $zero
    /* 1060 80133B94 21280000 */  addu       $a1, $zero, $zero
    /* 1064 80133B98 00010624 */  addiu      $a2, $zero, 0x100
    /* 1068 80133B9C 21388002 */  addu       $a3, $s4, $zero
    /* 106C 80133BA0 95F9040C */  jal        SetDefDrawEnv
    /* 1070 80133BA4 1000B1AF */   sw        $s1, 0x10($sp)
    /* 1074 80133BA8 21200000 */  addu       $a0, $zero, $zero
    /* 1078 80133BAC 00011124 */  addiu      $s1, $zero, 0x100
    /* 107C 80133BB0 01000224 */  addiu      $v0, $zero, 0x1
    /* 1080 80133BB4 200011A6 */  sh         $s1, 0x20($s0)
    /* 1084 80133BB8 0C0011A6 */  sh         $s1, 0xC($s0)
    /* 1088 80133BBC 220011A6 */  sh         $s1, 0x22($s0)
    /* 108C 80133BC0 0E0011A6 */  sh         $s1, 0xE($s0)
    /* 1090 80133BC4 740040A2 */  sb         $zero, 0x74($s2)
    /* 1094 80133BC8 180040A2 */  sb         $zero, 0x18($s2)
    /* 1098 80133BCC 720040A2 */  sb         $zero, 0x72($s2)
    /* 109C 80133BD0 160040A2 */  sb         $zero, 0x16($s2)
    /* 10A0 80133BD4 190040A2 */  sb         $zero, 0x19($s2)
    /* 10A4 80133BD8 1A0040A2 */  sb         $zero, 0x1A($s2)
    /* 10A8 80133BDC 1B0040A2 */  sb         $zero, 0x1B($s2)
    /* 10AC 80133BE0 190060A2 */  sb         $zero, 0x19($s3)
    /* 10B0 80133BE4 1A0060A2 */  sb         $zero, 0x1A($s3)
    /* 10B4 80133BE8 1B0060A2 */  sb         $zero, 0x1B($s3)
    /* 10B8 80133BEC E0011324 */  addiu      $s3, $zero, 0x1E0
    /* 10BC 80133BF0 110002A2 */  sb         $v0, 0x11($s0)
    /* 10C0 80133BF4 250002A2 */  sb         $v0, 0x25($s0)
    /* 10C4 80133BF8 1800A0A7 */  sh         $zero, 0x18($sp)
    /* 10C8 80133BFC 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* 10CC 80133C00 1C00B3A7 */  sh         $s3, 0x1C($sp)
    /* 10D0 80133C04 D9F0040C */  jal        DrawSync
    /* 10D4 80133C08 1E00B1A7 */   sh        $s1, 0x1E($sp)
    /* 10D8 80133C0C 1800A427 */  addiu      $a0, $sp, 0x18
    /* 10DC 80133C10 21280000 */  addu       $a1, $zero, $zero
    /* 10E0 80133C14 21300000 */  addu       $a2, $zero, $zero
    /* 10E4 80133C18 3AF1040C */  jal        ClearImage
    /* 10E8 80133C1C 21380000 */   addu      $a3, $zero, $zero
    /* 10EC 80133C20 D9F0040C */  jal        DrawSync
    /* 10F0 80133C24 21200000 */   addu      $a0, $zero, $zero
    /* 10F4 80133C28 21200000 */  addu       $a0, $zero, $zero
    /* 10F8 80133C2C 1800A0A7 */  sh         $zero, 0x18($sp)
    /* 10FC 80133C30 1A00B1A7 */  sh         $s1, 0x1A($sp)
    /* 1100 80133C34 1C00B3A7 */  sh         $s3, 0x1C($sp)
    /* 1104 80133C38 D9F0040C */  jal        DrawSync
    /* 1108 80133C3C 1E00B1A7 */   sh        $s1, 0x1E($sp)
    /* 110C 80133C40 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1110 80133C44 21280000 */  addu       $a1, $zero, $zero
    /* 1114 80133C48 21300000 */  addu       $a2, $zero, $zero
    /* 1118 80133C4C 3AF1040C */  jal        ClearImage
    /* 111C 80133C50 21380000 */   addu      $a3, $zero, $zero
    /* 1120 80133C54 D9F0040C */  jal        DrawSync
    /* 1124 80133C58 21200000 */   addu      $a0, $zero, $zero
    /* 1128 80133C5C 1580113C */  lui        $s1, %hi(D_8014D348)
    /* 112C 80133C60 48D3228E */  lw         $v0, %lo(D_8014D348)($s1)
    /* 1130 80133C64 00000000 */  nop
    /* 1134 80133C68 80200200 */  sll        $a0, $v0, 2
    /* 1138 80133C6C 21208200 */  addu       $a0, $a0, $v0
    /* 113C 80133C70 80200400 */  sll        $a0, $a0, 2
    /* 1140 80133C74 03F2040C */  jal        PutDispEnv
    /* 1144 80133C78 21209000 */   addu      $a0, $a0, $s0
    /* 1148 80133C7C 48D3238E */  lw         $v1, %lo(D_8014D348)($s1)
    /* 114C 80133C80 00000000 */  nop
    /* 1150 80133C84 01006338 */  xori       $v1, $v1, 0x1
    /* 1154 80133C88 40200300 */  sll        $a0, $v1, 1
    /* 1158 80133C8C 21208300 */  addu       $a0, $a0, $v1
    /* 115C 80133C90 C0200400 */  sll        $a0, $a0, 3
    /* 1160 80133C94 23208300 */  subu       $a0, $a0, $v1
    /* 1164 80133C98 80200400 */  sll        $a0, $a0, 2
    /* 1168 80133C9C D3F1040C */  jal        PutDrawEnv
    /* 116C 80133CA0 21209200 */   addu      $a0, $a0, $s2
    /* 1170 80133CA4 22EC040C */  jal        VSync
    /* 1174 80133CA8 21200000 */   addu      $a0, $zero, $zero
    /* 1178 80133CAC 3400BF8F */  lw         $ra, 0x34($sp)
    /* 117C 80133CB0 3000B48F */  lw         $s4, 0x30($sp)
    /* 1180 80133CB4 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 1184 80133CB8 2800B28F */  lw         $s2, 0x28($sp)
    /* 1188 80133CBC 2400B18F */  lw         $s1, 0x24($sp)
    /* 118C 80133CC0 2000B08F */  lw         $s0, 0x20($sp)
    /* 1190 80133CC4 0800E003 */  jr         $ra
    /* 1194 80133CC8 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_80133AE4
