#
# Copyright (C) 2020 The LineageOS Project
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
#

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/amlogic/p281/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_p281
PRODUCT_DEVICE := p281
PRODUCT_BRAND := Amlogic
PRODUCT_MODEL := Generic Amlogic S905W STB
PRODUCT_MANUFACTURER := Amlogic


PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Khadas/kvim/kvim:7.1.2/NHG47L/20180210:userdebug/test-keys \
    PRODUCT_NAME=p281 \
    PRIVATE_BUILD_DESC="kvim-userdebug 7.1.2 NHG47L 20180210 test-keys"