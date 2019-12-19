# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Candy stuff.
$(call inherit-product, vendor/candy/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

# Inherit GAPPS
$(call inherit-product, vendor/pixelgapps/pixel-gapps.mk)

# Inherit Candy device configuration
$(call inherit-product, device/google/bonito/sargo/device-candy.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := candy_sargo
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    PRIVATE_BUILD_DESC="sargo-user 10 QQ2A.200405.005 6254899 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:10/QQ2A.200405.005/6254899:user/release-keys

# Include sargo before bonito to use sargo versions of blobs if they exist
$(call inherit-product-if-exists, vendor/google/sargo/sargo-vendor.mk)
$(call inherit-product-if-exists, vendor/google/bonito/bonito-vendor.mk)
