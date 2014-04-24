################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/package_bgs/AdaptiveBackgroundLearning.cpp \
../src/package_bgs/AdaptiveSelectiveBackgroundLearning.cpp \
../src/package_bgs/FrameDifferenceBGS.cpp \
../src/package_bgs/MixtureOfGaussianV1BGS.cpp \
../src/package_bgs/MixtureOfGaussianV2BGS.cpp \
../src/package_bgs/StaticFrameDifferenceBGS.cpp \
../src/package_bgs/WeightedMovingMeanBGS.cpp \
../src/package_bgs/WeightedMovingVarianceBGS.cpp 

OBJS += \
./src/package_bgs/AdaptiveBackgroundLearning.o \
./src/package_bgs/AdaptiveSelectiveBackgroundLearning.o \
./src/package_bgs/FrameDifferenceBGS.o \
./src/package_bgs/MixtureOfGaussianV1BGS.o \
./src/package_bgs/MixtureOfGaussianV2BGS.o \
./src/package_bgs/StaticFrameDifferenceBGS.o \
./src/package_bgs/WeightedMovingMeanBGS.o \
./src/package_bgs/WeightedMovingVarianceBGS.o 

CPP_DEPS += \
./src/package_bgs/AdaptiveBackgroundLearning.d \
./src/package_bgs/AdaptiveSelectiveBackgroundLearning.d \
./src/package_bgs/FrameDifferenceBGS.d \
./src/package_bgs/MixtureOfGaussianV1BGS.d \
./src/package_bgs/MixtureOfGaussianV2BGS.d \
./src/package_bgs/StaticFrameDifferenceBGS.d \
./src/package_bgs/WeightedMovingMeanBGS.d \
./src/package_bgs/WeightedMovingVarianceBGS.d 


# Each subdirectory must supply rules for building sources it contributes
src/package_bgs/%.o: ../src/package_bgs/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


