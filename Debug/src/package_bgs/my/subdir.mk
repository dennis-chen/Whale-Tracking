################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/package_bgs/my/MyBGS.cpp 

OBJS += \
./src/package_bgs/my/MyBGS.o 

CPP_DEPS += \
./src/package_bgs/my/MyBGS.d 


# Each subdirectory must supply rules for building sources it contributes
src/package_bgs/my/%.o: ../src/package_bgs/my/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


