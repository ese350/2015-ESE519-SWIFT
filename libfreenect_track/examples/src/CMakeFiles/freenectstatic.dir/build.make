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
CMAKE_SOURCE_DIR = /home/david/libfreenect

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/david/libfreenect/examples

# Include any dependencies generated for this target.
include src/CMakeFiles/freenectstatic.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/freenectstatic.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/freenectstatic.dir/flags.make

src/CMakeFiles/freenectstatic.dir/core.c.o: src/CMakeFiles/freenectstatic.dir/flags.make
src/CMakeFiles/freenectstatic.dir/core.c.o: ../src/core.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/libfreenect/examples/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/freenectstatic.dir/core.c.o"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/freenectstatic.dir/core.c.o   -c /home/david/libfreenect/src/core.c

src/CMakeFiles/freenectstatic.dir/core.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freenectstatic.dir/core.c.i"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/david/libfreenect/src/core.c > CMakeFiles/freenectstatic.dir/core.c.i

src/CMakeFiles/freenectstatic.dir/core.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freenectstatic.dir/core.c.s"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/david/libfreenect/src/core.c -o CMakeFiles/freenectstatic.dir/core.c.s

src/CMakeFiles/freenectstatic.dir/core.c.o.requires:
.PHONY : src/CMakeFiles/freenectstatic.dir/core.c.o.requires

src/CMakeFiles/freenectstatic.dir/core.c.o.provides: src/CMakeFiles/freenectstatic.dir/core.c.o.requires
	$(MAKE) -f src/CMakeFiles/freenectstatic.dir/build.make src/CMakeFiles/freenectstatic.dir/core.c.o.provides.build
.PHONY : src/CMakeFiles/freenectstatic.dir/core.c.o.provides

src/CMakeFiles/freenectstatic.dir/core.c.o.provides.build: src/CMakeFiles/freenectstatic.dir/core.c.o

src/CMakeFiles/freenectstatic.dir/tilt.c.o: src/CMakeFiles/freenectstatic.dir/flags.make
src/CMakeFiles/freenectstatic.dir/tilt.c.o: ../src/tilt.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/libfreenect/examples/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/freenectstatic.dir/tilt.c.o"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/freenectstatic.dir/tilt.c.o   -c /home/david/libfreenect/src/tilt.c

src/CMakeFiles/freenectstatic.dir/tilt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freenectstatic.dir/tilt.c.i"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/david/libfreenect/src/tilt.c > CMakeFiles/freenectstatic.dir/tilt.c.i

src/CMakeFiles/freenectstatic.dir/tilt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freenectstatic.dir/tilt.c.s"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/david/libfreenect/src/tilt.c -o CMakeFiles/freenectstatic.dir/tilt.c.s

src/CMakeFiles/freenectstatic.dir/tilt.c.o.requires:
.PHONY : src/CMakeFiles/freenectstatic.dir/tilt.c.o.requires

src/CMakeFiles/freenectstatic.dir/tilt.c.o.provides: src/CMakeFiles/freenectstatic.dir/tilt.c.o.requires
	$(MAKE) -f src/CMakeFiles/freenectstatic.dir/build.make src/CMakeFiles/freenectstatic.dir/tilt.c.o.provides.build
.PHONY : src/CMakeFiles/freenectstatic.dir/tilt.c.o.provides

src/CMakeFiles/freenectstatic.dir/tilt.c.o.provides.build: src/CMakeFiles/freenectstatic.dir/tilt.c.o

src/CMakeFiles/freenectstatic.dir/cameras.c.o: src/CMakeFiles/freenectstatic.dir/flags.make
src/CMakeFiles/freenectstatic.dir/cameras.c.o: ../src/cameras.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/libfreenect/examples/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/freenectstatic.dir/cameras.c.o"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/freenectstatic.dir/cameras.c.o   -c /home/david/libfreenect/src/cameras.c

