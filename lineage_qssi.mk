# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from qssi device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := qti
PRODUCT_DEVICE := qssi
PRODUCT_MANUFACTURER := qti
PRODUCT_NAME := lineage_qssi
PRODUCT_MODEL := qssi system image for arm64

PRODUCT_GMS_CLIENTID_BASE := android-qti
TARGET_VENDOR := qti
TARGET_VENDOR_PRODUCT_NAME := qssi
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="qssi-user 10 QKQ1.191215.002 V11.0.4.0.QJWINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := qti/qssi/qssi:10/QKQ1.191215.002/V11.0.4.0.QJWINXM:user/release-keys
