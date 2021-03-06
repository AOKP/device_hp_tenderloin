# Release name
PRODUCT_RELEASE_NAME := TouchPad

# Inherit some common CM stuff.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/hp/tenderloin/full_tenderloin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aokp_tenderloin
PRODUCT_DEVICE := tenderloin
PRODUCT_BRAND := HP
PRODUCT_MODEL := TouchPad
PRODUCT_MANUFACTURER := HP

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=touchpad BUILD_FINGERPRINT=hp/hp_tenderloin/tenderloin:4.4.2/KOT49H/937116:user/release-keys PRIVATE_BUILD_DESC="tenderloin-user 4.4.2 KOT49H 937116 release-keys"
