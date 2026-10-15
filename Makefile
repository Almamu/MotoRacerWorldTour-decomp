# Matching decompilation build (see docs/decomp.md).
#
#   make setup    fetch the compilers (GCC 2.95.2 and 2.91.66 for the PlayStation) and maspsx
#   make split    re-run splat after config changes (needs the originals in extracted/)
#   make          build and compare against the originals
#   make objects  just compile src/ and lib/ (no linking)
#   make sdk      also link Sony's PsyQ objects in place of the library asm they
#                 match, and compare that (needs tools/fetch_psyq.sh first)

.DEFAULT_GOAL := compare

# A failing stage of a compile pipeline fails the rule.
SHELL := bash
.SHELLFLAGS := -o pipefail -c

#### Tools ####

# The binutils prefix: Nix's, or Debian/Ubuntu's (binutils-mipsel-linux-gnu).
CROSS    ?= $(shell command -v mipsel-unknown-linux-gnu-as >/dev/null && echo mipsel-unknown-linux-gnu- || echo mipsel-linux-gnu-)
AS       := $(CROSS)as
LD       := $(CROSS)ld
OBJCOPY  := $(CROSS)objcopy
PYTHON   := python3
MASPSX   := $(PYTHON) tools/maspsx_plus.py
SPLAT    := $(PYTHON) -m splat split

# Each executable has its own compiler (docs/decomp.md): the game GCC 2.95.2,
# the boot executable GCC 2.91.66 (egcs 1.1.2), both PlayStation builds.
langimg_GCC := 2.95.2-psx
sces_GCC    := 2.91.66-psx
gcc_dir      = tools/gcc-$(1)

# Small data in $gp-relative sections: up to 8 bytes in the game, none in
# the boot executable (it never uses $gp).
langimg_G   := 8
sces_G      := 0

# Per-target compiler flags. The boot executable's compiler had signed plain
# char (the MIPS default); decompals' builds default to unsigned.
langimg_CFLAGS := -mno-split-addresses
sces_CFLAGS    := -fsigned-char

