################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/package_bgs/tb/FuzzyChoquetIntegral.cpp \
../src/package_bgs/tb/FuzzySugenoIntegral.cpp \
../src/package_bgs/tb/FuzzyUtils.cpp \
../src/package_bgs/tb/MRF.cpp \
../src/package_bgs/tb/PerformanceUtils.cpp \
../src/package_bgs/tb/PixelUtils.cpp \
../src/package_bgs/tb/T2FGMM.cpp \
../src/package_bgs/tb/T2FGMM_UM.cpp \
../src/package_bgs/tb/T2FGMM_UV.cpp \
../src/package_bgs/tb/T2FMRF.cpp \
../src/package_bgs/tb/T2FMRF_UM.cpp \
../src/package_bgs/tb/T2FMRF_UV.cpp 

OBJS += \
./src/package_bgs/tb/FuzzyChoquetIntegral.o \
./src/package_bgs/tb/FuzzySugenoIntegral.o \
./src/package_bgs/tb/FuzzyUtils.o \
./src/package_bgs/tb/MRF.o \
./src/package_bgs/tb/PerformanceUtils.o \
./src/package_bgs/tb/PixelUtils.o \
./src/package_bgs/tb/T2FGMM.o \
./src/package_bgs/tb/T2FGMM_UM.o \
./src/package_bgs/tb/T2FGMM_UV.o \
./src/package_bgs/tb/T2FMRF.o \
./src/package_bgs/tb/T2FMRF_UM.o \
./src/package_bgs/tb/T2FMRF_UV.o 

CPP_DEPS += \
./src/package_bgs/tb/FuzzyChoquetIntegral.d \
./src/package_bgs/tb/FuzzySugenoIntegral.d \
./src/package_bgs/tb/FuzzyUtils.d \
./src/package_bgs/tb/MRF.d \
./src/package_bgs/tb/PerformanceUtils.d \
./src/package_bgs/tb/PixelUtils.d \
./src/package_bgs/tb/T2FGMM.d \
./src/package_bgs/tb/T2FGMM_UM.d \
./src/package_bgs/tb/T2FGMM_UV.d \
./src/package_bgs/tb/T2FMRF.d \
./src/package_bgs/tb/T2FMRF_UM.d \
./src/package_bgs/tb/T2FMRF_UV.d 


# Each subdirectory must supply rules for building sources it contributes
src/package_bgs/tb/%.o: ../src/package_bgs/tb/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


