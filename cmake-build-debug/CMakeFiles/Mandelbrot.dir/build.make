# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/faizankhan/CLionProjects/solarsystem-opengl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Mandelbrot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Mandelbrot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Mandelbrot.dir/flags.make

CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o: CMakeFiles/Mandelbrot.dir/flags.make
CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o: ../mandelbrot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o -c /Users/faizankhan/CLionProjects/solarsystem-opengl/mandelbrot.cpp

CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/faizankhan/CLionProjects/solarsystem-opengl/mandelbrot.cpp > CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.i

CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/faizankhan/CLionProjects/solarsystem-opengl/mandelbrot.cpp -o CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.s

CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o.requires:

.PHONY : CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o.requires

CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o.provides: CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o.requires
	$(MAKE) -f CMakeFiles/Mandelbrot.dir/build.make CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o.provides.build
.PHONY : CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o.provides

CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o.provides.build: CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o


CMakeFiles/Mandelbrot.dir/glad.c.o: CMakeFiles/Mandelbrot.dir/flags.make
CMakeFiles/Mandelbrot.dir/glad.c.o: ../glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Mandelbrot.dir/glad.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Mandelbrot.dir/glad.c.o   -c /Users/faizankhan/CLionProjects/solarsystem-opengl/glad.c

CMakeFiles/Mandelbrot.dir/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Mandelbrot.dir/glad.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/faizankhan/CLionProjects/solarsystem-opengl/glad.c > CMakeFiles/Mandelbrot.dir/glad.c.i

CMakeFiles/Mandelbrot.dir/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Mandelbrot.dir/glad.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/faizankhan/CLionProjects/solarsystem-opengl/glad.c -o CMakeFiles/Mandelbrot.dir/glad.c.s

CMakeFiles/Mandelbrot.dir/glad.c.o.requires:

.PHONY : CMakeFiles/Mandelbrot.dir/glad.c.o.requires

CMakeFiles/Mandelbrot.dir/glad.c.o.provides: CMakeFiles/Mandelbrot.dir/glad.c.o.requires
	$(MAKE) -f CMakeFiles/Mandelbrot.dir/build.make CMakeFiles/Mandelbrot.dir/glad.c.o.provides.build
.PHONY : CMakeFiles/Mandelbrot.dir/glad.c.o.provides

CMakeFiles/Mandelbrot.dir/glad.c.o.provides.build: CMakeFiles/Mandelbrot.dir/glad.c.o


# Object files for target Mandelbrot
Mandelbrot_OBJECTS = \
"CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o" \
"CMakeFiles/Mandelbrot.dir/glad.c.o"

# External object files for target Mandelbrot
Mandelbrot_EXTERNAL_OBJECTS =

Mandelbrot: CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o
Mandelbrot: CMakeFiles/Mandelbrot.dir/glad.c.o
Mandelbrot: CMakeFiles/Mandelbrot.dir/build.make
Mandelbrot: glfw/src/libglfw3.a
Mandelbrot: CMakeFiles/Mandelbrot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Mandelbrot"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Mandelbrot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Mandelbrot.dir/build: Mandelbrot

.PHONY : CMakeFiles/Mandelbrot.dir/build

CMakeFiles/Mandelbrot.dir/requires: CMakeFiles/Mandelbrot.dir/mandelbrot.cpp.o.requires
CMakeFiles/Mandelbrot.dir/requires: CMakeFiles/Mandelbrot.dir/glad.c.o.requires

.PHONY : CMakeFiles/Mandelbrot.dir/requires

CMakeFiles/Mandelbrot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Mandelbrot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Mandelbrot.dir/clean

CMakeFiles/Mandelbrot.dir/depend:
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/faizankhan/CLionProjects/solarsystem-opengl /Users/faizankhan/CLionProjects/solarsystem-opengl /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/CMakeFiles/Mandelbrot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Mandelbrot.dir/depend
