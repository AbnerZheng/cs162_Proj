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
include userprog/CMakeFiles/userprog.dir/depend.make

# Include the progress variables for this target.
include userprog/CMakeFiles/userprog.dir/progress.make

# Include the compile flags for this target's objects.
include userprog/CMakeFiles/userprog.dir/flags.make

userprog/CMakeFiles/userprog.dir/gdt.c.o: userprog/CMakeFiles/userprog.dir/flags.make
userprog/CMakeFiles/userprog.dir/gdt.c.o: ../userprog/gdt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object userprog/CMakeFiles/userprog.dir/gdt.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/userprog.dir/gdt.c.o   -c /Volumes/vagrant/code/group/pintos/src/userprog/gdt.c

userprog/CMakeFiles/userprog.dir/gdt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/userprog.dir/gdt.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/userprog/gdt.c > CMakeFiles/userprog.dir/gdt.c.i

userprog/CMakeFiles/userprog.dir/gdt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/userprog.dir/gdt.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/userprog/gdt.c -o CMakeFiles/userprog.dir/gdt.c.s

userprog/CMakeFiles/userprog.dir/gdt.c.o.requires:

.PHONY : userprog/CMakeFiles/userprog.dir/gdt.c.o.requires

userprog/CMakeFiles/userprog.dir/gdt.c.o.provides: userprog/CMakeFiles/userprog.dir/gdt.c.o.requires
	$(MAKE) -f userprog/CMakeFiles/userprog.dir/build.make userprog/CMakeFiles/userprog.dir/gdt.c.o.provides.build
.PHONY : userprog/CMakeFiles/userprog.dir/gdt.c.o.provides

userprog/CMakeFiles/userprog.dir/gdt.c.o.provides.build: userprog/CMakeFiles/userprog.dir/gdt.c.o


userprog/CMakeFiles/userprog.dir/pagedir.c.o: userprog/CMakeFiles/userprog.dir/flags.make
userprog/CMakeFiles/userprog.dir/pagedir.c.o: ../userprog/pagedir.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object userprog/CMakeFiles/userprog.dir/pagedir.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/userprog.dir/pagedir.c.o   -c /Volumes/vagrant/code/group/pintos/src/userprog/pagedir.c

userprog/CMakeFiles/userprog.dir/pagedir.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/userprog.dir/pagedir.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/userprog/pagedir.c > CMakeFiles/userprog.dir/pagedir.c.i

userprog/CMakeFiles/userprog.dir/pagedir.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/userprog.dir/pagedir.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/userprog/pagedir.c -o CMakeFiles/userprog.dir/pagedir.c.s

userprog/CMakeFiles/userprog.dir/pagedir.c.o.requires:

.PHONY : userprog/CMakeFiles/userprog.dir/pagedir.c.o.requires

userprog/CMakeFiles/userprog.dir/pagedir.c.o.provides: userprog/CMakeFiles/userprog.dir/pagedir.c.o.requires
	$(MAKE) -f userprog/CMakeFiles/userprog.dir/build.make userprog/CMakeFiles/userprog.dir/pagedir.c.o.provides.build
.PHONY : userprog/CMakeFiles/userprog.dir/pagedir.c.o.provides

userprog/CMakeFiles/userprog.dir/pagedir.c.o.provides.build: userprog/CMakeFiles/userprog.dir/pagedir.c.o


userprog/CMakeFiles/userprog.dir/process.c.o: userprog/CMakeFiles/userprog.dir/flags.make
userprog/CMakeFiles/userprog.dir/process.c.o: ../userprog/process.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object userprog/CMakeFiles/userprog.dir/process.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/userprog.dir/process.c.o   -c /Volumes/vagrant/code/group/pintos/src/userprog/process.c

userprog/CMakeFiles/userprog.dir/process.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/userprog.dir/process.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/userprog/process.c > CMakeFiles/userprog.dir/process.c.i

userprog/CMakeFiles/userprog.dir/process.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/userprog.dir/process.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/userprog/process.c -o CMakeFiles/userprog.dir/process.c.s

userprog/CMakeFiles/userprog.dir/process.c.o.requires:

.PHONY : userprog/CMakeFiles/userprog.dir/process.c.o.requires

userprog/CMakeFiles/userprog.dir/process.c.o.provides: userprog/CMakeFiles/userprog.dir/process.c.o.requires
	$(MAKE) -f userprog/CMakeFiles/userprog.dir/build.make userprog/CMakeFiles/userprog.dir/process.c.o.provides.build
.PHONY : userprog/CMakeFiles/userprog.dir/process.c.o.provides

userprog/CMakeFiles/userprog.dir/process.c.o.provides.build: userprog/CMakeFiles/userprog.dir/process.c.o


userprog/CMakeFiles/userprog.dir/tss.c.o: userprog/CMakeFiles/userprog.dir/flags.make
userprog/CMakeFiles/userprog.dir/tss.c.o: ../userprog/tss.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object userprog/CMakeFiles/userprog.dir/tss.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/userprog.dir/tss.c.o   -c /Volumes/vagrant/code/group/pintos/src/userprog/tss.c

userprog/CMakeFiles/userprog.dir/tss.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/userprog.dir/tss.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/userprog/tss.c > CMakeFiles/userprog.dir/tss.c.i

userprog/CMakeFiles/userprog.dir/tss.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/userprog.dir/tss.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/userprog/tss.c -o CMakeFiles/userprog.dir/tss.c.s

userprog/CMakeFiles/userprog.dir/tss.c.o.requires:

.PHONY : userprog/CMakeFiles/userprog.dir/tss.c.o.requires

userprog/CMakeFiles/userprog.dir/tss.c.o.provides: userprog/CMakeFiles/userprog.dir/tss.c.o.requires
	$(MAKE) -f userprog/CMakeFiles/userprog.dir/build.make userprog/CMakeFiles/userprog.dir/tss.c.o.provides.build
.PHONY : userprog/CMakeFiles/userprog.dir/tss.c.o.provides

userprog/CMakeFiles/userprog.dir/tss.c.o.provides.build: userprog/CMakeFiles/userprog.dir/tss.c.o


userprog/CMakeFiles/userprog.dir/syscall.c.o: userprog/CMakeFiles/userprog.dir/flags.make
userprog/CMakeFiles/userprog.dir/syscall.c.o: ../userprog/syscall.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object userprog/CMakeFiles/userprog.dir/syscall.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/userprog.dir/syscall.c.o   -c /Volumes/vagrant/code/group/pintos/src/userprog/syscall.c

userprog/CMakeFiles/userprog.dir/syscall.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/userprog.dir/syscall.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/userprog/syscall.c > CMakeFiles/userprog.dir/syscall.c.i

userprog/CMakeFiles/userprog.dir/syscall.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/userprog.dir/syscall.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/userprog/syscall.c -o CMakeFiles/userprog.dir/syscall.c.s

userprog/CMakeFiles/userprog.dir/syscall.c.o.requires:

.PHONY : userprog/CMakeFiles/userprog.dir/syscall.c.o.requires

userprog/CMakeFiles/userprog.dir/syscall.c.o.provides: userprog/CMakeFiles/userprog.dir/syscall.c.o.requires
	$(MAKE) -f userprog/CMakeFiles/userprog.dir/build.make userprog/CMakeFiles/userprog.dir/syscall.c.o.provides.build
.PHONY : userprog/CMakeFiles/userprog.dir/syscall.c.o.provides

userprog/CMakeFiles/userprog.dir/syscall.c.o.provides.build: userprog/CMakeFiles/userprog.dir/syscall.c.o


userprog/CMakeFiles/userprog.dir/exception.c.o: userprog/CMakeFiles/userprog.dir/flags.make
userprog/CMakeFiles/userprog.dir/exception.c.o: ../userprog/exception.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object userprog/CMakeFiles/userprog.dir/exception.c.o"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/userprog.dir/exception.c.o   -c /Volumes/vagrant/code/group/pintos/src/userprog/exception.c

userprog/CMakeFiles/userprog.dir/exception.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/userprog.dir/exception.c.i"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/vagrant/code/group/pintos/src/userprog/exception.c > CMakeFiles/userprog.dir/exception.c.i

