#!/bin/bash

# Main flags
export ALLOW_MISSING_DEPENDENCIES="true"
export TARGET_ARCH="arm64"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export LC_ALL="C"

# TWRP/OFR flags (Common)
export TW_DEFAULT_LANGUAGE="en"
export FOX_VERSION="R11.0"
export FOX_R11="1"
export TARGET_ARCH="arm64"
export USE_CCACHE="1"

# Device-specific flags
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR="1"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="0"
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
export LZMA_RAMDISK_TARGETS="recovery"
export FOX_USE_LZMA_COMPRESSION="1"
export FOX_REPLACE_BUSYBOX_PS="1"
export OF_USE_TWRP_SAR_DETECT="1"
export OF_STATUS_INDENT_RIGHT="34"
export OF_STATUS_INDENT_LEFT="34"
export FOX_ADVANCED_SECURITY="1"
export OF_FLASHLIGHT_ENABLE="0"
export FOX_USE_NANO_EDITOR="1"
export FOX_USE_BASH_SHELL="1"
export OF_SCREEN_H="2340"

# Build type && Maintainer flags
export FOX_BUILD_TYPE="Stable"
export OF_MAINTAINER="Durasame"

# Build Time
source build/envsetup.sh
lunch omni_a20s-eng
mka recoveryimage
