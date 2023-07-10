##########################################################################################################################
# File automatically-generated by tool: [projectgenerator] version: [3.19.2] date: [Fri Jul 07 20:12:54 ICT 2023]
##########################################################################################################################

# ------------------------------------------------
# Generic Makefile (based on gcc)
#
# ChangeLog :
#	2017-02-10 - Several enhancements + project update mode
#   2015-07-22 - first version
# ------------------------------------------------

######################################
# target
######################################
TARGET = GS_master


######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization
OPT = -O0


#######################################
# paths
#######################################
# Build path
BUILD_DIR = build

######################################
# source
######################################
# C sources
C_SOURCES =  \
source/main.c \
source/gd32e10x_it.c \
source/gd32e10x_hw.c \
source/hid_keyboard_itf.c \
$(wildcard GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/*.c) \
GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Source/system_gd32e10x.c \
libs/delay.c \
libs/millis.c \
RTT/RTT/SEGGER_RTT.c \
RTT/RTT/SEGGER_RTT_printf.c \
RTT/Syscalls/SEGGER_RTT_Syscalls_GCC.c \
$(wildcard GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Source/*.c) \
$(wildcard GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/Source/*.c) \
GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Source/drv_usb_core.c \
GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Source/drv_usb_dev.c \
GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Source/drv_usbd_int.c \
libs/hid/custom_hid_core.c \
components/Ethernet/socket.c \
components/Ethernet/wizchip_conf.c \
components/Ethernet/W5500/w5500.c \
components/Internet/DHCP/dhcp.c \
components/W25Qxxx/W25Q.c

# ASM sources
ASM_SOURCES =  \
GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Source/GCC/startup_gd32e10x.s


#######################################
# binaries
#######################################
PREFIX = arm-none-eabi-
# The gcc compiler bin path can be either defined in make command via GCC_PATH variable (> make GCC_PATH=xxx)
# either it can be added to the PATH environment variable.
ifdef GCC_PATH
CC = $(GCC_PATH)/$(PREFIX)gcc
AS = $(GCC_PATH)/$(PREFIX)gcc -x assembler-with-cpp
CP = $(GCC_PATH)/$(PREFIX)objcopy
SZ = $(GCC_PATH)/$(PREFIX)size
else
CC = $(PREFIX)gcc
AS = $(PREFIX)gcc -x assembler-with-cpp
CP = $(PREFIX)objcopy
SZ = $(PREFIX)size
endif
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 
#######################################
# CFLAGS
#######################################
# cpu
CPU = -mcpu=cortex-m4

# fpu
FPU = -mfpu=fpv4-sp-d16

# float-abi
FLOAT-ABI = -mfloat-abi=hard

# mcu
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# macros for gcc
# AS defines
AS_DEFS = 

# C defines
C_DEFS =  \
-DUSE_HAL_DRIVER \
-DGD32E10X \
-DGD32E103V_EVAL \
-DUSE_USB_FS \
-D_WIZCHIP_=5500

# AS includes
AS_INCLUDES = 

# C includes
C_INCLUDES =  \
-Isource \
-IGD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include \
-IGD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include \
-IGD32E10x_Firmware_Library/CMSIS \
-Ilibs \
-IRTT/RTT \
-IRTT/Config \
-IGD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include \
-IGD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include \
-IGD32E10x_Firmware_Library/GD32E10x_usbfs_library/ustd/common \
-IGD32E10x_Firmware_Library/GD32E10x_usbfs_library/ustd/class/hid \
-Ilibs/hid \
-Icomponents/Ethernet \
-Icomponents/Ethernet/W5500 \
-Icomponents/Internet/DHCP \
-Icomponents/W25Qxxx

# compile gcc flags
ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CFLAGS += $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

ifeq ($(DEBUG), 1)
CFLAGS += -g3 -gdwarf-2
endif


# Generate dependency information
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"


#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = GD32E103CBTx_FLASH.ld

# libraries
LIBS = -lc -lm -lnosys 
LIBDIR = 
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin


#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@	
	
$(BUILD_DIR):
	mkdir $@		

#######################################
# clean up
#######################################
clean:
	-rm -fR $(BUILD_DIR)
  
#######################################
# dependencies
#######################################
-include $(wildcard $(BUILD_DIR)/*.d)

# *** EOF ***