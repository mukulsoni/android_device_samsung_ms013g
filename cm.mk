# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := ms013g

$(call inherit-product, device/samsung/ms013g/full_ms013g.mk)

PRODUCT_NAME := cm_ms013g
PRODUCT_DEVICE := ms013g

