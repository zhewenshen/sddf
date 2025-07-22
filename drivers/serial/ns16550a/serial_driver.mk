#
# Copyright 2024, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Include this snippet in your project Makefile to build
#    the Synopsis DesignWare ABP UART driver

SERIAL_DRIVER_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

ifeq ($(PANCAKE_DRIVER),1)
# Architecture-specific settings
ARCH := ${shell grep 'CONFIG_SEL4_ARCH  ' $(BOARD_DIR)/include/kernel/gen_config.h | cut -d' ' -f4}
ifeq ($(ARCH),aarch64)
    PANCAKE_TARGET := arm8
    ASM_FLAGS := -target aarch64-none-elf $(if $(CPU),-mcpu=$(CPU))
else ifeq ($(ARCH),riscv64)
    PANCAKE_TARGET := riscv
    ASM_FLAGS := -target riscv64-none-elf -march=rv64imafdc
endif

serial_driver.elf: serial_pnk.o serial/ns16550a/serial_driver.o pancake_ffi.o
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

DRIVER_PNK = ${UTIL}/util.🥞 \
	${SDDF}/include/sddf/serial/queue.🥞 \
	${SERIAL_DRIVER_DIR}/uart.🥞

serial_pnk.o: serial_pnk.S
	$(CC) -c $(ASM_FLAGS) $< -o $@

serial_pnk.S: $(DRIVER_PNK)
	cat $(DRIVER_PNK) | cpp -P | $(CAKE_COMPILER) --target=$(PANCAKE_TARGET) --pancake --main_return=true > $@

serial/ns16550a/serial_driver.o: ${SERIAL_DRIVER_DIR}/uart.c |serial/ns16550a
	$(CC) -c $(CFLAGS) -DPANCAKE_DRIVER -I${SERIAL_DRIVER_DIR}/include -o $@ $<
else
serial_driver.elf: serial/ns16550a/serial_driver.o
	$(LD) $(LDFLAGS) $< $(LIBS) -o $@

serial/ns16550a/serial_driver.o: ${SERIAL_DRIVER_DIR}/uart.c |serial/ns16550a
	$(CC) -c $(CFLAGS) -I${SERIAL_DRIVER_DIR}/include -o $@ $<
endif

serial/ns16550a:
	mkdir -p $@

-include serial/ns16550a/serial_driver.d

clean::
	rm -f serial/ns16550a/serial_driver.[do]
clobber:: clean
	rm -rf serial_driver.elf serial
