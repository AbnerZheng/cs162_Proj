# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/vagrant/code/group/pintos/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/vagrant/code/group/pintos/src/cmake-build-debug

# Include any dependencies generated for this target.
include devices/CMakeFiles/device.dir/depend.make

# Include the progress variables for this target.
include devices/CMakeFiles/device.dir/progress.make

# Include the compile flags for this target's objects.
include devices/CMakeFiles/device.dir/flags.make

devices/CMakeFiles/device.dir/block.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/block.c.o: ../devices/block.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object devices/CMakeFiles/device.dir/block.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/block.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/block.c

devices/CMakeFiles/device.dir/block.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/block.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/block.c > CMakeFiles/device.dir/block.c.i

devices/CMakeFiles/device.dir/block.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/block.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/block.c -o CMakeFiles/device.dir/block.c.s

devices/CMakeFiles/device.dir/block.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/block.c.o.requires

devices/CMakeFiles/device.dir/block.c.o.provides: devices/CMakeFiles/device.dir/block.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/block.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/block.c.o.provides

devices/CMakeFiles/device.dir/block.c.o.provides.build: devices/CMakeFiles/device.dir/block.c.o


devices/CMakeFiles/device.dir/ide.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/ide.c.o: ../devices/ide.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object devices/CMakeFiles/device.dir/ide.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/ide.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/ide.c

devices/CMakeFiles/device.dir/ide.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/ide.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/ide.c > CMakeFiles/device.dir/ide.c.i

devices/CMakeFiles/device.dir/ide.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/ide.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/ide.c -o CMakeFiles/device.dir/ide.c.s

devices/CMakeFiles/device.dir/ide.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/ide.c.o.requires

devices/CMakeFiles/device.dir/ide.c.o.provides: devices/CMakeFiles/device.dir/ide.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/ide.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/ide.c.o.provides

devices/CMakeFiles/device.dir/ide.c.o.provides.build: devices/CMakeFiles/device.dir/ide.c.o


devices/CMakeFiles/device.dir/input.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/input.c.o: ../devices/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object devices/CMakeFiles/device.dir/input.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/input.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/input.c

devices/CMakeFiles/device.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/input.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/input.c > CMakeFiles/device.dir/input.c.i

devices/CMakeFiles/device.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/input.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/input.c -o CMakeFiles/device.dir/input.c.s

devices/CMakeFiles/device.dir/input.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/input.c.o.requires

devices/CMakeFiles/device.dir/input.c.o.provides: devices/CMakeFiles/device.dir/input.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/input.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/input.c.o.provides

devices/CMakeFiles/device.dir/input.c.o.provides.build: devices/CMakeFiles/device.dir/input.c.o


devices/CMakeFiles/device.dir/intq.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/intq.c.o: ../devices/intq.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object devices/CMakeFiles/device.dir/intq.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/intq.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/intq.c

devices/CMakeFiles/device.dir/intq.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/intq.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/intq.c > CMakeFiles/device.dir/intq.c.i

devices/CMakeFiles/device.dir/intq.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/intq.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/intq.c -o CMakeFiles/device.dir/intq.c.s

devices/CMakeFiles/device.dir/intq.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/intq.c.o.requires

devices/CMakeFiles/device.dir/intq.c.o.provides: devices/CMakeFiles/device.dir/intq.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/intq.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/intq.c.o.provides

devices/CMakeFiles/device.dir/intq.c.o.provides.build: devices/CMakeFiles/device.dir/intq.c.o


devices/CMakeFiles/device.dir/kbd.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/kbd.c.o: ../devices/kbd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object devices/CMakeFiles/device.dir/kbd.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/kbd.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/kbd.c

devices/CMakeFiles/device.dir/kbd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/kbd.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/kbd.c > CMakeFiles/device.dir/kbd.c.i

devices/CMakeFiles/device.dir/kbd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/kbd.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/kbd.c -o CMakeFiles/device.dir/kbd.c.s

devices/CMakeFiles/device.dir/kbd.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/kbd.c.o.requires

devices/CMakeFiles/device.dir/kbd.c.o.provides: devices/CMakeFiles/device.dir/kbd.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/kbd.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/kbd.c.o.provides

devices/CMakeFiles/device.dir/kbd.c.o.provides.build: devices/CMakeFiles/device.dir/kbd.c.o


devices/CMakeFiles/device.dir/partition.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/partition.c.o: ../devices/partition.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object devices/CMakeFiles/device.dir/partition.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/partition.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/partition.c

devices/CMakeFiles/device.dir/partition.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/partition.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/partition.c > CMakeFiles/device.dir/partition.c.i