# Libraries (lib/<name>/<target>/, docs/libraries.md) built with another
# compiler or flags than the rest of their target (a setting that's set,
# even to nothing, replaces the target's): LIB_<name>_GCC, LIB_<name>_CFLAGS,
# LIB_<name>_G (-G), and maspsx's flags from LIB_<name>_MASPSXFLAGS.
LIBS             := $(notdir $(wildcard lib/*))
# The game's sound engine: GCC 2.91.66, divisions without checks.
LIB_sound_GCC    := 2.91.66-psx
LIB_sound_CFLAGS := -mno-split-addresses
LIB_sound_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks
# The game's CD audio: GCC 2.91.66, split addresses, no $gp.
LIB_cdaudio_GCC    := 2.91.66-psx
LIB_cdaudio_CFLAGS :=
LIB_cdaudio_G      := 0

# A chunk built unlike the rest of its library (another source file with
# other options): <target>.<chunk>_GCC, _CFLAGS, _G and _MASPSXFLAGS replace
# its library's or target's, the same way.
langimg.chunk_01_G := 0
# The game's code built with GCC 2.91.66 (its classes are 2.95.2's).
langimg.chunk_02_GCC  := 2.91.66-psx
langimg.chunk_02_CFLAGS :=
langimg.chunk_02_MASPSXFLAGS = $(MASPSXFLAGS) --small-externs=
langimg.chunk_02b_GCC := 2.91.66-psx
langimg.chunk_02b_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C493C,D_800C4944
langimg.chunk_03_GCC  := 2.91.66-psx
langimg.chunk_03_CFLAGS :=
langimg.chunk_03_MASPSXFLAGS = $(MASPSXFLAGS) --small-externs=D_800C4988,D_800CA778
langimg.chunk_04_GCC  := 2.91.66-psx
langimg.chunk_04_CFLAGS :=
langimg.chunk_04_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_05_GCC  := 2.91.66-psx
langimg.chunk_05_CFLAGS :=
langimg.chunk_05_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_06_GCC  := 2.91.66-psx
langimg.chunk_06_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C4D14,D_800CA7D0
langimg.chunk_07_GCC  := 2.91.66-psx
langimg.chunk_07_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800CA960
langimg.chunk_08_GCC  := 2.91.66-psx
langimg.chunk_08_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_09_GCC  := 2.91.66-psx
langimg.chunk_09_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_10_GCC  := 2.91.66-psx
langimg.chunk_10_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_11_GCC  := 2.91.66-psx
langimg.chunk_11_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_12_GCC  := 2.91.66-psx
langimg.chunk_12_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_23_GCC  := 2.91.66-psx
langimg.chunk_23_CFLAGS :=
langimg.chunk_23_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800CABB7
langimg.chunk_45_GCC  := 2.91.66-psx
langimg.chunk_45_CFLAGS :=
langimg.chunk_45_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C7764,D_800C7F28,D_800C7F2C,D_800C7F2D,D_800C7F2E,D_800CB484,D_800CB490,D_800CB5C8,D_800CB5D0,D_800CB5D4,D_800CB84C
langimg.chunk_66_GCC  := 2.91.66-psx
langimg.chunk_66_CFLAGS :=
langimg.chunk_66_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C8D54,D_800C8D94,D_800CBE80,D_800CBE84,D_800CBE88
langimg.chunk_72_GCC  := 2.91.66-psx
langimg.chunk_72_CFLAGS :=
langimg.chunk_72_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C9F14,D_800C9F18,D_800C9F30,D_800C9F34
langimg.chunk_71_GCC  := 2.91.66-psx
langimg.chunk_71_CFLAGS :=
langimg.chunk_71_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C9CE0,D_800C9CE4,D_800C9CE8,D_800C9CE9,D_800C9F00,D_800CBF18,D_800CBF20
langimg.chunk_60_GCC  := 2.91.66-psx
langimg.chunk_60_CFLAGS :=
langimg.chunk_60_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C8C6C,D_800C8C70,D_800C8C74,D_800C8C78,D_800C8D2C,D_800C8D30,D_800C8D31
langimg.chunk_51_GCC  := 2.91.66-psx
langimg.chunk_51_CFLAGS :=
langimg.chunk_51_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C885C,D_800C885D,D_800C8860,D_800C8861,D_800C8862,D_800C8868,D_800C8870,D_800CBC90
langimg.chunk_44_GCC  := 2.91.66-psx
langimg.chunk_44_CFLAGS :=
langimg.chunk_44_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800CB484
langimg.chunk_68_GCC  := 2.91.66-psx
langimg.chunk_68_CFLAGS :=
langimg.chunk_68_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_70_GCC  := 2.91.66-psx
langimg.chunk_70_CFLAGS :=
langimg.chunk_70_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C935C,D_800C9360,D_800C9C04,D_800CBE98
langimg.chunk_74_GCC  := 2.91.66-psx
langimg.chunk_74_CFLAGS :=
langimg.chunk_74_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_47_GCC  := 2.91.66-psx
langimg.chunk_47_CFLAGS :=
langimg.chunk_47_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C7F2C,D_800C7F2D,D_800C7F2E,D_800C8388,D_800CB5D8,D_800CB5DC
langimg.chunk_46_GCC  := 2.91.66-psx
langimg.chunk_46_CFLAGS :=
langimg.chunk_46_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C7F28,D_800C7F90,D_800CB5D0,D_800CB84C
langimg.chunk_25_GCC  := 2.91.66-psx
langimg.chunk_25_CFLAGS :=
langimg.chunk_25_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_56_GCC  := 2.91.66-psx
langimg.chunk_56_CFLAGS :=
langimg.chunk_56_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C89F4,D_800C89F8,D_800CBD48,D_800CBD58,D_800CBD5C,D_800CBD60,D_800CBD64
langimg.chunk_31_GCC  := 2.91.66-psx
langimg.chunk_31_CFLAGS :=
langimg.chunk_31_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_39_GCC  := 2.91.66-psx
langimg.chunk_39_CFLAGS :=
langimg.chunk_39_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C75F6,D_800C75F7,D_800CB410
langimg.chunk_29_GCC  := 2.91.66-psx
langimg.chunk_29_CFLAGS :=
langimg.chunk_29_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800CB2C0,D_800CB2C4,D_800CB2C8,D_800CB2CC,D_800CB2D0,D_800CB2D8,D_800CB2DC,D_800CB2E0,D_800CB2E4,D_800CB2F4,D_800CB2F8
langimg.chunk_52_GCC  := 2.91.66-psx
langimg.chunk_52_CFLAGS :=
langimg.chunk_52_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_41_GCC  := 2.91.66-psx
langimg.chunk_41_CFLAGS :=
langimg.chunk_41_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800CB428,D_800CB42C,D_800CB430,D_800CB434,D_800CB438,D_800CB43C,D_800CB440,D_800CB444,D_800CB448,D_800CB44C,D_800CB450,D_800CB454,D_800CB458,D_800CB45C,D_800CB460,D_800CB464,D_800CB468,D_800CB46C,D_800CB470,D_800CB474
langimg.chunk_67_GCC  := 2.91.66-psx
langimg.chunk_67_CFLAGS :=
langimg.chunk_67_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_49_GCC  := 2.91.66-psx
langimg.chunk_49_CFLAGS :=
langimg.chunk_49_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800CB870,D_800CB874,D_800CB878,D_800CB880,D_800CB884,D_800CB888
langimg.chunk_40_GCC  := 2.91.66-psx
langimg.chunk_40_CFLAGS :=
langimg.chunk_40_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800CB418,D_800CB420
langimg.chunk_73_GCC  := 2.91.66-psx
langimg.chunk_73_CFLAGS :=
langimg.chunk_73_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_58_GCC  := 2.91.66-psx
langimg.chunk_58_CFLAGS :=
langimg.chunk_58_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C8BAC,D_800CBD30,D_800CBD34,D_800CBD3C,D_800CBD44
langimg.chunk_69_GCC  := 2.91.66-psx
langimg.chunk_69_CFLAGS :=
langimg.chunk_69_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C94C4
langimg.chunk_61_GCC  := 2.91.66-psx
langimg.chunk_61_CFLAGS :=
langimg.chunk_61_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800CBDC8,D_800CBDCA,D_800CBDCC,D_800CBDD0,D_800CBDD4,D_800CBDD8,D_800CBDDC,D_800CBDE0,D_800CBDE4,D_800CBDE8,D_800CBDEC,D_800CBDF0,D_800CBDF4,D_800CBDF8,D_800CBDFC,D_800CBE00,D_800CBE08,D_800CBE0C,D_800CBE10,D_800CBE18,D_800CBE1C,D_800CBE20,D_800CBE28,D_800CBE2C,D_800CBE30,D_800CBE38,D_800CBE3C,D_800CBE40,D_800CBE48,D_800CBE4C,D_800CBE50
langimg.chunk_55_GCC  := 2.91.66-psx
langimg.chunk_55_CFLAGS :=
langimg.chunk_55_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C89D0,D_800C89D4,D_800C89D5,D_800C89D8,D_800C89D9,D_800C89DA,D_800C89DC,D_800C89E0,D_800C89E4,D_800C89EC,D_800C89F0,D_800CBC98,D_800CBCD8,D_800CBCDA,D_800CBCDC,D_800CBCDE
langimg.chunk_22_GCC  := 2.91.66-psx
langimg.chunk_22_CFLAGS :=
langimg.chunk_22_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_57_GCC  := 2.91.66-psx
langimg.chunk_57_CFLAGS :=
langimg.chunk_57_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800CBD24,D_800CBD26,D_800CBD28,D_800CBD29,D_800CBD30,D_800CBD3C,D_800CBD40,D_800CBD48,D_800CBD4A,D_800CBD4C,D_800CBD4E,D_800CBD58,D_800CBD5C
langimg.chunk_50_GCC  := 2.91.66-psx
langimg.chunk_50_CFLAGS :=
langimg.chunk_50_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_28_GCC  := 2.91.66-psx
langimg.chunk_28_CFLAGS :=
langimg.chunk_28_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C5E2C,D_800CAFA8,D_800CAFAC,D_800CB1BC,D_800CB2C0
langimg.chunk_19_GCC  := 2.91.66-psx
langimg.chunk_19_CFLAGS :=
langimg.chunk_19_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_59_GCC  := 2.91.66-psx
langimg.chunk_59_CFLAGS :=
langimg.chunk_59_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=
langimg.chunk_27_GCC  := 2.91.66-psx
langimg.chunk_27_CFLAGS :=
langimg.chunk_27_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C5868
langimg.chunk_26_GCC  := 2.91.66-psx
langimg.chunk_26_CFLAGS :=
langimg.chunk_26_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800CAE60,D_800CAE74,D_800CAE80,D_800CAE84,D_800CAE88
langimg.chunk_21_GCC  := 2.91.66-psx
langimg.chunk_21_CFLAGS :=
langimg.chunk_21_MASPSXFLAGS = $(MASPSXFLAGS) --div-no-checks --small-externs=D_800C4D88,D_800C4D98,D_800C4D9C
CHUNK_SETTINGS := langimg.chunk_01 langimg.chunk_02 langimg.chunk_02b langimg.chunk_03 langimg.chunk_04 langimg.chunk_05 langimg.chunk_06 langimg.chunk_07 langimg.chunk_08 langimg.chunk_09 langimg.chunk_10 langimg.chunk_11 langimg.chunk_12 langimg.chunk_23 langimg.chunk_45 langimg.chunk_66 langimg.chunk_72 langimg.chunk_71 langimg.chunk_60 langimg.chunk_51 langimg.chunk_44 langimg.chunk_68 langimg.chunk_70 langimg.chunk_74 langimg.chunk_47 langimg.chunk_46 langimg.chunk_25 langimg.chunk_56 langimg.chunk_31 langimg.chunk_39 langimg.chunk_29 langimg.chunk_52 langimg.chunk_41 langimg.chunk_67 langimg.chunk_49 langimg.chunk_40 langimg.chunk_73 langimg.chunk_58 langimg.chunk_69 langimg.chunk_61 langimg.chunk_55 langimg.chunk_22 langimg.chunk_57 langimg.chunk_50 langimg.chunk_28 langimg.chunk_19 langimg.chunk_59 langimg.chunk_27 langimg.chunk_26 langimg.chunk_21

# -O2; the C++ has no exceptions and no RTTI.
CC1FLAGS    := -O2 -quiet
CXXFLAGS    := -fno-exceptions -fno-rtti
CPPFLAGS    := -nostdinc -D__GNUC__=2 -Dmips -D__mips__ -I include -I src $(patsubst %,-I %,$(wildcard lib/*/include))
ifeq ($(NON_MATCHING),1)
CPPFLAGS    += -DNON_MATCHING
endif
MASPSXFLAGS := --aspsx-version=2.79 --expand-div
ASFLAGS     := -EL -march=r3000 -mtune=r3000 -mabi=32 -no-pad-sections -O1 -G0 -I include
# Every object's sections get 4-byte alignment (what the linker script's
# SUBALIGN(4) means anyway). MIPS gas marks them 2**4, and some versions of
# ld (2.42, say) then start an output section such as .bss on a 16-byte
# boundary, which moves everything in it.
ALIGN4      = $(OBJCOPY) $(foreach s,.text .data .bss .rodata,--set-section-alignment $(s)=4)
LDFLAGS     := -EL --no-check-sections --no-warn-rwx-segments

