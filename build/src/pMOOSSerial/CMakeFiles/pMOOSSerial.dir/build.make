# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/wyatt/moos/moos-ivp-extend

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wyatt/moos/moos-ivp-extend/build

# Include any dependencies generated for this target.
include src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/depend.make

# Include the progress variables for this target.
include src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/progress.make

# Include the compile flags for this target's objects.
include src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/flags.make

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/flags.make
src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o: ../src/pMOOSSerial/MOOSSerial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyatt/moos/moos-ivp-extend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o"
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o -c /home/wyatt/moos/moos-ivp-extend/src/pMOOSSerial/MOOSSerial.cpp

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.i"
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyatt/moos/moos-ivp-extend/src/pMOOSSerial/MOOSSerial.cpp > CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.i

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.s"
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyatt/moos/moos-ivp-extend/src/pMOOSSerial/MOOSSerial.cpp -o CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.s

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o.requires:

.PHONY : src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o.requires

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o.provides: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o.requires
	$(MAKE) -f src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/build.make src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o.provides.build
.PHONY : src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o.provides

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o.provides.build: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o


src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/flags.make
src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o: ../src/pMOOSSerial/MOOSSerial_Info.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyatt/moos/moos-ivp-extend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o"
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o -c /home/wyatt/moos/moos-ivp-extend/src/pMOOSSerial/MOOSSerial_Info.cpp

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.i"
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyatt/moos/moos-ivp-extend/src/pMOOSSerial/MOOSSerial_Info.cpp > CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.i

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.s"
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyatt/moos/moos-ivp-extend/src/pMOOSSerial/MOOSSerial_Info.cpp -o CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.s

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o.requires:

.PHONY : src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o.requires

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o.provides: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o.requires
	$(MAKE) -f src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/build.make src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o.provides.build
.PHONY : src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o.provides

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o.provides.build: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o


src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/flags.make
src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o: ../src/pMOOSSerial/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyatt/moos/moos-ivp-extend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o"
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pMOOSSerial.dir/main.cpp.o -c /home/wyatt/moos/moos-ivp-extend/src/pMOOSSerial/main.cpp

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pMOOSSerial.dir/main.cpp.i"
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyatt/moos/moos-ivp-extend/src/pMOOSSerial/main.cpp > CMakeFiles/pMOOSSerial.dir/main.cpp.i

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pMOOSSerial.dir/main.cpp.s"
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyatt/moos/moos-ivp-extend/src/pMOOSSerial/main.cpp -o CMakeFiles/pMOOSSerial.dir/main.cpp.s

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o.requires:

.PHONY : src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o.requires

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o.provides: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o.requires
	$(MAKE) -f src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/build.make src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o.provides.build
.PHONY : src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o.provides

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o.provides.build: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o


# Object files for target pMOOSSerial
pMOOSSerial_OBJECTS = \
"CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o" \
"CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o" \
"CMakeFiles/pMOOSSerial.dir/main.cpp.o"

# External object files for target pMOOSSerial
pMOOSSerial_EXTERNAL_OBJECTS =

../bin/pMOOSSerial: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o
../bin/pMOOSSerial: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o
../bin/pMOOSSerial: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o
../bin/pMOOSSerial: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/build.make
../bin/pMOOSSerial: /usr/local/lib/libMOOS.a
../bin/pMOOSSerial: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wyatt/moos/moos-ivp-extend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../../bin/pMOOSSerial"
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pMOOSSerial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/build: ../bin/pMOOSSerial

.PHONY : src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/build

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/requires: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial.cpp.o.requires
src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/requires: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/MOOSSerial_Info.cpp.o.requires
src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/requires: src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/main.cpp.o.requires

.PHONY : src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/requires

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/clean:
	cd /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial && $(CMAKE_COMMAND) -P CMakeFiles/pMOOSSerial.dir/cmake_clean.cmake
.PHONY : src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/clean

src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/depend:
	cd /home/wyatt/moos/moos-ivp-extend/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wyatt/moos/moos-ivp-extend /home/wyatt/moos/moos-ivp-extend/src/pMOOSSerial /home/wyatt/moos/moos-ivp-extend/build /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial /home/wyatt/moos/moos-ivp-extend/build/src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/pMOOSSerial/CMakeFiles/pMOOSSerial.dir/depend
