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
include src/mac/CMakeFiles/mac.dir/depend.make

# Include the progress variables for this target.
include src/mac/CMakeFiles/mac.dir/progress.make

# Include the compile flags for this target's objects.
include src/mac/CMakeFiles/mac.dir/flags.make

src/mac/CMakeFiles/mac.dir/LoRaMac.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/LoRaMac.c.obj: ../src/mac/LoRaMac.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/mac/CMakeFiles/mac.dir/LoRaMac.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/LoRaMac.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMac.c

src/mac/CMakeFiles/mac.dir/LoRaMac.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/LoRaMac.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMac.c > CMakeFiles/mac.dir/LoRaMac.c.i

src/mac/CMakeFiles/mac.dir/LoRaMac.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/LoRaMac.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMac.c -o CMakeFiles/mac.dir/LoRaMac.c.s

src/mac/CMakeFiles/mac.dir/LoRaMacAdr.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/LoRaMacAdr.c.obj: ../src/mac/LoRaMacAdr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/mac/CMakeFiles/mac.dir/LoRaMacAdr.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/LoRaMacAdr.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacAdr.c

src/mac/CMakeFiles/mac.dir/LoRaMacAdr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/LoRaMacAdr.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacAdr.c > CMakeFiles/mac.dir/LoRaMacAdr.c.i

src/mac/CMakeFiles/mac.dir/LoRaMacAdr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/LoRaMacAdr.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacAdr.c -o CMakeFiles/mac.dir/LoRaMacAdr.c.s

src/mac/CMakeFiles/mac.dir/LoRaMacClassB.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/LoRaMacClassB.c.obj: ../src/mac/LoRaMacClassB.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/mac/CMakeFiles/mac.dir/LoRaMacClassB.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/LoRaMacClassB.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacClassB.c

src/mac/CMakeFiles/mac.dir/LoRaMacClassB.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/LoRaMacClassB.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacClassB.c > CMakeFiles/mac.dir/LoRaMacClassB.c.i

src/mac/CMakeFiles/mac.dir/LoRaMacClassB.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/LoRaMacClassB.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacClassB.c -o CMakeFiles/mac.dir/LoRaMacClassB.c.s

src/mac/CMakeFiles/mac.dir/LoRaMacCommands.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/LoRaMacCommands.c.obj: ../src/mac/LoRaMacCommands.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/mac/CMakeFiles/mac.dir/LoRaMacCommands.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/LoRaMacCommands.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacCommands.c

src/mac/CMakeFiles/mac.dir/LoRaMacCommands.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/LoRaMacCommands.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacCommands.c > CMakeFiles/mac.dir/LoRaMacCommands.c.i

src/mac/CMakeFiles/mac.dir/LoRaMacCommands.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/LoRaMacCommands.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacCommands.c -o CMakeFiles/mac.dir/LoRaMacCommands.c.s

src/mac/CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.obj: ../src/mac/LoRaMacConfirmQueue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/mac/CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacConfirmQueue.c

src/mac/CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacConfirmQueue.c > CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.i

src/mac/CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacConfirmQueue.c -o CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.s

src/mac/CMakeFiles/mac.dir/LoRaMacCrypto.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/LoRaMacCrypto.c.obj: ../src/mac/LoRaMacCrypto.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/mac/CMakeFiles/mac.dir/LoRaMacCrypto.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/LoRaMacCrypto.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacCrypto.c

src/mac/CMakeFiles/mac.dir/LoRaMacCrypto.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/LoRaMacCrypto.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacCrypto.c > CMakeFiles/mac.dir/LoRaMacCrypto.c.i

src/mac/CMakeFiles/mac.dir/LoRaMacCrypto.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/LoRaMacCrypto.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacCrypto.c -o CMakeFiles/mac.dir/LoRaMacCrypto.c.s

src/mac/CMakeFiles/mac.dir/LoRaMacParser.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/LoRaMacParser.c.obj: ../src/mac/LoRaMacParser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object src/mac/CMakeFiles/mac.dir/LoRaMacParser.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/LoRaMacParser.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacParser.c

src/mac/CMakeFiles/mac.dir/LoRaMacParser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/LoRaMacParser.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacParser.c > CMakeFiles/mac.dir/LoRaMacParser.c.i

src/mac/CMakeFiles/mac.dir/LoRaMacParser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/LoRaMacParser.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacParser.c -o CMakeFiles/mac.dir/LoRaMacParser.c.s

src/mac/CMakeFiles/mac.dir/LoRaMacSerializer.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/LoRaMacSerializer.c.obj: ../src/mac/LoRaMacSerializer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object src/mac/CMakeFiles/mac.dir/LoRaMacSerializer.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/LoRaMacSerializer.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacSerializer.c

src/mac/CMakeFiles/mac.dir/LoRaMacSerializer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/LoRaMacSerializer.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacSerializer.c > CMakeFiles/mac.dir/LoRaMacSerializer.c.i