#### Files ####

BUILD    := build
TARGETS  := langimg sces

# langimg: data\LANGIMG.DAT (the game), sces: SCES_030.37 (the boot
# executable). Everything the build needs is in the repository: the sources,
# the disassembly splat wrote (asm/, assets/) and its linker script and
# symbol lists (linker/). Only re-splitting needs the originals in extracted/.
langimg_ORIGINAL := extracted/mr3dat/data/LANGIMG.DAT
sces_ORIGINAL    := extracted/disc/SCES_030.37

define target_vars
$(1)_LD       := linker/$(1).ld
$(1)_ELF      := $(BUILD)/$(1).elf
$(1)_BIN      := $(BUILD)/$(1).bin
endef
$(foreach t,$(TARGETS),$(eval $(call target_vars,$(t))))

# Every object the linker script names (asm/, src/, lib/ and assets).
ld_objects = $(shell grep -o 'build/[A-Za-z0-9_/.-]*\.o' $(1) 2>/dev/null | sort -u)

# Objects are rebuilt when the compile flags change (NON_MATCHING=1 and back).
FLAGS_STAMP := $(BUILD)/flags.txt
FLAGS_NOW   := $(CPPFLAGS) $(CC1FLAGS) $(CXXFLAGS) $(MASPSXFLAGS) $(langimg_G) $(sces_G) $(langimg_CFLAGS) $(sces_CFLAGS) $(foreach l,$(LIBS),$(l):$(LIB_$(l)_GCC):$(LIB_$(l)_CFLAGS):$(LIB_$(l)_G):$(LIB_$(l)_MASPSXFLAGS)) $(foreach c,$(CHUNK_SETTINGS),$(c):$($(c)_GCC):$($(c)_CFLAGS):$($(c)_G):$($(c)_MASPSXFLAGS))
$(shell mkdir -p $(BUILD); echo '$(FLAGS_NOW)' | cmp -s - $(FLAGS_STAMP) || echo '$(FLAGS_NOW)' > $(FLAGS_STAMP))

