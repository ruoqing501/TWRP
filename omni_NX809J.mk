#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from NX809J device
$(call inherit-product, device/nubia/NX809J/device.mk)

PRODUCT_DEVICE := NX809J
PRODUCT_NAME := omni_NX809J
PRODUCT_BRAND := REDMAGIC
PRODUCT_MODEL := NX809J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="canoe-user 16 BQ2A.250705.001-BP2A.250605.031.A3 20260317.233524 release-keys"

BUILD_FINGERPRINT := REDMAGIC/NX809J/NX809J:16/BQ2A.250705.001-BP2A.250605.031.A3/20260317.233524:user/release-keys
