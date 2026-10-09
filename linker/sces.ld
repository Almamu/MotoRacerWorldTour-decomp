SECTIONS
{
    HIDDEN(__romPos = 0);
    _gp = 0x801C0A54;
    header_ROM_START = __romPos;
    header_VRAM = ADDR(.header);
    .header : AT(header_ROM_START) SUBALIGN(4)
    {
        FILL(0x00000000);
        header_DATA_START = .;
        build/sces/asm/sces/header.o(.data);
        header_DATA_END = .;
        header_DATA_SIZE = ABSOLUTE(header_DATA_END - header_DATA_START);
    }
    __romPos += SIZEOF(.header);
    header_ROM_END = __romPos;
    header_VRAM_END = .;

    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80133334 : AT(main_ROM_START) SUBALIGN(4)
    {
        FILL(0x00000000);
        main_TEXT_START = .;
        build/sces/src/sces/chunk_00.o(.text);
        build/sces/src/sces/chunk_01.o(.text);
        build/sces/asm/sces/vlc.o(.text);
        build/sces/lib/psyq/sces/lib_00.o(.text);
        build/sces/lib/psyq/sces/lib_01.o(.text);
        build/sces/lib/psyq/sces/lib_02.o(.text);
        build/sces/lib/psyq/sces/lib_03.o(.text);
        build/sces/lib/psyq/sces/lib_04.o(.text);
        build/sces/lib/psyq/sces/lib_05.o(.text);
        build/sces/lib/psyq/sces/lib_06.o(.text);
        build/sces/lib/psyq/sces/lib_07.o(.text);
        build/sces/lib/psyq/sces/lib_08.o(.text);
        build/sces/lib/psyq/sces/lib_09.o(.text);
        build/sces/lib/psyq/sces/lib_10.o(.text);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_RODATA_START = .;
        build/sces/src/sces/chunk_00.o(.rodata);
        build/sces/src/sces/chunk_01.o(.rodata);
        build/sces/asm/sces/vlc.o(.rodata);
        build/sces/lib/psyq/sces/lib_00.o(.rodata);
        build/sces/lib/psyq/sces/lib_01.o(.rodata);
        build/sces/lib/psyq/sces/lib_02.o(.rodata);
        build/sces/lib/psyq/sces/lib_03.o(.rodata);
        build/sces/lib/psyq/sces/lib_04.o(.rodata);
        build/sces/lib/psyq/sces/lib_05.o(.rodata);
        build/sces/lib/psyq/sces/lib_06.o(.rodata);
        build/sces/lib/psyq/sces/lib_07.o(.rodata);
        build/sces/lib/psyq/sces/lib_08.o(.rodata);
        build/sces/lib/psyq/sces/lib_09.o(.rodata);
        build/sces/lib/psyq/sces/lib_10.o(.rodata);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
        main_DATA_START = .;
        build/sces/src/sces/chunk_00.o(.data);
        build/sces/src/sces/chunk_01.o(.data);
        build/sces/asm/sces/vlc.o(.data);
        build/sces/lib/psyq/sces/lib_00.o(.data);
        build/sces/lib/psyq/sces/lib_01.o(.data);
        build/sces/lib/psyq/sces/lib_02.o(.data);
        build/sces/lib/psyq/sces/lib_03.o(.data);
        build/sces/lib/psyq/sces/lib_04.o(.data);
        build/sces/lib/psyq/sces/lib_05.o(.data);
        build/sces/lib/psyq/sces/lib_06.o(.data);
        build/sces/lib/psyq/sces/lib_07.o(.data);
        build/sces/lib/psyq/sces/lib_08.o(.data);
        build/sces/lib/psyq/sces/lib_09.o(.data);
        build/sces/lib/psyq/sces/lib_10.o(.data);
        build/sces/asm/sces/data/data.data.o(.data);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(4)
    {
        FILL(0x00000000);
        main_BSS_START = .;
        build/sces/src/sces/chunk_00.o(.bss);
        build/sces/src/sces/chunk_01.o(.bss);
        build/sces/asm/sces/vlc.o(.bss);
        build/sces/lib/psyq/sces/lib_00.o(.bss);
        build/sces/lib/psyq/sces/lib_01.o(.bss);
        build/sces/lib/psyq/sces/lib_02.o(.bss);
        build/sces/lib/psyq/sces/lib_03.o(.bss);
        build/sces/lib/psyq/sces/lib_04.o(.bss);
        build/sces/lib/psyq/sces/lib_05.o(.bss);
        build/sces/lib/psyq/sces/lib_06.o(.bss);
        build/sces/lib/psyq/sces/lib_07.o(.bss);
        build/sces/lib/psyq/sces/lib_08.o(.bss);
        build/sces/lib/psyq/sces/lib_09.o(.bss);
        build/sces/lib/psyq/sces/lib_10.o(.bss);
        build/sces/asm/sces/data/bss.bss.o(.bss);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
