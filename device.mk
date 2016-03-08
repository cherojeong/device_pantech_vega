#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL mako devices, and
# are also specific to mako devices
#
# Everything in this directory will become public

# $(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# 
# # The gps config appropriate for this device
# $(call inherit-product, device/common/gps/gps_us_supl.mk)
# 
$(call inherit-product-if-exists, vendor/pantech/vega/vega-vendor.mk)


DEVICE_PACKAGE_OVERLAYS := device/pantech/vega/overlay

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

LOCAL_PATH := device/pantech/vega
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


PRODUCT_COPY_FILES += \
	device/pantech/vega/audio_policy.conf:system/etc/audio_policy.conf \
	device/pantech/vega/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
	device/pantech/vega/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
	device/pantech/vega/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm \
	device/pantech/vega/snd_soc_msm/snd_soc_msm_2x_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm \
	device/pantech/vega/snd_soc_msm/snd_soc_msm_I2S:system/etc/snd_soc_msm/snd_soc_msm_I2S \
	device/pantech/vega/snd_soc_msm/snd_soc_msm_I2SFusion:system/etc/snd_soc_msm/snd_soc_msm_I2SFusion \
	device/pantech/vega/snd_soc_msm/snd_soc_msm_Sitar:system/etc/snd_soc_msm/snd_soc_msm_Sitar \
	device/pantech/vega/snd_soc_msm/snd_soc_msm_Sitar_Sglte:system/etc/snd_soc_msm/snd_soc_msm_Sitar_Sglte \
	device/pantech/vega/snd_soc_msm/snd_soc_msm_Sitar_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm 

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

#device/pantech/vega/rootdir/etc/init.qcom.rc:root/init.vega.rc 
#device/pantech/vega/rootdir/etc/init.pantech.usb.rc:root/init.qcom.usb.rc 
#device/pantech/vega/rootdir/etc/init.pantech.usb.sh:root/init.qcom.usb.sh 

PRODUCT_COPY_FILES += \
	device/pantech/vega/init.vega.rc:root/init.vega.rc \
	device/pantech/vega/rootdir/etc/init.pantech.usb.rc:root/init.vega.usb.rc \
	device/pantech/vega/rootdir/etc/init.pantech.usb.sh:root/init.qcom.usb.sh \
	device/pantech/vega/init.target.rc:root/init.target.rc \
	device/pantech/vega/fstab.vega:root/fstab.vega \
	device/pantech/vega/ueventd.vega.rc:root/ueventd.vega.rc 

# QCOM RC & SH ROOT
PRODUCT_COPY_FILES += \
	device/pantech/vega/rootdir/etc/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
	device/pantech/vega/rootdir/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	device/pantech/vega/init.vega.bt.sh:system/etc/init.qcom.bt.sh \
	device/pantech/vega/rootdir/etc/init.qcom.btdun.sh:system/etc/init.qcom.btdun.sh \
	device/pantech/vega/rootdir/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
	device/pantech/vega/rootdir/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
	device/pantech/vega/rootdir/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
	device/pantech/vega/rootdir/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	device/pantech/vega/rootdir/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
	device/pantech/vega/rootdir/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
	device/pantech/vega/rootdir/etc/init.qcom.sh:root/init.qcom.sh \
	device/pantech/vega/rootdir/etc/init.class_main.sh:root/init.class_main.sh \
	device/pantech/vega/rootdir/etc/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
	device/pantech/vega/rootdir/etc/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	device/pantech/vega/rootdir/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh 

PRODUCT_COPY_FILES += \
	device/pantech/vega/rootdir/etc/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	device/pantech/vega/rootdir/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \

#wlan driver & BT
PRODUCT_COPY_FILES += \
	device/pantech/vega/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/pantech/vega/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
	device/pantech/vega/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
	device/pantech/vega/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
	device/pantech/vega/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
	device/pantech/vega/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
	device/pantech/vega/xtwifi.conf:system/etc/xtwifi.conf \
	device/pantech/vega/init.wlan.sh:system/etc/init.wlan.sh \
	device/pantech/vega/init.vega.bt.sh:system/etc/init.vega.bt.sh \
	device/pantech/vega/unblock_wakelock.sh:system/etc/unblock_wakelock.sh

PRODUCT_COPY_FILES += \
	device/pantech/vega/media_profiles.xml:system/etc/media_profiles.xml \
	device/pantech/vega/media_codecs.xml:system/etc/media_codecs.xml \
	device/pantech/vega/mixer_paths.xml:system/etc/mixer_paths.xml

#gps
PRODUCT_COPY_FILES += \
	device/pantech/vega/gps.conf:system/etc/gps.conf \
   	device/pantech/vega/sec_config:system/etc/sec_config \
   	device/pantech/vega/lowi.conf:system/etc/lowi.conf \
	device/pantech/vega/quipc.conf:system/etc/quipc.conf \
	device/pantech/vega/msap.conf:system/etc/msap.conf \
	device/pantech/vega/cacert_location.pem:system/etc/cacert_location.pem \
	device/pantech/vega/xtra_root_cert.pem:system/etc/xtra_root_cert.pem

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck

PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	libmemalloc \
	hwcomposer.msm8960 \
	gralloc.msm8960 \
	copybit.msm8960 \
	memtrack.msm8960

PRODUCT_PACKAGES += \
	alsa.msm8960 \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler

PRODUCT_PACKAGES += \
	hci_qcomm_init

PRODUCT_PACKAGES += \
	power.msm8960

PRODUCT_COPY_FILES += \
	device/pantech/vega/thermald-8064.conf:system/etc/thermald-8064.conf \
	device/pantech/vega/thermal-engine-8064.conf:system/etc/thermal-engine-8064.conf

#KEY
PRODUCT_COPY_FILES += \
	device/pantech/vega/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/pantech/vega/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.bt.hci_transport=smd \
    ro.qualcomm.bluetooth.opp=true \
    ro.qualcomm.bluetooth.hfp=true \
    ro.qualcomm.bluetooth.hsp=true \
    ro.qualcomm.bluetooth.pbap=true\
    ro.qualcomm.bluetooth.ftp=true \
    ro.qualcomm.bluetooth.map=true \
    ro.qualcomm.bluetooth.nap=true \
    ro.qualcomm.bluetooth.sap=true \
    ro.qualcomm.bluetooth.dun=false\
	ro.bluetooth.hfp.ver=1.6 \
	ro.qc.bluetooth.stack=bluez


PRODUCT_PACKAGES += \
	camera.msm8960 \
	libmmcamera_interface2 \
	libmmcamera_interface

PRODUCT_PACKAGES += \
	mm-vdec-omx-test \
	mm-venc-omx-test720p \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libstagefrighthw \
	libc2dcolorconvert

ifneq ($(TARGET_PROVIDES_GPS_LOC_API),true)
PRODUCT_PACKAGES += \
	libloc_adapter \
	libloc_eng \
	libloc_api_v02 \
	libgps.utils \
	gps.msm8960 
endif

PRODUCT_PACKAGES += \
	libwfcu \
	conn_init \
	lights.msm8960

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so

PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=true \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	ro.opengles.version=131072 \
	ro.sf.lcd_density=320 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml 

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)
