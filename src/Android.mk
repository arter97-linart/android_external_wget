LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

wget_SOURCES = \
	       cmpt.c connect.c convert.c cookies.c ftp.c css_.c \
	       css-url.c ftp-basic.c ftp-ls.c hash.c host.c html-parse.c \
	       html-url.c http.c init.c log.c main.c netrc.c progress.c \
	       ptimer.c recur.c res.c retr.c spider.c url.c warc.c \
	       utils.c exits.c build_info.c  version.c ftp-opie.c \
	       openssl.c http-ntlm.c

LOCAL_SRC_FILES := $(wget_SOURCES)
LOCAL_CFLAGS := -DWITH_CONFIG_H
LOCAL_CFLAGS += -DSYSTEM_WGETRC=\"/system/etc/wgetrc\"
LOCAL_CFLAGS += -I$(LOCAL_PATH)/../lib
LOCAL_CFLAGS += -I$(LOCAL_PATH)/../../zlib
LOCAL_CFLAGS += -I$(LOCAL_PATH)/../../openssl/include
LOCAL_MODULE := wget
LOCAL_STATIC_LIBRARIES := libgnu
LOCAL_SHARED_LIBRARIES := libz libssl libcrypto
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
