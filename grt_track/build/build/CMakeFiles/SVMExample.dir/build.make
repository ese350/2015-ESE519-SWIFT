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
include CMakeFiles/SVMExample.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SVMExample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SVMExample.dir/flags.make

CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o: CMakeFiles/SVMExample.dir/flags.make
CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o: /home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/grt/build/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o -c /home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp

CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp > CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.i

CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp -o CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.s

CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o.requires:
.PHONY : CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o.requires

CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o.provides: CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o.requires
	$(MAKE) -f CMakeFiles/SVMExample.dir/build.make CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o.provides.build
.PHONY : CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o.provides

CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o.provides.build: CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o

# Object files for target SVMExample
SVMExample_OBJECTS = \
"CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o"

# External object files for target SVMExample
SVMExample_EXTERNAL_OBJECTS =

SVMExample: CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o
SVMExample: CMakeFiles/SVMExample.dir/build.make
SVMExample: libgrt.so
SVMExample: CMakeFiles/SVMExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable SVMExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SVMExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SVMExample.dir/build: SVMExample
.PHONY : CMakeFiles/SVMExample.dir/build

# Object files for target SVMExample
SVMExample_OBJECTS = \
"CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o"

# External object files for target SVMExample
SVMExample_EXTERNAL_OBJECTS =

CMakeFiles/CMakeRelink.dir/SVMExample: CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o
CMakeFiles/CMakeRelink.dir/SVMExample: CMakeFiles/SVMExample.dir/build.make
CMakeFiles/CMakeRelink.dir/SVMExample: libgrt.so
CMakeFiles/CMakeRelink.dir/SVMExample: CMakeFiles/SVMExample.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CMakeFiles/CMakeRelink.dir/SVMExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SVMExample.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
CMakeFiles/SVMExample.dir/preinstall: CMakeFiles/CMakeRelink.dir/SVMExample
.PHONY : CMakeFiles/SVMExample.dir/preinstall

CMakeFiles/SVMExample.dir/requires: CMakeFiles/SVMExample.dir/home/david/grt/examples/ClassificationModulesExamples/SVMExample/SVMExample.cpp.o.requires
.PHONY : CMakeFiles/SVMExample.dir/requires

CMakeFiles/SVMExample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SVMExample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SVMExample.dir/clean

CMakeFiles/SVMExample.dir/depend:
	cd /home/david/grt/build/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/grt/build /home/david/grt/build /home/david/grt/build/build /home/david/grt/build/build /home/david/grt/build/build/CMakeFiles/SVMExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SVMExample.dir/depend

