include ../../py/mkenv.mk

# qstr definitions (must come before including py.mk)
QSTR_DEFS = qstrdefsport.h

# include py core make definitions
include $(TOP)/py/py.mk

CROSS_COMPILE = $(MICODER)/compiler/arm-none-eabi-5_4-2016q2-20160622/Linux64/bin/arm-none-eabi-

INC += -I.
INC += -I$(TOP)
INC += -I$(BUILD)

CFLAGS_ARM9 = -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function -DDEBUG -ggdb -Os -c -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC
CFLAGS = $(INC) -Wall -Werror -std=c99 -nostdlib $(CFLAGS_ARM9)

# Tune for Debugging or Optimization
ifeq ($(DEBUG), 1)
CFLAGS += -O0 -ggdb
else
CFLAGS += -Os -DNDEBUG
CFLAGS += -fdata-sections -ffunction-sections
endif

LIBS =

SRC_C = \
	main.c \
	uart_core.c \
	lib/utils/printf.c \
	lib/utils/stdout_helpers.c \
	lib/utils/pyexec.c \
	lib/libc/string0.c \
	lib/mp-readline/readline.c \
	$(BUILD)/_frozen_mpy.c \

INC += -I$(BUILD)/../app/upy

INC += $(addprefix -I$(BUILD)/../app/mxos/, \
	. \
	include \
	include/mxos_hal \
	board/MK3060 \
	platform \
	platform/include \
	platform/GCC \
	platform/ARM968E_S/CMSIS \
	platform/MCU \
	platform/MCU/include \
	platform/MCU/MOC108 \
	MXOS \
	MXOS/core \
	MXOS/RTOS/FreeRTOS/mxos \
	MXOS/RTOS/FreeRTOS/ver9.0.0 \
	MXOS/RTOS/FreeRTOS/ver9.0.0/Source/include \
	MXOS/RTOS/FreeRTOS/ver9.0.0/Source/portable/GCC/ARM968E_S \
	MXOS/net/LwIP/mxos \
	MXOS/net/LwIP/ver2.0.2 \
	MXOS/net/LwIP/ver2.0.2/src/include \
	MXOS/net/LwIP/ver2.0.2/src/include/ipv4 \
	MXOS/net/LwIP/ver2.0.2/lwip_eth \
	MXOS/security \
	MXOS/security/SHAUtils \
	MXOS/security/SRP_6a/inc \
	MXOS/security/Sodium/inc \
	MXOS/security/TLS/wolfSSL \
	MXOS/system \
	MXOS/system/kv \
	MXIS/system/kv/include \
	MXOS/system/easylink/aws \
	MXOS/system/command_console \
	MXOS/system/easylink/internal \
	MXOS/system/tftp_ota \
	libraries/utilities \
	libraries/utilities/jscon_c \
	libraries/drivers/spi_flash \
	libraries/protocols/mdns/include \
	libraries/protocols/mdns/internal \
	)

OBJ = $(PY_CORE_O) $(addprefix $(BUILD)/, $(SRC_C:.c=.o))

all: mxos-clean $(BUILD)/upy@MK3060.ota.bin

$(BUILD)/_frozen_mpy.c: frozentest.mpy $(BUILD)/genhdr/qstrdefs.generated.h
	$(ECHO) "MISC freezing bytecode"
	$(Q)$(TOP)/tools/mpy-tool.py -f -q $(BUILD)/genhdr/qstrdefs.preprocessed.h -mlongint-impl=none $< > $@

$(BUILD)/upython.a: $(OBJ)
	$(ECHO) "Making static library"
	$(Q)$(AR) -q $(BUILD)/upython.a $(OBJ)
	$(Q)$(RM) -f -- *.d
	$(Q)$(OBJCOPY) --redefine-sym mp_init=upy_mp_init --redefine-sym memset=upy_memset $(BUILD)/upython.a

$(BUILD)/upy@MK3060.ota.bin: $(BUILD)/upython.a mxos-setup
	$(ECHO) "Making with MXOS-Cube"
	$(Q)$(CP) $(BUILD)/upython.a app/upython.a
	$(Q)cd app && mxos make upy@MK3060
	$(Q)$(CP) app/build/upy@MK3060/binary/upy@MK3060.ota.bin $(BUILD)

mxos-setup:
	$(ECHO) "Fixing MXOS faults"
	$(Q)$(CP) mxos_board.h app/mxos/board/MK3060/mxos_board.h
	$(Q)$(CP) map_parse_gcc.py app/mxos/makefiles/scripts/map_parse_gcc.py
	$(Q)$(RM) -r -f app/mxos/platform/MCU/MOC108/tools/xz/linux
	$(Q)$(MKDIR) app/mxos/platform/MCU/MOC108/tools/xz/linux
	$(Q)ln -s /usr/bin/xz app/mxos/platform/MCU/MOC108/tools/xz/linux/xz
	$(ECHO) "Faking MXOS project"
	$(ECHO) "ROOT=.\nMICODER=$(MICODER)" >> app/.mxos
	$(Q)$(MKDIR) -p app/build/upy@MK3060
	$(Q)$(CP) config.mk app/build/upy@MK3060/config.mk

.PHONY: mxos-setup

mxos-clean:
	$(Q)$(RM) -r -f app/build

.PHONY: mxos-clean

include $(TOP)/py/mkrules.mk
