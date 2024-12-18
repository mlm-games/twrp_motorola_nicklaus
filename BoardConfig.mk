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

LOCAL_PATH := device/motorola/nicklaus

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := mt6737m

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6737m
TARGET_NO_BOOTLOADER := true

# Filesystems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Kernel
# BOARD_KERNEL_IMAGE_NAME := zImage-dtb
# TARGET_KERNEL_SOURCE := kernel/motorola/nicklaus
# TARGET_KERNEL_CONFIG := nicklaus_defconfig
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/zImage-dtb
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0xE000000
# KERNEL_TOOLCHAIN_PREFIX := arm-linux-androidkernel-

# Storage Allocations

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP
TW_THEME := portrait_hdpi
TW_DEVICE_VERSION := 1_stable
TW_INCLUDE_CRYPTO := true
TW_ALWAYS_RMRF := true
TW_INCLUDE_FB2PNG := true
TW_NO_SCREEN_BLANK := true
TW_INCLUDE_FUSE_EXFAT := true # exFAT FS Support
TW_INCLUDE_FUSE_NTFS := true  # NTFS Support
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
# TW_EXCLUDE_LPDUMP := true
# TW_EXCLUDE_LPTOOLS := true
# TW_EXCLUDE_NANO := true
# TW_EXCLUDE_BASH := true
# TW_EXCLUDE_PYTHON := true
# TW_EXCLUDE_TWRPAPP := true

# Auto configures these
#TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

