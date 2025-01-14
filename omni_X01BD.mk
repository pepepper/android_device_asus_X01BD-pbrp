#
# Copyright (C) 2020 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := X01BD

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.controller=a800000.dwc3 \
    sys.usb.rndis.func.name=rndis_bam \
    sys.usb.rmnet.func.name=rmnet_bam

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_MANUFACTURER := Asus
PRODUCT_BRAND := Asus
PRODUCT_MODEL := Zenfone Max Pro M2

TARGET_VENDOR_PRODUCT_NAME := X01BD
TARGET_VENDOR_DEVICE_NAME := X01BD
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=X01BD PRODUCT_NAME=X01BD
