################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/package_bgs/lb/BGModel.cpp \
../src/package_bgs/lb/BGModelFuzzyGauss.cpp \
../src/package_bgs/lb/BGModelFuzzySom.cpp \
../src/package_bgs/lb/BGModelGauss.cpp \
../src/package_bgs/lb/BGModelMog.cpp \
../src/package_bgs/lb/BGModelSom.cpp \
../src/package_bgs/lb/LBAdaptiveSOM.cpp \
../src/package_bgs/lb/LBFuzzyAdaptiveSOM.cpp \
../src/package_bgs/lb/LBFuzzyGaussian.cpp \
../src/package_bgs/lb/LBMixtureOfGaussians.cpp \
../src/package_bgs/lb/LBSimpleGaussian.cpp 

OBJS += \
./src/package_bgs/lb/BGModel.o \
./src/package_bgs/lb/BGModelFuzzyGauss.o \
./src/package_bgs/lb/BGModelFuzzySom.o \
./src/package_bgs/lb/BGModelGauss.o \
./src/package_bgs/lb/BGModelMog.o \
./src/package_bgs/lb/BGModelSom.o \
./src/package_bgs/lb/LBAdaptiveSOM.o \
./src/package_bgs/lb/LBFuzzyAdaptiveSOM.o \
./src/package_bgs/lb/LBFuzzyGaussian.o \
./src/package_bgs/lb/LBMixtureOfGaussians.o \
./src/package_bgs/lb/LBSimpleGaussian.o 

CPP_DEPS += \
./src/package_bgs/lb/BGModel.d \
./src/package_bgs/lb/BGModelFuzzyGauss.d \
./src/package_bgs/lb/BGModelFuzzySom.d \
./src/package_bgs/lb/BGModelGauss.d \
./src/package_bgs/lb/BGModelMog.d \
./src/package_bgs/lb/BGModelSom.d \
./src/package_bgs/lb/LBAdaptiveSOM.d \
./src/package_bgs/lb/LBFuzzyAdaptiveSOM.d \
./src/package_bgs/lb/LBFuzzyGaussian.d \
./src/package_bgs/lb/LBMixtureOfGaussians.d \
./src/package_bgs/lb/LBSimpleGaussian.d 


# Each subdirectory must supply rules for building sources it contributes
src/package_bgs/lb/%.o: ../src/package_bgs/lb/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


