#
# Copyright 2023, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#
# This Makefile snippet builds the serial RX and TX virtualisers
# it should be included into your project Makefile
#
# NOTES:
# Generates serial_virt_rx.elf serial_virt_tx.elf
#

SERIAL_IMAGES:= serial_virt_rx.elf serial_virt_tx.elf
SERIAL_COMPONENT_OBJ := $(addprefix serial/components/, serial_virt_tx.o serial_virt_rx.o)
PANCAKE_VIRT := 1

CFLAGS_serial := -I ${SDDF}/include

CHECK_SERIAL_FLAGS_MD5:=.serial_cflags-$(shell echo -- ${CFLAGS} ${CFLAGS_serial} | shasum | sed 's/ *-//')

ARCH := ${shell grep 'CONFIG_SEL4_ARCH  ' $(BOARD_DIR)/include/kernel/gen_config.h | cut -d' ' -f4}
ifeq ($(ARCH),aarch64)
    PANCAKE_TARGET := arm8
    CLANG_TARGET_FLAGS := -target aarch64-none-elf $(if $(CPU),-mcpu=$(CPU))
else ifeq ($(ARCH),riscv64)
    PANCAKE_TARGET := riscv
    CLANG_TARGET_FLAGS := -target riscv64-none-elf -march=rv64imafdc
endif

${CHECK_SERIAL_FLAGS_MD5}:
	-rm -f .serial_cflags-*
	touch $@

${SERIAL_COMPONENT_OBJ}: |serial/components
${SERIAL_COMPONENT_OBJ}: ${CHECK_SERIAL_FLAGS_MD5}

SERIAL_QUEUE_INCLUDE := ${SDDF}/include/sddf/serial

VIRT_RX_PNK = ${UTIL}/util.🥞 \
	${SERIAL_QUEUE_INCLUDE}/queue.🥞 \
	${SDDF}/serial/components/virt_rx.🥞

VIRT_TX_PNK = ${UTIL}/util.🥞 \
	${SERIAL_QUEUE_INCLUDE}/queue.🥞 \
	${SDDF}/serial/components/virt_tx.🥞

serial_virt_rx.elf: serial/components/virt_rx_pnk.o serial/components/serial_virt_rx.o pancake_ffi.o libsddf_util_debug.a
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

serial_virt_tx.elf: serial/components/virt_tx_pnk.o serial/components/serial_virt_tx.o pancake_ffi.o libsddf_util_debug.a
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

serial/components/virt_%_pnk.o: serial/components/virt_%_pnk.S
	$(CC) $(CLANG_TARGET_FLAGS) -c $< -o $@

serial/components/virt_rx_pnk.S: $(VIRT_RX_PNK) | serial/components
	cat $(VIRT_RX_PNK) | cpp -P | $(CAKE_COMPILER) --target=$(PANCAKE_TARGET) --pancake --main_return=true > $@

serial/components/virt_tx_pnk.S: $(VIRT_TX_PNK) | serial/components
	cat $(VIRT_TX_PNK) | cpp -P | $(CAKE_COMPILER) --target=$(PANCAKE_TARGET) --pancake --main_return=true > $@

serial/components/serial_virt_%.o: ${SDDF}/serial/components/virt_%.c
	${CC} ${CFLAGS} ${CFLAGS_serial} -o $@ -c $<

serial/components:
	mkdir -p $@

clean::
	rm -f serial_virt_[rt]x.[od] .serial_cflags-*
	rm -f serial/components/virt_[rt]x_pnk.[So]

clobber::
	rm -f ${SERIAL_IMAGES}

-include serial/components/serial_virt_rx.d
-include serial/components/serial_virt_tx.d
-include serial/components/virt_rx.d
-include serial/components/virt_tx.d
