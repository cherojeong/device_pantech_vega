# config.mk
#
# Product-specific compile-time definitions.
#





BOARD_USES_GENERIC_AUDIO := false
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/pantech/vega/BoardConfigVendor.mk

TARGET_USE_HDMI_AS_PRIMARY := false

ifeq ($(TARGET_USE_HDMI_AS_PRIMARY),true)
    TARGET_HAVE_HDMI_OUT := false
else
    TARGET_HAVE_HDMI_OUT := true
endif # TARGET_USE_HDMI_AS_PRIMARY
#TODO: Fix-me: Setting TARGET_HAVE_HDMI_OUT to false
# to get rid of compilation error.

TARGET_HAVE_HDMI_OUT := false
TARGET_USES_OVERLAY := true
TARGET_NO_BOOTLOADER := false

TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_CPU_VARIANT := krait

ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_HARDWARE_3D := false
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := MSM8960
TARGET_NO_BOOTLOADER := true
QCOM_BOARD_PLATFORMS += msm8960

BOARD_KERNEL_BASE    := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

# Try to build the kernel

TARGET_KERNEL_CONFIG := vega_defconfig
TARGET_KERNEL_UBUNTU := false
TARGET_KERNEL_UBUNTU_META := linux-image-vega
TARGET_KERNEL_UBUNTU_SERIES := vivid

BOARD_USES_ALSA_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_ION := true
TARGET_USES_WFD := true
USE_OPENGL_RENDERER := true

BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_ATH_WLAN_AR6004 := true
#BOARD_HAVE_QCOM_FM := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAS_QCA_BT_AR3002 := true
HAVE_QC_TIME_SERVICES := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

TARGET_PROVIDES_GPS_LOC_API := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
TARGET_USES_POST_PROCESSING := true
TARGET_KERNEL_SOURCE := kernel/pantech/vega

# FIXME: HOSTAPD-derived wifi driver

BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_ARG := ""
WPA_SUPPLICANT_VERSION := VER_0_8_X
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"


BOARD_EGL_CFG := device/pantech/vega/egl.cfg
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4

#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=vega user_debug=31 maxcpus=4 apparmor=1
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=vega maxcpus=4 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 apparmor=1 
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1730150400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10737418240
BOARD_CACHEIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_PARTITION_SIZE := 5242880
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE := 268435456
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Use signed boot and recovery image
TARGET_BOOTIMG_SIGNED := true

TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

HAVE_CYTTSP_FW_UPGRADE := true
HAVE_MXT_FW_UPGRADE := true
HAVE_MXT_CFG := true

# Add NON-HLOS files for ota upgrade
ADD_RADIO_FILES ?= false

# Added to indicate that protobuf-c is supported in this build
PROTOBUF_SUPPORTED := true

TARGET_RELEASETOOLS_EXTENSIONS := device/pantech/vega

# Add building support AR8151 ALX ethernet driver
# BOARD_HAS_ATH_ETH_ALX := true

#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_UI_LIB := librecovery_ui_qcom
TARGET_RECOVERY_UI_LIB := librecovery_ui_vega
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
USE_DEVICE_SPECIFIC_CAMERA:= true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true

BOARD_HAS_NO_SELECT_BUTTON := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_USES_QCOM_BSP := true

COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -DNEW_ION_API
COMMON_GLOBAL_CFLAGS += -DQCOM_STAGEFRIGHT_PATCH

TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_HAVE_NEW_QCOM_CSDCLIENT := true
#TARGET_PROVIDES_LIBLIGHT := true

BOARD_PROVIDES_LIBRIL := true
BOARD_USE_NEW_LIBRIL_QCOM := true
#Camera
TARGET_PROVIDES_CAMERA_HAL := true
#TARGET_PROVIDES_CAMERA_HAL := false
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

#Power HAL
TARGET_PROVIDES_POWERHAL := true

BOARD_NOT_HDMI_SUPPORT := true
# BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true
TARGET_USES_UBUNTU_TOUCH := true

TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

TARGET_RECOVERY_FSTAB = device/pantech/vega/fstab.vega

BOARD_SEPOLICY_DIRS := \
       device/pantech/vega/sepolicy

BOARD_SEPOLICY_UNION := \
		app.te \
		bluetooth.te \
		compatibility.te \
		device.te \
		domain.te \
		drmserver.te \
		file.te \
		file_contexts \
		hci_init.te \
		init_shell.te \
		keystore.te \
		mediaserver.te \
		kickstart.te \
		nfc.te \
		rild.te \
		surfaceflinger.te \
		system.te \
		ueventd.te \
		wpa.te
