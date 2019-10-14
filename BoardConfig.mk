#
# Copyright (C) 2017 The Android Open Source Project
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

LOCAL_PATH := device/mediatek/C10_LFLT

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_BOARD_PLATFORM := mt6739m

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6739m
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_TAGS_OFFSET := 0x04000000
BOARD_RAMDISK_OFFSET := 0x05000000
BOARD_KERNEL_OFFSET := 0x00008000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1887436800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP Configuration
TW_THEME := watch_mdpi
TW_SCREEN_BLANK_ON_BOOT := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_CRYPTO := true
TW_REBOOT_BOOTLOADER := true
TW_REBOOT_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/etc/twrp.fstab
TW_BRIGHTNESS_PATH := "/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