src/CMakeFiles/freenectstatic.dir/cameras.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freenectstatic.dir/cameras.c.i"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/david/libfreenect/src/cameras.c > CMakeFiles/freenectstatic.dir/cameras.c.i

src/CMakeFiles/freenectstatic.dir/cameras.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freenectstatic.dir/cameras.c.s"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/david/libfreenect/src/cameras.c -o CMakeFiles/freenectstatic.dir/cameras.c.s

src/CMakeFiles/freenectstatic.dir/cameras.c.o.requires:
.PHONY : src/CMakeFiles/freenectstatic.dir/cameras.c.o.requires

src/CMakeFiles/freenectstatic.dir/cameras.c.o.provides: src/CMakeFiles/freenectstatic.dir/cameras.c.o.requires
	$(MAKE) -f src/CMakeFiles/freenectstatic.dir/build.make src/CMakeFiles/freenectstatic.dir/cameras.c.o.provides.build
.PHONY : src/CMakeFiles/freenectstatic.dir/cameras.c.o.provides

src/CMakeFiles/freenectstatic.dir/cameras.c.o.provides.build: src/CMakeFiles/freenectstatic.dir/cameras.c.o

src/CMakeFiles/freenectstatic.dir/flags.c.o: src/CMakeFiles/freenectstatic.dir/flags.make
src/CMakeFiles/freenectstatic.dir/flags.c.o: ../src/flags.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/libfreenect/examples/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/freenectstatic.dir/flags.c.o"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/freenectstatic.dir/flags.c.o   -c /home/david/libfreenect/src/flags.c

src/CMakeFiles/freenectstatic.dir/flags.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freenectstatic.dir/flags.c.i"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/david/libfreenect/src/flags.c > CMakeFiles/freenectstatic.dir/flags.c.i

src/CMakeFiles/freenectstatic.dir/flags.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freenectstatic.dir/flags.c.s"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/david/libfreenect/src/flags.c -o CMakeFiles/freenectstatic.dir/flags.c.s

src/CMakeFiles/freenectstatic.dir/flags.c.o.requires:
.PHONY : src/CMakeFiles/freenectstatic.dir/flags.c.o.requires

src/CMakeFiles/freenectstatic.dir/flags.c.o.provides: src/CMakeFiles/freenectstatic.dir/flags.c.o.requires
	$(MAKE) -f src/CMakeFiles/freenectstatic.dir/build.make src/CMakeFiles/freenectstatic.dir/flags.c.o.provides.build
.PHONY : src/CMakeFiles/freenectstatic.dir/flags.c.o.provides

src/CMakeFiles/freenectstatic.dir/flags.c.o.provides.build: src/CMakeFiles/freenectstatic.dir/flags.c.o

src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o: src/CMakeFiles/freenectstatic.dir/flags.make
src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o: ../src/usb_libusb10.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/libfreenect/examples/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/freenectstatic.dir/usb_libusb10.c.o   -c /home/david/libfreenect/src/usb_libusb10.c

src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freenectstatic.dir/usb_libusb10.c.i"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/david/libfreenect/src/usb_libusb10.c > CMakeFiles/freenectstatic.dir/usb_libusb10.c.i

src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freenectstatic.dir/usb_libusb10.c.s"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/david/libfreenect/src/usb_libusb10.c -o CMakeFiles/freenectstatic.dir/usb_libusb10.c.s

src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o.requires:
.PHONY : src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o.requires

src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o.provides: src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o.requires
	$(MAKE) -f src/CMakeFiles/freenectstatic.dir/build.make src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o.provides.build
.PHONY : src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o.provides

src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o.provides.build: src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o

src/CMakeFiles/freenectstatic.dir/registration.c.o: src/CMakeFiles/freenectstatic.dir/flags.make
src/CMakeFiles/freenectstatic.dir/registration.c.o: ../src/registration.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/libfreenect/examples/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/freenectstatic.dir/registration.c.o"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/freenectstatic.dir/registration.c.o   -c /home/david/libfreenect/src/registration.c

