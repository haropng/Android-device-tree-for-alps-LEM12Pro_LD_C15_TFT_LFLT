#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from LD_C15_TFT_LFLT device
$(call inherit-product, device/alps/LD_C15_TFT_LFLT/device.mk)

PRODUCT_DEVICE := LD_C15_TFT_LFLT
PRODUCT_NAME := omni_LD_C15_TFT_LFLT
PRODUCT_BRAND := alps
PRODUCT_MODEL := LEM12Pro
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_LD_C15_TFT_LFLT-user 10 QP1A.190711.020 mp1V948 test-keys"

BUILD_FINGERPRINT := alps/full_LD_C15_TFT_LFLT/LD_C15_TFT_LFLT:10/QP1A.190711.020/mp1V948:user/test-keys
