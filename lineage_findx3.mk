#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/oppo/findx3/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_findx3
PRODUCT_DEVICE := findx3
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PEDM00

# CORE build flags
WITH_GMS := true

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Ship Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Whether to ship prebuilt Google Dialer and Messages, false by default
TARGET_INCLUDE_GOOGLE_DIALER := true

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="PEDM00-user 14 UKQ1.230924.001 R.1b90740-48cf-7f152 release-keys" \
    BuildFingerprint=OPPO/PEDM00/OP4E5D:14/UKQ1.230924.001/R.1b90740-48cf-7f152:user/release-keys \
    DeviceName=OP4E5D \
    DeviceProduct=PEDM00 \
    SystemDevice=OP4E5D \
    SystemName=PEDM00   \
    RisingChipset="Snapdragon 870" \
    RisingMaintainer="MomoYuuki"

