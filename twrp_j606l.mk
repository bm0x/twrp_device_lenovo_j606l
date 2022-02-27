#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
DEVICE_PATH := device/lenovo/j606l
PRODUCT_RELEASE_NAME := j606l
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_PACKAGES += fastbootd

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lenovo/j606l/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j606l
PRODUCT_NAME := twrp_j606l
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := Lenovo Tab P11 TB-J606L
PRODUCT_MANUFACTURER := lenovo

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31