userprog/CMakeFiles/userprog.dir/exception.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/userprog.dir/exception.c.s"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/vagrant/code/group/pintos/src/userprog/exception.c -o CMakeFiles/userprog.dir/exception.c.s

userprog/CMakeFiles/userprog.dir/exception.c.o.requires:

.PHONY : userprog/CMakeFiles/userprog.dir/exception.c.o.requires

userprog/CMakeFiles/userprog.dir/exception.c.o.provides: userprog/CMakeFiles/userprog.dir/exception.c.o.requires
	$(MAKE) -f userprog/CMakeFiles/userprog.dir/build.make userprog/CMakeFiles/userprog.dir/exception.c.o.provides.build
.PHONY : userprog/CMakeFiles/userprog.dir/exception.c.o.provides

userprog/CMakeFiles/userprog.dir/exception.c.o.provides.build: userprog/CMakeFiles/userprog.dir/exception.c.o


# Object files for target userprog
userprog_OBJECTS = \
"CMakeFiles/userprog.dir/gdt.c.o" \
"CMakeFiles/userprog.dir/pagedir.c.o" \
"CMakeFiles/userprog.dir/process.c.o" \
"CMakeFiles/userprog.dir/tss.c.o" \
"CMakeFiles/userprog.dir/syscall.c.o" \
"CMakeFiles/userprog.dir/exception.c.o"

# External object files for target userprog
userprog_EXTERNAL_OBJECTS =

userprog/libuserprog.a: userprog/CMakeFiles/userprog.dir/gdt.c.o
userprog/libuserprog.a: userprog/CMakeFiles/userprog.dir/pagedir.c.o
userprog/libuserprog.a: userprog/CMakeFiles/userprog.dir/process.c.o
userprog/libuserprog.a: userprog/CMakeFiles/userprog.dir/tss.c.o
userprog/libuserprog.a: userprog/CMakeFiles/userprog.dir/syscall.c.o
userprog/libuserprog.a: userprog/CMakeFiles/userprog.dir/exception.c.o
userprog/libuserprog.a: userprog/CMakeFiles/userprog.dir/build.make
userprog/libuserprog.a: userprog/CMakeFiles/userprog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/vagrant/code/group/pintos/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C static library libuserprog.a"
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && $(CMAKE_COMMAND) -P CMakeFiles/userprog.dir/cmake_clean_target.cmake
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/userprog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
userprog/CMakeFiles/userprog.dir/build: userprog/libuserprog.a

.PHONY : userprog/CMakeFiles/userprog.dir/build

userprog/CMakeFiles/userprog.dir/requires: userprog/CMakeFiles/userprog.dir/gdt.c.o.requires
userprog/CMakeFiles/userprog.dir/requires: userprog/CMakeFiles/userprog.dir/pagedir.c.o.requires
userprog/CMakeFiles/userprog.dir/requires: userprog/CMakeFiles/userprog.dir/process.c.o.requires
userprog/CMakeFiles/userprog.dir/requires: userprog/CMakeFiles/userprog.dir/tss.c.o.requires
userprog/CMakeFiles/userprog.dir/requires: userprog/CMakeFiles/userprog.dir/syscall.c.o.requires
userprog/CMakeFiles/userprog.dir/requires: userprog/CMakeFiles/userprog.dir/exception.c.o.requires

.PHONY : userprog/CMakeFiles/userprog.dir/requires

userprog/CMakeFiles/userprog.dir/clean:
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog && $(CMAKE_COMMAND) -P CMakeFiles/userprog.dir/cmake_clean.cmake
.PHONY : userprog/CMakeFiles/userprog.dir/clean

userprog/CMakeFiles/userprog.dir/depend:
	cd /Volumes/vagrant/code/group/pintos/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/vagrant/code/group/pintos/src /Volumes/vagrant/code/group/pintos/src/userprog /Volumes/vagrant/code/group/pintos/src/cmake-build-debug /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog /Volumes/vagrant/code/group/pintos/src/cmake-build-debug/userprog/CMakeFiles/userprog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : userprog/CMakeFiles/userprog.dir/depend