devices/CMakeFiles/device.dir/partition.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/partition.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/partition.c -o CMakeFiles/device.dir/partition.c.s

devices/CMakeFiles/device.dir/partition.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/partition.c.o.requires

devices/CMakeFiles/device.dir/partition.c.o.provides: devices/CMakeFiles/device.dir/partition.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/partition.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/partition.c.o.provides

devices/CMakeFiles/device.dir/partition.c.o.provides.build: devices/CMakeFiles/device.dir/partition.c.o


devices/CMakeFiles/device.dir/pit.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/pit.c.o: ../devices/pit.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object devices/CMakeFiles/device.dir/pit.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/pit.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/pit.c

devices/CMakeFiles/device.dir/pit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/pit.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/pit.c > CMakeFiles/device.dir/pit.c.i

devices/CMakeFiles/device.dir/pit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/pit.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/pit.c -o CMakeFiles/device.dir/pit.c.s

devices/CMakeFiles/device.dir/pit.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/pit.c.o.requires

devices/CMakeFiles/device.dir/pit.c.o.provides: devices/CMakeFiles/device.dir/pit.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/pit.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/pit.c.o.provides

devices/CMakeFiles/device.dir/pit.c.o.provides.build: devices/CMakeFiles/device.dir/pit.c.o


devices/CMakeFiles/device.dir/rtc.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/rtc.c.o: ../devices/rtc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object devices/CMakeFiles/device.dir/rtc.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/rtc.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/rtc.c

devices/CMakeFiles/device.dir/rtc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/rtc.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/rtc.c > CMakeFiles/device.dir/rtc.c.i

devices/CMakeFiles/device.dir/rtc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/rtc.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/rtc.c -o CMakeFiles/device.dir/rtc.c.s

devices/CMakeFiles/device.dir/rtc.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/rtc.c.o.requires

devices/CMakeFiles/device.dir/rtc.c.o.provides: devices/CMakeFiles/device.dir/rtc.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/rtc.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/rtc.c.o.provides

devices/CMakeFiles/device.dir/rtc.c.o.provides.build: devices/CMakeFiles/device.dir/rtc.c.o


devices/CMakeFiles/device.dir/serial.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/serial.c.o: ../devices/serial.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object devices/CMakeFiles/device.dir/serial.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/serial.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/serial.c

devices/CMakeFiles/device.dir/serial.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/serial.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/serial.c > CMakeFiles/device.dir/serial.c.i

devices/CMakeFiles/device.dir/serial.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/serial.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/serial.c -o CMakeFiles/device.dir/serial.c.s

devices/CMakeFiles/device.dir/serial.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/serial.c.o.requires

devices/CMakeFiles/device.dir/serial.c.o.provides: devices/CMakeFiles/device.dir/serial.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/serial.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/serial.c.o.provides

devices/CMakeFiles/device.dir/serial.c.o.provides.build: devices/CMakeFiles/device.dir/serial.c.o


devices/CMakeFiles/device.dir/shutdown.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/shutdown.c.o: ../devices/shutdown.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object devices/CMakeFiles/device.dir/shutdown.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/shutdown.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/shutdown.c

devices/CMakeFiles/device.dir/shutdown.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/shutdown.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/shutdown.c > CMakeFiles/device.dir/shutdown.c.i

devices/CMakeFiles/device.dir/shutdown.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/shutdown.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/shutdown.c -o CMakeFiles/device.dir/shutdown.c.s

devices/CMakeFiles/device.dir/shutdown.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/shutdown.c.o.requires

devices/CMakeFiles/device.dir/shutdown.c.o.provides: devices/CMakeFiles/device.dir/shutdown.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/shutdown.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/shutdown.c.o.provides

devices/CMakeFiles/device.dir/shutdown.c.o.provides.build: devices/CMakeFiles/device.dir/shutdown.c.o


devices/CMakeFiles/device.dir/speaker.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/speaker.c.o: ../devices/speaker.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object devices/CMakeFiles/device.dir/speaker.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/speaker.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/speaker.c

devices/CMakeFiles/device.dir/speaker.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/speaker.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/speaker.c > CMakeFiles/device.dir/speaker.c.i

devices/CMakeFiles/device.dir/speaker.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/speaker.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/speaker.c -o CMakeFiles/device.dir/speaker.c.s

devices/CMakeFiles/device.dir/speaker.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/speaker.c.o.requires

devices/CMakeFiles/device.dir/speaker.c.o.provides: devices/CMakeFiles/device.dir/speaker.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/speaker.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/speaker.c.o.provides

