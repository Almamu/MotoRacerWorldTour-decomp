# Matching decompilation build (see docs/decomp.md).
#
#   make setup    fetch the compilers (GCC 2.95.2 and 2.91.66 for the PlayStation) and maspsx
#   make split    disassemble the executables with splat (needs extracted/)
#   make          build and compare against the originals
#   make objects  just compile src/ (needs neither the game files nor splat)
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
MASPSX   := $(PYTHON) tools/maspsx/maspsx.py
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
langimg_CFLAGS :=
sces_CFLAGS    := -fsigned-char

# -O2; the C++ has no exceptions and no RTTI.
CC1FLAGS    := -O2 -quiet
CXXFLAGS    := -fno-exceptions -fno-rtti
CPPFLAGS    := -nostdinc -D__GNUC__=2 -Dmips -D__mips__ -I include -I src
ifeq ($(NON_MATCHING),1)
CPPFLAGS    += -DNON_MATCHING
endif
MASPSXFLAGS := --aspsx-version=2.79 --expand-div
ASFLAGS     := -EL -march=r3000 -mtune=r3000 -mabi=32 -no-pad-sections -O1 -G0 -I include
LDFLAGS     := -EL --no-check-sections --no-warn-rwx-segments

#### Files ####

BUILD    := build
TARGETS  := langimg sces

# langimg: data\LANGIMG.DAT (the game), sces: SCES_030.37 (the boot
# executable). Their splat configs (config/<target>.yaml) read the originals
# from extracted/.

define target_vars
$(1)_LD       := $(BUILD)/$(1).ld
$(1)_ELF      := $(BUILD)/$(1).elf
$(1)_BIN      := $(BUILD)/$(1).bin
endef
$(foreach t,$(TARGETS),$(eval $(call target_vars,$(t))))

# Every object the linker script names (asm/, src/ and assets).
ld_objects = $(shell grep -o 'build/[A-Za-z0-9_/.-]*\.o' $(1) 2>/dev/null | sort -u)

# Objects are rebuilt when the compile flags change (NON_MATCHING=1 and back).
FLAGS_STAMP := $(BUILD)/flags.txt
FLAGS_NOW   := $(CPPFLAGS) $(CC1FLAGS) $(CXXFLAGS) $(MASPSXFLAGS) $(langimg_G) $(sces_G) $(langimg_CFLAGS) $(sces_CFLAGS)
$(shell mkdir -p $(BUILD); echo '$(FLAGS_NOW)' | cmp -s - $(FLAGS_STAMP) || echo '$(FLAGS_NOW)' > $(FLAGS_STAMP))

#### Rules ####

.PHONY: setup split build compare objects sdk clean distclean

COMPILERS := $(sort $(foreach t,$(TARGETS),$($(t)_GCC)))

setup: $(foreach v,$(COMPILERS),$(call gcc_dir,$(v))/cc1) tools/maspsx/maspsx.py

tools/gcc-%/cc1:
	tools/get_compiler.sh $* tools/gcc-$*

tools/maspsx/maspsx.py:
	git submodule update --init tools/maspsx

split: $(foreach t,$(TARGETS),$($(t)_LD))

$(BUILD)/%.ld: config/%.yaml config/%/symbol_addrs.txt
	$(SPLAT) $<

# The ELF rules read their object lists from the linker scripts, so the
# scripts are (re)generated first and the build runs in a second make.
compare: split
	$(MAKE) build
	sha1sum -c config/checksums.sha1

build: $(foreach t,$(TARGETS),$($(t)_BIN))

