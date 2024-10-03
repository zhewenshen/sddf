#
# Copyright 2023, Colias Group, LLC
#
# SPDX-License-Identifier: BSD-2-Clause
#


# Get current dir
SDMMC_DRIVER_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

# Allow for different build configurations (default is debug)
microkit_sdk_config_dir := $(MICROKIT_SDK)/board/$(MICROKIT_BOARD)/$(MICROKIT_CONFIG)
sel4_include_dirs := $(microkit_sdk_config_dir)/include

# Target output
TARGET_ELF := $(BUILD_DIR)/blk/sdmmc/meson/sdmmc_driver.elf

# Default target if none is provided
.PHONY: none
none:
	@echo "No target specified. Use 'make build' or other targets."

# Clean target
.PHONY: clean
clean:
	@echo "Cleaning build directory..."
	rm -rf $(BUILD)
	@echo "Clean complete."

# Ensure build directory exists
$(BUILD_DIR):
	@echo "Creating build directory $(BUILD_DIR)..."
	mkdir -p $@

blk/sdmmc/meson/sddf_helper.o: $(SDMMC_DRIVER_DIR)/sddf_helper.c |blk/sdmmc/meson
	$(CC) -c $(CFLAGS) $< -o $@

blk/sdmmc/meson/libsddfblk.a: blk/sdmmc/meson/sddf_helper.o |blk/sdmmc/meson
	ar rcs $< $@

blk/sdmmc/meson:
	mkdir -p $@

# Main build target
$(TARGET_ELF): $(BUILD_DIR) blk/sdmmc/meson/libsddfblk.a
	pushd $(abspath ${SDMMC_DRIVER_DIR})
	@echo "Building sdmmc_driver.elf for board $(MICROKIT_BOARD)..."
	@echo "MICROKIT SDK config directory: $(microkit_sdk_config_dir)"
	@echo "SEl4 include directories: $(sel4_include_dirs)"
	@SEL4_INCLUDE_DIRS=$(abspath $(sel4_include_dirs)) \
	cargo build \
		-Z build-std=core,alloc,compiler_builtins \
		-Z build-std-features=compiler-builtins-mem \
		--target-dir $(BUILD_DIR)/blk/sdmmc/meson/ \
		--target support/targets/aarch64-sel4-microkit-minimal.json
	@echo "Build complete: $(TARGET_ELF)"
	popd