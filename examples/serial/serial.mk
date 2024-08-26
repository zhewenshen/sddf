#
# Copyright 2023, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#
# This Makefile is copied into the build directory
# and operated on from there.
#

ifeq ($(strip $(MICROKIT_SDK)),)
$(error MICROKIT_SDK must be specified)
endif

ifeq ($(strip $(SDDF)),)
$(error SDDF must be specified)
endif

ifeq ($(strip $(TOOLCHAIN)),)
	TOOLCHAIN := gcc
endif

BUILD_DIR ?= build
MICROKIT_CONFIG ?= debug
MICROKIT_TOOL := $(MICROKIT_SDK)/bin/microkit

SUPPORTED_BOARDS:= imx8mm_evk maaxboard odroidc4 qemu_virt_aarch64
ifeq ($(filter ${MICROKIT_BOARD},${SUPPORTED_BOARDS}),)
$(error Unsupported MICROKIT_BOARD ${MICROKIT_BOARD})
endif

include ${SDDF}/tools/Make/board/${MICROKIT_BOARD}.mk
include ${SDDF}/tools/Make/toolchain/${TOOLCHAIN}.mk

TOP := ${SDDF}/examples/serial
UTIL := $(SDDF)/util
SERIAL_COMPONENTS := $(SDDF)/serial/components
UART_DRIVER := $(SDDF)/drivers/serial/$(UART_DRIV_DIR)
SERIAL_CONFIG_INCLUDE:=${TOP}/include/serial_config
BOARD_DIR := $(MICROKIT_SDK)/board/$(MICROKIT_BOARD)/$(MICROKIT_CONFIG)
SYSTEM_FILE := ${TOP}/board/$(MICROKIT_BOARD)/serial.system

IMAGES := uart_driver.elf \
	  serial_server.elf \
	  serial_virt_tx.elf serial_virt_rx.elf
CFLAGS +=  -g3 -O3 -Wall \
	  -Wno-unused-function -Werror \
	  -MD
LDFLAGS := -L$(BOARD_DIR)/lib -L$(SDDF)/lib
LIBS := --start-group -lmicrokit -Tmicrokit.ld libsddf_util_debug.a --end-group

IMAGE_FILE = loader.img
REPORT_FILE = report.txt
CFLAGS += -I$(BOARD_DIR)/include \
	-I${TOP}/include	\
	-I$(SDDF)/include \
	-I$(SERIAL_CONFIG_INCLUDE)

CHECK_FLAGS_BOARD_MD5:=.board_cflags-$(shell echo -- ${CFLAGS} ${BOARD} ${MICROKIT_CONFIG} | shasum | sed 's/ *-//')

${CHECK_FLAGS_BOARD_MD5}:
	-rm -f .board_cflags-*
	touch $@

${IMAGES}: libsddf_util_debug.a ${CHECK_FLAGS_BOARD_MD5}

include ${SDDF}/util/util.mk
include ${UART_DRIVER}/uart_driver.mk
include ${SERIAL_COMPONENTS}/serial_components.mk

%.elf: %.o
	${LD} -o $@ ${LDFLAGS} $< ${LIBS}

serial_server.elf: serial_server.o libsddf_util.a
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

serial_server.o: ${TOP}/serial_server.c ${CHECK_FLAGS_BOARD_MD5}
	$(CC) $(CFLAGS) -c -o $@ $<

$(IMAGE_FILE) $(REPORT_FILE): $(IMAGES) $(SYSTEM_FILE)
	MICROKIT_SDK=${MICROKIT_SDK} $(MICROKIT_TOOL) $(SYSTEM_FILE) --search-path $(BUILD_DIR) --board $(MICROKIT_BOARD) --config $(MICROKIT_CONFIG) -o $(IMAGE_FILE) -r $(REPORT_FILE)

qemu: ${IMAGE_FILE}
	$(QEMU) -machine virt,virtualization=on -cpu cortex-a53 -serial mon:stdio -device loader,file=$(IMAGE_FILE),addr=0x70000000,cpu-num=0 -m size=2G -nographic

clean::
	${RM} -f *.elf
	find . -name '*.[od]' | xargs ${RM} -f

clobber:: clean
	${RM} -f ${IMAGE_FILE} ${REPORT_FILE}
