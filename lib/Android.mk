LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

libgnu_SOURCES = \
	base32.c c-ctype.c c-strcasecmp.c c-strncasecmp.c cloexec.c md5.c sha1.c \
	dirname-lgpl.c basename-lgpl.c stripslash.c exitfail.c fatal-signal.c \
	fd-hook.c fd-safer-flag.c dup-safer-flag.c gettime.c localcharset.c \
	glthread/lock.c pipe2.c pipe2-safer.c quotearg.c sockets.c spawn-pipe.c \
	stat-time.c tempname.c glthread/threadlib.c timespec.c tmpdir.c dup-safer.c \
	fd-safer.c pipe-safer.c utimens.c wait-process.c xmalloc.c xalloc-die.c \
	asnprintf.c dup2.c error.c fcntl.c futimens.c getdelim.c getline.c getopt.c \
	getopt1.c getpass.c gettimeofday.c localeconv.c lstat.c malloc.c memchr.c \
	mkdir.c mkstemp.c nl_langinfo.c printf-args.c printf-parse.c rawmemchr.c \
	regex.c snprintf.c spawn_faction_addclose.c spawn_faction_adddup2.c \
	spawn_faction_addopen.c spawn_faction_destroy.c spawn_faction_init.c \
	spawnattr_destroy.c spawnattr_init.c spawnattr_setflags.c \
	spawnattr_setsigmask.c spawni.c spawnp.c stat.c strcasestr.c \
	strchrnul.c strerror.c strerror-override.c strerror_r.c vasnprintf.c vsnprintf.c


LOCAL_SRC_FILES := $(libgnu_SOURCES)

LOCAL_CFLAGS := -DWITH_CONFIG_H
# LOCAL_C_INCLUDES causes inclusion order issues
LOCAL_CFLAGS += -I$(LOCAL_PATH)/../src

LOCAL_MODULE := libgnu
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
