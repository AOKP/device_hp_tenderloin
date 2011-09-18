LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

#
## TP Application
#
#
#LOCAL_C_INCLUDES:= uim.h

LOCAL_SRC_FILES:= \
	main.c
LOCAL_CFLAGS:= -g -c -W -Wall -O2 -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp -funsafe-math-optimizations -D_POSIX_SOURCE -I/home/green/touchpad/hp_tenderloin_kernel/include
LOCAL_MODULE:=alsatool
LOCAL_MODULE_TAGS:= eng

LOCAL_SHARED_LIBRARIES := \
	libaudio \
	libasound \
	libc

include $(BUILD_EXECUTABLE)

