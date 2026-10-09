nonmatching func_8008D05C, 0x48

glabel func_8008D05C
    /* 7B86C 8008D05C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7B870 8008D060 3800A397 */  lhu        $v1, 0x38($sp)
    /* 7B874 8008D064 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 7B878 8008D068 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7B87C 8008D06C 0000C28C */  lw         $v0, 0x0($a2)
    /* 7B880 8008D070 21808000 */  addu       $s0, $a0, $zero
    /* 7B884 8008D074 180005AE */  sw         $a1, 0x18($s0)
    /* 7B888 8008D078 FFFFE530 */  andi       $a1, $a3, 0xFFFF
    /* 7B88C 8008D07C 080002AE */  sw         $v0, 0x8($s0)
    /* 7B890 8008D080 3000A697 */  lhu        $a2, 0x30($sp)
    /* 7B894 8008D084 3400A797 */  lhu        $a3, 0x34($sp)
    /* 7B898 8008D088 2934020C */  jal        func_8008D0A4
    /* 7B89C 8008D08C 1000A3AF */   sw        $v1, 0x10($sp)
    /* 7B8A0 8008D090 21100002 */  addu       $v0, $s0, $zero
    /* 7B8A4 8008D094 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 7B8A8 8008D098 1800B08F */  lw         $s0, 0x18($sp)
    /* 7B8AC 8008D09C 0800E003 */  jr         $ra
    /* 7B8B0 8008D0A0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8008D05C
