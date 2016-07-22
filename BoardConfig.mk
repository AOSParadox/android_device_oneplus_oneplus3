#
# Copyright (C) 2016 The AOSParadox Project
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

# inherit CodeAurora MSM8996 Board Config
-include device/qcom/msm8996/BoardConfig.mk

# Boldly go.
USE_CLANG_PLATFORM_BUILD := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/oneplus/oneplus3/include

# Assertions
TARGET_OTA_ASSERT_DEVICE := OnePlus3,oneplus3

# Bootloader
TARGET_NO_BOOTLOADER := true

# Architecture
ENABLE_CPUSETS := true

# Audio
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oneplus/oneplus3/bluetooth
BOARD_HAS_QCA_BT_ROME := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true

# Dex-opt
# Enable dex pre-opt to speed up initial boot
ifeq ($(HOST_OS),linux)
      WITH_DEXPREOPT := true
endif

# GPS
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_oneplus3
TARGET_RECOVERY_DEVICE_MODULES := libinit_oneplus3

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive # Selinux permissive for bringup
KERNEL_DIR := kernel/oneplus/msm8996
KERNEL_DEFCONFIG := cyanogenmod_oneplus3_defconfig
TARGET_RECOVERY_FSTAB := device/oneplus/oneplus3/ramdisk/fstab.qcom


# NFC
TARGET_USES_NQ_NFC := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3154116608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57436708864
TARGET_USERIMAGES_USE_F2FS := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := false

# Sepolicy
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/oneplus/oneplus3/sepolicy

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit from the proprietary version
-include vendor/oneplus/oneplus3/BoardConfigVendor.mk
