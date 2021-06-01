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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit additional product configuration
$(call inherit-product, build/target/product/embedded.mk)

# Copy files inside recovery/root of a20s device tree
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a20s/recovery/root,recovery/root)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_a20s
PRODUCT_DEVICE := a20s
PRODUCT_MODEL := SM-A207M
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
