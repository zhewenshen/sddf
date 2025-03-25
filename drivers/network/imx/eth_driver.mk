#
# Copyright 2024, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Include this snippet in your project Makefile to build
# the IMX8 NIC driver
#
# NOTES
#  Generates eth_driver.elf
#  Expects libsddf_util_debug.a to be in LIBS

ETHERNET_DRIVER_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
CHECK_NETDRV_FLAGS_MD5 := .netdrv_cflags-$(shell echo -- ${CFLAGS} ${CFLAGS_network} | shasum | sed 's/ *-//')

ETH_DRIVER_ELF := eth_driver.elf

CCOMP_CFLAGS := $(filter-out -mcpu=cortex-a53 -mstrict-align -ffreestanding -Wno-unused-function -MD -MP,$(CFLAGS))
CCOMP_CFLAGS += -fstruct-passing
CCOMP_CFLAGS += $(CFLAGS_network)

${CHECK_NETDRV_FLAGS_MD5}:
	-rm -f .netdrv_cflags-*
	touch $@

$(ETH_DRIVER_ELF): network/imx/ethernet.o network/imx/ethernet_ccomp.o
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

network/imx/ethernet.o: ${ETHERNET_DRIVER_DIR}/ethernet.c ${CHECK_NETDRV_FLAGS_MD5}
	mkdir -p network/imx
	${CC} -c ${CFLAGS} ${CFLAGS_network} -I${ETHERNET_DRIVER_DIR} -o $@ $<

network/imx/ethernet_ccomp.o: ${ETHERNET_DRIVER_DIR}/ethernet_ccomp.c ${CHECK_NETDRV_FLAGS_MD5}
	mkdir -p network/imx
	ccomp -c ${CCOMP_CFLAGS} -I${ETHERNET_DRIVER_DIR} -o $@ $<

-include network/imx/ethernet.d
-include network/imx/ethernet_ccomp.d
