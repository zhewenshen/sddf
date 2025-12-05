#
# Copyright 2025, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#

ifeq ($(strip $(MICROKIT_SDK)),)
$(error MICROKIT_SDK must be specified)
endif

ifeq ($(strip $(SDDF)),)
$(error SDDF must be specified)
endif

BUILD_DIR ?= build

MICROKIT_CONFIG ?= benchmark
IMAGE_FILE := loader.img
REPORT_FILE := report.txt

BOARD_DIR := $(MICROKIT_SDK)/board/$(MICROKIT_BOARD)/$(MICROKIT_CONFIG)
ARCH := ${shell grep 'CONFIG_SEL4_ARCH  ' $(BOARD_DIR)/include/kernel/gen_config.h | cut -d' ' -f4}
SDDF_CUSTOM_LIBC := 1

export BOARD_DIR
export ARCH

ifeq ($(strip $(TOOLCHAIN)),)
	TOOLCHAIN := clang
endif
ifeq ($(strip $(TOOLCHAIN)), clang)
	CC := clang
	LD := ld.lld
	AR := llvm-ar
	RANLIB := llvm-ranlib
	OBJCOPY := llvm-objcopy
else
	CC := $(TOOLCHAIN)-gcc
	LD := $(TOOLCHAIN)-ld
	AS := $(TOOLCHAIN)-as
	AR := $(TOOLCHAIN)-ar
	RANLIB := $(TOOLCHAIN)-ranlib
	OBJCOPY := $(TOOLCHAIN)-objcopy
endif
DTC := dtc
PYTHON ?= python3

MICROKIT_TOOL ?= $(MICROKIT_SDK)/bin/microkit

ifeq ($(strip $(MICROKIT_BOARD)), qemu_virt_aarch64)
	SERIAL_DRIV_DIR := arm
	CPU := cortex-a53
	QEMU := qemu-system-aarch64
	QEMU_ARCH_ARGS := -machine virt,virtualization=on -cpu cortex-a53 -device loader,file=$(IMAGE_FILE),addr=0x70000000,cpu-num=0
else ifneq ($(filter $(strip $(MICROKIT_BOARD)),imx8mm_evk imx8mp_evk imx8mq_evk maaxboard),)
	SERIAL_DRIV_DIR := imx
	CPU := cortex-a53
else
$(error Unsupported MICROKIT_BOARD given)
endif

TOP:= ${SDDF}/examples/pingpong-bench
METAPROGRAM := $(TOP)/meta.py
UTIL := $(SDDF)/util
SERIAL_DRIVER := $(SDDF)/drivers/serial/$(SERIAL_DRIV_DIR)
SERIAL_COMPONENTS := $(SDDF)/serial/components
SYSTEM_FILE := pingpong.system
DTS := $(SDDF)/dts/$(MICROKIT_BOARD).dts
DTB := $(MICROKIT_BOARD).dtb

IMAGES := serial_driver.elf serial_virt_tx.elf client_a.elf client_b.elf idle.elf

ifeq ($(ARCH),aarch64)
	CFLAGS_ARCH := -mcpu=$(CPU) -mstrict-align -target aarch64-none-elf
	TARGET := aarch64-none-elf
else
$(error Only aarch64 supported for now)
endif

CFLAGS := -nostdlib \
		  -ffreestanding \
		  -g3 \
		  -O3 \
		  -Wall -Wno-unused-function -Werror -Wno-unused-command-line-argument \
		  -DMICROKIT_CONFIG_$(MICROKIT_CONFIG) \
		  -I$(BOARD_DIR)/include \
		  -I$(SDDF)/include \
		  -I$(SDDF)/include/microkit \
		  $(CFLAGS_ARCH)
LDFLAGS := -L$(BOARD_DIR)/lib
LIBS := --start-group -lmicrokit -Tmicrokit.ld libsddf_util.a --end-group

all: $(IMAGE_FILE)
CHECK_FLAGS_BOARD_MD5:=.board_cflags-$(shell echo -- ${CFLAGS} ${MICROKIT_SDK} ${MICROKIT_BOARD} ${MICROKIT_CONFIG} | shasum | sed 's/ *-//')

${CHECK_FLAGS_BOARD_MD5}:
	-rm -f .board_cflags-*
	touch $@

include ${SERIAL_DRIVER}/serial_driver.mk
include ${SERIAL_COMPONENTS}/serial_components.mk
include ${SDDF}/util/util.mk

${IMAGES}: libsddf_util.a

client_a.o: ${TOP}/client_a.c
	$(CC) -c $(CFLAGS) $< -o $@

client_b.o: ${TOP}/client_b.c
	$(CC) -c $(CFLAGS) $< -o $@

idle.o: ${TOP}/idle.c
	$(CC) -c $(CFLAGS) $< -o $@

client_a.elf: client_a.o
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

client_b.elf: client_b.o
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

idle.elf: idle.o
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

$(DTB): $(DTS)
	dtc -q -I dts -O dtb $(DTS) > $(DTB)

$(SYSTEM_FILE): $(METAPROGRAM) $(IMAGES) $(DTB)
	$(PYTHON) $(METAPROGRAM) --sddf $(SDDF) --board $(MICROKIT_BOARD) --dtb $(DTB) --output . --sdf $(SYSTEM_FILE)
	$(OBJCOPY) --update-section .device_resources=serial_driver_device_resources.data serial_driver.elf
	$(OBJCOPY) --update-section .serial_driver_config=serial_driver_config.data serial_driver.elf
	$(OBJCOPY) --update-section .serial_virt_tx_config=serial_virt_tx.data serial_virt_tx.elf
	$(OBJCOPY) --update-section .serial_client_config=serial_client_client_a.data client_a.elf
	$(OBJCOPY) --update-section .pingpong_config=pingpong_config_a.data client_a.elf
	$(OBJCOPY) --update-section .serial_client_config=serial_client_client_b.data client_b.elf
	$(OBJCOPY) --update-section .pingpong_config=pingpong_config_b.data client_b.elf
	$(OBJCOPY) --update-section .benchmark_config=benchmark_idle_config.data idle.elf

$(IMAGE_FILE) $(REPORT_FILE): $(SYSTEM_FILE)
	$(MICROKIT_TOOL) $(SYSTEM_FILE) --search-path $(BUILD_DIR) --board $(MICROKIT_BOARD) --config $(MICROKIT_CONFIG) -o $(IMAGE_FILE) -r $(REPORT_FILE)

qemu: $(IMAGE_FILE)
	$(QEMU) $(QEMU_ARCH_ARGS) \
			-serial mon:stdio \
			-m size=2G \
			-nographic \
			-d guest_errors

clean::
	rm -f client_a.o client_b.o idle.o
clobber:: clean
	rm -f client_a.elf client_b.elf idle.elf serial_driver.elf serial_virt_tx.elf ${IMAGE_FILE} ${REPORT_FILE}
