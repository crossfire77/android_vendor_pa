# Copyright (C) 2012 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_marvel,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := MDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_mdpi

# Build paprefs from sources
PREFS_FROM_SOURCE := false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/htc/marvel/device_marvel.mk)

# CM Extras
-include vendor/pa/packages/cm.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := marvel
PRODUCT_NAME := pa_marvel
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := Wildfire S A510e
PRODUCT_MANUFACTURER := HTC

PRODUCT_VERSION_DEVICE_RELEASE := A0
PRODUCT_VERSION_DEVICE_SPECIFIC := $(PRODUCT_VERSION_DEVICE_RELEASE)-V0

# CM_RELEASE := true
CM_BUILDTYPE := UNOFFICIAL
CM_EXTRAVERSION := $(PRODUCT_VERSION_DEVICE_RELEASE)


BUILD_ID := CM10.1-$(shell date -u +%Y%m%d)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_marvel BUILD_ID=$(BUILD_ID) BUILD_DISPLAY_ID=$(BUILD_ID) BUILD_FINGERPRINT=cyanogenmod/htc_marvel/marvel:4.2.1/$(BUILD_ID)/0.1:user/release-keys 
PRODUCT_RELEASE_NAME := CRYPTOMILK-based
