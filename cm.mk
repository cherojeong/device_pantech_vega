## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Release name
PRODUCT_RELEASE_NAME := vega

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/vega/full_vega.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vega
PRODUCT_NAME := cm_vega
PRODUCT_BRAND := pantech
PRODUCT_MODEL := vega
PRODUCT_MANUFACTURER := pantech

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=msm8960 BUILD_FINGERPRINT=qcom/msm8960/msm8960:4.2.2/JDQ39/eng.p11519.20130824.161329:eng/test-keys PRIVATE_BUILD_DESC="msm8960-eng 4.2.2 JDQ39 eng.p11519.20130824.161329 test-keys" 

