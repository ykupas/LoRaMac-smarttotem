# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kupas/TCC/LoRaMac-smarttotem

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kupas/TCC/LoRaMac-smarttotem/build

# Include any dependencies generated for this target.
include src/system/CMakeFiles/system.dir/depend.make

# Include the progress variables for this target.
include src/system/CMakeFiles/system.dir/progress.make

# Include the compile flags for this target's objects.
include src/system/CMakeFiles/system.dir/flags.make

src/system/CMakeFiles/system.dir/adc.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/adc.c.obj: ../src/system/adc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/system/CMakeFiles/system.dir/adc.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/adc.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/adc.c

src/system/CMakeFiles/system.dir/adc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/adc.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/adc.c > CMakeFiles/system.dir/adc.c.i

src/system/CMakeFiles/system.dir/adc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/adc.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/adc.c -o CMakeFiles/system.dir/adc.c.s

src/system/CMakeFiles/system.dir/delay.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/delay.c.obj: ../src/system/delay.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/system/CMakeFiles/system.dir/delay.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/delay.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/delay.c

src/system/CMakeFiles/system.dir/delay.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/delay.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/delay.c > CMakeFiles/system.dir/delay.c.i

src/system/CMakeFiles/system.dir/delay.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/delay.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/delay.c -o CMakeFiles/system.dir/delay.c.s

src/system/CMakeFiles/system.dir/eeprom.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/eeprom.c.obj: ../src/system/eeprom.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/system/CMakeFiles/system.dir/eeprom.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/eeprom.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/eeprom.c

src/system/CMakeFiles/system.dir/eeprom.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/eeprom.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/eeprom.c > CMakeFiles/system.dir/eeprom.c.i

src/system/CMakeFiles/system.dir/eeprom.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/eeprom.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/eeprom.c -o CMakeFiles/system.dir/eeprom.c.s

src/system/CMakeFiles/system.dir/fifo.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/fifo.c.obj: ../src/system/fifo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/system/CMakeFiles/system.dir/fifo.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/fifo.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/fifo.c

src/system/CMakeFiles/system.dir/fifo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/fifo.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/fifo.c > CMakeFiles/system.dir/fifo.c.i

src/system/CMakeFiles/system.dir/fifo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/fifo.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/fifo.c -o CMakeFiles/system.dir/fifo.c.s

src/system/CMakeFiles/system.dir/gpio.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/gpio.c.obj: ../src/system/gpio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/system/CMakeFiles/system.dir/gpio.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/gpio.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/gpio.c

src/system/CMakeFiles/system.dir/gpio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/gpio.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/gpio.c > CMakeFiles/system.dir/gpio.c.i

src/system/CMakeFiles/system.dir/gpio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/gpio.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/gpio.c -o CMakeFiles/system.dir/gpio.c.s

src/system/CMakeFiles/system.dir/gps.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/gps.c.obj: ../src/system/gps.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/system/CMakeFiles/system.dir/gps.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/gps.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/gps.c

src/system/CMakeFiles/system.dir/gps.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/gps.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/gps.c > CMakeFiles/system.dir/gps.c.i

src/system/CMakeFiles/system.dir/gps.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/gps.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/gps.c -o CMakeFiles/system.dir/gps.c.s

src/system/CMakeFiles/system.dir/i2c.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/i2c.c.obj: ../src/system/i2c.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object src/system/CMakeFiles/system.dir/i2c.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/i2c.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/i2c.c

src/system/CMakeFiles/system.dir/i2c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/i2c.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/i2c.c > CMakeFiles/system.dir/i2c.c.i

src/system/CMakeFiles/system.dir/i2c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/i2c.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/i2c.c -o CMakeFiles/system.dir/i2c.c.s

src/system/CMakeFiles/system.dir/nvmm.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/nvmm.c.obj: ../src/system/nvmm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object src/system/CMakeFiles/system.dir/nvmm.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/nvmm.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/nvmm.c

src/system/CMakeFiles/system.dir/nvmm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/nvmm.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/nvmm.c > CMakeFiles/system.dir/nvmm.c.i

src/system/CMakeFiles/system.dir/nvmm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/nvmm.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/nvmm.c -o CMakeFiles/system.dir/nvmm.c.s

src/system/CMakeFiles/system.dir/systime.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/systime.c.obj: ../src/system/systime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object src/system/CMakeFiles/system.dir/systime.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/systime.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/systime.c

src/system/CMakeFiles/system.dir/systime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/systime.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/systime.c > CMakeFiles/system.dir/systime.c.i

src/system/CMakeFiles/system.dir/systime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/systime.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/systime.c -o CMakeFiles/system.dir/systime.c.s

src/system/CMakeFiles/system.dir/timer.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/timer.c.obj: ../src/system/timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object src/system/CMakeFiles/system.dir/timer.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/timer.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/timer.c

src/system/CMakeFiles/system.dir/timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/timer.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/timer.c > CMakeFiles/system.dir/timer.c.i

src/system/CMakeFiles/system.dir/timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/timer.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/timer.c -o CMakeFiles/system.dir/timer.c.s

src/system/CMakeFiles/system.dir/uart.c.obj: src/system/CMakeFiles/system.dir/flags.make
src/system/CMakeFiles/system.dir/uart.c.obj: ../src/system/uart.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object src/system/CMakeFiles/system.dir/uart.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/system.dir/uart.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/system/uart.c

src/system/CMakeFiles/system.dir/uart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/system.dir/uart.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/system/uart.c > CMakeFiles/system.dir/uart.c.i

src/system/CMakeFiles/system.dir/uart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/system.dir/uart.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/system/uart.c -o CMakeFiles/system.dir/uart.c.s

system: src/system/CMakeFiles/system.dir/adc.c.obj
system: src/system/CMakeFiles/system.dir/delay.c.obj
system: src/system/CMakeFiles/system.dir/eeprom.c.obj
system: src/system/CMakeFiles/system.dir/fifo.c.obj
system: src/system/CMakeFiles/system.dir/gpio.c.obj
system: src/system/CMakeFiles/system.dir/gps.c.obj
system: src/system/CMakeFiles/system.dir/i2c.c.obj
system: src/system/CMakeFiles/system.dir/nvmm.c.obj
system: src/system/CMakeFiles/system.dir/systime.c.obj
system: src/system/CMakeFiles/system.dir/timer.c.obj
system: src/system/CMakeFiles/system.dir/uart.c.obj
system: src/system/CMakeFiles/system.dir/build.make

.PHONY : system

# Rule to build all files generated by this target.
src/system/CMakeFiles/system.dir/build: system

.PHONY : src/system/CMakeFiles/system.dir/build

src/system/CMakeFiles/system.dir/clean:
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/system && $(CMAKE_COMMAND) -P CMakeFiles/system.dir/cmake_clean.cmake
.PHONY : src/system/CMakeFiles/system.dir/clean

src/system/CMakeFiles/system.dir/depend:
	cd /home/kupas/TCC/LoRaMac-smarttotem/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kupas/TCC/LoRaMac-smarttotem /home/kupas/TCC/LoRaMac-smarttotem/src/system /home/kupas/TCC/LoRaMac-smarttotem/build /home/kupas/TCC/LoRaMac-smarttotem/build/src/system /home/kupas/TCC/LoRaMac-smarttotem/build/src/system/CMakeFiles/system.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/system/CMakeFiles/system.dir/depend
