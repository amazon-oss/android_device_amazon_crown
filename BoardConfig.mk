#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amazon/checkers

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := checkers

# Kernel
TARGET_KERNEL_CONFIG := checkers_defconfig

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 268434432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3253731328

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# VNDK
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Inherit from mt8163-common
include device/amazon/mt8163-common/BoardConfigCommon.mk

# Inherit the proprietary files
include vendor/amazon/checkers/BoardConfigVendor.mk
