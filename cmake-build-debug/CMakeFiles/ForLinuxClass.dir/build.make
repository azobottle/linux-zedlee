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
include CMakeFiles/ForLinuxClass.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ForLinuxClass.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ForLinuxClass.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ForLinuxClass.dir/flags.make

CMakeFiles/ForLinuxClass.dir/hw/shm.c.o: CMakeFiles/ForLinuxClass.dir/flags.make
CMakeFiles/ForLinuxClass.dir/hw/shm.c.o: ../hw/shm.c
CMakeFiles/ForLinuxClass.dir/hw/shm.c.o: CMakeFiles/ForLinuxClass.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ForLinuxClass.dir/hw/shm.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ForLinuxClass.dir/hw/shm.c.o -MF CMakeFiles/ForLinuxClass.dir/hw/shm.c.o.d -o CMakeFiles/ForLinuxClass.dir/hw/shm.c.o -c /home/zedlee/CLionProjects/ForLinuxClass/hw/shm.c

CMakeFiles/ForLinuxClass.dir/hw/shm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ForLinuxClass.dir/hw/shm.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zedlee/CLionProjects/ForLinuxClass/hw/shm.c > CMakeFiles/ForLinuxClass.dir/hw/shm.c.i

CMakeFiles/ForLinuxClass.dir/hw/shm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ForLinuxClass.dir/hw/shm.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zedlee/CLionProjects/ForLinuxClass/hw/shm.c -o CMakeFiles/ForLinuxClass.dir/hw/shm.c.s

CMakeFiles/ForLinuxClass.dir/hw/semphore.c.o: CMakeFiles/ForLinuxClass.dir/flags.make
CMakeFiles/ForLinuxClass.dir/hw/semphore.c.o: ../hw/semphore.c
CMakeFiles/ForLinuxClass.dir/hw/semphore.c.o: CMakeFiles/ForLinuxClass.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ForLinuxClass.dir/hw/semphore.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ForLinuxClass.dir/hw/semphore.c.o -MF CMakeFiles/ForLinuxClass.dir/hw/semphore.c.o.d -o CMakeFiles/ForLinuxClass.dir/hw/semphore.c.o -c /home/zedlee/CLionProjects/ForLinuxClass/hw/semphore.c

CMakeFiles/ForLinuxClass.dir/hw/semphore.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ForLinuxClass.dir/hw/semphore.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zedlee/CLionProjects/ForLinuxClass/hw/semphore.c > CMakeFiles/ForLinuxClass.dir/hw/semphore.c.i

CMakeFiles/ForLinuxClass.dir/hw/semphore.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ForLinuxClass.dir/hw/semphore.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zedlee/CLionProjects/ForLinuxClass/hw/semphore.c -o CMakeFiles/ForLinuxClass.dir/hw/semphore.c.s

CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.o: CMakeFiles/ForLinuxClass.dir/flags.make
CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.o: ../hw/nosemphore.c
CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.o: CMakeFiles/ForLinuxClass.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.o -MF CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.o.d -o CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.o -c /home/zedlee/CLionProjects/ForLinuxClass/hw/nosemphore.c

CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zedlee/CLionProjects/ForLinuxClass/hw/nosemphore.c > CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.i

CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zedlee/CLionProjects/ForLinuxClass/hw/nosemphore.c -o CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.s

CMakeFiles/ForLinuxClass.dir/hw/signal.c.o: CMakeFiles/ForLinuxClass.dir/flags.make
CMakeFiles/ForLinuxClass.dir/hw/signal.c.o: ../hw/signal.c
CMakeFiles/ForLinuxClass.dir/hw/signal.c.o: CMakeFiles/ForLinuxClass.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/ForLinuxClass.dir/hw/signal.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ForLinuxClass.dir/hw/signal.c.o -MF CMakeFiles/ForLinuxClass.dir/hw/signal.c.o.d -o CMakeFiles/ForLinuxClass.dir/hw/signal.c.o -c /home/zedlee/CLionProjects/ForLinuxClass/hw/signal.c

CMakeFiles/ForLinuxClass.dir/hw/signal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ForLinuxClass.dir/hw/signal.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zedlee/CLionProjects/ForLinuxClass/hw/signal.c > CMakeFiles/ForLinuxClass.dir/hw/signal.c.i

CMakeFiles/ForLinuxClass.dir/hw/signal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ForLinuxClass.dir/hw/signal.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zedlee/CLionProjects/ForLinuxClass/hw/signal.c -o CMakeFiles/ForLinuxClass.dir/hw/signal.c.s

# Object files for target ForLinuxClass
ForLinuxClass_OBJECTS = \
"CMakeFiles/ForLinuxClass.dir/hw/shm.c.o" \
"CMakeFiles/ForLinuxClass.dir/hw/semphore.c.o" \
"CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.o" \
"CMakeFiles/ForLinuxClass.dir/hw/signal.c.o"

# External object files for target ForLinuxClass
ForLinuxClass_EXTERNAL_OBJECTS =

ForLinuxClass: CMakeFiles/ForLinuxClass.dir/hw/shm.c.o
ForLinuxClass: CMakeFiles/ForLinuxClass.dir/hw/semphore.c.o
ForLinuxClass: CMakeFiles/ForLinuxClass.dir/hw/nosemphore.c.o
ForLinuxClass: CMakeFiles/ForLinuxClass.dir/hw/signal.c.o
ForLinuxClass: CMakeFiles/ForLinuxClass.dir/build.make
ForLinuxClass: CMakeFiles/ForLinuxClass.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable ForLinuxClass"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ForLinuxClass.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ForLinuxClass.dir/build: ForLinuxClass
.PHONY : CMakeFiles/ForLinuxClass.dir/build

CMakeFiles/ForLinuxClass.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ForLinuxClass.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ForLinuxClass.dir/clean

CMakeFiles/ForLinuxClass.dir/depend:
	cd /home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zedlee/CLionProjects/ForLinuxClass /home/zedlee/CLionProjects/ForLinuxClass /home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug /home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug /home/zedlee/CLionProjects/ForLinuxClass/cmake-build-debug/CMakeFiles/ForLinuxClass.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ForLinuxClass.dir/depend

