# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/pierre/Documents/TP_bonus_code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pierre/Documents/TP_bonus_code/build

# Include any dependencies generated for this target.
include CMakeFiles/tic_tac_toe.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tic_tac_toe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tic_tac_toe.dir/flags.make

CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o: CMakeFiles/tic_tac_toe.dir/flags.make
CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o: ../exe/tic_tac_toe.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pierre/Documents/TP_bonus_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o -c /home/pierre/Documents/TP_bonus_code/exe/tic_tac_toe.cpp

CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pierre/Documents/TP_bonus_code/exe/tic_tac_toe.cpp > CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.i

CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pierre/Documents/TP_bonus_code/exe/tic_tac_toe.cpp -o CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.s

CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o.requires:

.PHONY : CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o.requires

CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o.provides: CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o.requires
	$(MAKE) -f CMakeFiles/tic_tac_toe.dir/build.make CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o.provides.build
.PHONY : CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o.provides

CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o.provides.build: CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o


# Object files for target tic_tac_toe
tic_tac_toe_OBJECTS = \
"CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o"

# External object files for target tic_tac_toe
tic_tac_toe_EXTERNAL_OBJECTS =

tic_tac_toe: CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o
tic_tac_toe: CMakeFiles/tic_tac_toe.dir/build.make
tic_tac_toe: CMakeFiles/tic_tac_toe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pierre/Documents/TP_bonus_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tic_tac_toe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tic_tac_toe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tic_tac_toe.dir/build: tic_tac_toe

.PHONY : CMakeFiles/tic_tac_toe.dir/build

CMakeFiles/tic_tac_toe.dir/requires: CMakeFiles/tic_tac_toe.dir/exe/tic_tac_toe.cpp.o.requires

.PHONY : CMakeFiles/tic_tac_toe.dir/requires

CMakeFiles/tic_tac_toe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tic_tac_toe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tic_tac_toe.dir/clean

CMakeFiles/tic_tac_toe.dir/depend:
	cd /home/pierre/Documents/TP_bonus_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pierre/Documents/TP_bonus_code /home/pierre/Documents/TP_bonus_code /home/pierre/Documents/TP_bonus_code/build /home/pierre/Documents/TP_bonus_code/build /home/pierre/Documents/TP_bonus_code/build/CMakeFiles/tic_tac_toe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tic_tac_toe.dir/depend

