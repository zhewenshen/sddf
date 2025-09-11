#
# Copyright 2023, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#
# This Makefile snippet builds the network components
# (for example, simple RX and TX virtualisers)
# it should be included into your project Makefile
#
# NOTES:
# Generates network_virt_rx.elf network_virt_tx.elf network_arp.elf network_copy.elf
# Requires ${SDDF}/util/util.mk to build the utility library for debug output

NETWORK_COMPONENTS_DIR := $(abspath $(dir $(lastword ${MAKEFILE_LIST})))
NETWORK_IMAGES:= network_virt_rx.elf network_virt_tx.elf network_arp.elf network_copy.elf

NETWORK_COMPONENT_OBJ := $(addprefix network/components/, network_copy.o network_arp.o network_virt_tx.o network_virt_rx.o)

CHECK_NETWORK_FLAGS_MD5:=.network_cflags-$(shell echo -- ${CFLAGS} ${CFLAGS_network} | shasum | sed 's/ *-//')

CC_IS_CLANG := $(shell $(CC) --version 2>/dev/null | grep -q clang && echo 1 || echo 0)

ARCH := ${shell grep 'CONFIG_SEL4_ARCH  ' $(BOARD_DIR)/include/kernel/gen_config.h | cut -d' ' -f4}
ifeq ($(ARCH),aarch64)
    PANCAKE_TARGET := arm8
    ifeq ($(CC_IS_CLANG),1)
        ASM_FLAGS := -target aarch64-none-elf $(if $(CPU),-mcpu=$(CPU))
    else
        ASM_FLAGS := $(if $(CPU),-mcpu=$(CPU))
    endif
else ifeq ($(ARCH),riscv64)
    PANCAKE_TARGET := riscv
    ifeq ($(CC_IS_CLANG),1)
        ASM_FLAGS := -target riscv64-none-elf -march=rv64imafdc
    else
        ASM_FLAGS := -march=rv64imafdc -mabi=lp64d
    endif
endif

${CHECK_NETWORK_FLAGS_MD5}:
	-rm -f .network_cflags-*
	touch $@

${NETWORK_IMAGES}: LIBS := libsddf_util_debug.a ${LIBS}

${NETWORK_COMPONENT_OBJ}: |network/components
${NETWORK_COMPONENT_OBJ}: ${CHECK_NETWORK_FLAGS_MD5}
${NETWORK_COMPONENT_OBJ}: CFLAGS+=${CFLAGS_network}

NETWORK_QUEUE_INCLUDE := ${SDDF}/include/sddf/network

ifeq ($(PANCAKE_NETWORK_VIRT),1)
NETWORK_VIRT_RX_PNK = ${UTIL}/util.🥞 \
	${NETWORK_QUEUE_INCLUDE}/queue.🥞 \
	${SDDF}/network/components/virt_rx.🥞

NETWORK_VIRT_TX_PNK = ${UTIL}/util.🥞 \
	${NETWORK_QUEUE_INCLUDE}/queue.🥞 \
	${SDDF}/network/components/virt_tx.🥞

network_virt_rx.elf: network/components/virt_rx_pnk.o network/components/network_virt_rx.o pancake_ffi.o libsddf_util_debug.a
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

network_virt_tx.elf: network/components/virt_tx_pnk.o network/components/network_virt_tx.o pancake_ffi.o libsddf_util_debug.a
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

network/components/virt_%_pnk.o: network/components/virt_%_pnk.S
	$(CC) $(ASM_FLAGS) -c $< -o $@

network/components/virt_rx_pnk.S: $(NETWORK_VIRT_RX_PNK) | network/components
	cat $(NETWORK_VIRT_RX_PNK) | cpp -P | $(CAKE_COMPILER) --target=$(PANCAKE_TARGET) --pancake --main_return=true > $@

network/components/virt_tx_pnk.S: $(NETWORK_VIRT_TX_PNK) | network/components
	cat $(NETWORK_VIRT_TX_PNK) | cpp -P | $(CAKE_COMPILER) --target=$(PANCAKE_TARGET) --pancake --main_return=true > $@

network/components/network_virt_%.o: ${SDDF}/network/components/virt_%.c
	${CC} ${CFLAGS} -DPANCAKE_NETWORK_VIRT -o $@ -c $<

else
network/components/network_virt_%.o: ${SDDF}/network/components/virt_%.c
	${CC} ${CFLAGS} -c -o $@ $<
endif

network/components/network_copy.o: ${SDDF}/network/components/copy.c
	${CC} ${CFLAGS} -c -o $@ $<

network/components/network_arp.o: ${SDDF}/network/components/arp.c
	${CC} ${CFLAGS} -c -o $@ $<

%.elf: network/components/%.o
	${LD} ${LDFLAGS} -o $@ $< ${LIBS}

clean::
	${RM} -f network_virt_[rt]x.[od] network_copy.[od] network_arp.[od] .network_cflags-*
	rm -f network/components/virt_[rt]x_pnk.[So]

clobber::
	${RM} -f ${NETWORK_IMAGES}
	rmdir network/components

network/components:
	mkdir -p $@

-include ${NETWORK_COMPONENTS_OBJS:.o=.d}
