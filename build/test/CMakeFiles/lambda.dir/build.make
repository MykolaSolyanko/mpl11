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
include test/CMakeFiles/lambda.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/lambda.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/lambda.dir/flags.make

test/CMakeFiles/lambda.dir/lambda.cpp.o: test/CMakeFiles/lambda.dir/flags.make
test/CMakeFiles/lambda.dir/lambda.cpp.o: ../test/lambda.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/ldionne/code/mpl11/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/lambda.dir/lambda.cpp.o"
	cd /Users/ldionne/code/mpl11/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/lambda.dir/lambda.cpp.o -c /Users/ldionne/code/mpl11/test/lambda.cpp

test/CMakeFiles/lambda.dir/lambda.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lambda.dir/lambda.cpp.i"
	cd /Users/ldionne/code/mpl11/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/ldionne/code/mpl11/test/lambda.cpp > CMakeFiles/lambda.dir/lambda.cpp.i

test/CMakeFiles/lambda.dir/lambda.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lambda.dir/lambda.cpp.s"
	cd /Users/ldionne/code/mpl11/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/ldionne/code/mpl11/test/lambda.cpp -o CMakeFiles/lambda.dir/lambda.cpp.s

test/CMakeFiles/lambda.dir/lambda.cpp.o.requires:
.PHONY : test/CMakeFiles/lambda.dir/lambda.cpp.o.requires

test/CMakeFiles/lambda.dir/lambda.cpp.o.provides: test/CMakeFiles/lambda.dir/lambda.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/lambda.dir/build.make test/CMakeFiles/lambda.dir/lambda.cpp.o.provides.build
.PHONY : test/CMakeFiles/lambda.dir/lambda.cpp.o.provides

test/CMakeFiles/lambda.dir/lambda.cpp.o.provides.build: test/CMakeFiles/lambda.dir/lambda.cpp.o

# Object files for target lambda
lambda_OBJECTS = \
"CMakeFiles/lambda.dir/lambda.cpp.o"

# External object files for target lambda
lambda_EXTERNAL_OBJECTS =

test/lambda: test/CMakeFiles/lambda.dir/lambda.cpp.o
test/lambda: test/CMakeFiles/lambda.dir/build.make
test/lambda: test/CMakeFiles/lambda.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable lambda"
	cd /Users/ldionne/code/mpl11/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lambda.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/lambda.dir/build: test/lambda
.PHONY : test/CMakeFiles/lambda.dir/build

test/CMakeFiles/lambda.dir/requires: test/CMakeFiles/lambda.dir/lambda.cpp.o.requires
.PHONY : test/CMakeFiles/lambda.dir/requires

test/CMakeFiles/lambda.dir/clean:
	cd /Users/ldionne/code/mpl11/build/test && $(CMAKE_COMMAND) -P CMakeFiles/lambda.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/lambda.dir/clean

test/CMakeFiles/lambda.dir/depend:
	cd /Users/ldionne/code/mpl11/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ldionne/code/mpl11 /Users/ldionne/code/mpl11/test /Users/ldionne/code/mpl11/build /Users/ldionne/code/mpl11/build/test /Users/ldionne/code/mpl11/build/test/CMakeFiles/lambda.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/lambda.dir/depend

