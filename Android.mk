LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	src/yajl.c \
	src/yajl_alloc.c \
	src/yajl_buf.c \
	src/yajl_encode.c \
	src/yajl_gen.c \
	src/yajl_lex.c \
	src/yajl_parser.c \
	src/yajl_tree.c \
	src/yajl_version.c


LOCAL_C_INCLUDES :=

LOCAL_CFLAGS := -std=c99 -pedantic -Wpointer-arith -Wno-format-y2k -Wstrict-prototypes -Wmissing-declarations -Wnested-externs -Wextra  -Wundef -Wwrite-strings -Wold-style-definition -Wredundant-decls -Wno-unused-parameter -Wno-sign-compare -Wmissing-prototypes
LOCAL_CFLAGS += -DNDEBUG -O2 -Wuninitialized

LOCAL_MODULE := libyajl

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_ARM_NEON:= true
endif

include $(BUILD_SHARED_LIBRARY)
