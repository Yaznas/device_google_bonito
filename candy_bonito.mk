# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Candy stuff.
$(call inherit-product, vendor/candy/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

# Inherit GAPPS
$(call inherit-product, vendor/pixelgapps/pixel-gapps.mk)

# Inherits Candy device configuration
$(call inherit-product, device/google/bonito/bonito/device-candy.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := candy_bonito
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a XL
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bonito \
    PRIVATE_BUILD_DESC="bonito-user 10 QQ2A.200501.001.B2 6352890 release-keys"

BUILD_FINGERPRINT := "google/bonito/bonito:QQ2A.200501.001.B2/6352890:user/release-keys"

$(call inherit-product-if-exists, vendor/google/bonito/bonito-vendor.mk)