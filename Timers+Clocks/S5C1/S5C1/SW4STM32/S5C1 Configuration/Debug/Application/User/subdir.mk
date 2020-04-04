################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/Classes/ARM/S5/S5C1/S5C1/Src/gpio.c \
F:/Classes/ARM/S5/S5C1/S5C1/Src/main.c \
F:/Classes/ARM/S5/S5C1/S5C1/Src/stm32f1xx_hal_msp.c \
F:/Classes/ARM/S5/S5C1/S5C1/Src/stm32f1xx_it.c \
F:/Classes/ARM/S5/S5C1/S5C1/Src/tim.c 

OBJS += \
./Application/User/gpio.o \
./Application/User/main.o \
./Application/User/stm32f1xx_hal_msp.o \
./Application/User/stm32f1xx_it.o \
./Application/User/tim.o 

C_DEPS += \
./Application/User/gpio.d \
./Application/User/main.d \
./Application/User/stm32f1xx_hal_msp.d \
./Application/User/stm32f1xx_it.d \
./Application/User/tim.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/gpio.o: F:/Classes/ARM/S5/S5C1/S5C1/Src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S5/S5C1/S5C1/Inc" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"F:/Classes/ARM/S5/S5C1/S5C1/Inc"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: F:/Classes/ARM/S5/S5C1/S5C1/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S5/S5C1/S5C1/Inc" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"F:/Classes/ARM/S5/S5C1/S5C1/Inc"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/main.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f1xx_hal_msp.o: F:/Classes/ARM/S5/S5C1/S5C1/Src/stm32f1xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S5/S5C1/S5C1/Inc" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"F:/Classes/ARM/S5/S5C1/S5C1/Inc"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/stm32f1xx_hal_msp.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f1xx_it.o: F:/Classes/ARM/S5/S5C1/S5C1/Src/stm32f1xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S5/S5C1/S5C1/Inc" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"F:/Classes/ARM/S5/S5C1/S5C1/Inc"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/stm32f1xx_it.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/tim.o: F:/Classes/ARM/S5/S5C1/S5C1/Src/tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"F:/Classes/ARM/S5/S5C1/S5C1/Inc" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/CMSIS/Include" -I"F:/Classes/ARM/S5/S5C1/S5C1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"F:/Classes/ARM/S5/S5C1/S5C1/Inc"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/tim.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


