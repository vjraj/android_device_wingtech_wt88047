# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from wt88047 device
$(call inherit-product, device/wingtech/wt88047/device.mk)

# Inherit some common files
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Root options
ROOT_METHOD=magisk

# Assert
TARGET_OTA_ASSERT_DEVICE := HM2014811,HM2014812,HM2014813,HM2014814,HM2014815,HM2014816,HM2014817,HM2014818,HM2014819,HM2014820,HM2014821,HM2014112,wt88047,wt86047

PRODUCT_DEVICE := wt88047
PRODUCT_NAME := xenonhd_wt88047
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 2
BOARD_VENDOR := wingtech
PRODUCT_MANUFACTURER := Wingtech

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=armani

PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer="VjRaj"
