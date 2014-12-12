PRODUCT_PLATFORM := lagan
$(call inherit-product, $(LOCAL_PATH)/yuga-partial.mk)
$(call inherit-product, vendor/sony/lagan/lagan-partial.mk)
$(call inherit-product-if-exists, vendor/qcom/lagan/lagan-partial.mk)

