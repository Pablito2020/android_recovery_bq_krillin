# Local path
LOCAL_PATH := device/bq/krillin

# Prebuilt kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/recovery/kernel/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Copy necessary files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/kernel/kernel:kernel \
    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/healthd \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Call the necesary libraries from twrp
$(call inherit-product, build/target/product/full.mk)

# BQ Aquaris E4.5 specific
PRODUCT_NAME := krillin
