################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/synergy_gen/DSE_ADC_Thread.c \
../src/synergy_gen/DSE_PWM_Thread.c \
../src/synergy_gen/common_data.c \
../src/synergy_gen/hal_data.c \
../src/synergy_gen/main.c \
../src/synergy_gen/main_thread.c \
../src/synergy_gen/message_data.c \
../src/synergy_gen/pin_data.c 

OBJS += \
./src/synergy_gen/DSE_ADC_Thread.o \
./src/synergy_gen/DSE_PWM_Thread.o \
./src/synergy_gen/common_data.o \
./src/synergy_gen/hal_data.o \
./src/synergy_gen/main.o \
./src/synergy_gen/main_thread.o \
./src/synergy_gen/message_data.o \
./src/synergy_gen/pin_data.o 

C_DEPS += \
./src/synergy_gen/DSE_ADC_Thread.d \
./src/synergy_gen/DSE_PWM_Thread.d \
./src/synergy_gen/common_data.d \
./src/synergy_gen/hal_data.d \
./src/synergy_gen/main.d \
./src/synergy_gen/main_thread.d \
./src/synergy_gen/message_data.d \
./src/synergy_gen/pin_data.d 


# Each subdirectory must supply rules for building sources it contributes
src/synergy_gen/%.o: ../src/synergy_gen/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	C:\Renesas\e2_studio\eclipse\/../\Utilities\\/isdebuild arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g3 -D_RENESAS_SYNERGY_ -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy_cfg\ssp_cfg\bsp" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy_cfg\ssp_cfg\driver" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\bsp" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\bsp\cmsis\Include" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\driver\api" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\driver\instances" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\src" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\src\synergy_gen" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy_cfg\ssp_cfg\framework\el" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\framework\el" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\src\framework\el\tx" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy_cfg\ssp_cfg\framework" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\framework\api" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\framework\instances" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\framework\tes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" -x c "$<"
	@echo 'Finished building: $<'
	@echo ' '


