# Copyright (C) 2013 Sony Mobile Communication
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

LOCAL_PATH := $(call my-dir)

ifeq (honami, $(TARGET_DEVICE))
include $(CLEAR_VARS)
LOCAL_MODULE := sensors
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES := bin/sensors.qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .qcom
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Handset_cal
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES := etc/Handset_cal.acdb
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .acdb
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Speaker_cal
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES := etc/Speaker_cal.acdb
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .acdb
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ansi_cprng
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES := lib/modules/ansi_cprng.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .ko
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := scsi_wait_scan
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES := lib/modules/scsi_wait_scan.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .ko
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := wlan
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES := lib/modules/wlan.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .ko
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)
endif
