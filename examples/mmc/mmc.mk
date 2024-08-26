#
# Copyright 2024, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#

ifeq ($(strip $(MICROKIT_SDK)),)
$(error MICROKIT_SDK must be specified)
endif

ifeq ($(strip $(SDDF)),)
$(error SDDF must be specified)
endif

ifeq ($(strip $(TOOLCHAIN)),)
	TOOLCHAIN := clang
endif

SUPPORTED_BOARDS:= imx8mm_evk maaxboard
ifeq ($(filter ${MICROKIT_BOARD},${SUPPORTED_BOARDS}),)
$(error Unsupported MICROKIT_BOARD ${MICROKIT_BOARD})
endif

include ${SDDF}/tools/Make/board/${MICROKIT_BOARD}.mk
include ${SDDF}/tools/Make/toolchain/${TOOLCHAIN}.mk

BUILD_DIR ?= build
MICROKIT_CONFIG ?= debug


TOP := ${SDDF}/examples/mmc
CONFIGS_INCLUDE := ${TOP}/include/configs

MICROKIT_TOOL ?= $(MICROKIT_SDK)/bin/microkit
BOARD_DIR := $(MICROKIT_SDK)/board/$(MICROKIT_BOARD)/$(MICROKIT_CONFIG)

IMAGES := mmc_driver.elf timer_driver.elf client.elf blk_virt.elf
CFLAGS +=	  -mstrict-align \
		  -nostdlib \
		  -g3 \
		  -O3 \
		  -Wall -Wno-unused-function -Werror -Wno-unused-command-line-argument \
		  -I$(SDDF)/include \
		  -I$(CONFIGS_INCLUDE)
LDFLAGS := -L$(BOARD_DIR)/lib
LIBS := --start-group -lmicrokit -Tmicrokit.ld libsddf_util_debug.a --end-group

IMAGE_FILE   := loader.img
REPORT_FILE  := report.txt
SYSTEM_FILE  := ${TOP}/board/$(MICROKIT_BOARD)/mmc.system

MMC_DRIVER   := $(SDDF)/drivers/blk/mmc/${PLATFORM}
TIMER_DRIVER := $(SDDF)/drivers/clock/${PLATFORM}

BLK_COMPONENTS := $(SDDF)/blk/components

all: $(IMAGE_FILE)

include ${MMC_DRIVER}/mmc_driver.mk
include ${TIMER_DRIVER}/timer_driver.mk

include ${SDDF}/util/util.mk
include ${BLK_COMPONENTS}/blk_components.mk

${IMAGES}: libsddf_util_debug.a

client.o: ${TOP}/client.c
	$(CC) -c $(CFLAGS) $< -o client.o
client.elf: client.o
	$(LD) $(LDFLAGS) $< $(LIBS) -o $@

$(IMAGE_FILE) $(REPORT_FILE): $(IMAGES) $(SYSTEM_FILE)
	$(MICROKIT_TOOL) $(SYSTEM_FILE) --search-path $(BUILD_DIR) --board $(MICROKIT_BOARD) --config $(MICROKIT_CONFIG) -o $(IMAGE_FILE) -r $(REPORT_FILE)

clean::
	rm -f client.o
clobber:: clean
	rm -f client.elf ${IMAGE_FILE} ${REPORT_FILE}
