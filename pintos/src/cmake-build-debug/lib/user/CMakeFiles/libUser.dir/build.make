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
include lib/user/CMakeFiles/libUser.dir/depend.make

# Include the progress variables for this target.
include lib/user/CMakeFiles/libUser.dir/progress.make

# Include the compile flags for this target's objects.
include lib/user/CMakeFiles/libUser.dir/flags.make

lib/user/CMakeFiles/libUser.dir/console.c.o: lib/user/CMakeFiles/libUser.dir/flags.make
lib/user/CMakeFiles/libUser.dir/console.c.o: ../lib/user/console.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/user/CMakeFiles/libUser.dir/console.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libUser.dir/console.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/user/console.c

lib/user/CMakeFiles/libUser.dir/console.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libUser.dir/console.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/user/console.c > CMakeFiles/libUser.dir/console.c.i

lib/user/CMakeFiles/libUser.dir/console.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libUser.dir/console.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/user/console.c -o CMakeFiles/libUser.dir/console.c.s

lib/user/CMakeFiles/libUser.dir/console.c.o.requires:

.PHONY : lib/user/CMakeFiles/libUser.dir/console.c.o.requires

lib/user/CMakeFiles/libUser.dir/console.c.o.provides: lib/user/CMakeFiles/libUser.dir/console.c.o.requires
	$(MAKE) -f lib/user/CMakeFiles/libUser.dir/build.make lib/user/CMakeFiles/libUser.dir/console.c.o.provides.build
.PHONY : lib/user/CMakeFiles/libUser.dir/console.c.o.provides

lib/user/CMakeFiles/libUser.dir/console.c.o.provides.build: lib/user/CMakeFiles/libUser.dir/console.c.o


lib/user/CMakeFiles/libUser.dir/debug.c.o: lib/user/CMakeFiles/libUser.dir/flags.make
lib/user/CMakeFiles/libUser.dir/debug.c.o: ../lib/user/debug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/user/CMakeFiles/libUser.dir/debug.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libUser.dir/debug.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/user/debug.c

lib/user/CMakeFiles/libUser.dir/debug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libUser.dir/debug.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/user/debug.c > CMakeFiles/libUser.dir/debug.c.i

lib/user/CMakeFiles/libUser.dir/debug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libUser.dir/debug.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/user/debug.c -o CMakeFiles/libUser.dir/debug.c.s

lib/user/CMakeFiles/libUser.dir/debug.c.o.requires:

.PHONY : lib/user/CMakeFiles/libUser.dir/debug.c.o.requires

lib/user/CMakeFiles/libUser.dir/debug.c.o.provides: lib/user/CMakeFiles/libUser.dir/debug.c.o.requires
	$(MAKE) -f lib/user/CMakeFiles/libUser.dir/build.make lib/user/CMakeFiles/libUser.dir/debug.c.o.provides.build
.PHONY : lib/user/CMakeFiles/libUser.dir/debug.c.o.provides

lib/user/CMakeFiles/libUser.dir/debug.c.o.provides.build: lib/user/CMakeFiles/libUser.dir/debug.c.o


lib/user/CMakeFiles/libUser.dir/entry.c.o: lib/user/CMakeFiles/libUser.dir/flags.make
lib/user/CMakeFiles/libUser.dir/entry.c.o: ../lib/user/entry.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lib/user/CMakeFiles/libUser.dir/entry.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libUser.dir/entry.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/user/entry.c

lib/user/CMakeFiles/libUser.dir/entry.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libUser.dir/entry.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/user/entry.c > CMakeFiles/libUser.dir/entry.c.i

lib/user/CMakeFiles/libUser.dir/entry.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libUser.dir/entry.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/user/entry.c -o CMakeFiles/libUser.dir/entry.c.s

lib/user/CMakeFiles/libUser.dir/entry.c.o.requires:

.PHONY : lib/user/CMakeFiles/libUser.dir/entry.c.o.requires

lib/user/CMakeFiles/libUser.dir/entry.c.o.provides: lib/user/CMakeFiles/libUser.dir/entry.c.o.requires
	$(MAKE) -f lib/user/CMakeFiles/libUser.dir/build.make lib/user/CMakeFiles/libUser.dir/entry.c.o.provides.build
