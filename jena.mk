# Copyright (C) 2012 The CyanogenMod Project
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

DEVICE_PACKAGE_OVERLAYS += device/samsung/jena/overlay

include device/samsung/msm7x27a-common/msm7x27a.mk

## NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag

## NFC permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

## splash screen
PRODUCT_COPY_FILES += \
    device/samsung/jena/rootdir/GT-S6500.rle:root/GT-S6500.rle
   
$(call inherit-product, vendor/samsung/jena/blobs.mk)
$(call inherit-product, vendor/samsung/jena/blobs-nfc.mk)