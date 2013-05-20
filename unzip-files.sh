#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=tenderloin;
MANUFACTURER=hp;

if [ $1 ]; then
    ZIPFILE=$1
else
    echo "ERROR: No zip file given."
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Cannot find $ZIPFILE.  Try specifying the update zip with $0 <zipfilename>"
    exit 1
fi

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

DIRS="
bin
etc
etc/firmware
lib
lib/egl
"

for DIR in $DIRS; do
    mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$DIR
done

#SHARED OBJECT LIBRARIES
unzip -j -o $ZIPFILE -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib \
    system/lib/libqmiservices.so \
    system/lib/libgemini.so \
    system/lib/libqmi.so \
    system/lib/libcamera.so \
    system/lib/libC2D2.so \
    system/lib/libc2d2_z180.so \
    system/lib/libOpenVG.so \
    system/lib/libmmipl.so \
    system/lib/libmmjpeg.so \
    system/lib/libqdp.so \
    system/lib/libdiag.so \
    system/lib/libgsl.so \
    system/lib/liboemcamera.so \
    system/lib/libsc-a2xx.so

#EGL
unzip -j -o $ZIPFILE -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl \
    system/lib/egl/egl.cfg \
    system/lib/egl/libEGL_adreno200.so \
    system/lib/egl/libq3dtools_adreno200.so \
    system/lib/egl/libGLESv2_adreno200.so \
    system/lib/egl/libGLESv2S3D_adreno200.so \
    system/lib/egl/libGLESv1_CM_adreno200.so \
    system/lib/egl/libGLES_android.so \
    system/lib/egl/eglsubAndroid.so

#BIN
unzip -j -o $ZIPFILE -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin \
    system/bin/dcvs \
    system/bin/usbhub \
    system/bin/mpld \
    system/bin/battery_charging \
    system/bin/usbhub_init \
    system/bin/sensord \
    system/bin/mpdecision \
    system/bin/thermald \
    system/bin/dcvsd

#Firmware
unzip -j -o $ZIPFILE -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware \
    system/etc/firmware/leia_pm4_470.fw \
    system/etc/firmware/leia_pfp_470.fw \
    system/etc/firmware/wm8958_mbc.wfw \
    system/etc/firmware/q6.b04 \
    system/etc/firmware/a6_1.txt \
    system/etc/firmware/q6.b00 \
    system/etc/firmware/a6.txt \
    system/etc/firmware/wm8958_mbc_vss.wfw \
    system/etc/firmware/q6.b05 \
    system/etc/firmware/vidc_1080p.fw \
    system/etc/firmware/q6.b01 \
    system/etc/firmware/q6.mdt \
    system/etc/firmware/yamato_pfp.fw \
    system/etc/firmware/yamato_pm4.fw \
    system/etc/firmware/a225_pfp.fw \
    system/etc/firmware/a225_pm4.fw \
    system/etc/firmware/a225p5_pm4.fw \
    system/etc/firmware/a300_pfp.fw \
    system/etc/firmware/a300_pm4.fw \
    system/etc/firmware/wm8958_enh_eq.wfw \
    system/etc/firmware/q6.b02 \
    system/etc/firmware/q6.b03

./setup-makefiles.sh

