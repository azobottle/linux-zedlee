# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/190/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/190/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zedlee/CLionProjects/ForLinuxClass

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Ep23.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Ep23.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Ep23.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Ep23.dir/flags.make

CMakeFiles/Ep23.dir/Ep2/Ep3.c.o: CMakeFiles/Ep23.dir/flags.make
CMakeFiles/Ep23.dir/Ep2/Ep3.c.o: ../Ep2/Ep3.c
CMakeFiles/Ep23.dir/Ep2/Ep3.c.o: CMakeFiles/Ep23.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Ep23.dir/Ep2/Ep3.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Ep23.dir/Ep2/Ep3.c.o -MF CMakeFiles/Ep23.dir/Ep2/Ep3.c.o.d -o CMakeFiles/Ep23.dir/Ep2/Ep3.c.o -c /home/zedlee/CLionProjects/ForLinuxClass/Ep2/Ep3.c

CMakeFiles/Ep23.dir/Ep2/Ep3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Ep23.dir/Ep2/Ep3.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zedlee/CLionProjects/ForLinuxClass/Ep2/Ep3.c > CMakeFiles/Ep23.dir/Ep2/Ep3.c.i

CMakeFiles/Ep23.dir/Ep2/Ep3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Ep23.dir/Ep2/Ep3.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zedlee/CLionProjects/ForLinuxClass/Ep2/Ep3.c -o CMakeFiles/Ep23.dir/Ep2/Ep3.c.s

# Object files for target Ep23
Ep23_OBJECTS = \
"CMakeFiles/Ep23.dir/Ep2/Ep3.c.o"

# External object files for target Ep23
Ep23_EXTERNAL_OBJECTS =

Ep23: CMakeFiles/Ep23.dir/Ep2/Ep3.c.o
Ep23: CMakeFiles/Ep23.dir/build.make
Ep23: CMakeFiles/Ep23.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Ep23"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Ep23.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Ep23.dir/build: Ep23
.PHONY : CMakeFiles/Ep23.dir/build

CMakeFiles/Ep23.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Ep23.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Ep23.dir/clean

CMakeFiles/Ep23.dir/depend:
	cd /home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zedlee/CLionProjects/ForLinuxClass /home/zedlee/CLionProjects/ForLinuxClass /home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug /home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug /home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug/CMakeFiles/Ep23.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Ep23.dir/depend

