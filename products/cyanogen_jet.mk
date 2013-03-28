# Inherit AOSP device configuration for galaxys.
$(call inherit-product, device/samsung/jet/full_jet.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_jet
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jet
PRODUCT_MODEL := GT-S8000
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GWK74 BUILD_FINGERPRINT=samsung/jet/jet:2.3.7/GWK74/185293:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.7 GWK74 185293 release-keys" BUILD_NUMBER=185293

# Extra jet overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/jet

# Release name and versioning
PRODUCT_VERSION_DEVICE_SPECIFIC := -alpha8
PRODUCT_RELEASE_NAME := jet
-include vendor/cyanogen/products/common_versions.mk

#
# Copy jet specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
