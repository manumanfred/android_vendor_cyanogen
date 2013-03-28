# Inherit AOSP device configuration for galaxys.
$(call inherit-product, device/friendlyarm/tiny6410/full_tiny6410.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_tiny6410
PRODUCT_BRAND := friendlyarm
PRODUCT_DEVICE := tiny6410
PRODUCT_MODEL := tiny6410
PRODUCT_MANUFACTURER := friendlyarm
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/soju/tiny6410:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

# Extra tiny6410 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/tiny6410

# Add the FM app
PRODUCT_PACKAGES += FM

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-tiny6410
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-tiny6410
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-tiny6410-KANG
    endif
endif

#
# Copy tiny6410 specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
