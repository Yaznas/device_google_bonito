# Copyright (C) 2018-2019 The Dirty Unicorns Project
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

# Boot Animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Include Candy common configuration
include vendor/candy/config/common_full_phone.mk

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

PRODUCT_NAME := candy_bonito
PRODUCT_DEVICE := bonito
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="bonito" \
    TARGET_DEVICE="bonito" \
    PRIVATE_BUILD_DESC="bonito-user 10 QQ2A.200405.005 6254899 release-keys"

BUILD_FINGERPRINT := "google/bonito/bonito:QQ2A.200405.005/6254899:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/bonito/bonito:10/QQ2A.200405.005/6254899:user/release-keys

BOARD_PREBUILT_VENDORIMAGE := vendor/images/bonito/vendor.img

$(call inherit-product-if-exists, vendor/google/bonito/bonito-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
