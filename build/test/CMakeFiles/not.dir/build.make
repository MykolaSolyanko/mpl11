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
include test/CMakeFiles/not.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/not.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/not.dir/flags.make

test/CMakeFiles/not.dir/not.cpp.o: test/CMakeFiles/not.dir/flags.make
test/CMakeFiles/not.dir/not.cpp.o: ../test/not.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/ldionne/code/mpl11/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/not.dir/not.cpp.o"
	cd /Users/ldionne/code/mpl11/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/not.dir/not.cpp.o -c /Users/ldionne/code/mpl11/test/not.cpp

test/CMakeFiles/not.dir/not.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/not.dir/not.cpp.i"
	cd /Users/ldionne/code/mpl11/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/ldionne/code/mpl11/test/not.cpp > CMakeFiles/not.dir/not.cpp.i

test/CMakeFiles/not.dir/not.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/not.dir/not.cpp.s"
	cd /Users/ldionne/code/mpl11/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/ldionne/code/mpl11/test/not.cpp -o CMakeFiles/not.dir/not.cpp.s

test/CMakeFiles/not.dir/not.cpp.o.requires:
.PHONY : test/CMakeFiles/not.dir/not.cpp.o.requires

test/CMakeFiles/not.dir/not.cpp.o.provides: test/CMakeFiles/not.dir/not.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/not.dir/build.make test/CMakeFiles/not.dir/not.cpp.o.provides.build
.PHONY : test/CMakeFiles/not.dir/not.cpp.o.provides

test/CMakeFiles/not.dir/not.cpp.o.provides.build: test/CMakeFiles/not.dir/not.cpp.o

# Object files for target not
not_OBJECTS = \
"CMakeFiles/not.dir/not.cpp.o"

# External object files for target not
not_EXTERNAL_OBJECTS =

test/not: test/CMakeFiles/not.dir/not.cpp.o
test/not: test/CMakeFiles/not.dir/build.make
test/not: test/CMakeFiles/not.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable not"
	cd /Users/ldionne/code/mpl11/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/not.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/not.dir/build: test/not
.PHONY : test/CMakeFiles/not.dir/build

test/CMakeFiles/not.dir/requires: test/CMakeFiles/not.dir/not.cpp.o.requires
.PHONY : test/CMakeFiles/not.dir/requires

test/CMakeFiles/not.dir/clean:
	cd /Users/ldionne/code/mpl11/build/test && $(CMAKE_COMMAND) -P CMakeFiles/not.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/not.dir/clean

test/CMakeFiles/not.dir/depend:
	cd /Users/ldionne/code/mpl11/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ldionne/code/mpl11 /Users/ldionne/code/mpl11/test /Users/ldionne/code/mpl11/build /Users/ldionne/code/mpl11/build/test /Users/ldionne/code/mpl11/build/test/CMakeFiles/not.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/not.dir/depend

