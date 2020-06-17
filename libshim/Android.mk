LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     systemcontrolshim.cpp

LOCAL_SHARED_LIBRARIES := libbinder

LOCAL_MODULE := libshim_systemcontrol
LOCAL_MODULE_TAGS := optional


include $(BUILD_SHARED_LIBRARY)

