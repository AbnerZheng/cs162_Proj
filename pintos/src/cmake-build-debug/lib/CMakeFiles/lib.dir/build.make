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
include lib/CMakeFiles/lib.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/lib.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/lib.dir/flags.make

lib/CMakeFiles/lib.dir/arithmetic.c.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/arithmetic.c.o: ../lib/arithmetic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/CMakeFiles/lib.dir/arithmetic.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib.dir/arithmetic.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/arithmetic.c

lib/CMakeFiles/lib.dir/arithmetic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib.dir/arithmetic.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/arithmetic.c > CMakeFiles/lib.dir/arithmetic.c.i

lib/CMakeFiles/lib.dir/arithmetic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib.dir/arithmetic.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/arithmetic.c -o CMakeFiles/lib.dir/arithmetic.c.s

lib/CMakeFiles/lib.dir/arithmetic.c.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/arithmetic.c.o.requires

lib/CMakeFiles/lib.dir/arithmetic.c.o.provides: lib/CMakeFiles/lib.dir/arithmetic.c.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/arithmetic.c.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/arithmetic.c.o.provides

lib/CMakeFiles/lib.dir/arithmetic.c.o.provides.build: lib/CMakeFiles/lib.dir/arithmetic.c.o


lib/CMakeFiles/lib.dir/debug.c.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/debug.c.o: ../lib/debug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/CMakeFiles/lib.dir/debug.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib.dir/debug.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/debug.c

lib/CMakeFiles/lib.dir/debug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib.dir/debug.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/debug.c > CMakeFiles/lib.dir/debug.c.i

lib/CMakeFiles/lib.dir/debug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib.dir/debug.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/debug.c -o CMakeFiles/lib.dir/debug.c.s

lib/CMakeFiles/lib.dir/debug.c.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/debug.c.o.requires

lib/CMakeFiles/lib.dir/debug.c.o.provides: lib/CMakeFiles/lib.dir/debug.c.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/debug.c.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/debug.c.o.provides

lib/CMakeFiles/lib.dir/debug.c.o.provides.build: lib/CMakeFiles/lib.dir/debug.c.o


lib/CMakeFiles/lib.dir/random.c.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/random.c.o: ../lib/random.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lib/CMakeFiles/lib.dir/random.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib.dir/random.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/random.c

lib/CMakeFiles/lib.dir/random.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib.dir/random.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/random.c > CMakeFiles/lib.dir/random.c.i

lib/CMakeFiles/lib.dir/random.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib.dir/random.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/random.c -o CMakeFiles/lib.dir/random.c.s

lib/CMakeFiles/lib.dir/random.c.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/random.c.o.requires

lib/CMakeFiles/lib.dir/random.c.o.provides: lib/CMakeFiles/lib.dir/random.c.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/random.c.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/random.c.o.provides

lib/CMakeFiles/lib.dir/random.c.o.provides.build: lib/CMakeFiles/lib.dir/random.c.o


lib/CMakeFiles/lib.dir/stdio.c.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/stdio.c.o: ../lib/stdio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object lib/CMakeFiles/lib.dir/stdio.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib.dir/stdio.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/stdio.c

lib/CMakeFiles/lib.dir/stdio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib.dir/stdio.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/stdio.c > CMakeFiles/lib.dir/stdio.c.i

lib/CMakeFiles/lib.dir/stdio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib.dir/stdio.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/stdio.c -o CMakeFiles/lib.dir/stdio.c.s

lib/CMakeFiles/lib.dir/stdio.c.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/stdio.c.o.requires

lib/CMakeFiles/lib.dir/stdio.c.o.provides: lib/CMakeFiles/lib.dir/stdio.c.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/stdio.c.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/stdio.c.o.provides

lib/CMakeFiles/lib.dir/stdio.c.o.provides.build: lib/CMakeFiles/lib.dir/stdio.c.o


lib/CMakeFiles/lib.dir/stdlib.c.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/stdlib.c.o: ../lib/stdlib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object lib/CMakeFiles/lib.dir/stdlib.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib.dir/stdlib.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/stdlib.c

lib/CMakeFiles/lib.dir/stdlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib.dir/stdlib.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/stdlib.c > CMakeFiles/lib.dir/stdlib.c.i

lib/CMakeFiles/lib.dir/stdlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib.dir/stdlib.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/stdlib.c -o CMakeFiles/lib.dir/stdlib.c.s

lib/CMakeFiles/lib.dir/stdlib.c.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/stdlib.c.o.requires

lib/CMakeFiles/lib.dir/stdlib.c.o.provides: lib/CMakeFiles/lib.dir/stdlib.c.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/stdlib.c.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/stdlib.c.o.provides

