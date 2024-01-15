#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HeadphoneDAC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HeadphoneDAC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/audio/math/libq_c/src/fract.c ../src/config/default/audio/math/libq_c/src/fast_trig_functions.c ../src/config/default/audio/math/libq_c/src/pixel_rotation.c ../src/config/default/audio/math/libq_c/src/libq_FxNorm.c ../src/config/default/audio/math/libq_c/src/libq_q15_Abs_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_Add_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_DivisionWithSaturation_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_ExpAvg_q15_q15_q1d15.c ../src/config/default/audio/math/libq_c/src/libq_q15_ExtractH_q31.c ../src/config/default/audio/math/libq_c/src/libq_q15_MacR_q31_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_MsuR_q31_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_MultiplyR2_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_Negate_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_RoundL_q31.c ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftLeft_q15_i16.c ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRight_q15_i16.c ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRightR_q15_i16.c ../src/config/default/audio/math/libq_c/src/libq_q1d15_Sin_q10d6.c ../src/config/default/audio/math/libq_c/src/libq_q31_Abs_q31.c ../src/config/default/audio/math/libq_c/src/libq_q31_Add_q31_q31.c ../src/config/default/audio/math/libq_c/src/libq_q31_DepositH_q15.c ../src/config/default/audio/math/libq_c/src/libq_q31_Mac_q31_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q31_Msu_q31_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q31_Mult2_q15_q31.c ../src/config/default/audio/math/libq_c/src/libq_q31_Multi_q15_q31.c ../src/config/default/audio/math/libq_c/src/libq_q31_Negate_q31.c ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftLeft_q31_i16.c ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRight_q31_i16.c ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRightR_q31_i16.c ../src/config/default/audio/peripheral/i2s/plib_i2s3.c ../src/config/default/driver/spi/src/drv_spi.c ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c ../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/usb/src/usb_device.c ../src/config/default/usb/src/usb_device_audio_v1_0.c ../src/config/default/usb/src/usb_device_audio_read_write.c ../src/config/default/usb/src/usb_device_hid.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/usb_device_init_data.c ../src/config/default/tasks.c ../src/main.c ../src/app.c ../src/app_audio.c ../src/dac_ctrl.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1367581010/fract.o ${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o ${OBJECTDIR}/_ext/1367581010/pixel_rotation.o ${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o ${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o ${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o ${OBJECTDIR}/_ext/554284977/plib_i2s3.o ${OBJECTDIR}/_ext/2070931557/drv_spi.o ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/308758920/usb_device.o ${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o ${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/app_audio.o ${OBJECTDIR}/_ext/1360937237/dac_ctrl.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1367581010/fract.o.d ${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o.d ${OBJECTDIR}/_ext/1367581010/pixel_rotation.o.d ${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o.d ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o.d ${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o.d ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o.d ${OBJECTDIR}/_ext/554284977/plib_i2s3.o.d ${OBJECTDIR}/_ext/2070931557/drv_spi.o.d ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o.d ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d ${OBJECTDIR}/_ext/944882569/sys_debug.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/308758920/usb_device.o.d ${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o.d ${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o.d ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/app_audio.o.d ${OBJECTDIR}/_ext/1360937237/dac_ctrl.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1367581010/fract.o ${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o ${OBJECTDIR}/_ext/1367581010/pixel_rotation.o ${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o ${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o ${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o ${OBJECTDIR}/_ext/554284977/plib_i2s3.o ${OBJECTDIR}/_ext/2070931557/drv_spi.o ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/308758920/usb_device.o ${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o ${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/app_audio.o ${OBJECTDIR}/_ext/1360937237/dac_ctrl.o

