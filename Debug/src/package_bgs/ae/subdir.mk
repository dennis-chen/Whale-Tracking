################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/package_bgs/ae/KDE.cpp \
../src/package_bgs/ae/KernelTable.cpp \
../src/package_bgs/ae/NPBGSubtractor.cpp \
../src/package_bgs/ae/NPBGmodel.cpp 

OBJS += \
./src/package_bgs/ae/KDE.o \
./src/package_bgs/ae/KernelTable.o \
./src/package_bgs/ae/NPBGSubtractor.o \
./src/package_bgs/ae/NPBGmodel.o 

CPP_DEPS += \
./src/package_bgs/ae/KDE.d \
./src/package_bgs/ae/KernelTable.d \
./src/package_bgs/ae/NPBGSubtractor.d \
./src/package_bgs/ae/NPBGmodel.d 


# Each subdirectory must supply rules for building sources it contributes
src/package_bgs/ae/%.o: ../src/package_bgs/ae/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