#### Rules ####

.PHONY: setup split build compare objects sdk clean

COMPILERS := $(sort $(foreach t,$(TARGETS),$($(t)_GCC)))

setup: $(foreach v,$(COMPILERS),$(call gcc_dir,$(v))/cc1) tools/maspsx/maspsx.py

tools/gcc-%/cc1:
	tools/get_compiler.sh $* tools/gcc-$*

tools/maspsx/maspsx.py:
	git submodule update --init tools/maspsx

split: $(foreach t,$(TARGETS),$($(t)_LD))

# splat runs again when a target's config or symbols change, if the original
# is in extracted/ (without it, the tracked outputs are used as they are, and
# tools/chunks.py check reports them as out of date). It rewrites asm/ and
# linker/; commit what changes, with linker/<target>.stamp.
define split_rule
ifneq ($$(wildcard $$($(1)_ORIGINAL)),)
linker/$(1).ld: config/$(1).yaml config/$(1)/symbol_addrs.txt
	$$(SPLAT) $$<
	$$(PYTHON) tools/chunks.py stamp $(1)
endif
endef
$(foreach t,$(TARGETS),$(eval $(call split_rule,$(t))))

# The ELF rules read their object lists from the linker scripts, so the
# scripts are (re)generated first and the build runs in a second make.
compare: split
	$(MAKE) build
	sha1sum -c config/checksums.sha1