src/mac/CMakeFiles/mac.dir/LoRaMacSerializer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/LoRaMacSerializer.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/LoRaMacSerializer.c -o CMakeFiles/mac.dir/LoRaMacSerializer.c.s

src/mac/CMakeFiles/mac.dir/region/Region.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/Region.c.obj: ../src/mac/region/Region.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object src/mac/CMakeFiles/mac.dir/region/Region.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/Region.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/Region.c

src/mac/CMakeFiles/mac.dir/region/Region.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/Region.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/Region.c > CMakeFiles/mac.dir/region/Region.c.i

src/mac/CMakeFiles/mac.dir/region/Region.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/Region.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/Region.c -o CMakeFiles/mac.dir/region/Region.c.s

src/mac/CMakeFiles/mac.dir/region/RegionAS923.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionAS923.c.obj: ../src/mac/region/RegionAS923.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionAS923.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionAS923.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionAS923.c

src/mac/CMakeFiles/mac.dir/region/RegionAS923.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionAS923.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionAS923.c > CMakeFiles/mac.dir/region/RegionAS923.c.i

src/mac/CMakeFiles/mac.dir/region/RegionAS923.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionAS923.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionAS923.c -o CMakeFiles/mac.dir/region/RegionAS923.c.s

src/mac/CMakeFiles/mac.dir/region/RegionAU915.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionAU915.c.obj: ../src/mac/region/RegionAU915.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionAU915.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionAU915.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionAU915.c

src/mac/CMakeFiles/mac.dir/region/RegionAU915.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionAU915.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionAU915.c > CMakeFiles/mac.dir/region/RegionAU915.c.i

src/mac/CMakeFiles/mac.dir/region/RegionAU915.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionAU915.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionAU915.c -o CMakeFiles/mac.dir/region/RegionAU915.c.s

src/mac/CMakeFiles/mac.dir/region/RegionBaseUS.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionBaseUS.c.obj: ../src/mac/region/RegionBaseUS.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionBaseUS.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionBaseUS.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionBaseUS.c

src/mac/CMakeFiles/mac.dir/region/RegionBaseUS.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionBaseUS.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionBaseUS.c > CMakeFiles/mac.dir/region/RegionBaseUS.c.i

src/mac/CMakeFiles/mac.dir/region/RegionBaseUS.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionBaseUS.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionBaseUS.c -o CMakeFiles/mac.dir/region/RegionBaseUS.c.s

src/mac/CMakeFiles/mac.dir/region/RegionCN470.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionCN470.c.obj: ../src/mac/region/RegionCN470.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionCN470.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionCN470.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionCN470.c

src/mac/CMakeFiles/mac.dir/region/RegionCN470.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionCN470.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionCN470.c > CMakeFiles/mac.dir/region/RegionCN470.c.i

src/mac/CMakeFiles/mac.dir/region/RegionCN470.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionCN470.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionCN470.c -o CMakeFiles/mac.dir/region/RegionCN470.c.s

src/mac/CMakeFiles/mac.dir/region/RegionCN779.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionCN779.c.obj: ../src/mac/region/RegionCN779.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionCN779.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionCN779.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionCN779.c

src/mac/CMakeFiles/mac.dir/region/RegionCN779.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionCN779.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionCN779.c > CMakeFiles/mac.dir/region/RegionCN779.c.i

src/mac/CMakeFiles/mac.dir/region/RegionCN779.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionCN779.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionCN779.c -o CMakeFiles/mac.dir/region/RegionCN779.c.s

src/mac/CMakeFiles/mac.dir/region/RegionCommon.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionCommon.c.obj: ../src/mac/region/RegionCommon.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionCommon.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionCommon.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionCommon.c

src/mac/CMakeFiles/mac.dir/region/RegionCommon.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionCommon.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionCommon.c > CMakeFiles/mac.dir/region/RegionCommon.c.i

src/mac/CMakeFiles/mac.dir/region/RegionCommon.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionCommon.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionCommon.c -o CMakeFiles/mac.dir/region/RegionCommon.c.s

src/mac/CMakeFiles/mac.dir/region/RegionEU433.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionEU433.c.obj: ../src/mac/region/RegionEU433.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionEU433.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionEU433.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionEU433.c

src/mac/CMakeFiles/mac.dir/region/RegionEU433.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionEU433.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionEU433.c > CMakeFiles/mac.dir/region/RegionEU433.c.i

src/mac/CMakeFiles/mac.dir/region/RegionEU433.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionEU433.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionEU433.c -o CMakeFiles/mac.dir/region/RegionEU433.c.s

src/mac/CMakeFiles/mac.dir/region/RegionEU868.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionEU868.c.obj: ../src/mac/region/RegionEU868.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionEU868.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionEU868.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionEU868.c

src/mac/CMakeFiles/mac.dir/region/RegionEU868.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionEU868.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionEU868.c > CMakeFiles/mac.dir/region/RegionEU868.c.i

