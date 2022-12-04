LOCAL_DIR := $(GET_LOCAL_DIR)

INCLUDES += -I$(LOCAL_DIR)/include -I$(LK_TOP_DIR)/platform/msm_shared -I$(LK_TOP_DIR)/platform/msm_shared/include

PLATFORM := integrator

MEMBASE := 0x10000 # this is where qemu loads us
MEMSIZE := 0x08000000 # 128MB

SCRATCH_ADDR := $(BASE_ADDR)+0x05000000

DEFINES += \
	MEMSIZE=$(MEMSIZE) \
	MEMBASE=$(MEMBASE) \
	SCRATCH_ADDR=$(SCRATCH_ADDR)

