# Release name
PRODUCT_RELEASE_NAME := TouchPad

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/hp/tenderloin/full_tenderloin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_tenderloin
PRODUCT_DEVICE := tenderloin
PRODUCT_BRAND := hp
PRODUCT_MODEL := TouchPad
PRODUCT_MANUFACTURER := hp

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=touchpad BUILD_FINGERPRINT=hp/hp_tenderloin/tenderloin:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="tenderloin-user 4.2.2 JDQ39 573038 release-keys"
