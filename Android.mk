LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	bluetooth/bluetooth.c \
	bluetooth/hci.c \
	csr.c \
	textfile.c \
	hciconfig.c

LOCAL_CFLAGS:= \
	-DSTORAGEDIR=\"/tmp\" \
	-DVERSION=\"4.93\" \
	-DOUIFILE=\"/data/misc/bluetoothd/ouifile\"

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := hciconfig

include $(BUILD_EXECUTABLE)
