#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from k71v1_64_bsp device
$(call inherit-product, device/zte/k71v1_64_bsp/device.mk)

PRODUCT_DEVICE := k71v1_64_bsp
PRODUCT_NAME := omni_k71v1_64_bsp
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE 2050RU
PRODUCT_MANUFACTURER := zte

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k71v1_64_bsp-user 9 PPR1.180610.011 231 release-keys"

BUILD_FINGERPRINT := ZTE/RU_P671F50_D/P671F50_D:9/PPR1.180610.011/20200122.021218:user/release-keys
