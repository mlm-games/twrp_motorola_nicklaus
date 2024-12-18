#
# Copyright 2017 The Android Open Source Project
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

# Doesnt work for pbrp
## $(call inherit-product, vendor/omni/config/common.mk)


# Inherit from the common Omni configuration, if it exists
-include $(call if-exists,vendor/omni/config/common.mk)

# Inherit from the common PBRP configuration, if it exists
-include $(call if-exists,vendor/pbrp/config/common.mk)


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nicklaus
PRODUCT_NAME := omni_nicklaus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto E4 Plus
PRODUCT_MANUFACTURER := motorola
