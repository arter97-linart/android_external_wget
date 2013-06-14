LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

wget_SOURCES = cmpt.c connect.c convert.c cookies.c ftp.c \
	       css_.c css-url.c \
	       ftp-basic.c ftp-ls.c hash.c host.c html-parse.c html-url.c \
	       http.c init.c log.c main.c netrc.c progress.c ptimer.c \
	       recur.c res.c retr.c spider.c url.c warc.c \
	       utils.c exits.c build_info.c ftp-opie.c version.c

LOCAL_SRC_FILES := $(wget_SOURCES)
LOCAL_CFLAGS := -DWITH_CONFIG_H -I$(LOCAL_PATH)/../lib -I$(LOCAL_PATH)/../../zlib
LOCAL_MODULE := wget
LOCAL_STATIC_LIBRARIES := libgnu libz
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
