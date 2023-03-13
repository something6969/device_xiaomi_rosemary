# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rosemary device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := rosemary
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_rosemary
PRODUCT_MODEL := Redmi Note 10S

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := rosemary
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="missi_phoneext4_global-user 13 TP1A.220624.014 V14.0.2.0.TKLMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/miproduct_rosemary_global/missi:13/TP1A.220624.014/V14.0.2.0.TKLMIXM:user/release-keys
