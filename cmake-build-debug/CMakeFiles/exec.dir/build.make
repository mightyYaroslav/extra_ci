# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_SOURCE_DIR = /Users/Yaroslav/CLionProjects/extra_ci

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Yaroslav/CLionProjects/extra_ci/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/exec.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/exec.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/exec.dir/flags.make

CMakeFiles/exec.dir/main.c.o: CMakeFiles/exec.dir/flags.make
CMakeFiles/exec.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Yaroslav/CLionProjects/extra_ci/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/exec.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/exec.dir/main.c.o   -c /Users/Yaroslav/CLionProjects/extra_ci/main.c

CMakeFiles/exec.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/exec.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Yaroslav/CLionProjects/extra_ci/main.c > CMakeFiles/exec.dir/main.c.i

CMakeFiles/exec.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/exec.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Yaroslav/CLionProjects/extra_ci/main.c -o CMakeFiles/exec.dir/main.c.s

CMakeFiles/exec.dir/main.c.o.requires:

.PHONY : CMakeFiles/exec.dir/main.c.o.requires

CMakeFiles/exec.dir/main.c.o.provides: CMakeFiles/exec.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/exec.dir/build.make CMakeFiles/exec.dir/main.c.o.provides.build
.PHONY : CMakeFiles/exec.dir/main.c.o.provides

CMakeFiles/exec.dir/main.c.o.provides.build: CMakeFiles/exec.dir/main.c.o


CMakeFiles/exec.dir/list.c.o: CMakeFiles/exec.dir/flags.make
CMakeFiles/exec.dir/list.c.o: ../list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Yaroslav/CLionProjects/extra_ci/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/exec.dir/list.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/exec.dir/list.c.o   -c /Users/Yaroslav/CLionProjects/extra_ci/list.c

CMakeFiles/exec.dir/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/exec.dir/list.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Yaroslav/CLionProjects/extra_ci/list.c > CMakeFiles/exec.dir/list.c.i

CMakeFiles/exec.dir/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/exec.dir/list.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Yaroslav/CLionProjects/extra_ci/list.c -o CMakeFiles/exec.dir/list.c.s

CMakeFiles/exec.dir/list.c.o.requires:

.PHONY : CMakeFiles/exec.dir/list.c.o.requires

CMakeFiles/exec.dir/list.c.o.provides: CMakeFiles/exec.dir/list.c.o.requires
	$(MAKE) -f CMakeFiles/exec.dir/build.make CMakeFiles/exec.dir/list.c.o.provides.build
.PHONY : CMakeFiles/exec.dir/list.c.o.provides

CMakeFiles/exec.dir/list.c.o.provides.build: CMakeFiles/exec.dir/list.c.o


CMakeFiles/exec.dir/university.c.o: CMakeFiles/exec.dir/flags.make
CMakeFiles/exec.dir/university.c.o: ../university.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Yaroslav/CLionProjects/extra_ci/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/exec.dir/university.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/exec.dir/university.c.o   -c /Users/Yaroslav/CLionProjects/extra_ci/university.c

CMakeFiles/exec.dir/university.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/exec.dir/university.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Yaroslav/CLionProjects/extra_ci/university.c > CMakeFiles/exec.dir/university.c.i

CMakeFiles/exec.dir/university.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/exec.dir/university.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Yaroslav/CLionProjects/extra_ci/university.c -o CMakeFiles/exec.dir/university.c.s

CMakeFiles/exec.dir/university.c.o.requires:

.PHONY : CMakeFiles/exec.dir/university.c.o.requires

CMakeFiles/exec.dir/university.c.o.provides: CMakeFiles/exec.dir/university.c.o.requires
	$(MAKE) -f CMakeFiles/exec.dir/build.make CMakeFiles/exec.dir/university.c.o.provides.build
.PHONY : CMakeFiles/exec.dir/university.c.o.provides

CMakeFiles/exec.dir/university.c.o.provides.build: CMakeFiles/exec.dir/university.c.o


# Object files for target exec
exec_OBJECTS = \
"CMakeFiles/exec.dir/main.c.o" \
"CMakeFiles/exec.dir/list.c.o" \
"CMakeFiles/exec.dir/university.c.o"

# External object files for target exec
exec_EXTERNAL_OBJECTS =

exec: CMakeFiles/exec.dir/main.c.o
exec: CMakeFiles/exec.dir/list.c.o
exec: CMakeFiles/exec.dir/university.c.o
exec: CMakeFiles/exec.dir/build.make
exec: /usr/local/lib/libcheck.a
exec: /usr/local/lib/libcheck.a
exec: CMakeFiles/exec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Yaroslav/CLionProjects/extra_ci/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable exec"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/exec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/exec.dir/build: exec

.PHONY : CMakeFiles/exec.dir/build

CMakeFiles/exec.dir/requires: CMakeFiles/exec.dir/main.c.o.requires
CMakeFiles/exec.dir/requires: CMakeFiles/exec.dir/list.c.o.requires
CMakeFiles/exec.dir/requires: CMakeFiles/exec.dir/university.c.o.requires

.PHONY : CMakeFiles/exec.dir/requires

CMakeFiles/exec.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exec.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exec.dir/clean

CMakeFiles/exec.dir/depend:
	cd /Users/Yaroslav/CLionProjects/extra_ci/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Yaroslav/CLionProjects/extra_ci /Users/Yaroslav/CLionProjects/extra_ci /Users/Yaroslav/CLionProjects/extra_ci/cmake-build-debug /Users/Yaroslav/CLionProjects/extra_ci/cmake-build-debug /Users/Yaroslav/CLionProjects/extra_ci/cmake-build-debug/CMakeFiles/exec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/exec.dir/depend
