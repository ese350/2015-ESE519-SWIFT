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
include CMakeFiles/GettingStarted.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/GettingStarted.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GettingStarted.dir/flags.make

CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o: CMakeFiles/GettingStarted.dir/flags.make
CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o: /home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/grt/build/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o -c /home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp

CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp > CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.i

CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp -o CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.s

CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o.requires:
.PHONY : CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o.requires

CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o.provides: CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o.requires
	$(MAKE) -f CMakeFiles/GettingStarted.dir/build.make CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o.provides.build
.PHONY : CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o.provides

CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o.provides.build: CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o

# Object files for target GettingStarted
GettingStarted_OBJECTS = \
"CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o"

# External object files for target GettingStarted
GettingStarted_EXTERNAL_OBJECTS =

GettingStarted: CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o
GettingStarted: CMakeFiles/GettingStarted.dir/build.make
GettingStarted: libgrt.so
GettingStarted: CMakeFiles/GettingStarted.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable GettingStarted"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GettingStarted.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GettingStarted.dir/build: GettingStarted
.PHONY : CMakeFiles/GettingStarted.dir/build

# Object files for target GettingStarted
GettingStarted_OBJECTS = \
"CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o"

# External object files for target GettingStarted
GettingStarted_EXTERNAL_OBJECTS =

CMakeFiles/CMakeRelink.dir/GettingStarted: CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o
CMakeFiles/CMakeRelink.dir/GettingStarted: CMakeFiles/GettingStarted.dir/build.make
CMakeFiles/CMakeRelink.dir/GettingStarted: libgrt.so
CMakeFiles/CMakeRelink.dir/GettingStarted: CMakeFiles/GettingStarted.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CMakeFiles/CMakeRelink.dir/GettingStarted"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GettingStarted.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
CMakeFiles/GettingStarted.dir/preinstall: CMakeFiles/CMakeRelink.dir/GettingStarted
.PHONY : CMakeFiles/GettingStarted.dir/preinstall

CMakeFiles/GettingStarted.dir/requires: CMakeFiles/GettingStarted.dir/home/david/grt/examples/Tutorials/GettingStarted/GettingStarted.cpp.o.requires
.PHONY : CMakeFiles/GettingStarted.dir/requires

CMakeFiles/GettingStarted.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GettingStarted.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GettingStarted.dir/clean

CMakeFiles/GettingStarted.dir/depend:
	cd /home/david/grt/build/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/grt/build /home/david/grt/build /home/david/grt/build/build /home/david/grt/build/build /home/david/grt/build/build/CMakeFiles/GettingStarted.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GettingStarted.dir/depend