src/mac/CMakeFiles/mac.dir/region/RegionEU868.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionEU868.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionEU868.c -o CMakeFiles/mac.dir/region/RegionEU868.c.s

src/mac/CMakeFiles/mac.dir/region/RegionIN865.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionIN865.c.obj: ../src/mac/region/RegionIN865.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionIN865.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionIN865.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionIN865.c

src/mac/CMakeFiles/mac.dir/region/RegionIN865.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionIN865.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionIN865.c > CMakeFiles/mac.dir/region/RegionIN865.c.i

src/mac/CMakeFiles/mac.dir/region/RegionIN865.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionIN865.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionIN865.c -o CMakeFiles/mac.dir/region/RegionIN865.c.s

src/mac/CMakeFiles/mac.dir/region/RegionKR920.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionKR920.c.obj: ../src/mac/region/RegionKR920.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionKR920.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionKR920.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionKR920.c

src/mac/CMakeFiles/mac.dir/region/RegionKR920.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionKR920.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionKR920.c > CMakeFiles/mac.dir/region/RegionKR920.c.i

src/mac/CMakeFiles/mac.dir/region/RegionKR920.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionKR920.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionKR920.c -o CMakeFiles/mac.dir/region/RegionKR920.c.s

src/mac/CMakeFiles/mac.dir/region/RegionRU864.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionRU864.c.obj: ../src/mac/region/RegionRU864.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionRU864.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionRU864.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionRU864.c

src/mac/CMakeFiles/mac.dir/region/RegionRU864.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionRU864.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionRU864.c > CMakeFiles/mac.dir/region/RegionRU864.c.i

src/mac/CMakeFiles/mac.dir/region/RegionRU864.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionRU864.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionRU864.c -o CMakeFiles/mac.dir/region/RegionRU864.c.s

src/mac/CMakeFiles/mac.dir/region/RegionUS915.c.obj: src/mac/CMakeFiles/mac.dir/flags.make
src/mac/CMakeFiles/mac.dir/region/RegionUS915.c.obj: ../src/mac/region/RegionUS915.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kupas/TCC/LoRaMac-smarttotem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building C object src/mac/CMakeFiles/mac.dir/region/RegionUS915.c.obj"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mac.dir/region/RegionUS915.c.obj   -c /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionUS915.c

src/mac/CMakeFiles/mac.dir/region/RegionUS915.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mac.dir/region/RegionUS915.c.i"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionUS915.c > CMakeFiles/mac.dir/region/RegionUS915.c.i

src/mac/CMakeFiles/mac.dir/region/RegionUS915.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mac.dir/region/RegionUS915.c.s"
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kupas/TCC/LoRaMac-smarttotem/src/mac/region/RegionUS915.c -o CMakeFiles/mac.dir/region/RegionUS915.c.s

mac: src/mac/CMakeFiles/mac.dir/LoRaMac.c.obj
mac: src/mac/CMakeFiles/mac.dir/LoRaMacAdr.c.obj
mac: src/mac/CMakeFiles/mac.dir/LoRaMacClassB.c.obj
mac: src/mac/CMakeFiles/mac.dir/LoRaMacCommands.c.obj
mac: src/mac/CMakeFiles/mac.dir/LoRaMacConfirmQueue.c.obj
mac: src/mac/CMakeFiles/mac.dir/LoRaMacCrypto.c.obj
mac: src/mac/CMakeFiles/mac.dir/LoRaMacParser.c.obj
mac: src/mac/CMakeFiles/mac.dir/LoRaMacSerializer.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/Region.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionAS923.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionAU915.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionBaseUS.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionCN470.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionCN779.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionCommon.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionEU433.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionEU868.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionIN865.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionKR920.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionRU864.c.obj
mac: src/mac/CMakeFiles/mac.dir/region/RegionUS915.c.obj
mac: src/mac/CMakeFiles/mac.dir/build.make

.PHONY : mac

# Rule to build all files generated by this target.
src/mac/CMakeFiles/mac.dir/build: mac

.PHONY : src/mac/CMakeFiles/mac.dir/build

src/mac/CMakeFiles/mac.dir/clean:
	cd /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac && $(CMAKE_COMMAND) -P CMakeFiles/mac.dir/cmake_clean.cmake
.PHONY : src/mac/CMakeFiles/mac.dir/clean

src/mac/CMakeFiles/mac.dir/depend:
	cd /home/kupas/TCC/LoRaMac-smarttotem/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kupas/TCC/LoRaMac-smarttotem /home/kupas/TCC/LoRaMac-smarttotem/src/mac /home/kupas/TCC/LoRaMac-smarttotem/build /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac /home/kupas/TCC/LoRaMac-smarttotem/build/src/mac/CMakeFiles/mac.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/mac/CMakeFiles/mac.dir/depend
