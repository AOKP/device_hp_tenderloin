LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

#
## TP Application
#
#
#LOCAL_C_INCLUDES:= uim.h

LOCAL_SRC_FILES:= \
	ts_srv.c
LOCAL_CFLAGS:= -g -c -W -Wall -O2 -D_POSIX_SOURCE -I/home/green/touchpad/hp_tenderloin_kernel/include
LOCAL_MODULE:=ts_srv
LOCAL_MODULE_TAGS:= eng
include $(BUILD_EXECUTABLE)

