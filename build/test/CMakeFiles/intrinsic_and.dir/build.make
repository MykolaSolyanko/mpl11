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
CMAKE_COMMAND = /usr/local/Cellar/cmake/2.8.11.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/2.8.11.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/Cellar/cmake/2.8.11.2/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ldionne/code/mpl11

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ldionne/code/mpl11/build

# Include any dependencies generated for this target.
include test/CMakeFiles/intrinsic_and.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/intrinsic_and.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/intrinsic_and.dir/flags.make

test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o: test/CMakeFiles/intrinsic_and.dir/flags.make
test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o: ../test/intrinsic/and.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/ldionne/code/mpl11/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o"
	cd /Users/ldionne/code/mpl11/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o -c /Users/ldionne/code/mpl11/test/intrinsic/and.cpp

test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.i"
	cd /Users/ldionne/code/mpl11/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/ldionne/code/mpl11/test/intrinsic/and.cpp > CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.i

test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.s"
	cd /Users/ldionne/code/mpl11/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/ldionne/code/mpl11/test/intrinsic/and.cpp -o CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.s

test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o.requires:
.PHONY : test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o.requires

test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o.provides: test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/intrinsic_and.dir/build.make test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o.provides.build
.PHONY : test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o.provides

test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o.provides.build: test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o

# Object files for target intrinsic_and
intrinsic_and_OBJECTS = \
"CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o"

# External object files for target intrinsic_and
intrinsic_and_EXTERNAL_OBJECTS =

test/intrinsic_and: test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o
test/intrinsic_and: test/CMakeFiles/intrinsic_and.dir/build.make
test/intrinsic_and: test/CMakeFiles/intrinsic_and.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable intrinsic_and"
	cd /Users/ldionne/code/mpl11/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/intrinsic_and.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/intrinsic_and.dir/build: test/intrinsic_and
.PHONY : test/CMakeFiles/intrinsic_and.dir/build

test/CMakeFiles/intrinsic_and.dir/requires: test/CMakeFiles/intrinsic_and.dir/intrinsic/and.cpp.o.requires
.PHONY : test/CMakeFiles/intrinsic_and.dir/requires

test/CMakeFiles/intrinsic_and.dir/clean:
	cd /Users/ldionne/code/mpl11/build/test && $(CMAKE_COMMAND) -P CMakeFiles/intrinsic_and.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/intrinsic_and.dir/clean

test/CMakeFiles/intrinsic_and.dir/depend:
	cd /Users/ldionne/code/mpl11/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ldionne/code/mpl11 /Users/ldionne/code/mpl11/test /Users/ldionne/code/mpl11/build /Users/ldionne/code/mpl11/build/test /Users/ldionne/code/mpl11/build/test/CMakeFiles/intrinsic_and.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/intrinsic_and.dir/depend

