################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/package_bgs/ck/LbpMrf.cpp \
../src/package_bgs/ck/MEDefs.cpp \
../src/package_bgs/ck/MEHistogram.cpp \
../src/package_bgs/ck/MEImage.cpp \
../src/package_bgs/ck/MotionDetection.cpp \
../src/package_bgs/ck/graph.cpp \
../src/package_bgs/ck/maxflow.cpp 

OBJS += \
./src/package_bgs/ck/LbpMrf.o \
./src/package_bgs/ck/MEDefs.o \
./src/package_bgs/ck/MEHistogram.o \
./src/package_bgs/ck/MEImage.o \
./src/package_bgs/ck/MotionDetection.o \
./src/package_bgs/ck/graph.o \
./src/package_bgs/ck/maxflow.o 

CPP_DEPS += \
./src/package_bgs/ck/LbpMrf.d \
./src/package_bgs/ck/MEDefs.d \
./src/package_bgs/ck/MEHistogram.d \
./src/package_bgs/ck/MEImage.d \
./src/package_bgs/ck/MotionDetection.d \
./src/package_bgs/ck/graph.d \
./src/package_bgs/ck/maxflow.d 


# Each subdirectory must supply rules for building sources it contributes
src/package_bgs/ck/%.o: ../src/package_bgs/ck/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


