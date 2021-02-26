#!/bin/bash

# Exports
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"
export FOX_REPLACE_BUSYBOX_PS="1"
export FOX_USE_BASH_SHELL="1"
export FOX_USE_LZMA_COMPRESSION="1"
export FOX_USE_NANO_EDITOR="1"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export LC_ALL="C"
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
export OF_MAINTAINER="Velosh"
export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES="1"
export OF_USE_TWRP_SAR_DETECT="1"
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR="1"
export OF_OTA_RES_DECRYPT="1"
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
export OF_USE_NEW_MAGISKBOOT="1"
export TARGET_ARCH="arm64"
export TW_DEFAULT_LANGUAGE="en"
export FOX_VERSION="R11.0"
export FOX_R11="1"
export USE_CCACHE="1"
export OF_FLASHLIGHT_ENABLE="0"
export OF_SCREEN_H="2340"
export FOX_BUILD_TYPE="Stable"
export FOX_ADVANCED_SECURITY="1"
export LZMA_RAMDISK_TARGETS="recovery"

# Build Time
source build/envsetup.sh
lunch omni_a20s-eng
mka recoveryimage
