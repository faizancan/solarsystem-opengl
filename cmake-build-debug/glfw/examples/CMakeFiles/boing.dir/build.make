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
include glfw/examples/CMakeFiles/boing.dir/depend.make

# Include the progress variables for this target.
include glfw/examples/CMakeFiles/boing.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/examples/CMakeFiles/boing.dir/flags.make

glfw/examples/boing.app/Contents/Resources/glfw.icns: ../glfw/examples/glfw.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content glfw/examples/boing.app/Contents/Resources/glfw.icns"
	$(CMAKE_COMMAND) -E copy /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/examples/glfw.icns glfw/examples/boing.app/Contents/Resources/glfw.icns

glfw/examples/CMakeFiles/boing.dir/boing.c.o: glfw/examples/CMakeFiles/boing.dir/flags.make
glfw/examples/CMakeFiles/boing.dir/boing.c.o: ../glfw/examples/boing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw/examples/CMakeFiles/boing.dir/boing.c.o"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/boing.dir/boing.c.o   -c /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/examples/boing.c

glfw/examples/CMakeFiles/boing.dir/boing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/boing.c.i"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/examples/boing.c > CMakeFiles/boing.dir/boing.c.i

glfw/examples/CMakeFiles/boing.dir/boing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/boing.c.s"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/examples/boing.c -o CMakeFiles/boing.dir/boing.c.s

glfw/examples/CMakeFiles/boing.dir/boing.c.o.requires:

.PHONY : glfw/examples/CMakeFiles/boing.dir/boing.c.o.requires

glfw/examples/CMakeFiles/boing.dir/boing.c.o.provides: glfw/examples/CMakeFiles/boing.dir/boing.c.o.requires
	$(MAKE) -f glfw/examples/CMakeFiles/boing.dir/build.make glfw/examples/CMakeFiles/boing.dir/boing.c.o.provides.build
.PHONY : glfw/examples/CMakeFiles/boing.dir/boing.c.o.provides

glfw/examples/CMakeFiles/boing.dir/boing.c.o.provides.build: glfw/examples/CMakeFiles/boing.dir/boing.c.o


glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o: glfw/examples/CMakeFiles/boing.dir/flags.make
glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o: ../glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/boing.dir/__/deps/glad.c.o   -c /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/deps/glad.c

glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/__/deps/glad.c.i"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/deps/glad.c > CMakeFiles/boing.dir/__/deps/glad.c.i

glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/__/deps/glad.c.s"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/deps/glad.c -o CMakeFiles/boing.dir/__/deps/glad.c.s

glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o.requires:

.PHONY : glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o.requires

glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o.provides: glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o.requires
	$(MAKE) -f glfw/examples/CMakeFiles/boing.dir/build.make glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o.provides.build
.PHONY : glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o.provides

glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o.provides.build: glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o


# Object files for target boing
boing_OBJECTS = \
"CMakeFiles/boing.dir/boing.c.o" \
"CMakeFiles/boing.dir/__/deps/glad.c.o"

# External object files for target boing
boing_EXTERNAL_OBJECTS =

glfw/examples/boing.app/Contents/MacOS/boing: glfw/examples/CMakeFiles/boing.dir/boing.c.o
glfw/examples/boing.app/Contents/MacOS/boing: glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o
glfw/examples/boing.app/Contents/MacOS/boing: glfw/examples/CMakeFiles/boing.dir/build.make
glfw/examples/boing.app/Contents/MacOS/boing: glfw/src/libglfw3.a
glfw/examples/boing.app/Contents/MacOS/boing: glfw/examples/CMakeFiles/boing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable boing.app/Contents/MacOS/boing"
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/examples/CMakeFiles/boing.dir/build: glfw/examples/boing.app/Contents/MacOS/boing
glfw/examples/CMakeFiles/boing.dir/build: glfw/examples/boing.app/Contents/Resources/glfw.icns

.PHONY : glfw/examples/CMakeFiles/boing.dir/build

glfw/examples/CMakeFiles/boing.dir/requires: glfw/examples/CMakeFiles/boing.dir/boing.c.o.requires
glfw/examples/CMakeFiles/boing.dir/requires: glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o.requires

.PHONY : glfw/examples/CMakeFiles/boing.dir/requires

glfw/examples/CMakeFiles/boing.dir/clean:
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/examples && $(CMAKE_COMMAND) -P CMakeFiles/boing.dir/cmake_clean.cmake
.PHONY : glfw/examples/CMakeFiles/boing.dir/clean

glfw/examples/CMakeFiles/boing.dir/depend:
	cd /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/faizankhan/CLionProjects/solarsystem-opengl /Users/faizankhan/CLionProjects/solarsystem-opengl/glfw/examples /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/examples /Users/faizankhan/CLionProjects/solarsystem-opengl/cmake-build-debug/glfw/examples/CMakeFiles/boing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/examples/CMakeFiles/boing.dir/depend
