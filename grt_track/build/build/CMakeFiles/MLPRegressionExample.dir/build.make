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
include CMakeFiles/MLPRegressionExample.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MLPRegressionExample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MLPRegressionExample.dir/flags.make

CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o: CMakeFiles/MLPRegressionExample.dir/flags.make
CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o: /home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/grt/build/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o -c /home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp

CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp > CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.i

CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp -o CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.s

CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o.requires:
.PHONY : CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o.requires

CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o.provides: CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o.requires
	$(MAKE) -f CMakeFiles/MLPRegressionExample.dir/build.make CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o.provides.build
.PHONY : CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o.provides

CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o.provides.build: CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o

# Object files for target MLPRegressionExample
MLPRegressionExample_OBJECTS = \
"CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o"

# External object files for target MLPRegressionExample
MLPRegressionExample_EXTERNAL_OBJECTS =

MLPRegressionExample: CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o
MLPRegressionExample: CMakeFiles/MLPRegressionExample.dir/build.make
MLPRegressionExample: libgrt.so
MLPRegressionExample: CMakeFiles/MLPRegressionExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable MLPRegressionExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MLPRegressionExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MLPRegressionExample.dir/build: MLPRegressionExample
.PHONY : CMakeFiles/MLPRegressionExample.dir/build

# Object files for target MLPRegressionExample
MLPRegressionExample_OBJECTS = \
"CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o"

# External object files for target MLPRegressionExample
MLPRegressionExample_EXTERNAL_OBJECTS =

CMakeFiles/CMakeRelink.dir/MLPRegressionExample: CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o
CMakeFiles/CMakeRelink.dir/MLPRegressionExample: CMakeFiles/MLPRegressionExample.dir/build.make
CMakeFiles/CMakeRelink.dir/MLPRegressionExample: libgrt.so
CMakeFiles/CMakeRelink.dir/MLPRegressionExample: CMakeFiles/MLPRegressionExample.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CMakeFiles/CMakeRelink.dir/MLPRegressionExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MLPRegressionExample.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
CMakeFiles/MLPRegressionExample.dir/preinstall: CMakeFiles/CMakeRelink.dir/MLPRegressionExample
.PHONY : CMakeFiles/MLPRegressionExample.dir/preinstall

CMakeFiles/MLPRegressionExample.dir/requires: CMakeFiles/MLPRegressionExample.dir/home/david/grt/examples/RegressionModulesExamples/MLPRegressionExample/MLPRegressionExample.cpp.o.requires
.PHONY : CMakeFiles/MLPRegressionExample.dir/requires

CMakeFiles/MLPRegressionExample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MLPRegressionExample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MLPRegressionExample.dir/clean

CMakeFiles/MLPRegressionExample.dir/depend:
	cd /home/david/grt/build/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/grt/build /home/david/grt/build /home/david/grt/build/build /home/david/grt/build/build /home/david/grt/build/build/CMakeFiles/MLPRegressionExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MLPRegressionExample.dir/depend