devices/CMakeFiles/device.dir/speaker.c.o.provides.build: devices/CMakeFiles/device.dir/speaker.c.o


devices/CMakeFiles/device.dir/timer.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/timer.c.o: ../devices/timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object devices/CMakeFiles/device.dir/timer.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/timer.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/timer.c

devices/CMakeFiles/device.dir/timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/timer.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/timer.c > CMakeFiles/device.dir/timer.c.i

devices/CMakeFiles/device.dir/timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/timer.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/timer.c -o CMakeFiles/device.dir/timer.c.s

devices/CMakeFiles/device.dir/timer.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/timer.c.o.requires

devices/CMakeFiles/device.dir/timer.c.o.provides: devices/CMakeFiles/device.dir/timer.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/timer.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/timer.c.o.provides

devices/CMakeFiles/device.dir/timer.c.o.provides.build: devices/CMakeFiles/device.dir/timer.c.o


devices/CMakeFiles/device.dir/vga.c.o: devices/CMakeFiles/device.dir/flags.make
devices/CMakeFiles/device.dir/vga.c.o: ../devices/vga.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object devices/CMakeFiles/device.dir/vga.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/device.dir/vga.c.o   -c /Volumes/vagrant/code/group/pintos/src/devices/vga.c

devices/CMakeFiles/device.dir/vga.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/device.dir/vga.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/devices/vga.c > CMakeFiles/device.dir/vga.c.i

devices/CMakeFiles/device.dir/vga.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/device.dir/vga.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/devices/vga.c -o CMakeFiles/device.dir/vga.c.s

devices/CMakeFiles/device.dir/vga.c.o.requires:

.PHONY : devices/CMakeFiles/device.dir/vga.c.o.requires

devices/CMakeFiles/device.dir/vga.c.o.provides: devices/CMakeFiles/device.dir/vga.c.o.requires
	$(MAKE) -f devices/CMakeFiles/device.dir/build.make devices/CMakeFiles/device.dir/vga.c.o.provides.build
.PHONY : devices/CMakeFiles/device.dir/vga.c.o.provides

devices/CMakeFiles/device.dir/vga.c.o.provides.build: devices/CMakeFiles/device.dir/vga.c.o


# Object files for target device
device_OBJECTS = \
"CMakeFiles/device.dir/block.c.o" \
"CMakeFiles/device.dir/ide.c.o" \
"CMakeFiles/device.dir/input.c.o" \
"CMakeFiles/device.dir/intq.c.o" \
"CMakeFiles/device.dir/kbd.c.o" \
"CMakeFiles/device.dir/partition.c.o" \
"CMakeFiles/device.dir/pit.c.o" \
"CMakeFiles/device.dir/rtc.c.o" \
"CMakeFiles/device.dir/serial.c.o" \
"CMakeFiles/device.dir/shutdown.c.o" \
"CMakeFiles/device.dir/speaker.c.o" \
"CMakeFiles/device.dir/timer.c.o" \
"CMakeFiles/device.dir/vga.c.o"

# External object files for target device
device_EXTERNAL_OBJECTS =

devices/libdevice.a: devices/CMakeFiles/device.dir/block.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/ide.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/input.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/intq.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/kbd.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/partition.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/pit.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/rtc.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/serial.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/shutdown.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/speaker.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/timer.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/vga.c.o
devices/libdevice.a: devices/CMakeFiles/device.dir/build.make
devices/libdevice.a: devices/CMakeFiles/device.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C static library libdevice.a"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && $(CMAKE_COMMAND) -P CMakeFiles/device.dir/cmake_clean_target.cmake
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/device.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
devices/CMakeFiles/device.dir/build: devices/libdevice.a

.PHONY : devices/CMakeFiles/device.dir/build

devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/block.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/ide.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/input.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/intq.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/kbd.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/partition.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/pit.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/rtc.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/serial.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/shutdown.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/speaker.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/timer.c.o.requires
devices/CMakeFiles/device.dir/requires: devices/CMakeFiles/device.dir/vga.c.o.requires

.PHONY : devices/CMakeFiles/device.dir/requires

devices/CMakeFiles/device.dir/clean:
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices && $(CMAKE_COMMAND) -P CMakeFiles/device.dir/cmake_clean.cmake
.PHONY : devices/CMakeFiles/device.dir/clean

devices/CMakeFiles/device.dir/depend:
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/vagrant/code/group/pintos/src /Volumes/vagrant/code/group/pintos/src/devices /Volumes/vagrant/code/group/pintos/src/cmake-build-debug /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/devices/CMakeFiles/device.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : devices/CMakeFiles/device.dir/depend

