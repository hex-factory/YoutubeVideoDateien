################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL := cmd.exe
RM := rm -rf

USER_OBJS :=

LIBS := 
PROJ := 

O_SRCS := 
C_SRCS := 
S_SRCS := 
S_UPPER_SRCS := 
OBJ_SRCS := 
ASM_SRCS := 
PREPROCESSING_SRCS := 
OBJS := 
OBJS_AS_ARGS := 
C_DEPS := 
C_DEPS_AS_ARGS := 
EXECUTABLES := 
OUTPUT_FILE_PATH :=
OUTPUT_FILE_PATH_AS_ARGS :=
AVR_APP_PATH :=$$$AVR_APP_PATH$$$
QUOTE := "
ADDITIONAL_DEPENDENCIES:=
OUTPUT_FILE_DEP:=
LIB_DEP:=
LINKER_SCRIPT_DEP:=

# Every subdirectory with source files must be described here
SUBDIRS :=  \
../Config/ \
../doxygen/ \
../doxygen/generator/ \
../include/ \
../src/ \
../utils/ \
../utils/assembler/


# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS +=  \
../atmel_start.c \
../driver_isr.c \
../main.c \
../src/driver_init.c \
../src/tc16.c


PREPROCESSING_SRCS +=  \
../src/protected_io.S


ASM_SRCS += 


OBJS +=  \
atmel_start.o \
driver_isr.o \
main.o \
src/driver_init.o \
src/protected_io.o \
src/tc16.o

OBJS_AS_ARGS +=  \
atmel_start.o \
driver_isr.o \
main.o \
src/driver_init.o \
src/protected_io.o \
src/tc16.o

C_DEPS +=  \
atmel_start.d \
driver_isr.d \
main.d \
src/driver_init.d \
src/protected_io.d \
src/tc16.d

C_DEPS_AS_ARGS +=  \
atmel_start.d \
driver_isr.d \
main.d \
src/driver_init.d \
src/protected_io.d \
src/tc16.d

OUTPUT_FILE_PATH +=TimerPollingLed.elf

OUTPUT_FILE_PATH_AS_ARGS +=TimerPollingLed.elf

ADDITIONAL_DEPENDENCIES:=

OUTPUT_FILE_DEP:= ./makedep.mk

LIB_DEP+= 

LINKER_SCRIPT_DEP+= 


# AVR32/GNU C Compiler











./%.o: .././%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler : 5.4.0
	$(QUOTE)C:\Tools\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE)  -x c -funsigned-char -funsigned-bitfields -DNDEBUG  -I"C:\Tools\Atmel\Studio\7.0\Packs\atmel\ATmega_DFP\1.2.150\include" -I"../include" -I"../utils" -I"../utils/assembler" -I".." -I"../Config"  -Os -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -mmcu=atmega168pb -B "C:\Tools\Atmel\Studio\7.0\Packs\atmel\ATmega_DFP\1.2.150\gcc\dev\atmega168pb" -c -std=gnu99 -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	

src/%.o: ../src/%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler : 5.4.0
	$(QUOTE)C:\Tools\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE)  -x c -funsigned-char -funsigned-bitfields -DNDEBUG  -I"C:\Tools\Atmel\Studio\7.0\Packs\atmel\ATmega_DFP\1.2.150\include" -I"../include" -I"../utils" -I"../utils/assembler" -I".." -I"../Config"  -Os -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -mmcu=atmega168pb -B "C:\Tools\Atmel\Studio\7.0\Packs\atmel\ATmega_DFP\1.2.150\gcc\dev\atmega168pb" -c -std=gnu99 -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	



# AVR32/GNU Preprocessing Assembler



# AVR32/GNU Assembler
src/protected_io.o: ../src/protected_io.S
	@echo Building file: $<
	@echo Invoking: AVR/GNU Assembler : 5.4.0
	$(QUOTE)C:\Tools\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE) -Wa,-gdwarf2 -x assembler-with-cpp -c -mmcu=atmega168pb -B "C:\Tools\Atmel\Studio\7.0\Packs\atmel\ATmega_DFP\1.2.150\gcc\dev\atmega168pb" -I "C:\Tools\Atmel\Studio\7.0\Packs\atmel\ATmega_DFP\1.2.150\include" -I "../Config" -I "../include" -I "../utils" -I "../utils/assembler" -I ".."  -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	


src/%.o: ../src/%.S
	@echo Building file: $<
	@echo Invoking: AVR/GNU Assembler : 5.4.0
	$(QUOTE)C:\Tools\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE) -Wa,-gdwarf2 -x assembler-with-cpp -c -mmcu=atmega168pb -B "C:\Tools\Atmel\Studio\7.0\Packs\atmel\ATmega_DFP\1.2.150\gcc\dev\atmega168pb" -I "C:\Tools\Atmel\Studio\7.0\Packs\atmel\ATmega_DFP\1.2.150\include" -I "../Config" -I "../include" -I "../utils" -I "../utils/assembler" -I ".."  -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	




ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: $(OUTPUT_FILE_PATH) $(ADDITIONAL_DEPENDENCIES)

$(OUTPUT_FILE_PATH): $(OBJS) $(USER_OBJS) $(OUTPUT_FILE_DEP) $(LIB_DEP) $(LINKER_SCRIPT_DEP)
	@echo Building target: $@
	@echo Invoking: AVR/GNU Linker : 5.4.0
	$(QUOTE)C:\Tools\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE) -o$(OUTPUT_FILE_PATH_AS_ARGS) $(OBJS_AS_ARGS) $(USER_OBJS) $(LIBS) -Wl,-Map="TimerPollingLed.map" -Wl,--start-group -Wl,-lm  -Wl,--end-group -Wl,--gc-sections -mmcu=atmega168pb -B "C:\Tools\Atmel\Studio\7.0\Packs\atmel\ATmega_DFP\1.2.150\gcc\dev\atmega168pb"  
	@echo Finished building target: $@
	"C:\Tools\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objcopy.exe" -O ihex -R .eeprom -R .fuse -R .lock -R .signature -R .user_signatures  "TimerPollingLed.elf" "TimerPollingLed.hex"
	"C:\Tools\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objcopy.exe" -j .eeprom  --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0  --no-change-warnings -O ihex "TimerPollingLed.elf" "TimerPollingLed.eep" || exit 0
	"C:\Tools\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objdump.exe" -h -S "TimerPollingLed.elf" > "TimerPollingLed.lss"
	"C:\Tools\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objcopy.exe" -O srec -R .eeprom -R .fuse -R .lock -R .signature -R .user_signatures "TimerPollingLed.elf" "TimerPollingLed.srec"
	"C:\Tools\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-size.exe" "TimerPollingLed.elf"
	
	





# Other Targets
clean:
	-$(RM) $(OBJS_AS_ARGS) $(EXECUTABLES)  
	-$(RM) $(C_DEPS_AS_ARGS)   
	rm -rf "TimerPollingLed.elf" "TimerPollingLed.a" "TimerPollingLed.hex" "TimerPollingLed.lss" "TimerPollingLed.eep" "TimerPollingLed.map" "TimerPollingLed.srec" "TimerPollingLed.usersignatures"
	