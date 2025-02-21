#
# Copyright 2024, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Include this snippet in your project Makefile to build
# the VirtIO driver
#
# NOTES:
#   Generates eth_driver.elf
#   Assumes libsddf_util_debug.a is in LIBS

ETHERNET_DRIVER_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

CHECK_NETDRV_FLAGS_MD5:=.netdrv_cflags-$(shell echo -- ${CFLAGS} ${CFLAGS_network} | shasum | sed 's/ *-//')

ETH_DRIVER_ELF := eth_driver.elf

CCOMP_CFLAGS := $(filter-out -mcpu=cortex-a53 -mstrict-align -ffreestanding -Wno-unused-function -MD -MP,$(CFLAGS))

${CHECK_NETDRV_FLAGS_MD5}:
	-rm -f .netdrv_cflags-*
	touch $@

$(ETH_DRIVER_ELF): network/virtio/ethernet.o
	$(LD) $(LDFLAGS) $< $(LIBS) -o $@

network/virtio/ethernet.o: ${ETHERNET_DRIVER_DIR}/ethernet.c ${CHECK_NETDRV_FLAGS}
	mkdir -p network/virtio
	${CC} -c ${CFLAGS} ${CFLAGS_network} -I ${ETHERNET_DRIVER_DIR} -o $@ $<

network/virtio/ethernet_ccomp.o: ${ETHERNET_DRIVER_DIR}/ethernet_ccomp.c ${CHECK_NETDRV_FLAGS_MD5}
	mkdir -p network/virtio
	ccomp -c ${CCOMP_CFLAGS} -I${ETHERNET_DRIVER_DIR} -o $@ $<

-include virtio/ethernet.d