src/CMakeFiles/freenectstatic.dir/registration.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freenectstatic.dir/registration.c.i"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/david/libfreenect/src/registration.c > CMakeFiles/freenectstatic.dir/registration.c.i

src/CMakeFiles/freenectstatic.dir/registration.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freenectstatic.dir/registration.c.s"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/david/libfreenect/src/registration.c -o CMakeFiles/freenectstatic.dir/registration.c.s

src/CMakeFiles/freenectstatic.dir/registration.c.o.requires:
.PHONY : src/CMakeFiles/freenectstatic.dir/registration.c.o.requires

src/CMakeFiles/freenectstatic.dir/registration.c.o.provides: src/CMakeFiles/freenectstatic.dir/registration.c.o.requires
	$(MAKE) -f src/CMakeFiles/freenectstatic.dir/build.make src/CMakeFiles/freenectstatic.dir/registration.c.o.provides.build
.PHONY : src/CMakeFiles/freenectstatic.dir/registration.c.o.provides

src/CMakeFiles/freenectstatic.dir/registration.c.o.provides.build: src/CMakeFiles/freenectstatic.dir/registration.c.o

src/CMakeFiles/freenectstatic.dir/audio.c.o: src/CMakeFiles/freenectstatic.dir/flags.make
src/CMakeFiles/freenectstatic.dir/audio.c.o: ../src/audio.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/libfreenect/examples/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/freenectstatic.dir/audio.c.o"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/freenectstatic.dir/audio.c.o   -c /home/david/libfreenect/src/audio.c

src/CMakeFiles/freenectstatic.dir/audio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freenectstatic.dir/audio.c.i"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/david/libfreenect/src/audio.c > CMakeFiles/freenectstatic.dir/audio.c.i

src/CMakeFiles/freenectstatic.dir/audio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freenectstatic.dir/audio.c.s"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/david/libfreenect/src/audio.c -o CMakeFiles/freenectstatic.dir/audio.c.s

src/CMakeFiles/freenectstatic.dir/audio.c.o.requires:
.PHONY : src/CMakeFiles/freenectstatic.dir/audio.c.o.requires

src/CMakeFiles/freenectstatic.dir/audio.c.o.provides: src/CMakeFiles/freenectstatic.dir/audio.c.o.requires
	$(MAKE) -f src/CMakeFiles/freenectstatic.dir/build.make src/CMakeFiles/freenectstatic.dir/audio.c.o.provides.build
.PHONY : src/CMakeFiles/freenectstatic.dir/audio.c.o.provides

src/CMakeFiles/freenectstatic.dir/audio.c.o.provides.build: src/CMakeFiles/freenectstatic.dir/audio.c.o

src/CMakeFiles/freenectstatic.dir/loader.c.o: src/CMakeFiles/freenectstatic.dir/flags.make
src/CMakeFiles/freenectstatic.dir/loader.c.o: ../src/loader.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/libfreenect/examples/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/freenectstatic.dir/loader.c.o"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/freenectstatic.dir/loader.c.o   -c /home/david/libfreenect/src/loader.c

src/CMakeFiles/freenectstatic.dir/loader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freenectstatic.dir/loader.c.i"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/david/libfreenect/src/loader.c > CMakeFiles/freenectstatic.dir/loader.c.i

src/CMakeFiles/freenectstatic.dir/loader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freenectstatic.dir/loader.c.s"
	cd /home/david/libfreenect/examples/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/david/libfreenect/src/loader.c -o CMakeFiles/freenectstatic.dir/loader.c.s

src/CMakeFiles/freenectstatic.dir/loader.c.o.requires:
.PHONY : src/CMakeFiles/freenectstatic.dir/loader.c.o.requires

src/CMakeFiles/freenectstatic.dir/loader.c.o.provides: src/CMakeFiles/freenectstatic.dir/loader.c.o.requires
	$(MAKE) -f src/CMakeFiles/freenectstatic.dir/build.make src/CMakeFiles/freenectstatic.dir/loader.c.o.provides.build
