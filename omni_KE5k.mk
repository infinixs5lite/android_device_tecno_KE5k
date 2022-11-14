#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from KE5k device
$(call inherit-product, device/tecno/KE5k/device.mk)

PRODUCT_DEVICE := KE5k
PRODUCT_NAME := omni_KE5k
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO Spark 6 Go
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion-tecno-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_ke5k_h6122-user 10 QP1A.190711.020 63429 release-keys"

BUILD_FINGERPRINT := TECNO/KE5k-OP/TECNO-KE5k:10/QP1A.190711.020/CD-OP-220822V236:user/release-keys
