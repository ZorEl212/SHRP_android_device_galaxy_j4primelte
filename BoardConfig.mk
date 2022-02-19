#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
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

LOCAL_PATH := device/samsung/j4primelte

# Inherit from common msm8917-common
-include device/samsung/msm8917-common/BoardConfigCommon.mk

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

#kernel
include $(LOCAL_PATH)/kernel.mk

# TWRP-configs
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_FSFS := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_USES_MKE2FS := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150
TW_EVENT_LOGGING := true
TW_INCLUDE_NTFS_3G := true
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_IGNORE_MISC_WIPE_DATA := true
RECOVERY_SDCARD_ON_DATA := true
TW_USE_TOOLBOX := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone11/temp"

#shrp

SHRP_PATH := device/samsung/j4primelte
SHRP_MAINTAINER := Kycii91
SHRP_DEVICE_CODE := j4primelte
SHRP_EXTERNAL := /sdcard1
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_REC := /dev/block/bootdevice/by-name/recovery
SHRP_AB := false
SHRP_REC_TYPE := SAR
SHRP_DEVICE_TYPE := A_Only
SHRP_EXPRESS := true
SHRP_DARK := true
SHRP_SKIP_DEFAULT_ADDON_3 := true
SHRP_FLASH := 1
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FONP_1 := /sys/devices/virtual/camera/flash/rear_flash
SHRP_FLASH_MAX_BRIGHTNESS := 1

#setting Up add-on folder
SHRP_EXTERNAL_ADDON_PATH := "device/samsung/j4primelte/addons/"

#Pass Reset Add-on
SHRP_EXTERNAL_ADDON_1_NAME := "Lock Screen Password Rest"
SHRP_EXTERNAL_ADDON_1_INFO := "This patch will remove Lock Screen Password of your phone. Helpful in senario of forgotten password."
SHRP_EXTERNAL_ADDON_1_FILENAME := "PassReset.zip"
SHRP_EXTERNAL_ADDON_1_BTN_TEXT := "Confirm"
SHRP_EXTERNAL_ADDON_1_SUCCESSFUL_TEXT := "Password Removed!"
#Face Unlock Fix Add-on 
SHRP_EXTERNAL_ADDON_2_NAME := "Face Unlock Fix"
SHRP_EXTERNAL_ADDON_2_NAME_INFO := "Face Unlock Fix for ROMs with face unlock issue. Please know this may not be compatable with all roms."
SHRP_EXTERNAL_ADDON_2_FILENAME := "FaceUnlockFix.zip"
SHRP_EXTERNAL_ADDON_2_BTN_TEXT := "Confirm"
SHRP_EXTERNAL_ADDON_2_SUCCESSFUL_TEXT := "Fix Applied"

#Oreo Forced Encryption Disabler
SHRP_EXTERNAL_ADDON_3_NAME := "Oreo Forced Encryption Disabler"
SHRP_EXTERNAL_ADDON_3_INFO := "Disable Data Encryption on stock ROM. Note: This Patch sould be applied on Stock ROM only."
SHRP_EXTERNAL_ADDON_3_FILENAME := "oreo_forced_encryption_disabler.zip"
SHRP_EXTERNAL_ADDON_3_BTN_TEXT := "Confirm"
SHRP_EXTERNAL_ADDON_3_SUCCESSFUL_TEXT := "Fix Applied"
SHRP_INC_IN_REC_EXTERNAL_ADDON_3 := true

#FM Radio Fix
SHRP_EXTERNAL_ADDON_4_NAME := "FM Radio Fix"
SHRP_EXTERNAL_ADDON_4_INFO := "FM Raido Fix For ROMs with FM Radio bug. Please make sure the patch is compatable with your ROM before applying."
SHRP_EXTERNAL_ADDON_4_FILENAME := "FM-Radio_fix.zip"
SHRP_EXTERNAL_ADDON_4_BTN_TEXT := "Confirm"
SHRP_EXTERNAL_ADDON_4_SUCCESSFUL_TEXT := "Fix Applied"

#RMM Bypass ZIp
SHRP_EXTERNAL_ADDON_5_NAME := "RMM Bypass V3"
SHRP_EXTERNAL_ADDON_5_INFO := "Patch to prevent smasung devices from being locked after flashing custom binaries."
SHRP_EXTERNAL_ADDON_5_FILENAME := "RMM_Bypass_v3_corsicanu.zip"
SHRP_EXTERNAL_ADDON_5_BTN_TEXT := "Confirm"
SHRP_EXTERNAL_ADDON_5_SUCCESSFUL_TEXT := "Fix Applied"
SHRP_INC_IN_REC_EXTERNAL_ADDON_5 := true

# Assert
TARGET_OTA_ASSERT_DEVICE := j4primelte
