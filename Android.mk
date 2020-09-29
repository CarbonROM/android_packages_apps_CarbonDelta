LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := CarbonDelta
LOCAL_MODULE_TAGS := optional
LOCAL_PRIVILEGED_MODULE := true
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_CERTIFICATE := platform

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

LOCAL_STATIC_ANDROID_LIBRARIES := android-support-v4 \
    androidx.cardview_cardview

LOCAL_USE_AAPT2 := true
LOCAL_AAPT_FLAGS := --auto-add-overlay
LOCAL_JNI_SHARED_LIBRARIES := libcarbondelta
LOCAL_REQUIRED_MODULES := libcarbondelta
LOCAL_PROGUARD_FLAG_FILES := proguard-project.txt

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