.PHONY : lib/user/CMakeFiles/libUser.dir/entry.c.o.provides

lib/user/CMakeFiles/libUser.dir/entry.c.o.provides.build: lib/user/CMakeFiles/libUser.dir/entry.c.o


lib/user/CMakeFiles/libUser.dir/syscall.c.o: lib/user/CMakeFiles/libUser.dir/flags.make
lib/user/CMakeFiles/libUser.dir/syscall.c.o: ../lib/user/syscall.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object lib/user/CMakeFiles/libUser.dir/syscall.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libUser.dir/syscall.c.o   -c /Volumes/vagrant/code/group/pintos/src/lib/user/syscall.c

lib/user/CMakeFiles/libUser.dir/syscall.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libUser.dir/syscall.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/lib/user/syscall.c > CMakeFiles/libUser.dir/syscall.c.i

lib/user/CMakeFiles/libUser.dir/syscall.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libUser.dir/syscall.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/lib/user/syscall.c -o CMakeFiles/libUser.dir/syscall.c.s

lib/user/CMakeFiles/libUser.dir/syscall.c.o.requires:

.PHONY : lib/user/CMakeFiles/libUser.dir/syscall.c.o.requires

lib/user/CMakeFiles/libUser.dir/syscall.c.o.provides: lib/user/CMakeFiles/libUser.dir/syscall.c.o.requires
	$(MAKE) -f lib/user/CMakeFiles/libUser.dir/build.make lib/user/CMakeFiles/libUser.dir/syscall.c.o.provides.build
.PHONY : lib/user/CMakeFiles/libUser.dir/syscall.c.o.provides

lib/user/CMakeFiles/libUser.dir/syscall.c.o.provides.build: lib/user/CMakeFiles/libUser.dir/syscall.c.o


# Object files for target libUser
libUser_OBJECTS = \
"CMakeFiles/libUser.dir/console.c.o" \
"CMakeFiles/libUser.dir/debug.c.o" \
"CMakeFiles/libUser.dir/entry.c.o" \
"CMakeFiles/libUser.dir/syscall.c.o"

# External object files for target libUser
libUser_EXTERNAL_OBJECTS =

lib/user/liblibUser.a: lib/user/CMakeFiles/libUser.dir/console.c.o
lib/user/liblibUser.a: lib/user/CMakeFiles/libUser.dir/debug.c.o
lib/user/liblibUser.a: lib/user/CMakeFiles/libUser.dir/entry.c.o
lib/user/liblibUser.a: lib/user/CMakeFiles/libUser.dir/syscall.c.o
lib/user/liblibUser.a: lib/user/CMakeFiles/libUser.dir/build.make
lib/user/liblibUser.a: lib/user/CMakeFiles/libUser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library liblibUser.a"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && $(CMAKE_COMMAND) -P CMakeFiles/libUser.dir/cmake_clean_target.cmake
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libUser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/user/CMakeFiles/libUser.dir/build: lib/user/liblibUser.a

.PHONY : lib/user/CMakeFiles/libUser.dir/build

lib/user/CMakeFiles/libUser.dir/requires: lib/user/CMakeFiles/libUser.dir/console.c.o.requires
lib/user/CMakeFiles/libUser.dir/requires: lib/user/CMakeFiles/libUser.dir/debug.c.o.requires
lib/user/CMakeFiles/libUser.dir/requires: lib/user/CMakeFiles/libUser.dir/entry.c.o.requires
lib/user/CMakeFiles/libUser.dir/requires: lib/user/CMakeFiles/libUser.dir/syscall.c.o.requires

.PHONY : lib/user/CMakeFiles/libUser.dir/requires

lib/user/CMakeFiles/libUser.dir/clean:
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user && $(CMAKE_COMMAND) -P CMakeFiles/libUser.dir/cmake_clean.cmake
.PHONY : lib/user/CMakeFiles/libUser.dir/clean

lib/user/CMakeFiles/libUser.dir/depend:
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/vagrant/code/group/pintos/src /Volumes/vagrant/code/group/pintos/src/lib/user /Volumes/vagrant/code/group/pintos/src/cmake-build-debug /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/lib/user/CMakeFiles/libUser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/user/CMakeFiles/libUser.dir/depend

