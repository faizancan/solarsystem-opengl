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
include glfw/tests/CMakeFiles/timeout.dir/depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/timeout.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/timeout.dir/flags.make

glfw/tests/CMakeFiles/timeout.dir/timeout.c.o: glfw/tests/CMakeFiles/timeout.dir/flags.make
glfw/tests/CMakeFiles/timeout.dir/timeout.c.o: ../glfw/tests/timeout.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw/tests/CMakeFiles/timeout.dir/timeout.c.o"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/timeout.dir/timeout.c.o   -c /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/tests/timeout.c

glfw/tests/CMakeFiles/timeout.dir/timeout.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timeout.dir/timeout.c.i"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/tests/timeout.c > CMakeFiles/timeout.dir/timeout.c.i

glfw/tests/CMakeFiles/timeout.dir/timeout.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timeout.dir/timeout.c.s"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/tests/timeout.c -o CMakeFiles/timeout.dir/timeout.c.s

glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.requires:

.PHONY : glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.requires

glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.provides: glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/timeout.dir/build.make glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.provides

glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.provides.build: glfw/tests/CMakeFiles/timeout.dir/timeout.c.o


glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o: glfw/tests/CMakeFiles/timeout.dir/flags.make
glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o: ../glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/timeout.dir/__/deps/glad.c.o   -c /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/deps/glad.c

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timeout.dir/__/deps/glad.c.i"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/deps/glad.c > CMakeFiles/timeout.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timeout.dir/__/deps/glad.c.s"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/deps/glad.c -o CMakeFiles/timeout.dir/__/deps/glad.c.s

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.requires:

.PHONY : glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.requires

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.provides: glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/timeout.dir/build.make glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.provides

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.provides.build: glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o


# Object files for target timeout
timeout_OBJECTS = \
"CMakeFiles/timeout.dir/timeout.c.o" \
"CMakeFiles/timeout.dir/__/deps/glad.c.o"

# External object files for target timeout
timeout_EXTERNAL_OBJECTS =

glfw/tests/timeout.app/Contents/MacOS/timeout: glfw/tests/CMakeFiles/timeout.dir/timeout.c.o
glfw/tests/timeout.app/Contents/MacOS/timeout: glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o
glfw/tests/timeout.app/Contents/MacOS/timeout: glfw/tests/CMakeFiles/timeout.dir/build.make
glfw/tests/timeout.app/Contents/MacOS/timeout: glfw/src/libglfw3.a
glfw/tests/timeout.app/Contents/MacOS/timeout: glfw/tests/CMakeFiles/timeout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable timeout.app/Contents/MacOS/timeout"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timeout.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/timeout.dir/build: glfw/tests/timeout.app/Contents/MacOS/timeout

.PHONY : glfw/tests/CMakeFiles/timeout.dir/build

glfw/tests/CMakeFiles/timeout.dir/requires: glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.requires
glfw/tests/CMakeFiles/timeout.dir/requires: glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.requires

.PHONY : glfw/tests/CMakeFiles/timeout.dir/requires

glfw/tests/CMakeFiles/timeout.dir/clean:
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/timeout.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/timeout.dir/clean

glfw/tests/CMakeFiles/timeout.dir/depend:
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/faizankhan/CLionProjects/solarsystem-opengl /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/tests /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/tests /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/tests/CMakeFiles/timeout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/timeout.dir/depend

