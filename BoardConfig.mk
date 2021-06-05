#
# Copyright 2021 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/a20s

# Android Verified Boot
BOARD_AVB_ENABLE := false
BOARD_BUILD_DISABLED_VBMETAIMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

# 2nd Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# CPUSets and Sched
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Assert
TARGET_OTA_ASSERT_DEVICE := a20s

# Kernel: Base flags
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkboot/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_serial_dm,0x78af000 firmware_class.path=/vendor/firmware_mnt/image androidboot.usbconfigfs=true androdboot.selinux=permissive
BOARD_BOOTIMG_HEADER_VERSION := 1

# Kernel: Board (kernel...) flags
BOARD_NAME               := SRPSF13B002
BOARD_KERNEL_IMAGE_NAME  := Image.gz-dtb
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_BASE        := 0x80000000
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000

# Kernel: Build flags
TARGET_KERNEL_SOURCE := kernel/samsung/a20s
TARGET_KERNEL_CONFIG := a20s_defconfig
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_ARCH := arm64

# Kernel: mkbootimgs args
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --board $(BOARD_NAME)

# Prebuilt: DTBO
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true

# Platform: Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8953

# Platform: Board
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
QCOM_BOARD_PLATFORMS += $(TARGET_BOARD_PLATFORM)

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
LZMA_RAMDISK_TARGETS := recovery
BOARD_FLASH_BLOCK_SIZE := 131072
RECOVERY_SDCARD_ON_DATA := true

# Encryption: Patch/Version
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31

# Encryption: Setup
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
TW_INCLUDE_FBE_METADATA_DECRYPT := false

# File systems
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_SYSTEMIMAGE_PARTITION_TYPE     := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TW_INCLUDE_FUSE_NTFS := true
TARGET_USES_MKE2FS := true

# Partition: Size
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_PRODUCTIMAGE_PARTITION_SIZE  := 343932928
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 4026531840
BOARD_VENDORIMAGE_PARTITION_SIZE   := 1006632960
BOARD_CACHEIMAGE_PARTITION_SIZE    := 222298112
BOARD_BOOTIMAGE_PARTITION_SIZE     := 67108864
BOARD_DTBOIMAGE_PARTITION_SIZE     := 8388608

# Partition: System-As-Root and Extras rootfs
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_ROOT_EXTRA_FOLDERS := efs

# Target copy out
TARGET_COPY_OUT_VENDOR := vendor

# Extras
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# TWRP Configuration: Basic config
TW_HAS_DOWNLOAD_MODE := true
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_NO_EXFAT_FUSE := true
TW_NO_LEGACY_PROPS := true
TW_NO_BIND_SYSTEM := true
TW_EXCLUDE_TWRPAPP := true
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"

# TWRP Configuration: Brightness
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150

# TWRP Configuration: Logd
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
