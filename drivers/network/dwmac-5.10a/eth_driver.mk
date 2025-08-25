#
# Copyright 2024, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Include this snippet in your project Makefile to build
# the Synopsys dwmac 5.10a NIC driver
#
# NOTES:
#   Generates eth_driver.elf
#   Assumes libsddf_util_debug.a is in LIBS
#
ETHERNET_DRIVER_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

CHECK_NETDRV_FLAGS_MD5:=.netdrv_cflags-$(shell echo -- ${CFLAGS} ${CFLAGS_network} | shasum | sed 's/ *-//')

${CHECK_NETDRV_FLAGS_MD5}:
	-rm -f .netdrv_cflags-*
	touch $@

ifeq ($(PANCAKE_NETWORK),1)
# Detect compiler type for consistent flag usage
CC_IS_CLANG := $(shell $(CC) --version 2>/dev/null | grep -q clang && echo 1 || echo 0)

# Architecture-specific settings
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

# Pancake build
eth_driver.elf: ${BUILD_DIR}/ethernet_pnk.o dwmac/ethernet.o pancake_ffi.o
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

ETHERNET_PNK = ${UTIL}/util.🥞 \
	${SDDF}/include/sddf/network/queue.🥞 \
	${ETHERNET_DRIVER_DIR}/ethernet.🥞

${BUILD_DIR}/ethernet_pnk.S: $(ETHERNET_PNK)
	cat $(ETHERNET_PNK) | cpp -P | $(CAKE_COMPILER) --target=$(PANCAKE_TARGET) --pancake --main_return=true > $@

dwmac/ethernet.o: ${ETHERNET_DRIVER_DIR}ethernet.c ${CHECK_NETDRV_FLAGS_MD5}
	mkdir -p dwmac
	${CC} -c ${CFLAGS} ${CFLAGS_network} -DPANCAKE_NETWORK -I ${ETHERNET_DRIVER_DIR} -o $@ $<

${BUILD_DIR}/ethernet_pnk.o: ${BUILD_DIR}/ethernet_pnk.S
	$(CC) -c $(ASM_FLAGS) $< -o $@
else
# Standard C build
eth_driver.elf: network/starfive/ethernet.o
	$(LD) $(LDFLAGS) $< $(LIBS) -o $@

network/starfive/ethernet.o: ${ETHERNET_DRIVER_DIR}ethernet.c ${CHECK_NETDRV_FLAGS_MD5}
	mkdir -p network/starfive
	${CC} -c ${CFLAGS} ${CFLAGS_network} -I ${ETHERNET_DRIVER_DIR} -o $@ $<
endif

-include starfive/ethernet.d