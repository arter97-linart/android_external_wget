/* version.c */
/* Autogenerated by Makefile - DO NOT EDIT */

const char *version_string = "1.15";
const char *compilation_string = "arm-linux-androideabi-gcc -DHAVE_CONFIG_H -DSYSTEM_WGETRC=\"/system/etc/wgetrc\" -DLOCALEDIR=\"/system/usr/share/locale\" -I. -I../lib -I../lib -include /opt/android/ev/jb/build/core/combo/include/arch/linux-arm/AndroidConfig.h -I /opt/android/ev/jb/build/core/combo/include/arch/linux-arm/ -I /opt/android/ev/jb/external/openssl/include -isystem /opt/android/ev/jb/prebuilts/ndk/current/platforms/android-9/arch-arm/usr/include/";
const char *link_string = "arm-linux-androideabi-gcc -L /opt/android/ev/jb/prebuilts/ndk/current/platforms/android-9/arch-arm/usr/lib -Wl,-rpath-link=/opt/android/ev/jb/prebuilts/ndk/current/platforms/android-9/arch-arm/usr/lib -lssl -lcrypto -ldl -lz -lc -lgcc ftp-opie.o openssl.o http-ntlm.o ../lib/libgnu.a";
