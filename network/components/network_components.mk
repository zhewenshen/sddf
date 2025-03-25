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
NETWORK_IMAGES := network_virt_rx.elf network_virt_tx.elf network_arp.elf network_copy.elf

CCOMP_CFLAGS := $(filter-out -mcpu=cortex-a53 -mstrict-align -ffreestanding -Wno-unused-function -MD -MP,$(CFLAGS))
CCOMP_CFLAGS += -fstruct-passing
CCOMP_CFLAGS += $(CFLAGS_network)

network/components/%.o: ${SDDF}/network/components/%.c
	${CC} ${CFLAGS} -c -o $@ $<

network/components/network_virt_%.o: ${SDDF}/network/components/virt_%.c
	${CC} ${CFLAGS} -c -o $@ $<

network/components/network_virt_%_ccomp.o: ${SDDF}/network/components/virt_%_ccomp.c ${CHECK_NETWORK_FLAGS_MD5}
	mkdir -p network/components
	ccomp -c ${CCOMP_CFLAGS} -o $@ $<

network/components/network_copy.o: ${SDDF}/network/components/copy.c
	${CC} ${CFLAGS} -c -o $@ $<

network/components/network_copy_ccomp.o: ${SDDF}/network/components/copy_ccomp.c ${CHECK_NETWORK_FLAGS_MD5}
	mkdir -p network/components
	ccomp -c ${CCOMP_CFLAGS} -o $@ $<

network/components/network_arp.o: ${SDDF}/network/components/arp.c
	${CC} ${CFLAGS} -c -o $@ $<

CHECK_NETWORK_FLAGS_MD5 := .network_cflags-$(shell echo -- ${CFLAGS} ${CFLAGS_network} | shasum | sed 's/ *-//')

${CHECK_NETWORK_FLAGS_MD5}:
	-rm -f .network_cflags-*
	touch $@

NETWORK_COMPONENT_OBJ := $(addprefix network/components/, \
	network_copy.o network_copy_ccomp.o \
	network_arp.o \
	network_virt_tx.o network_virt_rx.o \
	network_virt_tx_ccomp.o network_virt_rx_ccomp.o)

${NETWORK_COMPONENT_OBJ}: | network/components
${NETWORK_COMPONENT_OBJ}: ${CHECK_NETWORK_FLAGS_MD5}
${NETWORK_COMPONENT_OBJ}: CFLAGS+=${CFLAGS_network}

%.elf: network/components/%.o
	${LD} ${LDFLAGS} -o $@ $^ ${LIBS}

network_virt_rx.elf: network/components/network_virt_rx.o network/components/network_virt_rx_ccomp.o
	${LD} ${LDFLAGS} -o $@ $^ ${LIBS}

network_virt_tx.elf: network/components/network_virt_tx.o network/components/network_virt_tx_ccomp.o
	${LD} ${LDFLAGS} -o $@ $^ ${LIBS}

network_copy.elf: network/components/network_copy.o network/components/network_copy_ccomp.o
	${LD} ${LDFLAGS} -o $@ $^ ${LIBS}

network_arp.elf: network/components/network_arp.o
	${LD} ${LDFLAGS} -o $@ $< ${LIBS}

clean::
	rm -f network_virt_[rt]x.[od] network_virt_[rt]x_ccomp.[od] \
		network_copy.[od] network_copy_ccomp.[od] \
		network_arp.[od]

clobber::
	rm -f ${NETWORK_IMAGES}

network/components:
	mkdir -p $@

-include ${NETWORK_COMPONENT_OBJ:.o=.d}