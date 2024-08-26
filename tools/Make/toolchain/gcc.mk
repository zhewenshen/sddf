#
# Copyright 2023, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#
CC := ${TRIPLE}-gcc
AS := ${TRIPLE}-as
LD := ${TRIPLE}-ld
RANLIB := ${TRIPLE}-ranlib
AR := ${TRIPLE}-ar
CFLAGS += \
	-MD \
	-mstrict-align \
	-ffreestanding \
	-mtune=${CPU} \
	-I ${BOARD_DIR}/include
