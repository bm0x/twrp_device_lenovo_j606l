LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),j606l)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
