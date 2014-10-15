# Inherit some common liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p705/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Release name
PRODUCT_RELEASE_NAME := OptimusL7

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p705
PRODUCT_NAME := liquid_p705
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P705
PRODUCT_MANUFACTURER := LGE

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=144808 \
    PRODUCT_NAME=p705 \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="p705-user 4.4.4 KTU84Q 144808 release-keys" \
    BUILD_FINGERPRINT="lge/p705/4.4.4/KTU84Q/144808:user/release-keys"

# Enable Torch
PRODUCT_PACKAGES += \
    Torch
