# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, device/mediatek/C10_LFLT/full_C10_LFLT.mk)

PRODUCT_NAME := omni_C10_LFLT
