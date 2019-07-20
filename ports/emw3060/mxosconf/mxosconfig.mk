MXOS_SDK_MAKEFILES           		+= ./mxos/libraries/drivers/MXOSDriverMFiAuth/MXOSDriverMFiAuth.mk ./mxos/libraries/utilities/json_c/json_c.mk ./mxos/MXOS/system/kv/kv.mk ./mxos/MXOS/system/easylink/MFi_WAC/MFi_WAC.mk ./mxos/MXOS/system/qc_test/qc_test.mk ./mxos/libraries/protocols/mdns/mdns.mk ./mxos/MXOS/security/Sodium/Sodium.mk ./mxos/MXOS/security/SRP_6a/SRP_6a.mk ./mxos/platform/MCU/MOC108/MOC108.mk ./mxos/libraries/utilities/utilities.mk ./mxos/MXOS/system/system.mk ./mxos/MXOS/security/security.mk ./mxos/MXOS/core/core.mk ./mxos/MXOS/net/LwIP/mxos/mxos.mk ./mxos/MXOS/RTOS/FreeRTOS/mxos/mxos.mk ./mxos/libraries/drivers/spi_flash/spi_flash.mk ./mxos/MXOS/MXOS.mk ./mxos/MXOS/security/TLS/wolfSSL/wolfSSL.mk ./mxos/MXOS/net/LwIP/LwIP.mk ./mxos/MXOS/RTOS/FreeRTOS/FreeRTOS.mk ./mxos/board/MK3060/MK3060.mk .//upy/upy.mk
TOOLCHAIN_NAME            		:= GCC
MXOS_SDK_LDFLAGS             		+= -Wl,--gc-sections -Wl,--cref -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -Wl,-wrap,_malloc_r -Wl,-wrap,free -Wl,-wrap,realloc -Wl,-wrap,malloc -Wl,-wrap,calloc -Wl,-wrap,_free_r -Wl,-wrap,_realloc_r -Wl,-wrap,_calloc_r -Wl,-wrap,printf -Wl,-wrap,main -L ./platform/MCU/MOC108/GCC --specs=nosys.specs -Wl,--undefined=uxTopUsedPriority
RESOURCE_CFLAGS					+= -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function
MXOS_SDK_LINK_SCRIPT         		+= ./mxos/platform/MCU/MOC108/GCC/app_with_bootloader.ld
MXOS_SDK_LINK_SCRIPT_CMD    	 	+= -Wl,-T ./mxos/platform/MCU/MOC108/GCC/app_with_bootloader.ld
MXOS_SDK_PREBUILT_LIBRARIES 	 	+= ./mxos/MXOS/security/TLS/wolfSSL/Lib_wolfSSL.ARM968E-S.GCC.release.a ./mxos/platform/MCU/MOC108/peripherals.ARM968E-S.GCC.release.a ./mxos/platform/MCU/MOC108/MX108.ARM968E-S.GCC.release.a ./mxos/MXOS/security/SRP_6a/Lib_SRP6a.ARM968E-S.GCC.release.a ./mxos/MXOS/security/Sodium/Lib_Sodium.ARM968E-S.GCC.release.a ./mxos/MXOS/system/easylink/MFi_WAC/Lib_MFi_WAC.ARM968E-S.GCC.release.a upython.a
MXOS_SDK_CERTIFICATES       	 	+= 
MXOS_SDK_PRE_APP_BUILDS      		+= bootloader
MXOS_SDK_LINK_FILES          		+=                                                
MXOS_SDK_INCLUDES           	 	+=                                          -I./mxos/libraries/utilities/json_c/. -I./mxos/MXOS/system/kv/. -I./mxos/MXOS/system/kv/include -I./mxos/MXOS/system/qc_test/. -I./mxos/libraries/protocols/mdns/include -I./mxos/MXOS/security/Sodium/inc -I./mxos/MXOS/security/SRP_6a/inc -I./mxos/platform/MCU/MOC108/. -I./mxos/platform/MCU/MOC108/.. -I./mxos/platform/MCU/MOC108/../include -I./mxos/platform/MCU/MOC108/../.. -I./mxos/platform/MCU/MOC108/../../include -I./mxos/platform/MCU/MOC108/../../GCC -I./mxos/platform/MCU/MOC108/../../ARM968E-S -I./mxos/platform/MCU/MOC108/../../ARM968E-S/CMSIS -I./mxos/platform/MCU/MOC108/peripherals -I./mxos/libraries/utilities/. -I./mxos/MXOS/security/Curve25519 -I./mxos/MXOS/security/SHAUtils -I./mxos/MXOS/net/LwIP/mxos/. -I./mxos/MXOS/RTOS/FreeRTOS/mxos/. -I./mxos/libraries/drivers/spi_flash/. -I./mxos/MXOS/. -I./mxos/MXOS/system -I./mxos/MXOS/system/include -I./mxos/MXOS/security -I./mxos/MXOS/security/TLS/wolfSSL/. -I./mxos/MXOS/net/LwIP/ver2.0.2 -I./mxos/MXOS/net/LwIP/ver2.0.2/src/include -I./mxos/MXOS/net/LwIP/ver2.0.2/src/include/ipv4 -I./mxos/MXOS/net/LwIP/lwip_eth -I./mxos/MXOS/RTOS/FreeRTOS/ver9.0.0/Source/include -I./mxos/MXOS/RTOS/FreeRTOS/ver9.0.0 -I./mxos/MXOS/RTOS/FreeRTOS/.. -I./mxos/MXOS/RTOS/FreeRTOS/ver9.0.0/Source/portable/GCC/ARM968E_S -I./mxos/board/MK3060/. -I./mxos/include -I./upy -I.
MXOS_SDK_DEFINES             		+=                    -DCONFIG_MX108 -DconfigUSE_WATCHDOG_TICK=32000 -DconfigTOTAL_HEAP_SIZE=102400 -DconfigTIMER_TASK_STACK_DEPTH=750 -DCONFIG_USE_LINKER_HEAP=1 -D__MXOS__=1 -DNETWORK_LwIP=1 -DMXCHIP -DLwIP_VERSION_MAJOR=2 -DLwIP_VERSION_MINOR=0 -DLwIP_VERSION_REVISION=2 -DRTOS_FreeRTOS=1 -DconfigUSE_MUTEXES -DconfigUSE_RECURSIVE_MUTEXES -DFreeRTOS_VERSION=\"v9.0.0\" -DFreeRTOS_VERSION_MAJOR=9 -DFreeRTOS_VERSION_MINOR=0 -DFreeRTOS_VERSION_REVISION=0
COMPONENTS                		:= App_upy Board_MK3060 FreeRTOS LwIP Lib_wolfSSL MXOS Lib_SPI_Flash_Library_MK3060 MXOS_FreeRTOS_Interface MXOS_LwIP_Interface Lib_MXOS_Kernel Lib_MXOS_Security Lib_MXOS_System Lib_Utilities MOC108 Lib_MXOS_Security_SRP_6a Lib_MXOS_Security_Sodium Lib_mdns Lib_MXOS_System_QC Lib_MXOS_System_WAC kv Lib_JSON_C Lib_MFi_Auth_MK3060
BUS                       		:= NONE
IMAGE_TYPE                		:= ram
NETWORK_FULL              		:= 
RTOS_FULL                 		:= FreeRTOS
PLATFORM_DIRECTORY        		:= ./mxos/board/MK3060
APP_FULL                  		:= ./upy
NETWORK                   		:= 
RTOS                      		:= FreeRTOS
MODULE                  			:= 3060
PLATFORM                  		:= MK3060
HOST_MCU_FAMILY                  	:= MOC108
USB                       		:= 
APP                       		:= upy
HOST_OPENOCD              		:= MOC108
JTAG              		        := jlink
HOST_ARCH                 		:= ARM968E-S
NO_BUILD_BOOTLOADER           	:= 
NO_BOOTLOADER_REQUIRED         	:= 
App_upy_LOCATION         := .//upy/
Board_MK3060_LOCATION         := ./mxos/board/MK3060/
FreeRTOS_LOCATION         := ./mxos/MXOS/RTOS/FreeRTOS/
LwIP_LOCATION         := ./mxos/MXOS/net/LwIP/
Lib_wolfSSL_LOCATION         := ./mxos/MXOS/security/TLS/wolfSSL/
MXOS_LOCATION         := ./mxos/MXOS/
Lib_SPI_Flash_Library_MK3060_LOCATION         := ./mxos/libraries/drivers/spi_flash/
MXOS_FreeRTOS_Interface_LOCATION         := ./mxos/MXOS/RTOS/FreeRTOS/mxos/
MXOS_LwIP_Interface_LOCATION         := ./mxos/MXOS/net/LwIP/mxos/
Lib_MXOS_Kernel_LOCATION         := ./mxos/MXOS/core/
Lib_MXOS_Security_LOCATION         := ./mxos/MXOS/security/
Lib_MXOS_System_LOCATION         := ./mxos/MXOS/system/
Lib_Utilities_LOCATION         := ./mxos/libraries/utilities/
MOC108_LOCATION         := ./mxos/platform/MCU/MOC108/
Lib_MXOS_Security_SRP_6a_LOCATION         := ./mxos/MXOS/security/SRP_6a/
Lib_MXOS_Security_Sodium_LOCATION         := ./mxos/MXOS/security/Sodium/
Lib_mdns_LOCATION         := ./mxos/libraries/protocols/mdns/
Lib_MXOS_System_QC_LOCATION         := ./mxos/MXOS/system/qc_test/
Lib_MXOS_System_WAC_LOCATION         := ./mxos/MXOS/system/easylink/MFi_WAC/
kv_LOCATION         := ./mxos/MXOS/system/kv/
Lib_JSON_C_LOCATION         := ./mxos/libraries/utilities/json_c/
Lib_MFi_Auth_MK3060_LOCATION         := ./mxos/libraries/drivers/MXOSDriverMFiAuth/
App_upy_SOURCES          += main.c
Board_MK3060_SOURCES          += mxos_board.c
FreeRTOS_SOURCES          += ver9.0.0/Source/portable/MemMang/heap_4.c ver9.0.0/Source/croutine.c ver9.0.0/Source/list.c ver9.0.0/Source/queue.c ver9.0.0/Source/tasks.c ver9.0.0/Source/timers.c FreeRTOS-openocd.c ver9.0.0/Source/portable/GCC/ARM968E_S/port.c 
LwIP_SOURCES          += mxos/mxos_socket.c mxos/mxos_network.c lwip_eth/mxos_lwip_ethif.c
Lib_wolfSSL_SOURCES          += 
MXOS_SOURCES          += mxos_main.c core/mxos_config.c
Lib_SPI_Flash_Library_MK3060_SOURCES          += spi_flash.c spi_flash_platform.c
MXOS_FreeRTOS_Interface_SOURCES          += mxos_rtos.c ../../mxos_rtos_common.c
MXOS_LwIP_Interface_SOURCES          += 
Lib_MXOS_Kernel_SOURCES          += 
Lib_MXOS_Security_SOURCES          += Curve25519/curve25519-donna.c  SHAUtils/hkdf.c SHAUtils/hmac.c SHAUtils/sha1.c SHAUtils/sha224-256.c SHAUtils/sha384-512.c SHAUtils/usha.c
Lib_MXOS_System_SOURCES          += mxos_system_init.c mxos_system_monitor.c mxos_system_notification.c mxos_system_para_storage.c mxos_system_time.c mxos_system_power_daemon.c mxos_filesystem.c mxos_station_monitor.c system_misc.c  command_console/mxos_cli.c config_server/config_server_menu.c config_server/config_server.c easylink/system_easylink_delegate.c easylink/system_easylink_wac.c easylink/system_easylink_monitor.c easylink/system_easylink_softap.c easylink/internal/easylink_bonjour.c mdns/system_discovery.c tftp_ota/tftp_ota.c tftp_ota/tftpc.c
Lib_Utilities_SOURCES          += AESUtils.c LinkListUtils.c SocketUtils.c HTTPUtils.c TimeUtils.c TLVUtils.c URLUtils.c CheckSumUtils.c RingBufferUtils.c StringUtils.c
MOC108_SOURCES          += platform_stub.c ../../ARM968E-S/platform_core.c ../mxos_platform_common.c ../platform_retarget.c platform_init.c vcall.c
Lib_MXOS_Security_SRP_6a_SOURCES          += 
Lib_MXOS_Security_Sodium_SOURCES          += 
Lib_mdns_SOURCES          += mdns_cli.c mdns_port.c mdns_query.c mdns_respond_thread.c mdns_respond.c mdns_misc.c internal/mdns_debug.c internal/dname.c
Lib_MXOS_System_QC_SOURCES          += qc_test.c internal/qc_test_tcpip.c internal/qc_test_wlan.c internal/qc_test_ble.c internal/qc_test_cli.c
Lib_MXOS_System_WAC_SOURCES          += 
kv_SOURCES          += kv.c kv_cli.c mkv.c mkv_adapt.c
Lib_JSON_C_SOURCES          += arraylist.c json_debug.c json_object.c json_tokener.c json_util.c linkhash.c printbuf.c
Lib_MFi_Auth_MK3060_SOURCES          += MXOSDriverMFiAuth.c
App_upy_ABS_SOURCES      += 
Board_MK3060_ABS_SOURCES      += 
FreeRTOS_ABS_SOURCES      += 
LwIP_ABS_SOURCES      += 
Lib_wolfSSL_ABS_SOURCES      += 
MXOS_ABS_SOURCES      += 
Lib_SPI_Flash_Library_MK3060_ABS_SOURCES      += 
MXOS_FreeRTOS_Interface_ABS_SOURCES      += 
MXOS_LwIP_Interface_ABS_SOURCES      += 
Lib_MXOS_Kernel_ABS_SOURCES      += 
Lib_MXOS_Security_ABS_SOURCES      += 
Lib_MXOS_System_ABS_SOURCES      += 
Lib_Utilities_ABS_SOURCES      += 
MOC108_ABS_SOURCES      += 
Lib_MXOS_Security_SRP_6a_ABS_SOURCES      += 
Lib_MXOS_Security_Sodium_ABS_SOURCES      += 
Lib_mdns_ABS_SOURCES      += 
Lib_MXOS_System_QC_ABS_SOURCES      += 
Lib_MXOS_System_WAC_ABS_SOURCES      += 
kv_ABS_SOURCES      += 
Lib_JSON_C_ABS_SOURCES      += 
Lib_MFi_Auth_MK3060_ABS_SOURCES      += 
App_upy_CHECK_HEADERS    += 
Board_MK3060_CHECK_HEADERS    += 
FreeRTOS_CHECK_HEADERS    += 
LwIP_CHECK_HEADERS    += 
Lib_wolfSSL_CHECK_HEADERS    += 
MXOS_CHECK_HEADERS    += 
Lib_SPI_Flash_Library_MK3060_CHECK_HEADERS    += 
MXOS_FreeRTOS_Interface_CHECK_HEADERS    += 
MXOS_LwIP_Interface_CHECK_HEADERS    += 
Lib_MXOS_Kernel_CHECK_HEADERS    += 
Lib_MXOS_Security_CHECK_HEADERS    += 
Lib_MXOS_System_CHECK_HEADERS    += 
Lib_Utilities_CHECK_HEADERS    += 
MOC108_CHECK_HEADERS    += 
Lib_MXOS_Security_SRP_6a_CHECK_HEADERS    += 
Lib_MXOS_Security_Sodium_CHECK_HEADERS    += 
Lib_mdns_CHECK_HEADERS    += 
Lib_MXOS_System_QC_CHECK_HEADERS    += 
Lib_MXOS_System_WAC_CHECK_HEADERS    += 
kv_CHECK_HEADERS    += 
Lib_JSON_C_CHECK_HEADERS    += 
Lib_MFi_Auth_MK3060_CHECK_HEADERS    += 
App_upy_INCLUDES         := 
Board_MK3060_INCLUDES         := 
FreeRTOS_INCLUDES         := 
LwIP_INCLUDES         := 
Lib_wolfSSL_INCLUDES         := 
MXOS_INCLUDES         := 
Lib_SPI_Flash_Library_MK3060_INCLUDES         := 
MXOS_FreeRTOS_Interface_INCLUDES         := 
MXOS_LwIP_Interface_INCLUDES         := 
Lib_MXOS_Kernel_INCLUDES         := 
Lib_MXOS_Security_INCLUDES         := 
Lib_MXOS_System_INCLUDES         := -I./mxos/MXOS/system/command_console -I./mxos/MXOS/system/easylink/internal -I./mxos/MXOS/system/tftp_ota
Lib_Utilities_INCLUDES         := 
MOC108_INCLUDES         := 
Lib_MXOS_Security_SRP_6a_INCLUDES         := 
Lib_MXOS_Security_Sodium_INCLUDES         := 
Lib_mdns_INCLUDES         := -I./mxos/libraries/protocols/mdns/internal
Lib_MXOS_System_QC_INCLUDES         := -I./mxos/MXOS/system/qc_test/internal
Lib_MXOS_System_WAC_INCLUDES         := 
kv_INCLUDES         := 
Lib_JSON_C_INCLUDES         := 
Lib_MFi_Auth_MK3060_INCLUDES         := 
App_upy_DEFINES          := 
Board_MK3060_DEFINES          := 
FreeRTOS_DEFINES          := 
LwIP_DEFINES          := 
Lib_wolfSSL_DEFINES          := 
MXOS_DEFINES          := 
Lib_SPI_Flash_Library_MK3060_DEFINES          := 
MXOS_FreeRTOS_Interface_DEFINES          := 
MXOS_LwIP_Interface_DEFINES          := 
Lib_MXOS_Kernel_DEFINES          := 
Lib_MXOS_Security_DEFINES          := 
Lib_MXOS_System_DEFINES          := -DCONFIG_MXOS_AWS
Lib_Utilities_DEFINES          := 
MOC108_DEFINES          := 
Lib_MXOS_Security_SRP_6a_DEFINES          := 
Lib_MXOS_Security_Sodium_DEFINES          := 
Lib_mdns_DEFINES          := 
Lib_MXOS_System_QC_DEFINES          := 
Lib_MXOS_System_WAC_DEFINES          := 
kv_DEFINES          := 
Lib_JSON_C_DEFINES          := 
Lib_MFi_Auth_MK3060_DEFINES          := 
App_upy_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Board_MK3060_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
FreeRTOS_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
LwIP_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_wolfSSL_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
MXOS_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_SPI_Flash_Library_MK3060_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
MXOS_FreeRTOS_Interface_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
MXOS_LwIP_Interface_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_Kernel_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_Security_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_System_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_Utilities_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" -Wno-char-subscripts
MOC108_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_Security_SRP_6a_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_Security_Sodium_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_mdns_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_System_QC_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_System_WAC_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
kv_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_JSON_C_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" -Wno-unused-value
Lib_MFi_Auth_MK3060_CFLAGS           :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian -fno-builtin-printf -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unused-variable -Wno-unused-function               -DDEBUG -ggdb -Os -std=gnu99                   -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
App_upy_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Board_MK3060_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
FreeRTOS_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
LwIP_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_wolfSSL_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
MXOS_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_SPI_Flash_Library_MK3060_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
MXOS_FreeRTOS_Interface_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
MXOS_LwIP_Interface_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_Kernel_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_Security_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_System_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_Utilities_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
MOC108_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_Security_SRP_6a_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_Security_Sodium_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_mdns_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_System_QC_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MXOS_System_WAC_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
kv_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_JSON_C_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
Lib_MFi_Auth_MK3060_CXXFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -DDEBUG -ggdb -Os -std=gnu++98 -fno-rtti -Wvla -c -Wall -Wextra -Wno-sign-compare -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -fno-common -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DMXOS_SDK_VERSION_MAJOR=4 -DMXOS_SDK_VERSION_MINOR=1 -DMXOS_SDK_VERSION_REVISION=0 -DBUS=\"NONE\" -I./build/upy@MK3060/resources/ -DPLATFORM=\"MK3060\" -DMXOS_OS_VERSION=\"0.1-31-g23ad9fd\" -DMXOS_OS_USER_NAME=\"MicroPython\" -DMXOS_OS_USER_EMAIL=\"contact@micropython.org\" -DCC_VERSION=\"5.4.1\" 
App_upy_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Board_MK3060_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
FreeRTOS_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
LwIP_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_wolfSSL_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
MXOS_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_SPI_Flash_Library_MK3060_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
MXOS_FreeRTOS_Interface_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
MXOS_LwIP_Interface_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_MXOS_Kernel_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_MXOS_Security_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_MXOS_System_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_Utilities_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
MOC108_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_MXOS_Security_SRP_6a_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_MXOS_Security_Sodium_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_mdns_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_MXOS_System_QC_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_MXOS_System_WAC_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
kv_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_JSON_C_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
Lib_MFi_Auth_MK3060_ASMFLAGS         :=          -mcpu=arm968e-s -march=armv5te -mthumb -mthumb-interwork -mlittle-endian               -ggdb
App_upy_RESOURCES        := 
Board_MK3060_RESOURCES        := 
FreeRTOS_RESOURCES        := 
LwIP_RESOURCES        := 
Lib_wolfSSL_RESOURCES        := 
MXOS_RESOURCES        := 
Lib_SPI_Flash_Library_MK3060_RESOURCES        := 
MXOS_FreeRTOS_Interface_RESOURCES        := 
MXOS_LwIP_Interface_RESOURCES        := 
Lib_MXOS_Kernel_RESOURCES        := 
Lib_MXOS_Security_RESOURCES        := 
Lib_MXOS_System_RESOURCES        := 
Lib_Utilities_RESOURCES        := 
MOC108_RESOURCES        := 
Lib_MXOS_Security_SRP_6a_RESOURCES        := 
Lib_MXOS_Security_Sodium_RESOURCES        := 
Lib_mdns_RESOURCES        := 
Lib_MXOS_System_QC_RESOURCES        := 
Lib_MXOS_System_WAC_RESOURCES        := 
kv_RESOURCES        := 
Lib_JSON_C_RESOURCES        := 
Lib_MFi_Auth_MK3060_RESOURCES        := 
App_upy_MAKEFILE         := .//upy/upy.mk
Board_MK3060_MAKEFILE         := ./mxos/board/MK3060/MK3060.mk
FreeRTOS_MAKEFILE         := ./mxos/MXOS/RTOS/FreeRTOS/FreeRTOS.mk
LwIP_MAKEFILE         := ./mxos/MXOS/net/LwIP/LwIP.mk
Lib_wolfSSL_MAKEFILE         := ./mxos/MXOS/security/TLS/wolfSSL/wolfSSL.mk
MXOS_MAKEFILE         := ./mxos/MXOS/MXOS.mk
Lib_SPI_Flash_Library_MK3060_MAKEFILE         := ./mxos/libraries/drivers/spi_flash/spi_flash.mk
MXOS_FreeRTOS_Interface_MAKEFILE         := ./mxos/MXOS/RTOS/FreeRTOS/mxos/mxos.mk
MXOS_LwIP_Interface_MAKEFILE         := ./mxos/MXOS/net/LwIP/mxos/mxos.mk
Lib_MXOS_Kernel_MAKEFILE         := ./mxos/MXOS/core/core.mk
Lib_MXOS_Security_MAKEFILE         := ./mxos/MXOS/security/security.mk
Lib_MXOS_System_MAKEFILE         := ./mxos/MXOS/system/system.mk
Lib_Utilities_MAKEFILE         := ./mxos/libraries/utilities/utilities.mk
MOC108_MAKEFILE         := ./mxos/platform/MCU/MOC108/MOC108.mk
Lib_MXOS_Security_SRP_6a_MAKEFILE         := ./mxos/MXOS/security/SRP_6a/SRP_6a.mk
Lib_MXOS_Security_Sodium_MAKEFILE         := ./mxos/MXOS/security/Sodium/Sodium.mk
Lib_mdns_MAKEFILE         := ./mxos/libraries/protocols/mdns/mdns.mk
Lib_MXOS_System_QC_MAKEFILE         := ./mxos/MXOS/system/qc_test/qc_test.mk
Lib_MXOS_System_WAC_MAKEFILE         := ./mxos/MXOS/system/easylink/MFi_WAC/MFi_WAC.mk
kv_MAKEFILE         := ./mxos/MXOS/system/kv/kv.mk
Lib_JSON_C_MAKEFILE         := ./mxos/libraries/utilities/json_c/json_c.mk
Lib_MFi_Auth_MK3060_MAKEFILE         := ./mxos/libraries/drivers/MXOSDriverMFiAuth/MXOSDriverMFiAuth.mk
App_upy_PRE_BUILD_TARGETS:= 
Board_MK3060_PRE_BUILD_TARGETS:= 
FreeRTOS_PRE_BUILD_TARGETS:= 
LwIP_PRE_BUILD_TARGETS:= 
Lib_wolfSSL_PRE_BUILD_TARGETS:= 
MXOS_PRE_BUILD_TARGETS:= 
Lib_SPI_Flash_Library_MK3060_PRE_BUILD_TARGETS:= 
MXOS_FreeRTOS_Interface_PRE_BUILD_TARGETS:= 
MXOS_LwIP_Interface_PRE_BUILD_TARGETS:= 
Lib_MXOS_Kernel_PRE_BUILD_TARGETS:= 
Lib_MXOS_Security_PRE_BUILD_TARGETS:= 
Lib_MXOS_System_PRE_BUILD_TARGETS:= 
Lib_Utilities_PRE_BUILD_TARGETS:= 
MOC108_PRE_BUILD_TARGETS:= 
Lib_MXOS_Security_SRP_6a_PRE_BUILD_TARGETS:= 
Lib_MXOS_Security_Sodium_PRE_BUILD_TARGETS:= 
Lib_mdns_PRE_BUILD_TARGETS:= 
Lib_MXOS_System_QC_PRE_BUILD_TARGETS:= 
Lib_MXOS_System_WAC_PRE_BUILD_TARGETS:= 
kv_PRE_BUILD_TARGETS:= 
Lib_JSON_C_PRE_BUILD_TARGETS:= 
Lib_MFi_Auth_MK3060_PRE_BUILD_TARGETS:= 
App_upy_PREBUILT_LIBRARY := 
Board_MK3060_PREBUILT_LIBRARY := 
FreeRTOS_PREBUILT_LIBRARY := 
LwIP_PREBUILT_LIBRARY := 
Lib_wolfSSL_PREBUILT_LIBRARY := ./mxos/MXOS/security/TLS/wolfSSL/Lib_wolfSSL.ARM968E-S.GCC.release.a
MXOS_PREBUILT_LIBRARY := 
Lib_SPI_Flash_Library_MK3060_PREBUILT_LIBRARY := 
MXOS_FreeRTOS_Interface_PREBUILT_LIBRARY := 
MXOS_LwIP_Interface_PREBUILT_LIBRARY := 
Lib_MXOS_Kernel_PREBUILT_LIBRARY := 
Lib_MXOS_Security_PREBUILT_LIBRARY := 
Lib_MXOS_System_PREBUILT_LIBRARY := 
Lib_Utilities_PREBUILT_LIBRARY := 
MOC108_PREBUILT_LIBRARY := ./mxos/platform/MCU/MOC108/peripherals.ARM968E-S.GCC.release.a ./mxos/platform/MCU/MOC108/MX108.ARM968E-S.GCC.release.a
Lib_MXOS_Security_SRP_6a_PREBUILT_LIBRARY := ./mxos/MXOS/security/SRP_6a/Lib_SRP6a.ARM968E-S.GCC.release.a
Lib_MXOS_Security_Sodium_PREBUILT_LIBRARY := ./mxos/MXOS/security/Sodium/Lib_Sodium.ARM968E-S.GCC.release.a
Lib_mdns_PREBUILT_LIBRARY := 
Lib_MXOS_System_QC_PREBUILT_LIBRARY := 
Lib_MXOS_System_WAC_PREBUILT_LIBRARY := ./mxos/MXOS/system/easylink/MFi_WAC/Lib_MFi_WAC.ARM968E-S.GCC.release.a
kv_PREBUILT_LIBRARY := 
Lib_JSON_C_PREBUILT_LIBRARY := 
Lib_MFi_Auth_MK3060_PREBUILT_LIBRARY := 
MXOS_SDK_UNIT_TEST_SOURCES   		:=                                                
ALL_RESOURCES             		:= 
INTERNAL_MEMORY_RESOURCES 		:= 
EXTRA_TARGET_MAKEFILES 			:=     ./mxos/platform/MCU/MOC108/moc108_standard_targets.mk ./mxos/platform/MCU/MOC108/gen_crc_bin.mk
APPS_START_SECTOR 				:=  
BOOTLOADER_FIRMWARE				:=  
ATE_FIRMWARE				        :=  
APPLICATION_FIRMWARE				:=  
PARAMETER_1_IMAGE					:=  
PARAMETER_2_IMAGE					:=  
FILESYSTEM_IMAGE					:=  
WIFI_FIRMWARE						:=  
BT_PATCH_FIRMWARE					:=  
MXOS_ROM_SYMBOL_LIST_FILE 		:= 
MXOS_SDK_CHIP_SPECIFIC_SCRIPT		:=                        
MXOS_SDK_CONVERTER_OUTPUT_FILE	:=                        
MXOS_SDK_FINAL_OUTPUT_FILE 		:=                        
MXOS_RAM_STUB_LIST_FILE 			:= 
MOC_KERNEL_BIN_FILE 				:= 
MOC_APP_OFFSET 				:= 
