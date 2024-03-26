#
# Copyright 2024, UNSW (ABN 57 195 873 179)
#
# SPDX-License-Identifier: BSD-2-Clause
#

LIBCO_DIR := $(SDDF)/libco

AARCH64_FILES := aarch64.c
AARCH32_FILES := arm.c
X86_FILES := amd64.c
ARCH_INDEP_FILES := libco.c
C_FILES := $(addprefix $(LIBCO_DIR)/, $(AARCH64_FILES) $(AARCH32_FILES) $(X86_FILES) $(ARCH_INDEP_FILES))

LIBCO_OBJECTS := $(C_FILES:.c=.o)

all: libco.a clean

libco.a: $(LIBCO_OBJECTS)
	ar rv $@ $(LIBCO_OBJECTS)

clean:
	rm -f $(LIBCO_OBJECTS)