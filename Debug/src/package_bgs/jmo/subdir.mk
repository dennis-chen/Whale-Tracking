################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/package_bgs/jmo/BlobExtraction.cpp \
../src/package_bgs/jmo/BlobResult.cpp \
../src/package_bgs/jmo/CMultiLayerBGS.cpp \
../src/package_bgs/jmo/LocalBinaryPattern.cpp \
../src/package_bgs/jmo/MultiLayerBGS.cpp \
../src/package_bgs/jmo/blob.cpp 

OBJS += \
./src/package_bgs/jmo/BlobExtraction.o \
./src/package_bgs/jmo/BlobResult.o \
./src/package_bgs/jmo/CMultiLayerBGS.o \
./src/package_bgs/jmo/LocalBinaryPattern.o \
./src/package_bgs/jmo/MultiLayerBGS.o \
./src/package_bgs/jmo/blob.o 

CPP_DEPS += \
./src/package_bgs/jmo/BlobExtraction.d \
./src/package_bgs/jmo/BlobResult.d \
./src/package_bgs/jmo/CMultiLayerBGS.d \
./src/package_bgs/jmo/LocalBinaryPattern.d \
./src/package_bgs/jmo/MultiLayerBGS.d \
./src/package_bgs/jmo/blob.d 


# Each subdirectory must supply rules for building sources it contributes
src/package_bgs/jmo/%.o: ../src/package_bgs/jmo/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


