# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/naterforst/allegro-5.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/naterforst/allegro-5.0/build

# Include any dependencies generated for this target.
include addons/ttf/CMakeFiles/allegro_ttf.dir/depend.make

# Include the progress variables for this target.
include addons/ttf/CMakeFiles/allegro_ttf.dir/progress.make

# Include the compile flags for this target's objects.
include addons/ttf/CMakeFiles/allegro_ttf.dir/flags.make

addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o: addons/ttf/CMakeFiles/allegro_ttf.dir/flags.make
addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o: ../addons/ttf/ttf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o"
	cd /home/naterforst/allegro-5.0/build/addons/ttf && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/allegro_ttf.dir/ttf.c.o   -c /home/naterforst/allegro-5.0/addons/ttf/ttf.c

addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_ttf.dir/ttf.c.i"
	cd /home/naterforst/allegro-5.0/build/addons/ttf && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/addons/ttf/ttf.c > CMakeFiles/allegro_ttf.dir/ttf.c.i

addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_ttf.dir/ttf.c.s"
	cd /home/naterforst/allegro-5.0/build/addons/ttf && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/addons/ttf/ttf.c -o CMakeFiles/allegro_ttf.dir/ttf.c.s

addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o.requires:

.PHONY : addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o.requires

addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o.provides: addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o.requires
	$(MAKE) -f addons/ttf/CMakeFiles/allegro_ttf.dir/build.make addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o.provides.build
.PHONY : addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o.provides

addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o.provides.build: addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o


# Object files for target allegro_ttf
allegro_ttf_OBJECTS = \
"CMakeFiles/allegro_ttf.dir/ttf.c.o"

# External object files for target allegro_ttf
allegro_ttf_EXTERNAL_OBJECTS =

lib/liballegro_ttf.so.5.0.7: addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o
lib/liballegro_ttf.so.5.0.7: addons/ttf/CMakeFiles/allegro_ttf.dir/build.make
lib/liballegro_ttf.so.5.0.7: lib/liballegro_font.so.5.0.7
lib/liballegro_ttf.so.5.0.7: /usr/lib/x86_64-linux-gnu/libfreetype.so
lib/liballegro_ttf.so.5.0.7: /usr/lib/x86_64-linux-gnu/libz.so
lib/liballegro_ttf.so.5.0.7: lib/liballegro.so.5.0.7
lib/liballegro_ttf.so.5.0.7: /usr/lib/x86_64-linux-gnu/libSM.so
lib/liballegro_ttf.so.5.0.7: /usr/lib/x86_64-linux-gnu/libICE.so
lib/liballegro_ttf.so.5.0.7: /usr/lib/x86_64-linux-gnu/libX11.so
lib/liballegro_ttf.so.5.0.7: /usr/lib/x86_64-linux-gnu/libXext.so
lib/liballegro_ttf.so.5.0.7: /usr/lib/x86_64-linux-gnu/libGL.so
lib/liballegro_ttf.so.5.0.7: /usr/lib/x86_64-linux-gnu/libGLU.so
lib/liballegro_ttf.so.5.0.7: addons/ttf/CMakeFiles/allegro_ttf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library ../../lib/liballegro_ttf.so"
	cd /home/naterforst/allegro-5.0/build/addons/ttf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/allegro_ttf.dir/link.txt --verbose=$(VERBOSE)
	cd /home/naterforst/allegro-5.0/build/addons/ttf && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/liballegro_ttf.so.5.0.7 ../../lib/liballegro_ttf.so.5.0 ../../lib/liballegro_ttf.so

lib/liballegro_ttf.so.5.0: lib/liballegro_ttf.so.5.0.7
	@$(CMAKE_COMMAND) -E touch_nocreate lib/liballegro_ttf.so.5.0

lib/liballegro_ttf.so: lib/liballegro_ttf.so.5.0.7
	@$(CMAKE_COMMAND) -E touch_nocreate lib/liballegro_ttf.so

# Rule to build all files generated by this target.
addons/ttf/CMakeFiles/allegro_ttf.dir/build: lib/liballegro_ttf.so

.PHONY : addons/ttf/CMakeFiles/allegro_ttf.dir/build

addons/ttf/CMakeFiles/allegro_ttf.dir/requires: addons/ttf/CMakeFiles/allegro_ttf.dir/ttf.c.o.requires

.PHONY : addons/ttf/CMakeFiles/allegro_ttf.dir/requires

addons/ttf/CMakeFiles/allegro_ttf.dir/clean:
	cd /home/naterforst/allegro-5.0/build/addons/ttf && $(CMAKE_COMMAND) -P CMakeFiles/allegro_ttf.dir/cmake_clean.cmake
.PHONY : addons/ttf/CMakeFiles/allegro_ttf.dir/clean

addons/ttf/CMakeFiles/allegro_ttf.dir/depend:
	cd /home/naterforst/allegro-5.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/naterforst/allegro-5.0 /home/naterforst/allegro-5.0/addons/ttf /home/naterforst/allegro-5.0/build /home/naterforst/allegro-5.0/build/addons/ttf /home/naterforst/allegro-5.0/build/addons/ttf/CMakeFiles/allegro_ttf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : addons/ttf/CMakeFiles/allegro_ttf.dir/depend