# Source Files
SOURCEFILES=../src/config/default/audio/math/libq_c/src/fract.c ../src/config/default/audio/math/libq_c/src/fast_trig_functions.c ../src/config/default/audio/math/libq_c/src/pixel_rotation.c ../src/config/default/audio/math/libq_c/src/libq_FxNorm.c ../src/config/default/audio/math/libq_c/src/libq_q15_Abs_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_Add_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_DivisionWithSaturation_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_ExpAvg_q15_q15_q1d15.c ../src/config/default/audio/math/libq_c/src/libq_q15_ExtractH_q31.c ../src/config/default/audio/math/libq_c/src/libq_q15_MacR_q31_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_MsuR_q31_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_MultiplyR2_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_Negate_q15.c ../src/config/default/audio/math/libq_c/src/libq_q15_RoundL_q31.c ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftLeft_q15_i16.c ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRight_q15_i16.c ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRightR_q15_i16.c ../src/config/default/audio/math/libq_c/src/libq_q1d15_Sin_q10d6.c ../src/config/default/audio/math/libq_c/src/libq_q31_Abs_q31.c ../src/config/default/audio/math/libq_c/src/libq_q31_Add_q31_q31.c ../src/config/default/audio/math/libq_c/src/libq_q31_DepositH_q15.c ../src/config/default/audio/math/libq_c/src/libq_q31_Mac_q31_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q31_Msu_q31_q15_q15.c ../src/config/default/audio/math/libq_c/src/libq_q31_Mult2_q15_q31.c ../src/config/default/audio/math/libq_c/src/libq_q31_Multi_q15_q31.c ../src/config/default/audio/math/libq_c/src/libq_q31_Negate_q31.c ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftLeft_q31_i16.c ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRight_q31_i16.c ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRightR_q31_i16.c ../src/config/default/audio/peripheral/i2s/plib_i2s3.c ../src/config/default/driver/spi/src/drv_spi.c ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c ../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/usb/src/usb_device.c ../src/config/default/usb/src/usb_device_audio_v1_0.c ../src/config/default/usb/src/usb_device_audio_read_write.c ../src/config/default/usb/src/usb_device_hid.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/usb_device_init_data.c ../src/config/default/tasks.c ../src/main.c ../src/app.c ../src/app_audio.c ../src/dac_ctrl.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/HeadphoneDAC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1024EFG064
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MZ1024EFG064.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1367581010/fract.o: ../src/config/default/audio/math/libq_c/src/fract.c  .generated_files/flags/default/287b74b0d52d6ea19b4ea63e17a59d6572eebade .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/fract.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/fract.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/fract.o.d" -o ${OBJECTDIR}/_ext/1367581010/fract.o ../src/config/default/audio/math/libq_c/src/fract.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o: ../src/config/default/audio/math/libq_c/src/fast_trig_functions.c  .generated_files/flags/default/69ea3ae0cccc1ec8fa9ca48c261b6405937aa4de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o.d" -o ${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o ../src/config/default/audio/math/libq_c/src/fast_trig_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/pixel_rotation.o: ../src/config/default/audio/math/libq_c/src/pixel_rotation.c  .generated_files/flags/default/75b11c6615e78bcc3eb0de27e9abe6f53c2417ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/pixel_rotation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/pixel_rotation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/pixel_rotation.o.d" -o ${OBJECTDIR}/_ext/1367581010/pixel_rotation.o ../src/config/default/audio/math/libq_c/src/pixel_rotation.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o: ../src/config/default/audio/math/libq_c/src/libq_FxNorm.c  .generated_files/flags/default/e01abeccc9eb98d9ee594fd02b4b138d642548f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o ../src/config/default/audio/math/libq_c/src/libq_FxNorm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_Abs_q15.c  .generated_files/flags/default/61579b4701cf43c532a08881c1fc0f70fd867ef1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_Abs_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_Add_q15_q15.c  .generated_files/flags/default/90179b9b6ac535ed89cff26a5e89fc120e08bf1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_Add_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_DivisionWithSaturation_q15_q15.c  .generated_files/flags/default/8bcc8a71865a9a77f9102b8024aa35cf2ce6e957 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_DivisionWithSaturation_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_ExpAvg_q15_q15_q1d15.c  .generated_files/flags/default/aef02ed986c060fcc3d6245f9fc1a917ec89dba3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o ../src/config/default/audio/math/libq_c/src/libq_q15_ExpAvg_q15_q15_q1d15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q15_ExtractH_q31.c  .generated_files/flags/default/663727e93216ae0abc6667ae3d6c611fe1cf2c53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o ../src/config/default/audio/math/libq_c/src/libq_q15_ExtractH_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_MacR_q31_q15_q15.c  .generated_files/flags/default/d36700cb47105c7ffc884db3b53c3338426b8330 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_MacR_q31_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_MsuR_q31_q15_q15.c  .generated_files/flags/default/de11a8486dd00ef5a9b8190f1f5e88ec369dd40e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_MsuR_q31_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_MultiplyR2_q15_q15.c  .generated_files/flags/default/25e97598ddaf0639b195d710a961a45479d9c1dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_MultiplyR2_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_Negate_q15.c  .generated_files/flags/default/8feee75efdf22700eee3418f9c15911ef2b1e6bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_Negate_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q15_RoundL_q31.c  .generated_files/flags/default/1d400944cb9f296ec21cd25b09c1cc01ba78fc59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o ../src/config/default/audio/math/libq_c/src/libq_q15_RoundL_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftLeft_q15_i16.c  .generated_files/flags/default/99d3aad5dad08e292e8f6b12cb4be9180335dbb8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftLeft_q15_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRight_q15_i16.c  .generated_files/flags/default/4df7282634b7a4b8bd0581cd930aa1e7e44a6fe9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRight_q15_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRightR_q15_i16.c  .generated_files/flags/default/bd6b062bc4e8ec2f5256cf8f3b7b87c9d620a6a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRightR_q15_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o: ../src/config/default/audio/math/libq_c/src/libq_q1d15_Sin_q10d6.c  .generated_files/flags/default/529c0502556bbff8cd79701d6c08178807bad65c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o ../src/config/default/audio/math/libq_c/src/libq_q1d15_Sin_q10d6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Abs_q31.c  .generated_files/flags/default/24e5edd692b2273b0cae9df4d4dd62970d3f6e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o ../src/config/default/audio/math/libq_c/src/libq_q31_Abs_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Add_q31_q31.c  .generated_files/flags/default/83210505598fb6c5f74dd5477d4168705ec9e4aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o ../src/config/default/audio/math/libq_c/src/libq_q31_Add_q31_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q31_DepositH_q15.c  .generated_files/flags/default/ae091fa76e42b066109df5d8f9fda5c46b3cb3d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o ../src/config/default/audio/math/libq_c/src/libq_q31_DepositH_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Mac_q31_q15_q15.c  .generated_files/flags/default/935948c525217726db737218f6637c504ddf4498 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q31_Mac_q31_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Msu_q31_q15_q15.c  .generated_files/flags/default/31098c0f3c118499df27d4abe114ee9df6b49480 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q31_Msu_q31_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Mult2_q15_q31.c  .generated_files/flags/default/8484399461597be488446492a138b4102a9b4378 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o ../src/config/default/audio/math/libq_c/src/libq_q31_Mult2_q15_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Multi_q15_q31.c  .generated_files/flags/default/fb7b2d5e3406a821f142c3188f3e2e3ce71581e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o ../src/config/default/audio/math/libq_c/src/libq_q31_Multi_q15_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Negate_q31.c  .generated_files/flags/default/7e12c25e1782912e19e517f543b4306576a7edae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o ../src/config/default/audio/math/libq_c/src/libq_q31_Negate_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftLeft_q31_i16.c  .generated_files/flags/default/6791f93d20f6e0456ab12892aa25bd76da5622c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftLeft_q31_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRight_q31_i16.c  .generated_files/flags/default/28da57c6a45b64526494df36df3cb2863d243653 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRight_q31_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRightR_q31_i16.c  .generated_files/flags/default/53f54ee039aa74f224678090b48e89fd0a9a8d60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRightR_q31_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/554284977/plib_i2s3.o: ../src/config/default/audio/peripheral/i2s/plib_i2s3.c  .generated_files/flags/default/297fbaa2e420a4f4992d462afca631f4b2ed5b5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/554284977" 
	@${RM} ${OBJECTDIR}/_ext/554284977/plib_i2s3.o.d 
	@${RM} ${OBJECTDIR}/_ext/554284977/plib_i2s3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/554284977/plib_i2s3.o.d" -o ${OBJECTDIR}/_ext/554284977/plib_i2s3.o ../src/config/default/audio/peripheral/i2s/plib_i2s3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2070931557/drv_spi.o: ../src/config/default/driver/spi/src/drv_spi.c  .generated_files/flags/default/d026c2262d429f4ba985a34283cd5e1865407202 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2070931557" 
	@${RM} ${OBJECTDIR}/_ext/2070931557/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2070931557/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2070931557/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2070931557/drv_spi.o ../src/config/default/driver/spi/src/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2071311437/drv_usbhs.o: ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/flags/default/1ef50512838de9cc8394583e5bb74da4ba7292c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2071311437" 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071311437/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o: ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/flags/default/125ee14ed5d514515230a1e6c7434fb5f0a99086 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2071311437" 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/b1ea0ffc2b0035634339384fdd61d1d7f2951ece .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/db0b5f58dbe681391ab8fbe593ac1b0dd33bf52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/f7f29d2d37feedea6011a424048b649627065134 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/8f4f6653e1c1c8828e2ccf4aa3b032286d0fc5f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/7f83387305afd68f740736db6e4ce512b3f10a5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi2_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/default/8c651aee3e5dd924415e6262cb215199b496cf75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/2b976f5e6ed271f3ff6d2c9e79a94406c2396bf4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/f2532e7646e962a3b077d8fa474dcbb154bd6d73 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/5b3d1d3c061631ecdf5b52ddc3a15725fe435773 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/flags/default/878d26e1fb5e4218ff34fa6eb3d7a32e867447f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/flags/default/f26d965ca21446adf761df58e2c91eed281a8cd7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/d305af7482d6f98ef9fcf43d2abd008a9f875976 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/ae5716969ca55900bc73ec7e3209c380c526414b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/default/fc3a865557d622fc370e87d649a6acf74013cacd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o: ../src/config/default/usb/src/usb_device_audio_v1_0.c  .generated_files/flags/default/a493ab1a309275ee408ed25b978108bdb1fefb08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o ../src/config/default/usb/src/usb_device_audio_v1_0.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o: ../src/config/default/usb/src/usb_device_audio_read_write.c  .generated_files/flags/default/b69c34b38ba57268df10b33a4d91f9fc27ba183c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o ../src/config/default/usb/src/usb_device_audio_read_write.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device_hid.o: ../src/config/default/usb/src/usb_device_hid.c  .generated_files/flags/default/cd900c63cf17a836045999f11e6e03696eafe912 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ../src/config/default/usb/src/usb_device_hid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/2db513b8ae50fd2215072a1adf8ca9fd98f799a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/fbdabaebb3f8c14da32209dd69e2408f5b2e8d25 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/5376dafaf756ccf1555bdcb41dd8a28e96cf826a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/default/a913e80c2f1baa71faa6225728b9e2d0f20597e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/986c1cb2de8f8669f120b84899fe8933812c5725 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/4dab830e76ffad9d2b4e3e72df9a25a58e5de97b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/6f537cbaeba2dc298782dd7d47d06aa65b7cf451 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_audio.o: ../src/app_audio.c  .generated_files/flags/default/652640f5594b767325d7e9c9d1caf79c4580d9fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_audio.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_audio.o ../src/app_audio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dac_ctrl.o: ../src/dac_ctrl.c  .generated_files/flags/default/2f01f2cda59b437897ee84bb95f66b6a6be2e5a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dac_ctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dac_ctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dac_ctrl.o.d" -o ${OBJECTDIR}/_ext/1360937237/dac_ctrl.o ../src/dac_ctrl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1367581010/fract.o: ../src/config/default/audio/math/libq_c/src/fract.c  .generated_files/flags/default/b2d760dff4ddf502c2dbe7f10b51c5947e838279 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/fract.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/fract.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/fract.o.d" -o ${OBJECTDIR}/_ext/1367581010/fract.o ../src/config/default/audio/math/libq_c/src/fract.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o: ../src/config/default/audio/math/libq_c/src/fast_trig_functions.c  .generated_files/flags/default/da9332648a2769acf4f5a58a38412e888faaa0f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o.d" -o ${OBJECTDIR}/_ext/1367581010/fast_trig_functions.o ../src/config/default/audio/math/libq_c/src/fast_trig_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/pixel_rotation.o: ../src/config/default/audio/math/libq_c/src/pixel_rotation.c  .generated_files/flags/default/e4c9e104e5899c5e650f9614b5bcfbfb1e245a6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/pixel_rotation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/pixel_rotation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/pixel_rotation.o.d" -o ${OBJECTDIR}/_ext/1367581010/pixel_rotation.o ../src/config/default/audio/math/libq_c/src/pixel_rotation.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o: ../src/config/default/audio/math/libq_c/src/libq_FxNorm.c  .generated_files/flags/default/8f32fc18873fe7d7f79f9cf1ede9b8beb61a9b4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_FxNorm.o ../src/config/default/audio/math/libq_c/src/libq_FxNorm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_Abs_q15.c  .generated_files/flags/default/77bcf9e504c07b6db7cd5f061aceefa67ab14add .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_Abs_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_Abs_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_Add_q15_q15.c  .generated_files/flags/default/4a43aecbb5ec33fe87608b25d8e2645092578e6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_Add_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_Add_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_DivisionWithSaturation_q15_q15.c  .generated_files/flags/default/cc3fcc67b6cd6e62ae1968b3446ffd87393f2fea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_DivisionWithSaturation_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_DivisionWithSaturation_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_ExpAvg_q15_q15_q1d15.c  .generated_files/flags/default/92eade201a50317f4847e236cac96ab49cd2e137 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_ExpAvg_q15_q15_q1d15.o ../src/config/default/audio/math/libq_c/src/libq_q15_ExpAvg_q15_q15_q1d15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q15_ExtractH_q31.c  .generated_files/flags/default/6f8b3368cd273a99d3a665952eb8f0a3fb01f0a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_ExtractH_q31.o ../src/config/default/audio/math/libq_c/src/libq_q15_ExtractH_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_MacR_q31_q15_q15.c  .generated_files/flags/default/21b32a05045b8bf4b2419477fdfe35205f9ae5b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_MacR_q31_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_MacR_q31_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_MsuR_q31_q15_q15.c  .generated_files/flags/default/422295c76be08498aed806d1fcda20d39c0b9cd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_MsuR_q31_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_MsuR_q31_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_MultiplyR2_q15_q15.c  .generated_files/flags/default/1f0b1607be27253bc24241d5d7085a9578d52588 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_MultiplyR2_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_MultiplyR2_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q15_Negate_q15.c  .generated_files/flags/default/c590c9dbb561c06768e3060b49400b55b7024141 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_Negate_q15.o ../src/config/default/audio/math/libq_c/src/libq_q15_Negate_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q15_RoundL_q31.c  .generated_files/flags/default/c1741efbe0933f33462578f53795b362a097741 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_RoundL_q31.o ../src/config/default/audio/math/libq_c/src/libq_q15_RoundL_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftLeft_q15_i16.c  .generated_files/flags/default/3fec951d7c0b3fa90eb07c2844e1b699deea9886 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftLeft_q15_i16.o ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftLeft_q15_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRight_q15_i16.c  .generated_files/flags/default/4851afe082db534d71c4d9a4670eaa546e891407 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRight_q15_i16.o ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRight_q15_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRightR_q15_i16.c  .generated_files/flags/default/9b0987fa7ca328f2a819407f928130bc97f06c91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q15_ShiftRightR_q15_i16.o ../src/config/default/audio/math/libq_c/src/libq_q15_ShiftRightR_q15_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o: ../src/config/default/audio/math/libq_c/src/libq_q1d15_Sin_q10d6.c  .generated_files/flags/default/78dc32b60c1f436ffa25857a2f07334865645557 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q1d15_Sin_q10d6.o ../src/config/default/audio/math/libq_c/src/libq_q1d15_Sin_q10d6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Abs_q31.c  .generated_files/flags/default/925ead7ca34fc579efb12bd1f16159039dee9ecc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Abs_q31.o ../src/config/default/audio/math/libq_c/src/libq_q31_Abs_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Add_q31_q31.c  .generated_files/flags/default/b499e4d97d44e6a94ec32c2df1126b4a8b964a78 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Add_q31_q31.o ../src/config/default/audio/math/libq_c/src/libq_q31_Add_q31_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q31_DepositH_q15.c  .generated_files/flags/default/2b3461942b6f4d7c3c8fb78fcc7f084d427f2f79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_DepositH_q15.o ../src/config/default/audio/math/libq_c/src/libq_q31_DepositH_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Mac_q31_q15_q15.c  .generated_files/flags/default/5c98ff2aafe0032827b625414d429f586f274b45 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Mac_q31_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q31_Mac_q31_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Msu_q31_q15_q15.c  .generated_files/flags/default/a7cb1c8a3358bfe5ec56ae59a8362ff015037d68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Msu_q31_q15_q15.o ../src/config/default/audio/math/libq_c/src/libq_q31_Msu_q31_q15_q15.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Mult2_q15_q31.c  .generated_files/flags/default/d8be1578bc96560ab76e7a45eba06c2bf8fcfdd1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Mult2_q15_q31.o ../src/config/default/audio/math/libq_c/src/libq_q31_Mult2_q15_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Multi_q15_q31.c  .generated_files/flags/default/e005320f67f8d2f58c5e1fdb7b7edb98607931b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Multi_q15_q31.o ../src/config/default/audio/math/libq_c/src/libq_q31_Multi_q15_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o: ../src/config/default/audio/math/libq_c/src/libq_q31_Negate_q31.c  .generated_files/flags/default/e55c81320b4d9bcc0ccb3182559aac9f7e4984f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_Negate_q31.o ../src/config/default/audio/math/libq_c/src/libq_q31_Negate_q31.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftLeft_q31_i16.c  .generated_files/flags/default/f1cac90eee559873f96506623060526b3f889169 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftLeft_q31_i16.o ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftLeft_q31_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRight_q31_i16.c  .generated_files/flags/default/f263f3a70d008aa4e95b3f6bd5f575c806edcb67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRight_q31_i16.o ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRight_q31_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o: ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRightR_q31_i16.c  .generated_files/flags/default/9b048ae5e5e13c31721649c4d8a8c68b5ca43035 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1367581010" 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o.d" -o ${OBJECTDIR}/_ext/1367581010/libq_q31_ShiftRightR_q31_i16.o ../src/config/default/audio/math/libq_c/src/libq_q31_ShiftRightR_q31_i16.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/554284977/plib_i2s3.o: ../src/config/default/audio/peripheral/i2s/plib_i2s3.c  .generated_files/flags/default/255c09f9409ea0ad97099c7b1e3ae9e45b8b07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/554284977" 
	@${RM} ${OBJECTDIR}/_ext/554284977/plib_i2s3.o.d 
	@${RM} ${OBJECTDIR}/_ext/554284977/plib_i2s3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/554284977/plib_i2s3.o.d" -o ${OBJECTDIR}/_ext/554284977/plib_i2s3.o ../src/config/default/audio/peripheral/i2s/plib_i2s3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2070931557/drv_spi.o: ../src/config/default/driver/spi/src/drv_spi.c  .generated_files/flags/default/40eb243d3cb9d7904bdb08f31a11b650ca901474 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2070931557" 
	@${RM} ${OBJECTDIR}/_ext/2070931557/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2070931557/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2070931557/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2070931557/drv_spi.o ../src/config/default/driver/spi/src/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2071311437/drv_usbhs.o: ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/flags/default/a5a9a18dd11eddee74ed7052e5d0edf73e80422a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2071311437" 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071311437/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/2071311437/drv_usbhs.o ../src/config/default/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o: ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/flags/default/17be6593e81035b06981d1382a1976d36a546e6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2071311437" 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/2071311437/drv_usbhs_device.o ../src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/89038b8b702deaaa13644483b7592dc96c76a047 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/88f2bc7875e0226728a09bd259927184a4dfe8ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/d30de7a4bd79da2db2ddfbdd09137e6a6ecd9b77 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/8cfbdc8c8dfc05c3be2741ca4691babf2c452619 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/3e32229e703dd321429a0853c820b939367c6138 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi2_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/default/bef168b184297530b7d0c7856ac2f385dae8489a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/1344b06a857a3d67429c8e645dc8c29ff53b8ca9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/29b304fb961ab605619334330a0372f8aaad5cc5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/87df250590e9e1a214be117ebf96f49b105d0a69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/flags/default/24660d3aa849e7b4ad2c6234d196219df80d1910 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/flags/default/525726ce2bd2c907ae3f27b01c0d6ba255831238 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/9c72c0b5101d9cd0a582cf3e8d3e1ceddd132d72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/a4967569f4d08e341ec2f16c8716ad288c28725b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/default/1f50a640f800c19ea2c2f3cbe0ff7305b610645c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o: ../src/config/default/usb/src/usb_device_audio_v1_0.c  .generated_files/flags/default/9d0da19eff5529477bb0bd8c0643acfdfe34d363 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_audio_v1_0.o ../src/config/default/usb/src/usb_device_audio_v1_0.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o: ../src/config/default/usb/src/usb_device_audio_read_write.c  .generated_files/flags/default/f4af11a78aaff258da6107bf146a3cc048398198 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_audio_read_write.o ../src/config/default/usb/src/usb_device_audio_read_write.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_device_hid.o: ../src/config/default/usb/src/usb_device_hid.c  .generated_files/flags/default/bd6d8006500c77938babdadb33e58db164713230 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ../src/config/default/usb/src/usb_device_hid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/c5475f6609a5f0e9717aae43204c6952a4b782a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/5057f87183b49b9c3e708b912302e2858598ee14 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/5808ba83b92e5fafc0c9d2743470af158cb17299 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/default/6aa168f27c7447bf299a89e8fbbef3a9d71d3eba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/41681e693daddc85c2c03082405d2f5e6e6dd1e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/6295b9ba33eb4a0ec5c4f1c0663eb7b3be30fb99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/350c5a92c28d96fadb525af5709594c94aff901e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_audio.o: ../src/app_audio.c  .generated_files/flags/default/4c311f025d1b956f74ae09fb714d39b348aac3ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_audio.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_audio.o ../src/app_audio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dac_ctrl.o: ../src/dac_ctrl.c  .generated_files/flags/default/d23660563fdb2fa74d298219e359f6d5c6ec195d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dac_ctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dac_ctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dac_ctrl.o.d" -o ${OBJECTDIR}/_ext/1360937237/dac_ctrl.o ../src/dac_ctrl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/HeadphoneDAC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/config/default/audio/math/libq/libq_mips32_mz_ef_nfO3.a ../src/config/default/audio/math/dsp/dsp_mips32_mz_ef_nfO3.a  ../src/config/default/p32MZ1024EFG064.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HeadphoneDAC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\src\config\default\audio\math\libq\libq_mips32_mz_ef_nfO3.a ..\src\config\default\audio\math\dsp\dsp_mips32_mz_ef_nfO3.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/HeadphoneDAC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/config/default/audio/math/libq/libq_mips32_mz_ef_nfO3.a ../src/config/default/audio/math/dsp/dsp_mips32_mz_ef_nfO3.a ../src/config/default/p32MZ1024EFG064.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HeadphoneDAC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\src\config\default\audio\math\libq\libq_mips32_mz_ef_nfO3.a ..\src\config\default\audio\math\dsp\dsp_mips32_mz_ef_nfO3.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/HeadphoneDAC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