# Every source file compiled, without linking: what CI checks when it has
# no copy of the game.
SRC_OBJECTS := $(foreach t,$(TARGETS),$(patsubst %,$(BUILD)/$(t)/%.o,$(basename $(wildcard src/$(t)/*.c src/$(t)/*.cpp))))
objects: $(SRC_OBJECTS)

# The library code with Sony's own objects linked in where they match
# (docs/decomp.md, "Libraries"); the normal build stays on the asm.
sdk: compare
	tools/sdk_build.sh

# The whole build, splat's linker scripts included, so the next make
# re-splits.
clean:
	rm -rf $(BUILD)

# Also what splat extracts that isn't tracked (the tracked function asm
# under asm/*/nonmatchings/ stays).
distclean: clean
	rm -rf asm/*/data asm/*/header.s assets

# Keep the ELFs (tools/diff_func.py and tools/chunks.py read them).
.SECONDARY: $(foreach t,$(TARGETS),$($(t)_ELF))

# The ELF links whatever objects the linker script lists; it is
# re-evaluated after the script is (re)generated.
.SECONDEXPANSION:
$(BUILD)/%.elf: $(BUILD)/%.ld $$(call ld_objects,$(BUILD)/$$*.ld)
	$(LD) $(LDFLAGS) -Map $(BUILD)/$*.map -T $< -T $(BUILD)/$*/undefined_syms_auto.txt -T $(BUILD)/$*/undefined_funcs_auto.txt -o $@

# LANGIMG.DAT: the 16-byte header plus the image, padded to whole 2 KB
# sectors (not counting the header).
$(BUILD)/langimg.bin: $(BUILD)/langimg.elf
	$(OBJCOPY) -O binary $< $@
	$(PYTHON) -c "import sys; p=sys.argv[1]; d=open(p,'rb').read(); n=-(len(d)-16)%2048; open(p,'ab').write(bytes(n))" $@

# SCES_030.37: the PS-X EXE header (asm) and the image.
$(BUILD)/sces.bin: $(BUILD)/sces.elf
	$(OBJCOPY) -O binary $< $@

# __GNUC_MINOR__ of a target's compiler (95, 91).
gcc_minor = -D__GNUC_MINOR__=$(word 2,$(subst ., ,$($(1)_GCC)))

# Objects of each target live under build/<target>/ (splat's build_path).
define target_rules
# Binary pieces splat extracted to assets/ (the header).
$(BUILD)/$(1)/%.o: %.bin
	@mkdir -p $$(dir $$@)
	$(OBJCOPY) -I binary -O elf32-tradlittlemips $$< $$@

$(BUILD)/$(1)/%.o: %.s
	@mkdir -p $$(dir $$@)
	$(AS) $(ASFLAGS) -o $$@ $$<

# C and C++: preprocess, compile, fix up with maspsx (PsyQ's assembler
# behaviour), assemble. cpp writes the header dependencies (<object>.d);
# splat writes the INCLUDE_ASM ones (<object>.asmproc.d).
$(BUILD)/$(1)/%.o: %.cpp $(call gcc_dir,$($(1)_GCC))/cc1 $(FLAGS_STAMP)
	@mkdir -p $$(dir $$@)
	$(call gcc_dir,$($(1)_GCC))/cpp $(CPPFLAGS) $(call gcc_minor,$(1)) -MD $$(@:.o=.d) -lang-c++ -D__cplusplus -D__GNUG__=2 -D_LANGUAGE_C_PLUS_PLUS $$< | $(call gcc_dir,$($(1)_GCC))/cc1plus $(CC1FLAGS) -G$($(1)_G) $($(1)_CFLAGS) $(CXXFLAGS) | $(MASPSX) $(MASPSXFLAGS) -G$($(1)_G) | $(AS) $(ASFLAGS) -o $$@
	@sed -i 's|^[^:]*:|$$@:|' $$(@:.o=.d)

$(BUILD)/$(1)/%.o: %.c $(call gcc_dir,$($(1)_GCC))/cc1 $(FLAGS_STAMP)
	@mkdir -p $$(dir $$@)
	$(call gcc_dir,$($(1)_GCC))/cpp $(CPPFLAGS) $(call gcc_minor,$(1)) -MD $$(@:.o=.d) $$< | $(call gcc_dir,$($(1)_GCC))/cc1 $(CC1FLAGS) -G$($(1)_G) $($(1)_CFLAGS) | $(MASPSX) $(MASPSXFLAGS) -G$($(1)_G) | $(AS) $(ASFLAGS) -o $$@
	@sed -i 's|^[^:]*:|$$@:|' $$(@:.o=.d)
endef
$(foreach t,$(TARGETS),$(eval $(call target_rules,$(t))))

-include $(shell find $(BUILD) -name '*.d' 2>/dev/null)
