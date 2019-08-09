################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/DSE_ADC_Thread_entry.c \
../src/DSE_PWM_Thread_entry.c \
../src/guiapp_event_handlers.c \
../src/hal_entry.c \
../src/main_thread_entry.c 

OBJS += \
./src/DSE_ADC_Thread_entry.o \
./src/DSE_PWM_Thread_entry.o \
./src/guiapp_event_handlers.o \
./src/hal_entry.o \
./src/main_thread_entry.o 

C_DEPS += \
./src/DSE_ADC_Thread_entry.d \
./src/DSE_PWM_Thread_entry.d \
./src/guiapp_event_handlers.d \
./src/hal_entry.d \
./src/main_thread_entry.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	C:\Renesas\e2_studio\eclipse\/../\Utilities\\/isdebuild arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g3 -D_RENESAS_SYNERGY_ -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy_cfg\ssp_cfg\bsp" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy_cfg\ssp_cfg\driver" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\bsp" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\bsp\cmsis\Include" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\driver\api" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\driver\instances" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\src" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\src\synergy_gen" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy_cfg\ssp_cfg\framework\el" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\framework\el" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\src\framework\el\tx" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy_cfg\ssp_cfg\framework" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\framework\api" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\framework\instances" -I"C:\Users\SEI204\e2_studio\workspace\DSE_Integrator_project_JL\synergy\ssp\inc\framework\tes" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" -x c "$<"
	@echo 'Finished building: $<'
	@echo ' '