.PHONY : src/CMakeFiles/freenectstatic.dir/loader.c.o.provides

src/CMakeFiles/freenectstatic.dir/loader.c.o.provides.build: src/CMakeFiles/freenectstatic.dir/loader.c.o

# Object files for target freenectstatic
freenectstatic_OBJECTS = \
"CMakeFiles/freenectstatic.dir/core.c.o" \
"CMakeFiles/freenectstatic.dir/tilt.c.o" \
"CMakeFiles/freenectstatic.dir/cameras.c.o" \
"CMakeFiles/freenectstatic.dir/flags.c.o" \
"CMakeFiles/freenectstatic.dir/usb_libusb10.c.o" \
"CMakeFiles/freenectstatic.dir/registration.c.o" \
"CMakeFiles/freenectstatic.dir/audio.c.o" \
"CMakeFiles/freenectstatic.dir/loader.c.o"

# External object files for target freenectstatic
freenectstatic_EXTERNAL_OBJECTS =

lib/libfreenect.a: src/CMakeFiles/freenectstatic.dir/core.c.o
lib/libfreenect.a: src/CMakeFiles/freenectstatic.dir/tilt.c.o
lib/libfreenect.a: src/CMakeFiles/freenectstatic.dir/cameras.c.o
lib/libfreenect.a: src/CMakeFiles/freenectstatic.dir/flags.c.o
lib/libfreenect.a: src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o
lib/libfreenect.a: src/CMakeFiles/freenectstatic.dir/registration.c.o
lib/libfreenect.a: src/CMakeFiles/freenectstatic.dir/audio.c.o
lib/libfreenect.a: src/CMakeFiles/freenectstatic.dir/loader.c.o
lib/libfreenect.a: src/CMakeFiles/freenectstatic.dir/build.make
lib/libfreenect.a: src/CMakeFiles/freenectstatic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library ../lib/libfreenect.a"
	cd /home/david/libfreenect/examples/src && $(CMAKE_COMMAND) -P CMakeFiles/freenectstatic.dir/cmake_clean_target.cmake
	cd /home/david/libfreenect/examples/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/freenectstatic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/freenectstatic.dir/build: lib/libfreenect.a
.PHONY : src/CMakeFiles/freenectstatic.dir/build

src/CMakeFiles/freenectstatic.dir/requires: src/CMakeFiles/freenectstatic.dir/core.c.o.requires
src/CMakeFiles/freenectstatic.dir/requires: src/CMakeFiles/freenectstatic.dir/tilt.c.o.requires
src/CMakeFiles/freenectstatic.dir/requires: src/CMakeFiles/freenectstatic.dir/cameras.c.o.requires
src/CMakeFiles/freenectstatic.dir/requires: src/CMakeFiles/freenectstatic.dir/flags.c.o.requires
src/CMakeFiles/freenectstatic.dir/requires: src/CMakeFiles/freenectstatic.dir/usb_libusb10.c.o.requires
src/CMakeFiles/freenectstatic.dir/requires: src/CMakeFiles/freenectstatic.dir/registration.c.o.requires
src/CMakeFiles/freenectstatic.dir/requires: src/CMakeFiles/freenectstatic.dir/audio.c.o.requires
src/CMakeFiles/freenectstatic.dir/requires: src/CMakeFiles/freenectstatic.dir/loader.c.o.requires
.PHONY : src/CMakeFiles/freenectstatic.dir/requires

src/CMakeFiles/freenectstatic.dir/clean:
	cd /home/david/libfreenect/examples/src && $(CMAKE_COMMAND) -P CMakeFiles/freenectstatic.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/freenectstatic.dir/clean

src/CMakeFiles/freenectstatic.dir/depend:
	cd /home/david/libfreenect/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/libfreenect /home/david/libfreenect/src /home/david/libfreenect/examples /home/david/libfreenect/examples/src /home/david/libfreenect/examples/src/CMakeFiles/freenectstatic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/freenectstatic.dir/depend

