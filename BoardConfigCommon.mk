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

# Vendor
BOARD_VENDOR := htc

# Use headers in this folder instead of from kernel.
TARGET_PREBUILT_HEADERS := true
TARGET_SPECIFIC_HEADER_PATH := device/htc/msm8660-common/include

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm8660

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := scorpion
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GCC_VERSION := 4.6
TARGET_GCC_VERSION_EXP := 4.6

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_GLOBAL_CPPFLAGS += -DQCOM_HARDWARE

# FB legacy
BOARD_EGL_NEEDS_LEGACY_FB := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_LEGACY_QCOM := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
COMMON_GLOBAL_CFLAGS += -DHTC_ACOUSTIC_AUDIO -DLEGACY_QCOM_VOICE

# Audio legacy
#TARGET_QCOM_AUDIO_VARIANT := legacy
#COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED -DLEGACY_QCOM_VOICE
#COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
#COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_LPA
#TARGET_USES_QCOM_LPA := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/htc/msm8660-common/bluetooth/vnd_msm8660.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/htc/msm8660-common/bluetooth/include
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := true

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNO_UPDATE_PREVIEW
BOARD_HAVE_HTC_FFC := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
#TARGET_DISABLE_ARM_PIE := true
BOARD_CAMERA_USE_MM_HEAP := true
TARGET_PROVIDES_CAMERA_HAL := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
# Camera wrapper
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Filesystem
BOARD_VOLD_MAX_PARTITIONS := 36

# FM Radio
#BOARD_HAVE_QCOM_FM := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_USES_LEGACY_MEDIA := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DREFRESH_RATE=60 -DHTC_RGBA_8888_OFFSET
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_PMEM := true
BOARD_EGL_CFG := device/htc/msm8660-common/configs/egl.cfg

# Lights
TARGET_PROVIDES_LIBLIGHT := true
TARGET_PROVIDES_LIBLIGHTS := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
DYNAMIC_SHARED_LIBV8SO := true

# SELinux
BOARD_SEPOLICY_DIRS += \
	device/htc/msm8660-common/sepolicy

BOARD_SEPOLICY_UNION += \
	adbd.te \
	file_contexts \
	property_contexts \
	te_macros \
	bluetooth_loader.te \
	bridge.te \
	camera.te \
	conn_init.te \
	device.te \
	dhcp.te \
	dnsmasq.te \
	domain.te \
	drmserver.te \
	file.te \
	hostapd.te \
	init.te \
	libqc-opt.te \
	mediaserver.te \
	mpdecision.te \
	netd.te \
	netmgrd.te \
	nfc.te \
	property.te \
	qcom.te \
	qmux.te \
	radio.te \
	rild.te \
	rmt.te \
	sdcardd.te \
	sensors.te \
	surfaceflinger.te \
	system.te \
	tee.te \
	thermald.te \
	ueventd.te \
	vold.te \
	wpa_supplicant.te \
	zygote.te

#TARGET_EXTRA_CFLAGS += $(call cc-option,-mtune=cortex-a9,$(call cc-option,-mtune=cortex-a8)) $(call cc-option,-mcpu=cortex-a9,$(call cc-option,-mcpu=cortex-a8))
