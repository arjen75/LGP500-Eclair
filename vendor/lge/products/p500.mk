#
# Copyright (C) 2009 The Android Open Source Project
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


# This is the top-level configuration for a US-configured HTC Hero build

# Should core.mk include the TTS langs
INCLUDE_TTS_LANGS := true
INCLUDE_ALL_LOCALES := true

$(call inherit-product, vendor/lge/products/core.mk)

PRODUCT_NAME := p500

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p500
PRODUCT_MODEL := LG-P500
PRODUCT_NAME := p500

PRODUCT_POLICY := android.policy_phone

TARGET_BUILD_TYPE := release

PRODUCT_PACKAGE_OVERLAYS := vendor/lge/overlay

PRODUCT_LOCALES += \
	mdpi \
	hdpi

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage4.mk

# Pick up some hero settings (gps and voice settings).
include vendor/lge/p500/device.mk
