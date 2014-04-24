################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/package_bgs/db/IndependentMultimodalBGS.cpp \
../src/package_bgs/db/imbs.cpp 

OBJS += \
./src/package_bgs/db/IndependentMultimodalBGS.o \
./src/package_bgs/db/imbs.o 

CPP_DEPS += \
./src/package_bgs/db/IndependentMultimodalBGS.d \
./src/package_bgs/db/imbs.d 


# Each subdirectory must supply rules for building sources it contributes
src/package_bgs/db/%.o: ../src/package_bgs/db/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


