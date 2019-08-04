# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := KW_C8_LFLT
PRODUCT_NAME := full_KW_C8_LFLT
PRODUCT_BRAND := MediaTek
PRODUCT_MODEL := KW_C8_LFLT
PRODUCT_MANUFACTURER := MediaTek