lib/CMakeFiles/lib.dir/stdlib.c.o.provides.build: lib/CMakeFiles/lib.dir/stdlib.c.o


lib/CMakeFiles/lib.dir/string.c.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/string.c.o: ../lib/string.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object lib/CMakeFiles/lib.dir/string.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib.dir/string.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/string.c

lib/CMakeFiles/lib.dir/string.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib.dir/string.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/string.c > CMakeFiles/lib.dir/string.c.i

lib/CMakeFiles/lib.dir/string.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib.dir/string.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/string.c -o CMakeFiles/lib.dir/string.c.s

lib/CMakeFiles/lib.dir/string.c.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/string.c.o.requires

lib/CMakeFiles/lib.dir/string.c.o.provides: lib/CMakeFiles/lib.dir/string.c.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/string.c.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/string.c.o.provides

lib/CMakeFiles/lib.dir/string.c.o.provides.build: lib/CMakeFiles/lib.dir/string.c.o


lib/CMakeFiles/lib.dir/ustar.c.o: lib/CMakeFiles/lib.dir/flags.make
lib/CMakeFiles/lib.dir/ustar.c.o: ../lib/ustar.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object lib/CMakeFiles/lib.dir/ustar.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib.dir/ustar.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/ustar.c

lib/CMakeFiles/lib.dir/ustar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib.dir/ustar.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/ustar.c > CMakeFiles/lib.dir/ustar.c.i

lib/CMakeFiles/lib.dir/ustar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib.dir/ustar.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/ustar.c -o CMakeFiles/lib.dir/ustar.c.s

lib/CMakeFiles/lib.dir/ustar.c.o.requires:

.PHONY : lib/CMakeFiles/lib.dir/ustar.c.o.requires

lib/CMakeFiles/lib.dir/ustar.c.o.provides: lib/CMakeFiles/lib.dir/ustar.c.o.requires
	$(MAKE) -f lib/CMakeFiles/lib.dir/build.make lib/CMakeFiles/lib.dir/ustar.c.o.provides.build
.PHONY : lib/CMakeFiles/lib.dir/ustar.c.o.provides

lib/CMakeFiles/lib.dir/ustar.c.o.provides.build: lib/CMakeFiles/lib.dir/ustar.c.o


# Object files for target lib
lib_OBJECTS = \
"CMakeFiles/lib.dir/arithmetic.c.o" \
"CMakeFiles/lib.dir/debug.c.o" \
"CMakeFiles/lib.dir/random.c.o" \
"CMakeFiles/lib.dir/stdio.c.o" \
"CMakeFiles/lib.dir/stdlib.c.o" \
"CMakeFiles/lib.dir/string.c.o" \
"CMakeFiles/lib.dir/ustar.c.o"

# External object files for target lib
lib_EXTERNAL_OBJECTS =

lib/liblib.a: lib/CMakeFiles/lib.dir/arithmetic.c.o
lib/liblib.a: lib/CMakeFiles/lib.dir/debug.c.o
lib/liblib.a: lib/CMakeFiles/lib.dir/random.c.o
lib/liblib.a: lib/CMakeFiles/lib.dir/stdio.c.o
lib/liblib.a: lib/CMakeFiles/lib.dir/stdlib.c.o
lib/liblib.a: lib/CMakeFiles/lib.dir/string.c.o
lib/liblib.a: lib/CMakeFiles/lib.dir/ustar.c.o
lib/liblib.a: lib/CMakeFiles/lib.dir/build.make
lib/liblib.a: lib/CMakeFiles/lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library liblib.a"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && $(CMAKE_COMMAND) -P CMakeFiles/lib.dir/cmake_clean_target.cmake
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/lib.dir/build: lib/liblib.a

.PHONY : lib/CMakeFiles/lib.dir/build

lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/arithmetic.c.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/debug.c.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/random.c.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/stdio.c.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/stdlib.c.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/string.c.o.requires
lib/CMakeFiles/lib.dir/requires: lib/CMakeFiles/lib.dir/ustar.c.o.requires

.PHONY : lib/CMakeFiles/lib.dir/requires

lib/CMakeFiles/lib.dir/clean:
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib && $(CMAKE_COMMAND) -P CMakeFiles/lib.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/lib.dir/clean

lib/CMakeFiles/lib.dir/depend:
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/vagrant/code/group/pintos/src /Volumes/vagrant/code/group/pintos/src/lib /Volumes/vagrant/code/group/pintos/src/cmake-build-debug /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/CMakeFiles/lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/lib.dir/depend
