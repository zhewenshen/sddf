#
# Copyright 2025, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#

CONFIG_FILE ?= pancake.config

ifeq ($(shell test -f $(CONFIG_FILE) && echo exists), exists)
    include $(CONFIG_FILE)

    $(info Loaded config from $(CONFIG_FILE))
    ifneq ($(MICROKIT_SDK),)
        $(info   Build SDK: $(MICROKIT_SDK))
    endif
    ifneq ($(MICROKIT_BOARD),)
        $(info   Build Board: $(MICROKIT_BOARD))
    endif
    ifneq ($(MICROKIT_CONFIG),)
        $(info   Build Config: $(MICROKIT_CONFIG))
    endif
else
    $(info config file $(CONFIG_FILE) not found, using environment variables)
endif

export MICROKIT_SDK
export MICROKIT_BOARD
export MICROKIT_CONFIG

ifeq ($(strip $(MICROKIT_SDK)),)
$(error MICROKIT_SDK must be specified)
endif

ifeq ($(strip $(MICROKIT_BOARD)),)
$(error MICROKIT_BOARD must be specified)
endif

BUILD_DIR ?= build
override BUILD_DIR := $(abspath ${BUILD_DIR})
export BUILD_DIR
export SDDF := $(abspath ../..)
override MICROKIT_SDK := $(abspath ${MICROKIT_SDK})

IMAGE_FILE := $(BUILD_DIR)/loader.img
REPORT_FILE := $(BUILD_DIR)/report.txt

all: ${IMAGE_FILE}

qemu ${IMAGE_FILE} ${REPORT_FILE} clean clobber: $(IMAGE_FILE) ${BUILD_DIR}/Makefile FORCE
	${MAKE} -C ${BUILD_DIR} MICROKIT_SDK=${MICROKIT_SDK} $(notdir $@)

${BUILD_DIR}/Makefile: pingpong.mk
	mkdir -p ${BUILD_DIR}
	cp pingpong.mk ${BUILD_DIR}/Makefile

FORCE:
