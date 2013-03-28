# Inherit AOSP device configuration for galaxys.
$(call inherit-product, device/samsung/spica/full_spica.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_spica
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := spica
PRODUCT_MODEL := GT-I5700
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GWK74 BUILD_FINGERPRINT=google/soju/spica:2.3.7/GWK74/185293:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.7 GWK74 185293 release-keys" BUILD_NUMBER=185293

# Extra spica overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/spica

# Release name and versioning
PRODUCT_VERSION_DEVICE_SPECIFIC := -alpha8
PRODUCT_RELEASE_NAME := Spica
-include vendor/cyanogen/products/common_versions.mk

#
# Copy spica specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
