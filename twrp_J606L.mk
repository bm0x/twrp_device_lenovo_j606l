#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from J606L device
$(call inherit-product, device/lenovo/J606L/device.mk)
PRODUCT_RELEASE_NAME := J606L
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_PACKAGES += fastbootd

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, vendor/twrp/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := J606L
PRODUCT_NAME := twrp_J606L
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo Tab P11 TB-J606L
PRODUCT_MANUFACTURER := lenovo

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31