#
# Copyright 2023, UNSW
#
# SPDX-License-Identifier: BSD-2-Clause
#
CC := clang
LD := ld.lld
RANLIB := llvm-ranlib
AR := llvm-ar
TARGET = ${TRIPLE}
CFLAGS += \
	-MD \
	-mstrict-align \
	-ffreestanding \
	-target ${TARGET} \
	-mtune=${CPU} \
	-I ${BOARD_DIR}/include
