#
# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/ms013g

# Assert
TARGET_OTA_ASSERT_DEVICE := ms013g,ms01lte

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/ms013g
TARGET_KERNEL_CONFIG := msm8226-sec_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8226-sec_ms013g_eur_defconfig
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_ms013g.c
TARGET_UNIFIED_DEVICE := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 1024
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A7DEA0
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1866465280
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5555010560
TARGET_USERIMAGES_USE_EXT4 := true

# Audio
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_SAMSUNG_DUAL_SIM := true

# Radio
SIM_COUNT := 2
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM

# Radio
BOARD_RIL_CLASS := ../../../device/samsung/ms013g/ril/

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/ms013g

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom

# SELinux policies
# qcom sepolicy
include device/qcom/sepolicy/sepolicy.mk

# inherit from the proprietary version
-include vendor/samsung/ms013g/BoardConfigVendor.mk
