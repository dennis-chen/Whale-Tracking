################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/package_bgs/dp/AdaptiveMedianBGS.cpp \
../src/package_bgs/dp/DPAdaptiveMedianBGS.cpp \
../src/package_bgs/dp/DPEigenbackgroundBGS.cpp \
../src/package_bgs/dp/DPGrimsonGMMBGS.cpp \
../src/package_bgs/dp/DPMeanBGS.cpp \
../src/package_bgs/dp/DPPratiMediodBGS.cpp \
../src/package_bgs/dp/DPTextureBGS.cpp \
../src/package_bgs/dp/DPWrenGABGS.cpp \
../src/package_bgs/dp/DPZivkovicAGMMBGS.cpp \
../src/package_bgs/dp/Eigenbackground.cpp \
../src/package_bgs/dp/Error.cpp \
../src/package_bgs/dp/GrimsonGMM.cpp \
../src/package_bgs/dp/Image.cpp \
../src/package_bgs/dp/MeanBGS.cpp \
../src/package_bgs/dp/PratiMediodBGS.cpp \
../src/package_bgs/dp/TextureBGS.cpp \
../src/package_bgs/dp/WrenGA.cpp \
../src/package_bgs/dp/ZivkovicAGMM.cpp 

OBJS += \
./src/package_bgs/dp/AdaptiveMedianBGS.o \
./src/package_bgs/dp/DPAdaptiveMedianBGS.o \
./src/package_bgs/dp/DPEigenbackgroundBGS.o \
./src/package_bgs/dp/DPGrimsonGMMBGS.o \
./src/package_bgs/dp/DPMeanBGS.o \
./src/package_bgs/dp/DPPratiMediodBGS.o \
./src/package_bgs/dp/DPTextureBGS.o \
./src/package_bgs/dp/DPWrenGABGS.o \
./src/package_bgs/dp/DPZivkovicAGMMBGS.o \
./src/package_bgs/dp/Eigenbackground.o \
./src/package_bgs/dp/Error.o \
./src/package_bgs/dp/GrimsonGMM.o \
./src/package_bgs/dp/Image.o \
./src/package_bgs/dp/MeanBGS.o \
./src/package_bgs/dp/PratiMediodBGS.o \
./src/package_bgs/dp/TextureBGS.o \
./src/package_bgs/dp/WrenGA.o \
./src/package_bgs/dp/ZivkovicAGMM.o 

CPP_DEPS += \
./src/package_bgs/dp/AdaptiveMedianBGS.d \
./src/package_bgs/dp/DPAdaptiveMedianBGS.d \
./src/package_bgs/dp/DPEigenbackgroundBGS.d \
./src/package_bgs/dp/DPGrimsonGMMBGS.d \
./src/package_bgs/dp/DPMeanBGS.d \
./src/package_bgs/dp/DPPratiMediodBGS.d \
./src/package_bgs/dp/DPTextureBGS.d \
./src/package_bgs/dp/DPWrenGABGS.d \
./src/package_bgs/dp/DPZivkovicAGMMBGS.d \
./src/package_bgs/dp/Eigenbackground.d \
./src/package_bgs/dp/Error.d \
./src/package_bgs/dp/GrimsonGMM.d \
./src/package_bgs/dp/Image.d \
./src/package_bgs/dp/MeanBGS.d \
./src/package_bgs/dp/PratiMediodBGS.d \
./src/package_bgs/dp/TextureBGS.d \
./src/package_bgs/dp/WrenGA.d \
./src/package_bgs/dp/ZivkovicAGMM.d 


# Each subdirectory must supply rules for building sources it contributes
src/package_bgs/dp/%.o: ../src/package_bgs/dp/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


