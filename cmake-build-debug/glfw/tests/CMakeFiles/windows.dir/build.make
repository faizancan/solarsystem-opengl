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
CMAKE_SOURCE_DIR = /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug

# Include any dependencies generated for this target.
include glfw/tests/CMakeFiles/windows.dir/depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/windows.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/windows.dir/flags.make

glfw/tests/CMakeFiles/windows.dir/windows.c.o: glfw/tests/CMakeFiles/windows.dir/flags.make
glfw/tests/CMakeFiles/windows.dir/windows.c.o: ../glfw/tests/windows.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw/tests/CMakeFiles/windows.dir/windows.c.o"
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/windows.dir/windows.c.o   -c /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/glfw/tests/windows.c

glfw/tests/CMakeFiles/windows.dir/windows.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/windows.c.i"
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/glfw/tests/windows.c > CMakeFiles/windows.dir/windows.c.i

glfw/tests/CMakeFiles/windows.dir/windows.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/windows.c.s"
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/glfw/tests/windows.c -o CMakeFiles/windows.dir/windows.c.s

glfw/tests/CMakeFiles/windows.dir/windows.c.o.requires:

.PHONY : glfw/tests/CMakeFiles/windows.dir/windows.c.o.requires

glfw/tests/CMakeFiles/windows.dir/windows.c.o.provides: glfw/tests/CMakeFiles/windows.dir/windows.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/windows.dir/build.make glfw/tests/CMakeFiles/windows.dir/windows.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/windows.dir/windows.c.o.provides

glfw/tests/CMakeFiles/windows.dir/windows.c.o.provides.build: glfw/tests/CMakeFiles/windows.dir/windows.c.o


glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o: glfw/tests/CMakeFiles/windows.dir/flags.make
glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o: ../glfw/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o"
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/windows.dir/__/deps/getopt.c.o   -c /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/glfw/deps/getopt.c

glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/__/deps/getopt.c.i"
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/glfw/deps/getopt.c > CMakeFiles/windows.dir/__/deps/getopt.c.i

glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/__/deps/getopt.c.s"
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/glfw/deps/getopt.c -o CMakeFiles/windows.dir/__/deps/getopt.c.s

glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o.requires:

.PHONY : glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o.requires

glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o.provides: glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/windows.dir/build.make glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o.provides

glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o.provides.build: glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o


glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o: glfw/tests/CMakeFiles/windows.dir/flags.make
glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o: ../glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o"
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/windows.dir/__/deps/glad.c.o   -c /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/glfw/deps/glad.c

glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/__/deps/glad.c.i"
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/glfw/deps/glad.c > CMakeFiles/windows.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/__/deps/glad.c.s"
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/glfw/deps/glad.c -o CMakeFiles/windows.dir/__/deps/glad.c.s

glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o.requires:

.PHONY : glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o.requires

glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o.provides: glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/windows.dir/build.make glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o.provides

glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o.provides.build: glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o


# Object files for target windows
windows_OBJECTS = \
"CMakeFiles/windows.dir/windows.c.o" \
"CMakeFiles/windows.dir/__/deps/getopt.c.o" \
"CMakeFiles/windows.dir/__/deps/glad.c.o"

# External object files for target windows
windows_EXTERNAL_OBJECTS =

glfw/tests/windows.app/Contents/MacOS/windows: glfw/tests/CMakeFiles/windows.dir/windows.c.o
glfw/tests/windows.app/Contents/MacOS/windows: glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o
glfw/tests/windows.app/Contents/MacOS/windows: glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o
glfw/tests/windows.app/Contents/MacOS/windows: glfw/tests/CMakeFiles/windows.dir/build.make
glfw/tests/windows.app/Contents/MacOS/windows: glfw/src/libglfw3.a
glfw/tests/windows.app/Contents/MacOS/windows: glfw/tests/CMakeFiles/windows.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable windows.app/Contents/MacOS/windows"
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/windows.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/windows.dir/build: glfw/tests/windows.app/Contents/MacOS/windows

.PHONY : glfw/tests/CMakeFiles/windows.dir/build

glfw/tests/CMakeFiles/windows.dir/requires: glfw/tests/CMakeFiles/windows.dir/windows.c.o.requires
glfw/tests/CMakeFiles/windows.dir/requires: glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o.requires
glfw/tests/CMakeFiles/windows.dir/requires: glfw/tests/CMakeFiles/windows.dir/__/deps/glad.c.o.requires

.PHONY : glfw/tests/CMakeFiles/windows.dir/requires

glfw/tests/CMakeFiles/windows.dir/clean:
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/windows.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/windows.dir/clean

glfw/tests/CMakeFiles/windows.dir/depend:
	cd /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/glfw/tests /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests /Users/aribleemer/Documents/CLionProjects/Final_Project/solarsystem-opengl/cmake-build-debug/glfw/tests/CMakeFiles/windows.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/windows.dir/depend

