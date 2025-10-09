#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)

# Input
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/idc/,$(TARGET_COPY_OUT_VENDOR)/usr/idc/)

# Screen
TARGET_SCREEN_DENSITY := 160
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 960

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 25

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal.policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/thermal.policy.conf

# Vendor partition
TARGET_HAS_VENDOR_PARTITION := false

# Inherit from mt8163-common
$(call inherit-product, device/amazon/mt8163-common/mt8163.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/amazon/checkers/checkers-vendor.mk)
