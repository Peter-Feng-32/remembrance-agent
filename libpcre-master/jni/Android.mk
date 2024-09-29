LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    pcre_byte_order.c \
	pcre_newline.c \
	pcre_chartables.c \
	pcre_ord2utf8.c \
	pcre_compile.c \
	pcre_refcount.c \
	pcre_config.c \
	pcre_string_utils.c \
	pcre_dfa_exec.c \
	pcre_study.c \
	pcre_exec.c \
	pcre_tables.c \
	pcre_fullinfo.c \
	pcre_ucd.c \
	pcre_get.c \
	pcre_valid_utf8.c \
	pcre_globals.c \
	pcre_version.c \
	pcre_jit_compile.c \
	pcre_xclass.c \
	pcre_maketables.c \

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/

LOCAL_CFLAGS := -DHAVE_CONFIG_H
LOCAL_MODULE := pcre

include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)