LOCAL_DIR := $(GET_LOCAL_DIR)

ARCH := arm
ARM_CPU ?= cortex-a8
CPU := generic

WITH_SMP ?= 1

INCLUDES += \
	-I$(LOCAL_DIR)/include

OBJS += \
	$(LOCAL_DIR)/debug.o \
	$(LOCAL_DIR)/platform.o \
	$(LOCAL_DIR)/interrupts.o \
	$(LOCAL_DIR)/timer.o \

#	$(LOCAL_DIR)/net.o \


#	$(LOCAL_DIR)/console.o \

KERNEL_LOAD_OFFSET := 0x100000 # 1MB

LINKER_SCRIPT += \
	$(BUILDDIR)/system-onesegment.ld

