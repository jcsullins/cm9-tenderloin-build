#!/bin/sh

# hax for tenderloin (hardware/qcom/display)
echo ">>> START 12781/1"
pushd hardware/qcom/display
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_hardware_qcom_display refs/changes/81/12781/1 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 12781/1"
echo ""

# libcutils/android_reboot: tenderloin hax to use HPalm restart_reasons
echo ">>> START 12782/1"
pushd system/core
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_system_core refs/changes/82/12782/1 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 12782/1"
echo ""


# Temporary commit for working qcom OMX decoding
echo ">>> START 13107/7"
pushd frameworks/base
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_frameworks_base refs/changes/07/13107/7 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 13107/7"
echo ""

# add headers, PRODUCT_PACKAGES for OMX
echo ">>> START 12877/1"
pushd device/hp/tenderloin
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_device_hp_tenderloin refs/changes/77/12877/1 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 12877/1"
echo ""

# Added MSM vidc headers (latest from CAF)
echo ">>> START 12862/1"
pushd device/hp/tenderloin
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_device_hp_tenderloin refs/changes/62/12862/2 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 12862/1"
echo ""

echo ">>> START 12960/1"
pushd vendor/qcom/opensource/omx/mm-video
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_vendor_qcom_opensource_omx_mm-video refs/changes/60/12960/2 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 12960/1"
echo ""

echo ">>> START 12961/1"
pushd vendor/qcom/opensource/omx/mm-core
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_vendor_qcom_opensource_omx_mm-core refs/changes/61/12961/1 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 12961/1"
echo ""

# BoardConfig: add USES_AUDIO_LEGACY define
echo ">>> START 13530/1"
pushd device/hp/tenderloin
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_device_hp_tenderloin refs/changes/30/13530/1 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 13530/1"
echo ""

# audio: Don't use QCOM_HARDWARE when AUDIO_LEGACY active (more)
echo ">>> START 13531/2"
pushd hardware/libhardware_legacy
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_hardware_libhardware_legacy refs/changes/31/13531/2 && git cherry-pick FETCH_HEAD
popd
echo ">>> END 13531/2"
echo ""

