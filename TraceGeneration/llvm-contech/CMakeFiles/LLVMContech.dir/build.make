# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Simulator/TraceGeneration/llvm-contech

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Simulator/TraceGeneration/llvm-contech

# Include any dependencies generated for this target.
include CMakeFiles/LLVMContech.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LLVMContech.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LLVMContech.dir/flags.make

CMakeFiles/LLVMContech.dir/Contech.o: CMakeFiles/LLVMContech.dir/flags.make
CMakeFiles/LLVMContech.dir/Contech.o: Contech.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Simulator/TraceGeneration/llvm-contech/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LLVMContech.dir/Contech.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMContech.dir/Contech.o -c /Simulator/TraceGeneration/llvm-contech/Contech.cpp

CMakeFiles/LLVMContech.dir/Contech.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMContech.dir/Contech.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Simulator/TraceGeneration/llvm-contech/Contech.cpp > CMakeFiles/LLVMContech.dir/Contech.i

CMakeFiles/LLVMContech.dir/Contech.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMContech.dir/Contech.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Simulator/TraceGeneration/llvm-contech/Contech.cpp -o CMakeFiles/LLVMContech.dir/Contech.s

CMakeFiles/LLVMContech.dir/Contech.o.requires:

.PHONY : CMakeFiles/LLVMContech.dir/Contech.o.requires

CMakeFiles/LLVMContech.dir/Contech.o.provides: CMakeFiles/LLVMContech.dir/Contech.o.requires
	$(MAKE) -f CMakeFiles/LLVMContech.dir/build.make CMakeFiles/LLVMContech.dir/Contech.o.provides.build
.PHONY : CMakeFiles/LLVMContech.dir/Contech.o.provides

CMakeFiles/LLVMContech.dir/Contech.o.provides.build: CMakeFiles/LLVMContech.dir/Contech.o


# Object files for target LLVMContech
LLVMContech_OBJECTS = \
"CMakeFiles/LLVMContech.dir/Contech.o"

# External object files for target LLVMContech
LLVMContech_EXTERNAL_OBJECTS =

lib/LLVMContech.so: CMakeFiles/LLVMContech.dir/Contech.o
lib/LLVMContech.so: CMakeFiles/LLVMContech.dir/build.make
lib/LLVMContech.so: CMakeFiles/LLVMContech.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Simulator/TraceGeneration/llvm-contech/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module lib/LLVMContech.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMContech.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LLVMContech.dir/build: lib/LLVMContech.so

.PHONY : CMakeFiles/LLVMContech.dir/build

CMakeFiles/LLVMContech.dir/requires: CMakeFiles/LLVMContech.dir/Contech.o.requires

.PHONY : CMakeFiles/LLVMContech.dir/requires

CMakeFiles/LLVMContech.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LLVMContech.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LLVMContech.dir/clean

CMakeFiles/LLVMContech.dir/depend:
	cd /Simulator/TraceGeneration/llvm-contech && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Simulator/TraceGeneration/llvm-contech /Simulator/TraceGeneration/llvm-contech /Simulator/TraceGeneration/llvm-contech /Simulator/TraceGeneration/llvm-contech /Simulator/TraceGeneration/llvm-contech/CMakeFiles/LLVMContech.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LLVMContech.dir/depend

