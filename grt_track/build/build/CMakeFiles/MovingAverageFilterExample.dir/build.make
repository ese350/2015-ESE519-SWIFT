# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/david/grt/build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/david/grt/build/build

# Include any dependencies generated for this target.
include CMakeFiles/MovingAverageFilterExample.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MovingAverageFilterExample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MovingAverageFilterExample.dir/flags.make

CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o: CMakeFiles/MovingAverageFilterExample.dir/flags.make
CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o: /home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/grt/build/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o -c /home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp

CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp > CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.i

CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp -o CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.s

CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o.requires:
.PHONY : CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o.requires

CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o.provides: CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o.requires
	$(MAKE) -f CMakeFiles/MovingAverageFilterExample.dir/build.make CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o.provides.build
.PHONY : CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o.provides

CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o.provides.build: CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o

# Object files for target MovingAverageFilterExample
MovingAverageFilterExample_OBJECTS = \
"CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o"

# External object files for target MovingAverageFilterExample
MovingAverageFilterExample_EXTERNAL_OBJECTS =

MovingAverageFilterExample: CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o
MovingAverageFilterExample: CMakeFiles/MovingAverageFilterExample.dir/build.make
MovingAverageFilterExample: libgrt.so
MovingAverageFilterExample: CMakeFiles/MovingAverageFilterExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable MovingAverageFilterExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MovingAverageFilterExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MovingAverageFilterExample.dir/build: MovingAverageFilterExample
.PHONY : CMakeFiles/MovingAverageFilterExample.dir/build

# Object files for target MovingAverageFilterExample
MovingAverageFilterExample_OBJECTS = \
"CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o"

# External object files for target MovingAverageFilterExample
MovingAverageFilterExample_EXTERNAL_OBJECTS =

CMakeFiles/CMakeRelink.dir/MovingAverageFilterExample: CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o
CMakeFiles/CMakeRelink.dir/MovingAverageFilterExample: CMakeFiles/MovingAverageFilterExample.dir/build.make
CMakeFiles/CMakeRelink.dir/MovingAverageFilterExample: libgrt.so
CMakeFiles/CMakeRelink.dir/MovingAverageFilterExample: CMakeFiles/MovingAverageFilterExample.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CMakeFiles/CMakeRelink.dir/MovingAverageFilterExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MovingAverageFilterExample.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
CMakeFiles/MovingAverageFilterExample.dir/preinstall: CMakeFiles/CMakeRelink.dir/MovingAverageFilterExample
.PHONY : CMakeFiles/MovingAverageFilterExample.dir/preinstall

CMakeFiles/MovingAverageFilterExample.dir/requires: CMakeFiles/MovingAverageFilterExample.dir/home/david/grt/examples/PreprocessingModulesExamples/MovingAverageFilterExample/MovingAverageFilterExample.cpp.o.requires
.PHONY : CMakeFiles/MovingAverageFilterExample.dir/requires

CMakeFiles/MovingAverageFilterExample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MovingAverageFilterExample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MovingAverageFilterExample.dir/clean

CMakeFiles/MovingAverageFilterExample.dir/depend:
	cd /home/david/grt/build/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/grt/build /home/david/grt/build /home/david/grt/build/build /home/david/grt/build/build /home/david/grt/build/build/CMakeFiles/MovingAverageFilterExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MovingAverageFilterExample.dir/depend

