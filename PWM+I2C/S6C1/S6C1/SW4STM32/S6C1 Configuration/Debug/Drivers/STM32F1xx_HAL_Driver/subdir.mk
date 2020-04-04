################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_i2c.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c \
F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c 

OBJS += \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_cortex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_dma.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash_ex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio_ex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_i2c.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_pwr.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc_ex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim_ex.o 

C_DEPS += \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_cortex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_dma.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash_ex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio_ex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_i2c.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_pwr.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc_ex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_cortex.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_cortex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_dma.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_dma.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash_ex.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio_ex.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_i2c.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_i2c.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_pwr.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_pwr.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc_ex.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim_ex.o: F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S6/S6C1/S6C1/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S6/S6C1/S6C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


