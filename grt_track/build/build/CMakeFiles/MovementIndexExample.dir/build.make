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
include CMakeFiles/MovementIndexExample.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MovementIndexExample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MovementIndexExample.dir/flags.make

CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o: CMakeFiles/MovementIndexExample.dir/flags.make
CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o: /home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/grt/build/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o -c /home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp

CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp > CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.i

CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp -o CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.s

CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o.requires:
.PHONY : CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o.requires

CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o.provides: CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o.requires
	$(MAKE) -f CMakeFiles/MovementIndexExample.dir/build.make CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o.provides.build
.PHONY : CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o.provides

CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o.provides.build: CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o

# Object files for target MovementIndexExample
MovementIndexExample_OBJECTS = \
"CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o"

# External object files for target MovementIndexExample
MovementIndexExample_EXTERNAL_OBJECTS =

MovementIndexExample: CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o
MovementIndexExample: CMakeFiles/MovementIndexExample.dir/build.make
MovementIndexExample: libgrt.so
MovementIndexExample: CMakeFiles/MovementIndexExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable MovementIndexExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MovementIndexExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MovementIndexExample.dir/build: MovementIndexExample
.PHONY : CMakeFiles/MovementIndexExample.dir/build

# Object files for target MovementIndexExample
MovementIndexExample_OBJECTS = \
"CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o"

# External object files for target MovementIndexExample
MovementIndexExample_EXTERNAL_OBJECTS =

CMakeFiles/CMakeRelink.dir/MovementIndexExample: CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o
CMakeFiles/CMakeRelink.dir/MovementIndexExample: CMakeFiles/MovementIndexExample.dir/build.make
CMakeFiles/CMakeRelink.dir/MovementIndexExample: libgrt.so
CMakeFiles/CMakeRelink.dir/MovementIndexExample: CMakeFiles/MovementIndexExample.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CMakeFiles/CMakeRelink.dir/MovementIndexExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MovementIndexExample.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
CMakeFiles/MovementIndexExample.dir/preinstall: CMakeFiles/CMakeRelink.dir/MovementIndexExample
.PHONY : CMakeFiles/MovementIndexExample.dir/preinstall

CMakeFiles/MovementIndexExample.dir/requires: CMakeFiles/MovementIndexExample.dir/home/david/grt/examples/FeatureExtractionModules/MovementIndexExample/MovementIndexExample.cpp.o.requires
.PHONY : CMakeFiles/MovementIndexExample.dir/requires

CMakeFiles/MovementIndexExample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MovementIndexExample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MovementIndexExample.dir/clean

CMakeFiles/MovementIndexExample.dir/depend:
	cd /home/david/grt/build/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/grt/build /home/david/grt/build /home/david/grt/build/build /home/david/grt/build/build /home/david/grt/build/build/CMakeFiles/MovementIndexExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MovementIndexExample.dir/depend

