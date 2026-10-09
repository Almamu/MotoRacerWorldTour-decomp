# Matching decompilation build (see docs/decomp.md).
#
#   make setup    fetch the compiler (GCC 2.95.2 for the PlayStation) and maspsx
#   make split    disassemble the executables with splat (needs extracted/)
#   make          build and compare against the originals

.DEFAULT_GOAL := compare

# A failing stage of a compile pipeline fails the rule.
SHELL := bash
.SHELLFLAGS := -o pipefail -c

#### Tools ####

CROSS    := mipsel-unknown-linux-gnu-
AS       := $(CROSS)as
LD       := $(CROSS)ld
OBJCOPY  := $(CROSS)objcopy
CPP      = $(GCC_DIR)/cpp
PYTHON   := python3

GCC_VERSION := 2.95.2-psx
GCC_DIR  := tools/gcc-$(GCC_VERSION)
CC1PLUS  := $(GCC_DIR)/cc1plus
CC1      := $(GCC_DIR)/cc1
MASPSX   := $(PYTHON) tools/maspsx/maspsx.py
SPLAT    := $(PYTHON) -m splat split

# The game was built with -O2, small data up to 8 bytes in $gp-relative
# sections, no exceptions and no RTTI (docs/decomp.md).
CC1FLAGS    := -O2 -G8 -quiet -fno-exceptions -fno-rtti
CPPFLAGS    := -nostdinc -D__GNUC__=2 -D__GNUC_MINOR__=95 -Dmips -D__mips__ -I include -I src
ifeq ($(NON_MATCHING),1)
CPPFLAGS    += -DNON_MATCHING
endif
MASPSXFLAGS := --aspsx-version=2.79 -G8 --expand-div
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

#### Rules ####

.PHONY: setup split build compare clean distclean

setup: $(CC1PLUS) tools/maspsx/maspsx.py

$(CC1PLUS):
	tools/get_compiler.sh $(GCC_VERSION) $(GCC_DIR)

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

clean:
	rm -rf $(foreach t,$(TARGETS),$(BUILD)/$(t)) $(BUILD)/*.elf $(BUILD)/*.bin $(BUILD)/*.map

distclean: clean
	rm -rf asm $(BUILD)/*.ld $(BUILD)/*.d

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

# Objects of each target live under build/<target>/ (splat's build_path).
define target_rules
# Binary pieces splat extracted to assets/ (the header).
$(BUILD)/$(1)/%.o: %.bin
	@mkdir -p $$(dir $$@)
	$(OBJCOPY) -I binary -O elf32-tradlittlemips $$< $$@

$(BUILD)/$(1)/%.o: %.s
	@mkdir -p $$(dir $$@)
	$(AS) $(ASFLAGS) -o $$@ $$<

# C++: preprocess, compile with cc1plus, fix up with maspsx (PsyQ's
# assembler behaviour), assemble.
$(BUILD)/$(1)/%.o: %.cpp $(CC1PLUS)
	@mkdir -p $$(dir $$@)
	$(CPP) $(CPPFLAGS) -lang-c++ -D__cplusplus -D__GNUG__=2 -D_LANGUAGE_C_PLUS_PLUS $$< | $(CC1PLUS) $(CC1FLAGS) | $(MASPSX) $(MASPSXFLAGS) | $(AS) $(ASFLAGS) -o $$@

$(BUILD)/$(1)/%.o: %.c $(CC1)
	@mkdir -p $$(dir $$@)
	$(CPP) $(CPPFLAGS) $$< | $(CC1) $(CC1FLAGS) | $(MASPSX) $(MASPSXFLAGS) | $(AS) $(ASFLAGS) -o $$@
endef
$(foreach t,$(TARGETS),$(eval $(call target_rules,$(t))))
