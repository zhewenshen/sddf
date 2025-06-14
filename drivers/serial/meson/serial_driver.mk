#
# Copyright 2024, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Include this snippet in your project Makefile to build
# the meson8 UART driver.
# Assumes libsddf_util_debug.a is in ${LIBS}.
# Requires serial_regs to be set to the mapped base of the UART registers
# in the system description file.

serial_DRIVER_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
SERIAL_QUEUE_INCLUDE := ${SDDF}/include/sddf/serial

DRIVER_PNK = ${UTIL}/util.🥞 \
	${SERIAL_QUEUE_INCLUDE}/queue.🥞 \
	${serial_DRIVER_DIR}/uart.🥞

# serial_pnk.o: serial_pnk.S
# 	$(CC) -c -mcpu=$(CPU) -target aarch64-none-elf $< -o $@

serial_pnk.o: serial_pnk.S
	$(CC) -c -mcpu=$(CPU) $< -o $@

serial_pnk.S: $(DRIVER_PNK)
	cat $(DRIVER_PNK) | cpp -P | $(CAKE_COMPILER) --target=arm8 --pancake --main_return=true > $@

serial_driver.elf: serial_pnk.o serial/meson/serial_driver.o pancake_ffi.o
	$(LD) $(LDFLAGS) $^ $(LIBS) -o $@

serial/meson/serial_driver.o: ${serial_DRIVER_DIR}/uart.c |serial/meson
	$(CC) -c $(CFLAGS) -I${serial_DRIVER_DIR}/include -o $@ $<

-include serial_driver.d

serial/meson:
	mkdir -p $@

clean::
	rm -f serial/meson/serial_driver.[do]

clobber::
	rm -rf serial