build: $(foreach t,$(TARGETS),$($(t)_BIN))

# Every source file compiled, without linking: what CI checks when it has
# no copy of the game.
SRC_OBJECTS := $(foreach t,$(TARGETS),$(patsubst %,$(BUILD)/$(t)/%.o,$(basename $(wildcard src/$(t)/*.c src/$(t)/*.cpp lib/*/$(t)/*.c lib/*/$(t)/*.cpp))))
objects: $(SRC_OBJECTS)

# The library code with Sony's own objects linked in where they match
# (docs/decomp.md, "Libraries"); the normal build stays on the asm.
sdk: compare
	tools/sdk_build.sh

# The whole build, splat's linker scripts included, so the next make
# re-splits.
clean:
	rm -rf $(BUILD)

# Keep every intermediate file: the ELFs (tools/diff_func.py and
# tools/chunks.py read them) and the objects make sdk links again.
.SECONDARY:

# The ELF links whatever objects the linker script lists; it is
# re-evaluated after the script is (re)generated.
.SECONDEXPANSION:
$(BUILD)/%.elf: linker/%.ld $$(call ld_objects,linker/$$*.ld)
	$(LD) $(LDFLAGS) -Map $(BUILD)/$*.map -T $< -T linker/$*/undefined_syms_auto.txt -T linker/$*/undefined_funcs_auto.txt -o $@

# LANGIMG.DAT: the 16-byte header plus the image, padded to whole 2 KB
# sectors (not counting the header).
$(BUILD)/langimg.bin: $(BUILD)/langimg.elf
	$(OBJCOPY) -O binary $< $@
	$(PYTHON) -c "import sys; p=sys.argv[1]; d=open(p,'rb').read(); n=-(len(d)-16)%2048; open(p,'ab').write(bytes(n))" $@

# SCES_030.37: the PS-X EXE header (asm) and the image.
$(BUILD)/sces.bin: $(BUILD)/sces.elf
	$(OBJCOPY) -O binary $< $@

# __GNUC_MINOR__ of a target's compiler (95, 91).
gcc_minor = -D__GNUC_MINOR__=$(word 2,$(subst ., ,$(1)))

# Objects of each target live under build/<target>/ (splat's build_path).
# OBJ_GCC, OBJ_CFLAGS, OBJ_G and OBJ_MASPSXFLAGS are each object's compiler
# and flags: its target's, its library's (LIB_<name>_*) or its chunk's
# (<target>.<chunk>_*).
define target_rules
$(BUILD)/$(1)/%.o: OBJ_GCC = $($(1)_GCC)
$(BUILD)/$(1)/%.o: OBJ_CFLAGS = $($(1)_CFLAGS)
$(BUILD)/$(1)/%.o: OBJ_G = $($(1)_G)
$(BUILD)/$(1)/%.o: OBJ_MASPSXFLAGS = $(MASPSXFLAGS)

# Binary pieces splat extracted to assets/ (the header).
$(BUILD)/$(1)/%.o: %.bin
	@mkdir -p $$(dir $$@)
	$(OBJCOPY) -I binary -O elf32-tradlittlemips $$< $$@

$(BUILD)/$(1)/%.o: %.s
	@mkdir -p $$(dir $$@)
	$(AS) $(ASFLAGS) -o $$@ $$<
	$(ALIGN4) $$@

# C and C++: preprocess, compile, fix up with maspsx (PsyQ's assembler
# behaviour), assemble. cpp writes the header dependencies (<object>.d);
# splat writes the INCLUDE_ASM ones (<object>.asmproc.d).
$(BUILD)/$(1)/%.o: %.cpp $(call gcc_dir,$($(1)_GCC))/cc1 $(FLAGS_STAMP)
	@mkdir -p $$(dir $$@)
	$$(call gcc_dir,$$(OBJ_GCC))/cpp $(CPPFLAGS) $$(call gcc_minor,$$(OBJ_GCC)) -MD $$(@:.o=.d) -lang-c++ -D__cplusplus -D__GNUG__=2 -D_LANGUAGE_C_PLUS_PLUS $$< | $$(call gcc_dir,$$(OBJ_GCC))/cc1plus $(CC1FLAGS) -G$$(OBJ_G) $$(OBJ_CFLAGS) $(CXXFLAGS) | $(MASPSX) $$(OBJ_MASPSXFLAGS) -G$$(OBJ_G) | $(AS) $(ASFLAGS) -o $$@
	$(ALIGN4) $$@
	@sed -i 's|^[^:]*:|$$@:|' $$(@:.o=.d)

$(BUILD)/$(1)/%.o: %.c $(call gcc_dir,$($(1)_GCC))/cc1 $(FLAGS_STAMP)
	@mkdir -p $$(dir $$@)
	$$(call gcc_dir,$$(OBJ_GCC))/cpp $(CPPFLAGS) $$(call gcc_minor,$$(OBJ_GCC)) -MD $$(@:.o=.d) $$< | $$(call gcc_dir,$$(OBJ_GCC))/cc1 $(CC1FLAGS) -G$$(OBJ_G) $$(OBJ_CFLAGS) | $(MASPSX) $$(OBJ_MASPSXFLAGS) -G$$(OBJ_G) | $(AS) $(ASFLAGS) -o $$@
	$(ALIGN4) $$@
	@sed -i 's|^[^:]*:|$$@:|' $$(@:.o=.d)
endef
$(foreach t,$(TARGETS),$(eval $(call target_rules,$(t))))
$(foreach t,$(TARGETS),$(foreach l,$(LIBS),\
  $(if $(filter-out undefined,$(origin LIB_$(l)_GCC)),$(eval $(BUILD)/$(t)/lib/$(l)/%.o: OBJ_GCC = $(LIB_$(l)_GCC)))\
  $(if $(filter-out undefined,$(origin LIB_$(l)_CFLAGS)),$(eval $(BUILD)/$(t)/lib/$(l)/%.o: OBJ_CFLAGS = $(LIB_$(l)_CFLAGS)))\
  $(if $(filter-out undefined,$(origin LIB_$(l)_MASPSXFLAGS)),$(eval $(BUILD)/$(t)/lib/$(l)/%.o: OBJ_MASPSXFLAGS = $(LIB_$(l)_MASPSXFLAGS)))\
  $(if $(filter-out undefined,$(origin LIB_$(l)_G)),$(eval $(BUILD)/$(t)/lib/$(l)/%.o: OBJ_G = $(LIB_$(l)_G)))))
# A chunk's own settings, on its object's exact path (which wins over the
# patterns above).
chunk_objects = $(foreach s,$(wildcard src/$(1)/$(2).c src/$(1)/$(2).cpp lib/*/$(1)/$(2).c lib/*/$(1)/$(2).cpp),$(BUILD)/$(1)/$(basename $(s)).o)
$(foreach c,$(CHUNK_SETTINGS),$(foreach v,GCC CFLAGS G MASPSXFLAGS,\
  $(if $(filter-out undefined,$(origin $(c)_$(v))),$(foreach o,$(call chunk_objects,$(word 1,$(subst ., ,$(c))),$(word 2,$(subst ., ,$(c)))),\
    $(eval $(o): OBJ_$(v) = $($(c)_$(v)))))))

-include $(shell find $(BUILD) -name '*.d' 2>/dev/null)
